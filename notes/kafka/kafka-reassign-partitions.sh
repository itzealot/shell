kafka-reassign-partitions

Command must include exactly one action: --generate, --execute or --verify

# The list of brokers to which the partitions need to be reassigned in the form "0,1,2". This is required if --topics-to-move-json-file is used to generate reassignment configuration
--broker-list <brokerlist>

# Kick off the reassignment as specified by the --reassignment-json-file option.
--execute

# Generate a candidate partition reassignment configuration. Note that this only generates a candidate assignment, it does not execute it.
--generate

# The JSON file with the partition reassignment configurationThe format to use is - {"partitions":[{"topic": "foo","partition": 1,"replicas": [1,2,3] }],"version":1}
--reassignment-json-file <manual assignment json file path>

# to move the partitions of thespecified topics to the list ofbrokers specified by the --broker-list option. The format to use is -{"topics":[{"topic": "foo"},{"topic": "foo1"}],"version":1}
--topics-to-move-json-file <topics to  Generate a reassignment configuration reassign json file path>

# Verify if the reassignment completed as specified by the --reassignment-json-file option.
--verify

# REQUIRED: The connection string for the zookeeper connection in the form host:port. Multiple URLS can be given to allow fail-over.
--zookeeper <urls>
