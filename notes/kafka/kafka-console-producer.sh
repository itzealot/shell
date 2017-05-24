kafka-console-producer
Missing required argument "[topic]"

# Number of messages to send in a single batch if they are not being sent synchronously. (default: 200)
--batch-size <Integer: size>

# REQUIRED: The broker list string in the form HOST1:PORT1,HOST2:PORT2.
--broker-list <broker-list>

# The compression codec: either 'none', 'gzip', 'snappy', or 'lz4'.If specified without value, then it defaults to 'gzip'
--compression-codec [compression-codec]

# The class name of the message encoder implementation to use for serializing keys. (default: kafka. serializer.DefaultEncoder)
--key-serializer <encoder_class>

# The class name of the class to use for reading lines from standard in. By default each line is read as a separate message. (default: kafka. tools. ConsoleProducer$LineMessageReader)
--line-reader <reader_class>

# The max time that the producer will block for during a send request (default: 60000)
--max-block-ms <Long: max block on send>

# The total memory used by the producer to buffer records waiting to be sent to the server. (default: 33554432)
--max-memory-bytes <Long: total memory in bytes>

# The buffer size allocated for a partition. When records are received which are smaller than this size the producer will attempt to optimistically group them together until this size is reached. (default: 16384)
--max-partition-memory-bytes <Long: memory in bytes per partition>

# Brokers can fail receiving the message for multiple reasons, and being unavailable transiently is just one of them. This property specifies the number of retires before the producer give up and drop this message. (default: 3)
--message-send-max-retries <Integer>

# The period of time in milliseconds after which we force a refresh of metadata even if we haven't seen any leadership changes. (default: 300000)
--metadata-expiry-ms <Long: metadata expiration interval>

# Use the old producer implementation.
--old-producer

# A mechanism to pass user-defined properties in the form key=value to the producer.
--producer-property <producer_prop>

# Producer config properties file. Note that [producer-property] takes precedence over this config.
--producer.config <config file>

# A mechanism to pass user-defined properties in the form key=value to the message reader. This allows custom configuration for a user-defined message reader.
--property <prop>

# Timeout for event enqueue (default: 2147483647)
--queue-enqueuetimeout-ms <Integer: queue enqueuetimeout ms>

# If set and the producer is running in asynchronous mode, this gives the maximum amount of  messages will queue awaiting sufficient batch size. (default: 10000)
--queue-size <Integer: queue_size>

# The required acks of the producer requests (default: 0)
--request-required-acks <Integer: request required acks>

# The ack timeout of the producer requests. Value must be non-negative and non-zero (default: 1500)
--request-timeout-ms <Integer: request timeout ms>

# Before each retry, the producer refreshes the metadata of relevant topics. Since leader election takes a bit of time, this property specifies the amount of time that the producer waits before refreshing the metadata. (default: 100)
--retry-backoff-ms <Integer>

# The size of the tcp RECV size. (default: 102400)
--socket-buffer-size <Integer: size>

# If set message send requests to the brokers are synchronously, one at a time as they arrive.
--sync

# If set and the producer is running in asynchronous mode, this gives the maximum amount of time a message will queue awaiting sufficient batch size. The value is given in ms. (default: 1000)
--timeout <Integer: timeout_ms>

# REQUIRED: The topic id to produce messages to.
--topic <topic>

# The class name of the message encoder implementation to use for serializing values. (default: kafka. serializer.DefaultEncoder)
--value-serializer <encoder_class>