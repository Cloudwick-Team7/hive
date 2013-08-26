create external table working( business_id STRING, full_address STRING, open BOOLEAN, categories ARRAY<STRING>,city STRING, review_count BIGINT,  name STRING, neighborhoods ARRAY<STRING>, latitude DOUBLE, state STRING, stars DOUBLE, longitude DOUBLE, type STRING, dt STRING) ROW FORMAT DELIMITED FIELDS TERMINATED BY '\002' COLLECTION ITEMS TERMINATED BY '\001' stored as TEXTFILE LOCATION '/working/dailydataload/';


create external table production( business_id STRING, full_address STRING, open BOOLEAN, categories ARRAY<STRING>, city STRING, review_count BIGINT,  name STRING, neighborhoods ARRAY<STRING>, latitude DOUBLE, state STRING, stars DOUBLE, longitude DOUBLE, type STRING) partitioned by(dt STRING) ROW FORMAT DELIMITED FIELDS TERMINATED BY '\002' COLLECTION ITEMS TERMINATED BY '\001' stored as SEQUENCEFILE LOCATION '/production/dailydataload';

