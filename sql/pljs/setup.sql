CREATE EXTENSION IF NOT EXISTS pljs;

CREATE OR REPLACE FUNCTION json_conversion_small_pljs(run_count INT) RETURNS VOID AS $$
  pljs.elog(NOTICE, `Benchmark: JSON conversion small (${run_count})`);

  let json_obj = pljs.execute('SELECT value FROM json_table WHERE entry = $1', ['small']);
  for (let i = 0; i < run_count; i++) {
    let obj = pljs.execute('SELECT $1::JSON', [json_obj]);
  }
$$ LANGUAGE pljs;

CREATE OR REPLACE FUNCTION json_conversion_medium_pljs(run_count INT) RETURNS VOID AS $$
  pljs.elog(NOTICE, `Benchmark: JSON conversion medium (${run_count})`);

  let json_obj = pljs.execute('SELECT value FROM json_table WHERE entry = $1', ['medium']);
  for (let i = 0; i < run_count; i++) {
    let obj = pljs.execute('SELECT $1::JSON', [json_obj]);
  }
$$ LANGUAGE pljs;

CREATE OR REPLACE FUNCTION jsonb_conversion_small_pljs(run_count INT) RETURNS VOID AS $$
  pljs.elog(NOTICE, `Benchmark: JSONB conversion small (${run_count})`);

  let json_obj = pljs.execute('SELECT value FROM jsonb_table WHERE entry = $1', ['small']);
  for (let i = 0; i < run_count; i++) {
    let obj = pljs.execute('SELECT $1::JSONB', [json_obj]);
  }
$$ LANGUAGE pljs;

CREATE OR REPLACE FUNCTION jsonb_conversion_medium_pljs(run_count INT) RETURNS VOID AS $$
  pljs.elog(NOTICE, `Benchmark: JSONB conversion medium (${run_count})`);

  let json_obj = pljs.execute('SELECT value FROM jsonb_table WHERE entry = $1', ['medium']);
  for (let i = 0; i < run_count; i++) {
    let obj = pljs.execute('SELECT $1::JSONB', [json_obj]);
  }
$$ LANGUAGE pljs;

CREATE OR REPLACE FUNCTION int_conversion_pljs(int_data INT, run_count INT) RETURNS VOID AS $$
  pljs.elog(NOTICE, `Benchmark: INT conversion (${run_count})`);

  for (let i = 0; i < run_count; i++) {
    let val = pljs.execute('SELECT $1::INT', [int_data]);
  }
$$ LANGUAGE pljs;

CREATE OR REPLACE FUNCTION float_conversion_pljs(float_data FLOAT, run_count INT) RETURNS VOID AS $$
  pljs.elog(NOTICE, `Benchmark: FLOAT conversion (${run_count})`);

  for (let i = 0; i < run_count; i++) {
    let val = pljs.execute('SELECT $1::FLOAT', [float_data]);
  }
$$ LANGUAGE pljs;

CREATE OR REPLACE FUNCTION text_conversion_pljs(text_data TEXT, run_count INT) RETURNS VOID AS $$
  pljs.elog(NOTICE, `Benchmark: TEXT conversion (${run_count})`);

  for (let i = 0; i < run_count; i++) {
    let val = pljs.execute('SELECT $1::TEXT', [text_data]);
  }
$$ LANGUAGE pljs;

CREATE OR REPLACE FUNCTION timestamp_conversion_pljs(datetime_data TIMESTAMP WITH TIME ZONE, run_count INT) RETURNS VOID AS $$
  pljs.elog(NOTICE, `Benchmark: TIMESTAMP conversion (${run_count})`);

  for (let i = 0; i < run_count; i++) {
    let val = pljs.execute('SELECT $1::TIMESTAMP WITH TIME ZONE', [datetime_data]);
  }
$$ LANGUAGE pljs;

CREATE OR REPLACE FUNCTION array_creation_and_search_pljs(size INT, run_count INT) RETURNS VOID AS $$
  pljs.elog(NOTICE, `Benchmark: Array creation and search (${run_count})`);

  for (let i = 0; i < run_count; i++) {
    let data = [...Array(size).keys()];
    data.find(i => i === Math.floor(size / 10));
    data.find(i => i === Math.floor(size / 5));
    data.find(i => i === Math.floor(size / 2));
  }
$$ LANGUAGE pljs;

CREATE OR REPLACE FUNCTION context_creation_callee() RETURNS VOID AS $$
$$ LANGUAGE pljs;

CREATE OR REPLACE FUNCTION context_creation_pljs(run_count INT) RETURNS VOID AS $$
  pljs.elog(NOTICE, `Benchmark: Context creation (${run_count})`);

  for (let i = 0; i < run_count; i++) {
    pljs.execute(`CREATE ROLE role_${run_count}`);
    pljs.execute(`SET ROLE role_${run_count}`);
    pljs.execute(`SELECT context_creation_callee()`);
    pljs.execute(`RESET ROLE`);
    pljs.execute(`DROP ROLE role_${run_count}`);
  }
$$ LANGUAGE pljs;
