kafka-topics
Command must include exactly one action: --list, --describe, --create, --alter or --delete

# Alter the number of partitions, replica assignment, and/or configuration for the topic.
--alter

# A topic configuration override for the topic being created or altered.The following is a list of valid configurations:cleanup.policy,compression.type,delete.retention.ms,file.delete.delay.ms, flush.messages,flush.ms, index.interval.bytes,max.message.bytes,min.cleanable.dirty.ratio,min.insync.replicas,preallocate,retention.bytes,retention.ms,segment.bytes,segment.index.bytes,segment.jitter.ms,segment.ms,unclean.leader.election.enable,See the Kafka documentation for full details on the topic configs.
--config <name=value>

# Create a new topic.
--create

# Delete a topic
--delete

# A topic configuration override to be removed for an existing topic (see the list of configurations under the --config option).
--delete-config <name>

# List details for the given topics.
--describe

# Print usage information.
--help

# if set when altering or deleting topics, the action will only execute if the topic exists
--if-exists

# if set when creating topics, the action will only execute if the topic does not already exist
--if-not-exists

# List all available topics.
--list                                   

# The number of partitions for the topic being created or altered (WARNING:If partitions are increased for a topic that has a key, the partition logic or ordering of the messages will be affected.
--partitions <Integer: # of partitions>

# A list of manual partition-to-broker assignments for the topic being created or altered.
--replica-assignment <broker_id_for_part1_replica1:broker_id_for_part1_replica2, broker_id_for_part2_replica1 : broker_id_for_part2_replica2 , ...>
  
  
# The replication factor for each partition in the topic being created.
--replication-factor <Integer: replication factor>

  # The topic to be create, alter or describe. Can also accept a regular expression except for --create option
--topic <topic>

# if set when describing topics, only show topics that have overridden configs
--topics-with-overrides

# if set when describing topics, only show partitions whose leader is not available
--unavailable-partitions                 

# if set when describing topics, only show under replicated partitions
--under-replicated-partitions            

# REQUIRED: The connection string for the zookeeper connection in the form host:port. Multiple URLS can be given to allow fail-over.
--zookeeper <urls>