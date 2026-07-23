# Data

This repository analyzes publicly available single-cell transcriptomic data from human lupus nephritis kidney biopsies.

To comply with the data providers' distribution policies and GitHub file size limitations, the original datasets and processed Seurat objects are **not redistributed** in this repository.

---

## Human Single-Cell RNA Sequencing

**Study:** Accelerating Medicines Partnership (AMP) Lupus Nephritis Consortium

- **ImmPort Study:** SDY997
- **Species:** Human
- **Technology:** Single-cell RNA sequencing
- **Purpose:** Reconstruction of cell–cell communication networks in lupus nephritis using CellChat.

---

## Dataset Summary

| Characteristic | Value |
|----------------|-------|
| Species | Human |
| Disease | Lupus Nephritis |
| Cells | 2,838 |
| Genes | 22,709 |
| Cell Populations | 12 annotated immune and stromal cell types |
| Analysis Platform | CellChat |

---

## Processed Files

The repository contains intermediate analysis outputs generated during the CellChat workflow, including:

- Cell–cell communication tables
- Ligand–receptor interaction results
- Pathway-specific communication analyses
- Network centrality metrics
- Publication-quality figures

Large processed objects, including Seurat and CellChat objects, are intentionally excluded because they exceed GitHub file size limits.

---

## Reproducing the Analysis

1. Download the original **SDY997** dataset from the AMP Lupus Nephritis Consortium (ImmPort).
2. Preprocess the dataset following the instructions provided in the project documentation.
3. Place the processed Seurat object in the directory specified by the analysis scripts.
4. Execute the scripts in the order described in the main `README.md`.

Running the complete workflow will reproduce:

- Global communication networks
- Incoming and outgoing signaling analyses
- Ligand–receptor interaction tables
- Pathway-specific communication networks
- Macrophage-centered signaling analyses
- Publication-quality figures

---

## Data Availability

This repository distributes **analysis code only**.

Users are responsible for obtaining the original dataset from the official public repository and complying with the associated data usage policies.
