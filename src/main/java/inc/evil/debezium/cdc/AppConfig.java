package inc.evil.debezium.cdc;

import io.debezium.connector.postgresql.PostgresConnector;
import io.debezium.connector.postgresql.PostgresConnectorConfig;
import io.debezium.embedded.EmbeddedEngine;
import org.apache.kafka.connect.storage.MemoryOffsetBackingStore;
import org.springframework.beans.factory.DisposableBean;
import org.springframework.beans.factory.InitializingBean;
import org.springframework.boot.context.properties.EnableConfigurationProperties;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.core.task.AsyncTaskExecutor;
import org.springframework.core.task.TaskExecutor;
import org.springframework.scheduling.concurrent.ThreadPoolTaskExecutor;

import java.util.function.Function;

@Configuration(proxyBeanMethods = false)
@EnableConfigurationProperties(DebeziumProperties.class)
public class AppConfig {

    @Bean
    public AsyncTaskExecutor cdcTaskExecutor() {
        ThreadPoolTaskExecutor taskExecutor = new ThreadPoolTaskExecutor();
        taskExecutor.setCorePoolSize(1);
        taskExecutor.setMaxPoolSize(1);
        taskExecutor.setThreadNamePrefix("cdc-thread-");
        return taskExecutor;
    }

    @Bean
    public EmbeddedEngine debeziumEngine(DebeziumProperties debeziumProperties, DatabaseChangeEventListener listener) {
        io.debezium.config.Configuration config = io.debezium.config.Configuration.empty()
                .withSystemProperties(Function.identity()).edit()
                .with(EmbeddedEngine.CONNECTOR_CLASS, PostgresConnector.class)
                .with(EmbeddedEngine.ENGINE_NAME, debeziumProperties.getEngineName())
                .with(EmbeddedEngine.OFFSET_STORAGE, MemoryOffsetBackingStore.class)
                .with("database.hostname", debeziumProperties.getDatabaseHostname())
                .with("database.port", debeziumProperties.getDatabasePort())
                .with("database.user", debeziumProperties.getDatabaseUser())
                .with("database.password", debeziumProperties.getDatabasePassword())
                .with("database.server.name", debeziumProperties.getDatabaseServerName())
                .with("database.dbname", debeziumProperties.getDatabaseDbname())
                .with("database.include", debeziumProperties.getDatabaseInclude())
                .with("plugin.name", debeziumProperties.getPluginName())
                .with(PostgresConnectorConfig.SNAPSHOT_MODE, PostgresConnectorConfig.SnapshotMode.NEVER)
                .build();
        return EmbeddedEngine.create()
                .using(config)
                .notifying(listener)
                .build();
    }

    @Bean
    public InitializingBean debeziumEngineStarter(EmbeddedEngine debeziumEngine, TaskExecutor cdcTaskExecutor) {
        return () -> cdcTaskExecutor.execute(debeziumEngine);
    }

    @Bean
    public DisposableBean debeziumEngineShutdownHook(EmbeddedEngine debeziumEngine) {
        return debeziumEngine::stop;
    }
}
