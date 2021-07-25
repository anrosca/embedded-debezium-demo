package inc.evil.debezium.cdc;

import org.springframework.boot.context.properties.ConfigurationProperties;

@ConfigurationProperties("debezium")
public class DebeziumProperties {
    private String databaseHostname;
    private String databasePort;
    private String databaseUser;
    private String databasePassword;
    private String databaseServerName;
    private String databaseDbname;
    private String databaseInclude;
    private String pluginName;
    private String engineName;

    public String getDatabaseHostname() {
        return databaseHostname;
    }

    public void setDatabaseHostname(String databaseHostname) {
        this.databaseHostname = databaseHostname;
    }

    public String getDatabasePort() {
        return databasePort;
    }

    public void setDatabasePort(String databasePort) {
        this.databasePort = databasePort;
    }

    public String getDatabaseUser() {
        return databaseUser;
    }

    public void setDatabaseUser(String databaseUser) {
        this.databaseUser = databaseUser;
    }

    public String getDatabasePassword() {
        return databasePassword;
    }

    public void setDatabasePassword(String databasePassword) {
        this.databasePassword = databasePassword;
    }

    public String getDatabaseServerName() {
        return databaseServerName;
    }

    public void setDatabaseServerName(String databaseServerName) {
        this.databaseServerName = databaseServerName;
    }

    public String getDatabaseDbname() {
        return databaseDbname;
    }

    public void setDatabaseDbname(String databaseDbname) {
        this.databaseDbname = databaseDbname;
    }

    public String getDatabaseInclude() {
        return databaseInclude;
    }

    public void setDatabaseInclude(String databaseInclude) {
        this.databaseInclude = databaseInclude;
    }

    public String getPluginName() {
        return pluginName;
    }

    public void setPluginName(String pluginName) {
        this.pluginName = pluginName;
    }

    public String getEngineName() {
        return engineName;
    }

    public void setEngineName(String engineName) {
        this.engineName = engineName;
    }
}
