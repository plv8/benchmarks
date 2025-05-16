-- JSON conversion - small
SELECT
  json_conversion_small_pljs (10000);

-- JSON conversion - medium
SELECT
  json_conversion_medium_pljs (10000);

-- JSONB conversion - small
SELECT
  jsonb_conversion_small_pljs (10000);

-- JSONB conversion - medium
SELECT
  jsonb_conversion_medium_pljs (10000);

-- INT conversion
SELECT
  int_conversion_pljs (23, 100000);

-- FLOAT conversion
SELECT
  float_conversion_pljs (3.14159, 100000);

-- TEXT conversion
SELECT
  text_conversion_pljs ('hello, this is some text', 100000);

-- TIMESTAMP conversion
SELECT
  timestamp_conversion_pljs (NOW (), 100000);
