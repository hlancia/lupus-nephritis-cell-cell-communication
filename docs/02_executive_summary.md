# Executive Summary

## Project Title

Cell-Cell Communication Analysis of Inflammatory Macrophage Signaling in Lupus Nephritis

---

## Objective

Lupus nephritis (LN) is a severe autoimmune manifestation of systemic lupus erythematosus characterized by immune-cell infiltration, chronic inflammation, and progressive kidney damage.

The objective of this project was to reconstruct the intercellular communication landscape of human lupus nephritis and determine how inflammatory macrophages interact with other immune populations within the renal microenvironment.

---

## Dataset

Dataset:
Accelerating Medicines Partnership (AMP) Lupus Nephritis Consortium

Data type:
Human kidney single-cell RNA sequencing

Dataset characteristics:

* 2,838 cells
* 22,709 genes
* 12 annotated cell populations

Cell populations included:

* Inflammatory macrophages
* CD4 T cells
* CD8 cytotoxic T cells
* Tissue-resident memory T cells
* Regulatory T cells
* B cells
* cDC2
* LAMP3 dendritic cells
* NK cells
* Stromal populations

---

## Computational Workflow

Single-cell RNA sequencing

↓

Cell-type annotation

↓

CellChat ligand-receptor inference

↓

Intercellular communication network reconstruction

↓

Macrophage-centered signaling analysis

↓

Pathway prioritization and biological interpretation

---

## Major Findings

### Inflammatory macrophages are communication hubs

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

### Macrophages communicate with adaptive immune cells through multiple pathways

Examples include:

* TNF → TNFRSF1A/B signaling toward T cells
* CCL3/CCL4 → CCR5 signaling toward cytotoxic T cells and dendritic cells
* BAFF signaling toward B cells
* Extensive Galectin-9 signaling toward multiple immune populations

---

## Translational Significance

The identification of macrophage-derived BAFF signaling recapitulates a clinically actionable pathway already targeted by Belimumab in lupus nephritis.

The prominence of Galectin signaling suggests potentially underexplored mechanisms of immune regulation and tissue injury that may warrant further investigation.

Collectively, these findings support a model in which inflammatory macrophages act as central organizers of immune communication networks in lupus nephritis.

---

## Skills Demonstrated

* Single-cell transcriptomics
* Cell-cell communication inference
* Systems immunology
* Network biology
* Ligand-receptor analysis
* Translational target discovery
* Reproducible computational workflows
* Scientific data visualization

---

## Future Directions

* Validate Galectin signaling in independent lupus nephritis datasets.
* Compare communication networks between healthy and diseased kidneys.
* Integrate cell-cell communication with target prioritization analyses.
* Investigate therapeutic modulation of macrophage-derived signaling pathways.
