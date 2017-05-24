--hive function
--using
add jar hdfs:///hiveudf/udf.jar;

--drop temp udf
drop temporary function udfName;

--create udf
create temporary function udfName as 'com.sky.projects.hive.udf.TestUDF';

--using udf
select udfName(field) from tableName;

--impala function
--drop function
drop function if exists RowkeyTrim2NullUDF(String,String,String);

--create function
create function if not exists RowkeyTrim2NullUDF(String,String,String) returns String location '/rzxudf/gaMassToolsUDF.jar' symbol='com.surfilter.gamass.udf.RowkeyTrim2NullUDF';