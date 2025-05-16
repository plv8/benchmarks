CREATE EXTENSION IF NOT EXISTS plv8;

CREATE OR REPLACE FUNCTION json_conversion_small_plv8(run_count INT) RETURNS VOID AS $$
  plv8.elog(NOTICE, `Benchmark: JSON conversion small (${run_count})`);

  let json_obj = plv8.execute('SELECT value FROM json_table WHERE entry = $1', ['small']);
  for (let i = 0; i < run_count; i++) {
    let obj = plv8.execute('SELECT $1::JSON', [json_obj]);
  }
$$ LANGUAGE plv8;

CREATE OR REPLACE FUNCTION json_conversion_medium_plv8(run_count INT) RETURNS VOID AS $$
  plv8.elog(NOTICE, `Benchmark: JSON conversion medium (${run_count})`);

  let json_obj = plv8.execute('SELECT value FROM json_table WHERE entry = $1', ['medium']);
  for (let i = 0; i < run_count; i++) {
    let obj = plv8.execute('SELECT $1::JSON', [json_obj]);
  }
$$ LANGUAGE plv8;

CREATE OR REPLACE FUNCTION jsonb_conversion_small_plv8(run_count INT) RETURNS VOID AS $$
  plv8.elog(NOTICE, `Benchmark: JSONB conversion small (${run_count})`);

  let json_obj = plv8.execute('SELECT value FROM jsonb_table WHERE entry = $1', ['small']);
  for (let i = 0; i < run_count; i++) {
    let obj = plv8.execute('SELECT $1::JSONB', [json_obj]);
  }
$$ LANGUAGE plv8;

CREATE OR REPLACE FUNCTION jsonb_conversion_medium_plv8(run_count INT) RETURNS VOID AS $$
  plv8.elog(NOTICE, `Benchmark: JSONB conversion medium (${run_count})`);

  let json_obj = plv8.execute('SELECT value FROM jsonb_table WHERE entry = $1', ['medium']);
  for (let i = 0; i < run_count; i++) {
    let obj = plv8.execute('SELECT $1::JSONB', [json_obj]);
  }
$$ LANGUAGE plv8;

CREATE OR REPLACE FUNCTION int_conversion_plv8(int_data INT, run_count INT) RETURNS VOID AS $$
  plv8.elog(NOTICE, `Benchmark: INT conversion (${run_count})`);

  for (let i = 0; i < run_count; i++) {
    let val = plv8.execute('SELECT $1::INT', [int_data]);
  }
$$ LANGUAGE plv8;

CREATE OR REPLACE FUNCTION float_conversion_plv8(float_data FLOAT, run_count INT) RETURNS VOID AS $$
  plv8.elog(NOTICE, `Benchmark: FLOAT conversion (${run_count})`);

  for (let i = 0; i < run_count; i++) {
    let val = plv8.execute('SELECT $1::FLOAT', [float_data]);
  }
$$ LANGUAGE plv8;

CREATE OR REPLACE FUNCTION text_conversion_plv8(text_data TEXT, run_count INT) RETURNS VOID AS $$
  plv8.elog(NOTICE, `Benchmark: TEXT conversion (${run_count})`);

  for (let i = 0; i < run_count; i++) {
    let val = plv8.execute('SELECT $1::TEXT', [text_data]);
  }
$$ LANGUAGE plv8;

CREATE OR REPLACE FUNCTION timestamp_conversion_plv8(datetime_data TIMESTAMP WITH TIME ZONE, run_count INT) RETURNS VOID AS $$
  plv8.elog(NOTICE, `Benchmark: TIMESTAMP conversion (${run_count})`);

  for (let i = 0; i < run_count; i++) {
    let val = plv8.execute('SELECT $1::TIMESTAMP WITH TIME ZONE', [datetime_data]);
  }
$$ LANGUAGE plv8;

CREATE OR REPLACE FUNCTION array_creation_and_search_plv8(size INT, run_count INT) RETURNS VOID AS $$
  plv8.elog(NOTICE, `Benchmark: Array creation and search (${run_count})`);

  for (let i = 0; i < run_count; i++) {
    let data = [...Array(size).keys()];
    data.find(i => i === Math.floor(size / 10));
    data.find(i => i === Math.floor(size / 5));
    data.find(i => i === Math.floor(size / 2));
  }
$$ LANGUAGE plv8;

CREATE OR REPLACE FUNCTION context_creation_callee() RETURNS VOID AS $$
$$ LANGUAGE plv8;

CREATE OR REPLACE FUNCTION context_creation_plv8(run_count INT) RETURNS VOID AS $$
  plv8.elog(NOTICE, `Benchmark: Context creation (${run_count})`);

  for (let i = 0; i < run_count; i++) {
    plv8.execute(`CREATE ROLE role_${run_count}`);
    plv8.execute(`SET ROLE role_${run_count}`);
    plv8.execute(`SELECT context_creation_callee()`);
    plv8.execute(`RESET ROLE`);
    plv8.execute(`DROP ROLE role_${run_count}`);
  }
$$ LANGUAGE plv8;
