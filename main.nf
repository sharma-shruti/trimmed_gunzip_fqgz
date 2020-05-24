#!/usr/bin/env nextflow


/*
################
NEXTFLOW Global Config
################
*/


inputRawFilePattern = "./*_{R1,R2}.p.fastq.gz"

Channel.fromFilePairs(inputRawFilePattern, flat: true)
        .into { ch_in_gzip }


/*
################
gzip these files
################
*/


process gzip {
    echo true
    container 'abhi18av/biodragao_base'
    publishDir 'results/gzip'

    input:
    tuple (genomeName, path(read_1_gz), path(read_2_gz)) from ch_in_gzip

    output:
    tuple path(genome_1_fq), path(genome_2_fq) into ch_out_gzip

    script:
    // rename the output files
    // G04880_R1.p.fastq.gz > G04880_R1.p.fastq
    genome_1_fq = read_1_gz.name.split("\\.")[0] + '.p.fastq'
    genome_2_fq = read_2_gz.name.split("\\.")[0] + '.p.fastq'

    """
    gzip -dc ${read_1_gz} > ${genome_1_fq} 
    gzip -dc ${read_2_gz} > ${genome_2_fq}
    """
//gzip -dc G04880_R1.p.fastq.gz > G04880_R1.p.fastq
}
