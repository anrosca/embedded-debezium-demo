package inc.evil.debezium.cdc;

import lombok.extern.slf4j.Slf4j;
import org.apache.kafka.connect.data.Struct;
import org.apache.kafka.connect.source.SourceRecord;
import org.springframework.stereotype.Component;

import java.util.function.Consumer;

@Component
@Slf4j
public class DatabaseChangeEventListener implements Consumer<SourceRecord> {
    @Override
    public void accept(SourceRecord sourceRecord) {
        Struct payload = (Struct) sourceRecord.value();
        Struct after = (Struct) payload.get("after");
        Struct before = (Struct) payload.get("before");
        log.debug("Database was changed. Before: {}. After: {}", before, after);
    }
}
