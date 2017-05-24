kafka-consumer-offset-checker

# Print broker info
--broker-info

# Consumer group.
--group

# Print this message.
--help

# Retry back-off to use for failed offset queries. (default: 3000)
--retry.backoff.ms <Integer>

# Socket timeout to use when querying for offsets. (default: 6000)
--socket.timeout.ms <Integer>

# Comma-separated list of consumer topics (all topics if absent).
--topic

# ZooKeeper connect string. (default: localhost:2181)
--zookeeper