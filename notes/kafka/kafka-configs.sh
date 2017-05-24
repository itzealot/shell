kafka-configs
Command must include exactly one action: --describe, --alter
# Key Value pairs configs to add 'k1=v1, k2=v2'. The following is a list of valid configurations: For entity_type 'topics':cleanup.policy,compression.type,delete.retention.ms,file.delete.delay.ms,flush.messages,flush.ms,index.interval.bytes,max.message.bytes,min.cleanable.dirty.ratio,min.insync.replicas,preallocate,retention.bytes,retention.ms,segment.bytes,segment.index.bytes,segment.jitter.ms,segment.ms,unclean.leader.election.enable For entity_type 'clients':producer_byte_rate,consumer_byte_rate
--add-config

# Alter the configuration for the entity.
--alter

# config keys to remove 'k1,k2'
--delete-config

# List configs for the given entity.
--describe

# Name of entity (topic name/client id)
--entity-name

# Type of entity (topics/clients)
--entity-type

# Print usage information.
--help

# REQUIRED: The connection string for the zookeeper connection in the form host:port. Multiple URLS can be given to allow fail-over.
--zookeeper <urls>
