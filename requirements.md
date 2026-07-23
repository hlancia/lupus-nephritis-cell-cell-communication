# Requirements

This project was developed and tested using **R (version 4.6 or later)**.

---

# Software

| Software | Version |
|----------|---------|
| R | >= 4.6 |

---

# Required R Packages

## CRAN Packages

- Seurat
- CellChat
- dplyr
- tidyr
- ggplot2
- patchwork
- Matrix
- matrixStats
- future
- future.apply
- NMF
- igraph

---

## Bioconductor Packages

- ComplexHeatmap
- BiocManager

---

## Optional Packages

The following packages are optional but recommended for extending the analysis or customizing visualizations:

- circlize
- reshape2
- cowplot

---

# Installation

## Install CRAN Packages

```r
install.packages(c(
  "Seurat",
  "CellChat",
  "dplyr",
  "tidyr",
  "ggplot2",
  "patchwork",
  "Matrix",
  "matrixStats",
  "future",
  "future.apply",
  "NMF",
  "igraph"
))
```

## Install Bioconductor

```r
install.packages("BiocManager")
```

## Install Bioconductor Packages

```r
BiocManager::install(c(
  "ComplexHeatmap"
))
```

---

# Verify Installation

Load all required packages before running the analysis.

```r
library(Seurat)
library(CellChat)
library(dplyr)
library(tidyr)
library(ggplot2)
library(patchwork)
library(Matrix)
library(matrixStats)
library(future)
library(future.apply)
library(NMF)
library(igraph)
library(ComplexHeatmap)
```

---

# Reproducibility

The analysis was developed using the package versions available during development.

Newer package versions are expected to remain compatible, although minor differences in visualization, network layout, or optimization algorithms may occur due to updates in package implementations.

For maximum reproducibility, users are encouraged to record their R session information after installation:

```r
sessionInfo()
```

Saving the session information provides a complete record of the software environment, including package versions and operating system details.
