load data inpath '/staging/yelp*' into table working;

set hive.exec.dynamic.partition.mode=nonstrict;
set mapred.map.output.compression.codec=org.apache.hadoop.io.compress.SnappyCodec;
set hive.exec.compress.intermediate=true;
set mapred.output.compression.type=BLOCK;
set hive.exec.compress.output=true;
set mapred.output.compression.codec=org.apache.hadoop.io.compress.SnappyCodec;

INSERT INTO TABLE production PARTITION (dt) SELECT * FROM working;

