############################################################
# 01_setup_cellchat.R
#
# Purpose:
# Install and verify packages required for cell-cell
# communication analysis in lupus nephritis.
############################################################

packages <- c(
  "Seurat",
  "CellChat",
  "dplyr",
  "ggplot2",
  "patchwork",
  "ComplexHeatmap",
  "BiocNeighbors"
)

sapply(
  packages,
  require,
  character.only = TRUE
)

packageVersion("CellChat")