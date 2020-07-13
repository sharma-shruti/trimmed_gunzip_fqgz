# gunzip_fqgz_process

## This repo is a wrapper for `gunzip` process.

## Pre-requisites

- Nextflow
- Docker 

If you plan to setup a basic server, then you can refer [minimal-nextflow-setup](https://github.com/nextflow-hub/minimal-nextflow-setup)

## Execute this process by using the following command:

```
nextflow run https://github.com/nextflow-hub/trimmed_gunzip_fqgz
```

You will see the execution of a `gzip` process.

## Options

- `trimmed` and `untrimmed` input files

By default the pipeline assumes the files to follow the `*.p.fastq.gz` format. For untrimmed files i.e. `*.fastq.gz` pattern simply add the `trimmed` option as false.

```
nextflow run https://github.com/nextflow-hub/trimmed_gunzip_fqgz --trimmed false
```


**NOTE**: By default stores the result files locally into `results/gzip` directory.
