kafka-preferred-replica-election
Missing required argument "[zookeeper]"

# The JSON file with the list of replica leader election should be done, in the following format -{"partitions":[{"topic": "foo", "partition": 1},{"topic": "foobar", "partition": 2}]}.Defaults to all existing partitions
--path-to-json-file <list of partitions for which preferred partitions for which preferred replica leader election needs to be triggered>

# REQUIRED: The connection string for the zookeeper connection in the form host:port. Multiple URLS can be given to allow fail-over.
--zookeeper <urls>