rule map_reads:
    input:
        genome="resources/genome.fasta",
        reads="input/{sample}.fastq"
    output:
        temp("results/mapped/{sample}.sam")
    log:
        "logs/bwa_mem/{sample}.log"
    shell:
        "bwa-mem2 mem {input.genome} {input.reads} > {output} 2> {log}"

