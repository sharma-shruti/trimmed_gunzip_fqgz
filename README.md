# gunzip_fqgz_process

## This nextflow wrapper helps to implement `gunzip` process of a `fastq` pipeline that includes:

## Pre-requisites

- Nextflow
- Docker 

If you plan to setup a basic server, then you can refer [minimal-nextflow-setup](https://github.com/nextflow-hub/minimal-nextflow-setup)

## Execute this process by using the following command:

```
nextflow run https://github.com/nextflow-hub/trimmed_gunzip_fqgz
```

You will see the execution of a `gzip` process.


**NOTE**: In this script, it stores the result files locally into `results/gzip` directory.
