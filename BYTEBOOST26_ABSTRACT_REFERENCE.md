# ByteBoost 2026 Application — 1-Page Abstract Reference

This document is a ready-to-edit reference for the ByteBoost'26 application abstract requirement:

> **Abstract (1 page):** describe the specific project, and be as specific as possible about methods, data, software/dependencies, and models.

---

## Version A — Near-final draft (customized to your upstream small RNA pipeline work)

### Title
**Scalable, Reproducible piRNA-Focused Small RNA-Seq Upstream Analysis Across Heterogeneous HPC Testbeds**

### Abstract (about 1 page)
Small RNA sequencing (small RNA-seq) is central to characterizing non-coding RNA species involved in cancer and other diseases, but reproducible high-throughput processing remains challenging when workflows must be adapted for specific classes such as piRNAs. In this project, I will evaluate and optimize a piRNA-focused upstream analysis workflow derived from `nf-core/smrnaseq` (baseline version 2.4.1) and prepare standardized outputs for downstream statistical modeling in R.

The upstream component will run in Nextflow with containerized software on Linux-based HPC systems. I will compare an upstream baseline (`nf-core/smrnaseq` release-pinned execution) to a customized local variant that adds piRNA-oriented annotation resources and quantification paths. The workflow steps include: (1) sample sheet validation and ingest of FASTQ files, (2) read-level QC and adapter handling, (3) contaminant filtering and genomic alignment, (4) piRNA-centric quantification using curated annotation references (BED/GTF/FASTA), and (5) generation of harmonized count matrices and quality summaries. I will use reproducibility controls including explicit pipeline version pinning, parameter snapshots, container/runtime provenance, and fixed reference files.

**Data:** initial runs will use public human small RNA-seq datasets (FASTQ) and pilot subsets for rapid benchmarking, followed by larger cohort-scale batches. Data organization will follow a stable sample sheet schema with unique sample IDs and explicit metadata fields for condition/source.

**Software stack and dependencies:** Nextflow (DSL2), Singularity/Apptainer containers, Bash job scripts for SLURM submission, and a local copy of the smRNA workflow code for the customized branch. Core bioinformatics tooling is supplied via pipeline modules/containers (e.g., QC, alignment, counting, MultiQC aggregation), while project-specific dependencies include custom piRNA annotation assets and helper scripts for annotation conversion/count merging.

**Models/analysis outputs:** for the upstream stage, “models” refer to alignment/quantification reference models (indexed genome/transcript annotations and piRNA feature models). Primary outputs will include per-sample QC reports, alignment statistics, feature-level count matrices, and merged quantification tables formatted for downstream differential analyses in R (planned in a separate folder/workflow).

**Computing/testbed plan:** I will profile performance portability across available cyberinfrastructure and identify parameter/runtime choices that maximize throughput without sacrificing reproducibility. Key metrics include wall time, CPU/memory utilization, failure rate, and reproducibility of count outputs across repeated runs.

**Expected deliverables:** (1) validated reproducible upstream piRNA workflow configuration, (2) benchmark report across target systems, (3) standardized handoff package for downstream R analysis, and (4) practical recommendations for porting small RNA workflows to heterogeneous advanced computing environments.

---

## Version B — Fill-in template (if you want to rewrite in your own voice)

### Title
`[Project title here]`

### Problem and objective (2–4 sentences)
- Biological/engineering question: `[state clearly]`
- Why current workflows are insufficient: `[state gap]`
- Project objective for ByteBoost: `[specific and measurable]`

### Methods (core workflow steps)
1. `[Input/QC/validation]`
2. `[Mapping/filtering]`
3. `[Quantification]`
4. `[Aggregation/export to downstream]`
5. `[Reproducibility and benchmarking strategy]`

### Data
- Source(s): `[SRA/GEO/internal/etc.]`
- Type/format: `[FASTQ, metadata table, references]`
- Scale: `[pilot size + target size]`
- Governance: `[de-identification/public data constraints if any]`

### Software and dependencies
- Workflow engine: `[Nextflow version]`
- Runtime: `[Singularity/Apptainer/Conda]`
- Scheduler: `[SLURM/PBS/etc.]`
- Pipeline/repo version pinning: `[commit/tag]`
- Key tools/modules: `[list 5–10 major tools]`
- Custom code/assets: `[scripts, annotations, models]`

### Models
- Reference/model artifacts used by the pipeline: `[genome build, BED/GTF/FASTA, indices]`
- Any statistical/ML model used downstream (if planned): `[name + goal]`

### Evaluation plan
- Technical metrics: `[runtime, memory, throughput, failure rate]`
- Scientific metrics: `[read mapping, feature detection, consistency]`
- Portability metrics: `[cross-system reproducibility/performance]`

### Deliverables
- `[Deliverable 1]`
- `[Deliverable 2]`
- `[Deliverable 3]`

---

## Suggested edits before submission
- Replace generic phrases with exact dataset accessions and target sample counts.
- Add explicit version pins (e.g., pipeline tag, container tag/digest, annotation release date).
- Keep to one page by trimming repeated context and emphasizing methods + feasibility.
- If space permits, include one short sentence on how upstream outputs are consumed by your downstream R pipeline.
