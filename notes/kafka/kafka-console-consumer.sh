# Blacklist of topics to exclude from consumption.
--blacklist <blacklist>

--bootstrap-server <server to connect to>

# Consumer config properties file.
--consumer.config <config file>

# If set, the CSV metrics reporter will be enabled
--csv-reporter-enabled

# If specified, the consumer path in zookeeper is deleted when starting up
--delete-consumer-offsets

# The name of a class to use for formatting kafka messages for display. (default: kafka.tools. DefaultMessageFormatter)
--formatter <class>

# If the consumer does not already have an established offset to consume from, start with the earliest message present in the log rather than the latest message.
--from-beginning

--key-deserializer <deserializer for key>
  
# The maximum number of messages to consume before exiting. If not set, consumption is continual.
--max-messages <Integer: num_messages>

# If csv-reporter-enable is set, and this parameter isset, the csv metrics will be outputed here.
--metrics-dir <metrics directory>

# Use the new consumer implementation.
--new-consumer

--property <prop>

# If there is an error when processing a message, skip it instead of halt.
--skip-message-on-error

# If specified, exit if no message is available for consumption for the specified interval.
--timeout-ms <Integer: timeout_ms>

# The topic id to consume on.
--topic <topic>

--value-deserializer <deserializer for values>

# Whitelist of topics to include for consumption.
--whitelist <whitelist>

# REQUIRED: The connection string for the zookeeper connection in the form host:port. Multiple URLS can be given to allow fail-over.
--zookeeper <urls>