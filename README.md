# Language Extension Benchmarks

A fairly simple benchmarking application to test type conversions and language speed inside of Postgres language extensions.

## Supported Languages

Currently there are only two supported language extensions:

- PLV8
- PLJS

Additional languages and tests are welcome contributions.

## Running the Benchmarks

Benchmarks require a Linux, or Unix based environment (BSD, MacOS) in order to run:

```shell
./run_benchmarks.sh -p pljs -p plv8
```

This will execute benchmarks for both `pljs` and `plv8` and the output of the benchmarks will be sent to the `output` directory.

Note that this will create and then drop a database named `benchmarks`.

### Benchmark Results

To process the benchmark results, `node.js` should be installed:

```shell
./process_results -p pljs -p plv8 -o output.csv
```

This will analyze the output from the benchmarks and create a `csv` file named `output.csv` containing the processed results.
