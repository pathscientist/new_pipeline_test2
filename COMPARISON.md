# Comparison: teammate pipeline vs nf-core/smrnaseq 2.4.1

## What was available to compare in this folder
This repository currently contains only:
- `README.md`
- `small_RNA_nextflow.sh`
- `tree.md`
- `serial_download_43691605.log`

So the comparison below is based on:
1. your teammate's stated intent in `README.md`,
2. execution behavior in `small_RNA_nextflow.sh`, and
3. the pipeline tree snapshot recorded in `tree.md`.

## High-level conclusion
Your teammate appears to have built a **customized local copy** of nf-core/smrnaseq focused on piRNA analysis by adding custom annotation resources and piRNA-specific modules/subworkflows.

However, the launcher script in this folder (`small_RNA_nextflow.sh`) runs `nextflow run nf-core/smrnaseq` (registry version), not the local `./smrnaseq` directory and not pinned to `-r 2.4.1`. So, as written, that script does **not reliably run the modified local pipeline**.

## Evidence of customization from the tree snapshot
From `tree.md`, the teammate pipeline includes a local `smrnaseq/` folder with:

- Custom `annotation/` assets and conversion scripts:
  - `annotation/hsa.gold.*`
  - `annotation/hsa.hg19.*`
  - `annotation/bed_to_gtf.py`
  - `annotation/combine_counts.py`
- piRNA-focused workflow/module additions or emphasis:
  - `modules/local/bowtie_map_pirna.nf`
  - `modules/local/bowtie_pirna.nf`
  - `subworkflows/local/pirna_quant.nf`
  - `subworkflows/local/featureCounts_pirna.nf`
  - `subworkflows/local/htseq_count_pirna.nf`

This is consistent with your README note saying the annotation was changed to work exclusively for piRNAs.

## Critical execution difference vs original nf-core/smrnaseq 2.4.1
In `small_RNA_nextflow.sh`, the command is:

`nextflow run nf-core/smrnaseq -profile singularity --input '*.fastq.gz' --genome GRCh37`

Implications:

- It targets the **remote pipeline name** (`nf-core/smrnaseq`) instead of a local path (`./smrnaseq`).
- It is **not pinned** to 2.4.1 (`-r 2.4.1` missing), so it may resolve to a different version depending on cache/update state.
- Therefore this launcher is not guaranteed to execute teammate modifications even if local files exist.

## How your teammate most likely “made it”
Based on the snapshot and file naming, the workflow likely was:

1. Start from nf-core/smrnaseq 2.4.1 code layout.
2. Add/replace annotation references (BED/GTF/FASTA) for piRNA-focused targets.
3. Add or adapt local Nextflow modules/subworkflows for piRNA-specific mapping/quantification (`bowtie_*pirna`, `featureCounts_pirna`, `htseq_count_pirna`).
4. Add helper scripts for annotation conversion and count merging.
5. Keep an HPC SLURM wrapper for production runs.

## Practical mismatch to fix
If the goal is to run your teammate’s modified local pipeline, use something like:

- `nextflow run ./smrnaseq -profile singularity --input '*.fastq.gz' --genome GRCh37`

And if you need strict equivalence to upstream baseline comparison:

- `nextflow run nf-core/smrnaseq -r 2.4.1 ...`

## Limits of this comparison
I could not line-by-line diff against the upstream 2.4.1 source from this folder alone because the actual local `smrnaseq/` files shown in `tree.md` are not present here right now.

So this is a **structure- and behavior-based comparison**, not a full semantic code diff.
