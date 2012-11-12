
function validate_data() {
    ctool run test 0 "cassandra-src/tools/bin/cassandra-stress --operation=READ --family-type=Standard --num-keys=$num_keys"
    ctool run test 0 "cassandra-src/tools/bin/cassandra-stress --operation=RANGE_SLICE --family-type=Standard --num-keys=$slice_keys"
    ctool run test 0 "cassandra-src/tools/bin/cassandra-stress --operation=INDEXED_RANGE_SLICE --family-type=Standard --num-keys=$slice_keys"
    ctool run test 0 "cassandra-src/tools/bin/cassandra-stress --operation=MULTI_GET --family-type=Standard --num-keys=$slice_keys"
    ctool run test 0 "cassandra-src/tools/bin/cassandra-stress --operation=COUNTER_GET --family-type=Standard --num-keys=$num_keys"
    ctool run test 0 "cassandra-src/tools/bin/cassandra-stress --operation=READ --family-type=Super --num-keys=$num_keys"
    ctool run test 0 "cassandra-src/tools/bin/cassandra-stress --operation=RANGE_SLICE --family-type=Super --num-keys=$slice_keys"
    ctool run test 0 "cassandra-src/tools/bin/cassandra-stress --operation=INDEXED_RANGE_SLICE --family-type=Super --num-keys=$slice_keys"
    ctool run test 0 "cassandra-src/tools/bin/cassandra-stress --operation=MULTI_GET --family-type=Super --num-keys=$slice_keys"
    ctool run test 0 "cassandra-src/tools/bin/cassandra-stress --operation=COUNTER_GET --family-type=Super --num-keys=$num_keys"
}

# insert some data
ctool run test 0 "cassandra-src/tools/bin/cassandra-stress --operation=INSERT --family-type=Standard --num-keys=$num_keys --create-index=KEYS"
ctool run test 0 "cassandra-src/tools/bin/cassandra-stress --operation=COUNTER_ADD --family-type=Standard --num-keys=$num_keys --create-index=KEYS"
ctool run test 0 "cassandra-src/tools/bin/cassandra-stress --operation=INSERT --family-type=Super --num-keys=$num_keys --create-index=KEYS"
ctool run test 0 "cassandra-src/tools/bin/cassandra-stress --operation=COUNTER_ADD --family-type=Super --num-keys=$num_keys --create-index=KEYS"


validate_data

