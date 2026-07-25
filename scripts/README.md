# Scripts

This directory contains the reproducible R workflow used to reconstruct and analyze cell–cell communication networks in human lupus nephritis.

The analysis uses **CellChat** to infer ligand–receptor communication between immune and stromal cell populations from the AMP Lupus Nephritis single-cell RNA-seq dataset (SDY997), with particular emphasis on signaling involving **inflammatory macrophages**.

---

# Analysis Workflow

The scripts should be executed sequentially:

```text
01_setup_cellchat.R
        │
        ▼
Prepare Single-Cell Data
        │
        ▼
Initialize CellChat
        │
        ▼
02_cellchat_human_amp_ln.R
        │
        ▼
Ligand–Receptor Inference
        │
        ▼
Global Communication Network
        │
        ▼
Macrophage-Centered Analysis
        │
        ▼
Pathway-Level Analysis
        │
        ▼
Results + Figures
```

---

# Script Overview

| Script | Purpose |
|--------|---------|
| `01_setup_cellchat.R` | Prepare the single-cell dataset and initialize the CellChat analysis |
| `02_cellchat_human_amp_ln.R` | Perform communication inference, macrophage-centered analysis, pathway analysis, and generate outputs |

---

# 01 — CellChat Setup

## `01_setup_cellchat.R`

This script prepares the human lupus nephritis single-cell dataset for CellChat analysis.

### Main Steps

The script performs the initial setup required for downstream communication inference, including:

- Loading required R packages
- Loading the processed human lupus nephritis single-cell dataset
- Verifying cell-type annotations
- Preparing the expression matrix and metadata
- Initializing the CellChat object
- Assigning cell identities
- Configuring the CellChat ligand–receptor database
- Preparing the object for downstream communication analysis

### Input

The analysis requires a processed and annotated single-cell object derived from:

**AMP Lupus Nephritis Consortium — SDY997**

The large processed single-cell object is not redistributed in this repository.

See:

```text
data/README.md
```

for information about the source dataset.

### Output

The script prepares the CellChat analysis environment used by the downstream communication workflow.

---

# 02 — Human Lupus Nephritis Cell–Cell Communication Analysis

## `02_cellchat_human_amp_ln.R`

This script performs the main CellChat analysis and generates the communication networks, interaction tables, pathway summaries, and figures used throughout the project.

### Communication Inference

CellChat is used to infer potential ligand–receptor communication between annotated cell populations.

The analysis includes:

- Identification of overexpressed signaling genes
- Identification of candidate ligand–receptor interactions
- Communication probability estimation
- Filtering of low-confidence interactions
- Pathway-level communication probability calculation
- Aggregation of the global communication network

---

### Global Communication Analysis

The inferred interactions are used to reconstruct the communication landscape of the lupus nephritis kidney.

Outputs include:

- Global cell–cell communication network
- Communication interaction counts
- Communication strength estimates
- Incoming signaling patterns
- Outgoing signaling patterns
- Pathway-level communication profiles

---

### Inflammatory Macrophage Analysis

A major focus of the workflow is the communication behavior of inflammatory macrophages.

Macrophage-associated interactions are extracted to investigate signaling toward populations including:

- CD4 T cells
- CD8 cytotoxic T cells
- B cells
- cDC2
- Other immune populations
- Stromal populations

This analysis is used to assess whether inflammatory macrophages function as communication hubs within the lupus nephritis microenvironment.

---

### Pathway Analysis

Individual ligand–receptor interactions are aggregated into signaling pathways.

Representative pathways investigated include:

- MHC-I
- MHC-II
- GALECTIN
- CCL
- TNF
- BAFF
- CLEC
- MIF
- ICAM

Pathway-level analysis provides a systems-level view of communication programs that may contribute to immune activation and tissue inflammation.

---

# Generated Results

The workflow generates structured result tables in:

```text
results/
```

Major outputs include:

```text
All_CellChat_Interactions.csv

Inflammatory_Macrophage_Communication_Table.csv

Macrophage_to_CD4T_Interactions.csv

Macrophage_to_CD8T_Interactions.csv

Macrophage_to_Bcell_Interactions.csv

Macrophage_to_cDC2_Interactions.csv

Macrophage_Pathway_Summary.csv

Pathway_Communication_Strength.csv
```

See `results/README.md` for descriptions and interpretation of these outputs.

---

# Generated Figures

The workflow generates publication-quality figures in:

```text
figures/
```

These include:

```text
Figure1_Global_Communication_Network.png

Figure2_Macrophage_Outgoing_Network.png

Figure3_Outgoing_Signaling_Heatmap.png

Figure4_BAFF_Network.png

Figure5_GALECTIN_Network.png

Figure6_TNF_Network.png

Figure7_CCL_Network.png

Figure8_Top_Communication_Pathways.png
```

See `figures/README.md` for figure descriptions and interpretation.

---

# Running the Analysis

Run the scripts from the project root directory in the following order:

```text
01_setup_cellchat.R

↓

02_cellchat_human_amp_ln.R
```

For example, from R:

```r
source("scripts/01_setup_cellchat.R")
source("scripts/02_cellchat_human_amp_ln.R")
```

Before running the workflow, ensure that:

1. The required R packages are installed.
2. The input single-cell dataset is available.
3. Cell-type annotations are present.
4. Required directories are available.

Package requirements are documented in:

```text
requirements.md
```

---

# Reproducibility

The workflow is designed to regenerate the CellChat analysis from the processed single-cell dataset.

All major downstream outputs are generated programmatically, including:

- Ligand–receptor interaction tables
- Macrophage-specific interaction tables
- Pathway summaries
- Communication rankings
- Network visualizations
- Publication-quality figures

Large serialized R objects may be excluded from the repository because they can be regenerated from the source data and analysis scripts.

For maximum reproducibility, users are encouraged to record their R environment after running the analysis:

```r
sessionInfo()
```

---

# Interpretation

CellChat performs **computational inference of potential cell–cell communication** based primarily on ligand and receptor expression.

Therefore, predicted communication events should not be interpreted as direct evidence that physical or functional signaling occurs between two cell populations.

The results are intended to identify candidate communication programs for biological interpretation, prioritization, and subsequent experimental validation.

---

# Workflow Context

This analysis extends the therapeutic target discovery performed in the first project of the AI Computational Immunology Portfolio.

```text
Project 1
Therapeutic Target Discovery
        │
        ▼
Project 2
Cell–Cell Communication
        │
        ▼
Project 3
AI-Driven Target Prioritization
        │
        ▼
Project 4
Patient Stratification
```

Together, these analyses progress from identifying disease-associated molecular targets to understanding their network context and potential relevance for precision therapeutic strategies.
