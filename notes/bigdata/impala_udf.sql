--drop function
drop function if exists Trim2NullUDF(String);

--create function
create function if not exists Trim2NullUDF(String) returns String location '/rzxudf/gaMassToolsUDF.jar' symbol='com.surfilter.gamass.udf.Trim2NullUDF';