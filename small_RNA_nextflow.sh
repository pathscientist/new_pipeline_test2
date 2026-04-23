#!/bin/bash
#SBATCH --job-name=download_RNA_seq    # Job name
#SBATCH --mail-type=END,FAIL          # Mail events (NONE, BEGIN, END, FAIL, ALL)
#SBATCH --mail-user=shaoqiu@hawaii.edu     # Where to send mail	
#SBATCH --nodes=1                  # Run on 2 nodes
#SBATCH --tasks-per-node=1           
#SBATCH --cpus-per-task=18
#SBATCH --mem=120G
#SBATCH --account=bioinfo
#SBATCH --partition=bioinfo
#SBATCH --time=6-23:00:00               # Time limit hrs:min:sec
#SBATCH --output=serial_download_%j.log   # Standard output and error log
pwd; hostname; date



echo "Running plot script on 20 CPU core"

module load tools/Singularity
####activate conda environment
module load  lang/Anaconda3/2019.07
source activate nf-core


##run samll RNA-seq piple
nextflow run nf-core/smrnaseq -profile singularity --input '*.fastq.gz' --genome GRCh37



##move results files to bio_LTS





date
