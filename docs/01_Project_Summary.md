# Project Summary

## Title

**Cell–Cell Communication Analysis of Inflammatory Macrophage Signaling in Lupus Nephritis**

---

## Overview

This project presents a reproducible computational systems immunology workflow for investigating intercellular communication in human lupus nephritis using single-cell RNA sequencing and CellChat.

The analysis reconstructs ligand–receptor communication between immune and stromal cell populations within the kidney and focuses on the role of **inflammatory macrophages** in organizing the local immune signaling environment.

Rather than analyzing cell populations independently, this project examines how cells interact as a network and identifies signaling pathways that may contribute to immune activation, leukocyte recruitment, and disease-associated inflammation.

---

## Scientific Objective

The primary objective was to characterize the cell–cell communication landscape of the lupus nephritis kidney and determine whether inflammatory macrophages participate in major disease-associated signaling programs.

The analysis addressed three principal questions:

1. Which cell populations are major participants in the inferred communication network?
2. Which signaling pathways dominate the lupus nephritis immune microenvironment?
3. Which macrophage-associated communication programs may represent biologically or therapeutically relevant mechanisms?

---

## Dataset

The analysis uses human kidney single-cell RNA sequencing data from the **Accelerating Medicines Partnership Lupus Nephritis Consortium**.

| Dataset | Species | Technology | Purpose |
|---------|---------|------------|---------|
| AMP Lupus Nephritis (SDY997) | Human | Single-cell RNA-seq | Cell–cell communication inference |

The analyzed dataset contains approximately:

- **2,838 kidney cells**
- **22,709 genes**
- **12 annotated immune and stromal cell populations**

The processed single-cell object is not redistributed in this repository. Instructions for obtaining the source data are provided in `data/README.md`.

---

## Computational Workflow

```text
Human Kidney scRNA-seq
          │
          ▼
Quality-Controlled Single-Cell Dataset
          │
          ▼
Cell Type Annotation
          │
          ▼
CellChat Communication Inference
          │
          ▼
Global Cell–Cell Communication Network
          │
          ▼
Inflammatory Macrophage-Centered Analysis
          │
          ▼
Ligand–Receptor Interaction Analysis
          │
          ▼
Pathway-Level Communication Analysis
          │
          ▼
Biological and Translational Interpretation
```

---

## Main Findings

The analysis revealed a highly interconnected communication landscape involving immune and stromal populations within the lupus nephritis kidney.

Inflammatory macrophages participated extensively in the inferred network and communicated with multiple populations, including:

- CD4 T cells
- CD8 cytotoxic T cells
- Regulatory T cells
- B cells
- Dendritic cells
- Stromal populations

These results support inflammatory macrophages as prominent participants in the predicted intercellular signaling landscape.

---

## Dominant Communication Programs

Pathway-level analysis identified several prominent signaling programs:

| Rank | Pathway |
|------|---------|
| 1 | MHC-II |
| 2 | MHC-I |
| 3 | GALECTIN |
| 4 | CD99 |
| 5 | CLEC |
| 6 | IL16 |
| 7 | PROSTAGLANDIN |
| 8 | CCL |
| 9 | ICAM |
| 10 | MIF |

Together, these pathways suggest extensive communication associated with:

- Antigen presentation
- Innate immune activation
- Leukocyte recruitment
- Immune regulation
- Cell adhesion
- Inflammatory signaling

---

## Macrophage-Associated Signaling

The macrophage-centered analysis identified several biologically relevant communication programs, including:

- **TNF → TNFRSF1A/B** signaling
- **CCL3 / CCL4 → CCR5** signaling
- **BAFF-associated** communication involving B cells
- **GALECTIN-associated** signaling across multiple immune populations

These interactions provide candidate mechanisms through which inflammatory macrophages may influence the broader renal immune microenvironment.

---

## Translational Relevance

The communication network contains pathways with established or potential therapeutic relevance.

BAFF signaling is particularly notable because the BAFF axis is already therapeutically targeted in lupus, providing an example of how computational communication analysis can recover clinically relevant biology.

Other pathways, including CCL, GALECTIN, TNF, and MIF signaling, provide additional hypotheses for mechanistic investigation and therapeutic prioritization.

Importantly, the analysis does not establish that inferred ligand–receptor interactions are functionally active. Instead, it identifies candidate communication programs that can guide downstream spatial, experimental, and therapeutic validation.

---

## Repository Outputs

The repository provides:

- Reproducible CellChat analysis scripts
- Global cell–cell communication networks
- Macrophage-centered interaction analyses
- Ligand–receptor interaction tables
- Pathway-level communication summaries
- Communication strength rankings
- Pathway-specific network visualizations
- Publication-quality figures
- Supporting documentation

---

## Relationship to Project 1

This project extends the therapeutic target discovery performed in **Project 1: Cross-Species Therapeutic Target Discovery in Lupus Nephritis**.

Project 1 asks:

> **Which macrophage-associated genes represent potential therapeutic targets?**

Project 2 asks:

> **How do inflammatory macrophages interact with the surrounding immune microenvironment?**

Together, the projects move from gene-level target discovery toward a systems-level understanding of disease-associated immune networks.

```text
Project 1
Therapeutic Target Discovery
        │
        ▼
Project 2
Cell–Cell Communication
        │
        ▼
Network-Level Biological Context
        │
        ▼
Therapeutic Prioritization
```

---

## Skills Demonstrated

- Single-cell RNA sequencing analysis
- CellChat
- Ligand–receptor interaction inference
- Cell–cell communication analysis
- Network biology
- Systems immunology
- Pathway-level analysis
- Translational immunology
- Scientific visualization
- Reproducible computational biology

---

## Limitations

Several limitations should be considered when interpreting the results:

- CellChat infers communication from transcriptomic data and known ligand–receptor relationships.
- Transcript expression does not establish protein abundance or functional signaling.
- The analysis does not directly demonstrate spatial proximity between predicted sender and receiver populations.
- Communication strength represents computational inference rather than experimentally measured signaling activity.
- Functional and spatial validation would be required to confirm specific predicted interactions.

These limitations are important when translating network predictions into mechanistic or therapeutic hypotheses.

---

## Applications

The workflow can be adapted to investigate cell–cell communication in:

- Autoimmune diseases
- Inflammatory diseases
- Tumor microenvironments
- Tissue injury
- Fibrosis
- Immunotherapy response
- Therapeutic target discovery

---

## Future Directions

Potential extensions include:

- Comparison of communication networks across patient subtypes
- Integration with spatial transcriptomics
- Differential communication analysis between disease states
- Ligand activity prediction
- Network centrality analysis
- Integration with therapeutic target prioritization
- AI-assisted pathway ranking
- Multi-omic communication modeling

---

## Project Context

This repository is part of the **AI Computational Immunology Portfolio**, which progresses from therapeutic target discovery to network biology, AI-assisted prioritization, and patient stratification.

The broader objective is to demonstrate how single-cell transcriptomics and computational approaches can be integrated into a translational workflow for understanding disease mechanisms and identifying precision therapeutic opportunities in autoimmune disease.
