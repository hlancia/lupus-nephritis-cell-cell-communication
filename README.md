# Cell-Cell Communication Analysis of Inflammatory Macrophage Signaling in Lupus Nephritis

Computational systems immunology analysis of intercellular communication networks in human lupus nephritis using single-cell transcriptomics and CellChat.

<p align="center">
  <img src="figures/Figure1_Global_Communication_Network.png" width="500">
</p>

## Project Overview

Lupus nephritis (LN) is a severe autoimmune complication of systemic lupus erythematosus characterized by immune-cell infiltration and chronic kidney inflammation.

The objective of this project was to characterize the intercellular communication landscape of human lupus nephritis and determine how inflammatory macrophages interact with other immune populations within the renal microenvironment.

Cell-cell communication was inferred using the CellChat framework applied to a publicly available human single-cell RNA sequencing dataset from the Accelerating Medicines Partnership (AMP) Lupus Nephritis consortium.

---

## Scientific Questions

* Which cell populations communicate most extensively in lupus nephritis?
* Do inflammatory macrophages function as communication hubs?
* Which signaling pathways dominate the lupus nephritis microenvironment?
* Which macrophage-derived pathways represent potential therapeutic opportunities?

---

## Dataset

Human lupus nephritis single-cell RNA-seq dataset:

* AMP Lupus Nephritis Consortium
* 2,838 kidney cells
* 22,709 genes
* 12 annotated cell populations

Cell populations include:

* Inflammatory Macrophages
* CD4 T cells
* CD8 Cytotoxic T cells
* Tissue-resident memory T cells
* Regulatory T cells
* B cells
* cDC2
* LAMP3 dendritic cells
* NK cells
* Stromal populations

---

## Analysis Workflow

Single-cell RNA-seq data

↓

Cell-type annotation

↓

CellChat ligand-receptor inference

↓

Intercellular communication networks

↓

Macrophage-centered signaling analysis

↓

Pathway prioritization and biological interpretation

---

## Major Findings

### Inflammatory macrophages are major communication hubs

Inflammatory macrophages participated in 230 significant ligand-receptor interactions and communicated with all major immune populations, including T cells, B cells, dendritic cells, and stromal cells.

### Antigen presentation dominates the communication landscape

The strongest communication pathways were:

1. MHC-II
2. MHC-I
3. GALECTIN
4. CD99
5. CLEC
6. IL16
7. Prostaglandin
8. CCL
9. ICAM
10. MIF

### Macrophage signaling suggests multiple mechanisms of disease propagation

Examples include:

* TNF → TNFRSF1A/B signaling toward T cells
* CCL3/CCL4 → CCR5 signaling toward cytotoxic T cells and dendritic cells
* BAFF signaling toward B cells
* Extensive Galectin-9 signaling toward multiple immune populations

---

## Translational Relevance

This analysis demonstrates how computational approaches can identify immune communication programs that may contribute to disease progression and therapeutic response.

The identification of macrophage-derived BAFF signaling recapitulates a clinically actionable pathway already targeted by Belimumab in lupus nephritis. The prominence of Galectin signaling additionally suggests potentially underexplored mechanisms of immune regulation and tissue injury.

---

## Repository Structure

```text
scripts/
    01_setup_cellchat.R
    02_cellchat_human_amp_ln.R

results/
    CellChat interaction tables
    Pathway rankings
    Macrophage communication summaries

figures/
    Communication network figures
    Pathway-specific networks
    Signaling heatmaps
```

---

## Technologies

* R
* Seurat
* CellChat
* ggplot2
* dplyr
* Patchwork

---

## Key Skills Demonstrated

* Single-cell transcriptomics
* Cell-cell communication inference
* Systems immunology
* Network biology
* Translational target discovery
* Reproducible computational workflows
* Scientific visualization
