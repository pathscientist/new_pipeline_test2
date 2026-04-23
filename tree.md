.
├── fastq_dir_to_samplesheet.py
├── idx.txt
├── merged_BRCA_Deng.txt
├── merged_PRJNA934049.txt
├── merged_v1.txt
├── output_file
├── piRNA_run_pip2.sh
├── piRNA_run_pip.sh
├── remove_new.sh
├── samplesheet_0503.csv
├── samplesheet_BRCA_Deng.csv
├── samplesheet_BRCA_TCGA_GEO_plasma_tissue.csv
├── samplesheet_PRJNA172756.csv
├── samplesheet_PRJNA205694.csv
├── samplesheet_PRJNA934049.csv
├── serial_download_43127200.log
├── serial_download_43191711.log
├── serial_download_43486759.log
├── serial_download_43493687.log
├── serial_download_43498999.log
├── serial_download_43658050.log
├── serial_download_43691063.log
├── serial_download_43691605.log
├── serial_download_44213019.log
├── serial_download_44257387.log
├── serial_download_44310328.log
├── serial_download_44310351.log
├── serial_download_44311177.log
├── serial_download_45081570.log
├── small_RNA_nextflow.sh
├── smrnaseq
│   ├── annotation
│   │   ├── bed_to_gtf.py
│   │   ├── combine_counts.py
│   │   ├── hsa.gold.bed
│   │   ├── hsa.gold.fa
│   │   ├── hsa.gold.gtf
│   │   ├── hsa.hg19.bed
│   │   └── hsa.hg19.gtf
│   ├── assets
│   │   ├── adaptivecard.json
│   │   ├── email_template.html
│   │   ├── email_template.txt
│   │   ├── known_adapters.fa
│   │   ├── methods_description_template.yml
│   │   ├── multiqc_config.yml
│   │   ├── nf-core-smrnaseq_logo_light.png
│   │   ├── samplesheet.csv
│   │   ├── schema_input.json
│   │   ├── sendmail_template.txt
│   │   └── smrnaseq_logo.png
│   ├── bin
│   │   ├── check_samplesheet.py
│   │   ├── collapse_mirtop.r
│   │   └── edgeR_miRBase.r
│   ├── CHANGELOG.md
│   ├── CITATION.cff
│   ├── CITATIONS.md
│   ├── CODE_OF_CONDUCT.md
│   ├── conf
│   │   ├── base.config
│   │   ├── igenomes.config
│   │   ├── modules.config
│   │   ├── test.config
│   │   ├── test_full.config
│   │   └── test_no_genome.config
│   ├── docs
│   │   ├── images
│   │   │   ├── Example_heatmap.png
│   │   │   ├── Example_MDS_plot.png
│   │   │   ├── mirtrace_plot.png
│   │   │   ├── mqc_fastqc_adapter.png
│   │   │   ├── mqc_fastqc_counts.png
│   │   │   ├── mqc_fastqc_quality.png
│   │   │   ├── nf-core-smrnaseq_logo_dark.png
│   │   │   ├── nf-core-smrnaseq_logo_light.png
│   │   │   ├── samtools_alignment_plot.png
│   │   │   ├── smrnaseq_logo.ai
│   │   │   └── smrnaseq_logo.png
│   │   ├── output.md
│   │   ├── README.md
│   │   └── usage.md
│   ├── lib
│   │   ├── nfcore_external_java_deps.jar
│   │   ├── NfcoreSchema.groovy
│   │   ├── NfcoreTemplate.groovy
│   │   ├── Utils.groovy
│   │   ├── WorkflowMain.groovy
│   │   └── WorkflowSmrnaseq.groovy
│   ├── LICENSE
│   ├── main.nf
│   ├── modules
│   │   ├── local
│   │   │   ├── blat_mirna.nf
│   │   │   ├── bowtie_contaminants.nf
│   │   │   ├── bowtie_genome.nf
│   │   │   ├── bowtie_map_contaminants.nf
│   │   │   ├── bowtie_map_mirna.nf
│   │   │   ├── bowtie_map_pirna.nf
│   │   │   ├── bowtie_mirna.nf
│   │   │   ├── bowtie_pirna.nf
│   │   │   ├── datatable_merge.nf
│   │   │   ├── edger_qc.nf
│   │   │   ├── filter_stats.nf
│   │   │   ├── format_fasta_mirna.nf
│   │   │   ├── idxstats_parse.nf
│   │   │   ├── merge_counts.nf
│   │   │   ├── mirdeep2_mapper.nf
│   │   │   ├── mirdeep2_prepare.nf
│   │   │   ├── mirdeep2_run.nf
│   │   │   ├── mirtop_quant.nf
│   │   │   ├── mirtrace.nf
│   │   │   ├── parse_fasta_mirna.nf
│   │   │   ├── samplesheet_check.nf
│   │   │   └── seqcluster_collapse.nf
│   │   └── nf-core
│   │       ├── cat
│   │       │   └── fastq
│   │       │       ├── main.nf
│   │       │       └── meta.yml
│   │       ├── custom
│   │       │   └── dumpsoftwareversions
│   │       │       ├── main.nf
│   │       │       ├── meta.yml
│   │       │       └── templates
│   │       │           └── dumpsoftwareversions.py
│   │       ├── fastp
│   │       │   ├── main.nf
│   │       │   └── meta.yml
│   │       ├── fastqc
│   │       │   ├── main.nf
│   │       │   └── meta.yml
│   │       ├── multiqc
│   │       │   ├── main.nf
│   │       │   └── meta.yml
│   │       ├── samtools
│   │       │   ├── flagstat
│   │       │   │   ├── main.nf
│   │       │   │   └── meta.yml
│   │       │   ├── idxstats
│   │       │   │   ├── main.nf
│   │       │   │   └── meta.yml
│   │       │   ├── index
│   │       │   │   ├── main.nf
│   │       │   │   └── meta.yml
│   │       │   ├── sort
│   │       │   │   ├── main.nf
│   │       │   │   └── meta.yml
│   │       │   └── stats
│   │       │       ├── main.nf
│   │       │       └── meta.yml
│   │       └── subread
│   │           └── featurecounts
│   │               ├── main.nf
│   │               └── meta.yml
│   ├── modules.json
│   ├── nextflow.config
│   ├── nextflow_schema.json
│   ├── pyproject.toml
│   ├── README.md
│   ├── subworkflows
│   │   ├── local
│   │   │   ├── contaminant_filter.nf
│   │   │   ├── featureCounts_pirna.nf
│   │   │   ├── genome_quant.nf
│   │   │   ├── htseq_count_pirna.nf
│   │   │   ├── input_check.nf
│   │   │   ├── mirdeep2.nf
│   │   │   ├── mirna_quant.nf
│   │   │   ├── mirtrace.nf
│   │   │   └── pirna_quant.nf
│   │   └── nf-core
│   │       ├── bam_sort_samtools.nf
│   │       ├── bam_stats_samtools.nf
│   │       ├── fastqc_fastp.nf
│   │       ├── fastqc_trimgalore.nf
│   │       └── featureCounts_pirna.nf
│   ├── tower.yml
│   └── workflows
│       └── smrnaseq.nf
├── smrnaseq.tar.gz
├── SRA_download_pip.sh
├── test_2
│   ├── SRR10116271.fastq.gz
│   └── SRR10116272.fastq.gz
├── test_files
│   └── hsa.gold.fa.gz
├── tree.md
└── work

35 directories, 154 files
