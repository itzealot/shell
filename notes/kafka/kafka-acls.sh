kafka-acls
Usage:[Option and Description]
# Indicates you are trying to add ACLs.
--add

# Host from which principals listed in --allow-principal will have access. If you have specified  --allow-principal then the default for this option will be set to * which allows access from all hosts.
--allow-host <allow-host>

--allow-principal <allow-principal> : principal is in principalType:name format. Note that principalType must be supported by the Authorizer being used. For example, User:* is the wild card indicating all users.

# Fully qualified class name of the authorizer, defaults to kafka. security.auth.SimpleAclAuthorizer. (default: kafka.security.auth. SimpleAclAuthorizer).
--authorizer <authorizer>

# REQUIRED: properties required to configure an instance of Authorizer. These are key=val pairs. For the default authorizer the example values are: zookeeper. connect=localhost:2181
--authorizer-properties <authorizer-properties>

# Add/Remove cluster ACLs.
--cluster

# Convenience option to add/remove ACLs for consumer role. This will generate ACLs that allows READ, DESCRIBE on topic and READ on group.
--consumer

# Host from which principals listed in --deny-principal will be denied access. If you have specified --deny-principal then the default for this option will be set to * which denies access from all hosts.
--deny-host <deny-host>

# principal is in principalType:name format. By default anyone not added through --allow-principal is denied access. You only need to use this option as negation to already allowed set. Note that principalType must be supported by the Authorizer being used. For example if you wanted to allow access to all users in the system but not test-user you can define an ACL that allows access to User:* and specify --deny-principal=User:test@EXAMPLE.COM. AND PLEASE REMEMBER DENY RULES TAKES PRECEDENCE OVER ALLOW RULES.
--deny-principal <deny-principal>

# Consumer Group to which the ACLs should be added or removed. A value of * indicates the ACLs should apply to all groups.
--group <group>

# Print usage information.
--help

# List ACLs for the specified resource, use --topic <topic> or --group <group> or --cluster to specify a resource.
--list

# Operation that is being allowed or denied. Valid operation names are: Read Write Create Delete Alter Describe ClusterAction All (default: All)
--operation

# Convenience option to add/remove ACLs for producer role. This will generate ACLs that allows WRITE, DESCRIBE on topic and CREATE on cluster.
--producer

# Indicates you are trying to remove ACLs.
--remove

# topic to which ACLs should be added or removed. A value of * indicates ACL should apply to all topics.
--topic <topic>