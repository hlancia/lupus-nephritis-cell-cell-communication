# Methodology

## Overview

This project implements a reproducible computational workflow to characterize cell–cell communication in human lupus nephritis using single-cell RNA sequencing and **CellChat**.

The analysis reconstructs potential ligand–receptor signaling between annotated immune and stromal cell populations in the kidney, with particular emphasis on **inflammatory macrophages**.

The workflow progresses from a processed single-cell transcriptomic dataset to global communication inference, macrophage-centered network analysis, pathway-level characterization, and biological interpretation.

CellChat predictions represent **computationally inferred communication potential** and should not be interpreted as direct experimental evidence of functional signaling.

---

# Computational Workflow

```text
Human Kidney scRNA-seq
          │
          ▼
Processed and Annotated
Single-Cell Dataset
          │
          ▼
Expression Matrix + Cell Metadata
          │
          ▼
CellChat Object Construction
          │
          ▼
Ligand–Receptor Database Selection
          │
          ▼
Identification of Relevant
Signaling Genes and Interactions
          │
          ▼
Communication Probability Inference
          │
          ▼
Pathway-Level Communication Inference
          │
          ▼
Global Communication Network
          │
          ▼
Inflammatory Macrophage-Centered Analysis
          │
          ▼
Pathway-Specific Networks
          │
          ▼
Communication Strength Ranking
          │
          ▼
Biological and Translational Interpretation
```

---

# Dataset

The analysis uses human kidney single-cell RNA sequencing data from the **Accelerating Medicines Partnership Lupus Nephritis Consortium**.

| Dataset | Species | Technology | Purpose |
|---------|---------|------------|---------|
| AMP Lupus Nephritis (SDY997) | Human | Single-cell RNA sequencing | Cell–cell communication analysis |

The analyzed single-cell dataset contains approximately:

- **2,838 cells**
- **22,709 genes**
- **12 annotated immune and stromal populations**

The large processed single-cell object is not redistributed in this repository.

Data availability and acquisition instructions are described in:

```text
data/README.md
```

---

# Software Environment

The analysis was performed in **R** using CellChat together with packages for single-cell analysis, data manipulation, network analysis, and visualization.

Core packages include:

- R
- Seurat
- CellChat
- dplyr
- tidyr
- ggplot2
- patchwork
- Matrix
- igraph

Additional package information and installation instructions are available in:

```text
requirements.md
```

Users are encouraged to record the exact computational environment using:

```r
sessionInfo()
```

---

# 1. Single-Cell Dataset Preparation

The CellChat workflow begins with a processed and annotated human lupus nephritis single-cell dataset.

Prior to communication analysis, the single-cell data were organized to provide two essential components:

1. A gene-by-cell expression matrix
2. Cell-level metadata containing the assigned cell identities

The cell annotations represent the immune and stromal populations used as nodes in the downstream communication network.

Annotated populations include inflammatory macrophages and major lymphoid, myeloid, and stromal populations present in the analyzed dataset.

---

# 2. CellChat Object Construction

CellChat was used to infer potential communication between annotated cell populations.

The expression matrix and corresponding metadata were used to construct a CellChat object.

Cell identities were assigned according to the existing single-cell annotations so that communication could be evaluated between biologically defined populations rather than unsupervised cluster numbers.

Conceptually:

```text
Gene Expression Matrix
          +
Cell-Type Metadata
          │
          ▼
     CellChat Object
```

This object forms the basis for all subsequent ligand–receptor and pathway-level analyses.

---

# 3. Ligand–Receptor Database

The CellChat human ligand–receptor database was used to define known signaling relationships relevant to intercellular communication.

CellChat integrates information about signaling components including:

- Ligands
- Receptors
- Multi-subunit receptor complexes
- Signaling cofactors
- Established signaling pathways

The database provides the prior biological knowledge required to connect gene-expression patterns with candidate intercellular signaling relationships.

---

# 4. Identification of Signaling Features

The expression data were evaluated in the context of the CellChat signaling database to identify genes and interactions relevant to communication inference.

This step reduces the analysis from the full transcriptomic feature space to genes associated with known signaling relationships.

Candidate ligand–receptor interactions are subsequently evaluated according to expression patterns in the corresponding sender and receiver cell populations.

---

# 5. Cell–Cell Communication Inference

CellChat estimates communication probabilities for candidate signaling relationships between cell populations.

For a conceptual sender–receiver pair:

```text
Sender Population
       │
       │ Ligand
       ▼
Ligand–Receptor Interaction
       │
       │ Receptor
       ▼
Receiver Population
```

Communication probabilities are inferred using expression of the signaling components together with the CellChat interaction framework.

The resulting network describes **potential communication relationships** among the annotated populations.

These probabilities should not be interpreted as experimentally measured signaling rates.

---

# 6. Filtering of Communication Events

Communication inference can generate interactions with varying levels of statistical and biological support.

The CellChat workflow applies its communication inference and filtering framework to identify interactions retained for downstream analysis.

This reduces the influence of weak or poorly supported predictions and produces the interaction set used for network reconstruction and pathway analysis.

The resulting interaction tables are exported to the:

```text
results/
```

directory.

---

# 7. Global Communication Network

Inferred ligand–receptor interactions were aggregated to reconstruct the global communication network of the lupus nephritis kidney.

In this representation:

- Nodes represent annotated cell populations.
- Connections represent inferred communication between populations.
- Network properties summarize the amount or strength of predicted communication.

The global network provides a systems-level view of how immune and stromal populations may interact within the analyzed tissue.

The corresponding visualization is provided as:

```text
Figure1_Global_Communication_Network.png
```

---

# 8. Incoming and Outgoing Signaling

Communication was examined from both sender and receiver perspectives.

### Outgoing signaling

Outgoing signaling describes communication predicted to originate from a given cell population.

This can identify populations that potentially act as major sources of signaling molecules.

### Incoming signaling

Incoming signaling describes communication predicted to be received by a given population.

This can identify populations that may be strongly influenced by the surrounding signaling environment.

These complementary perspectives provide a more informative description of network organization than interaction counts alone.

---

# 9. Inflammatory Macrophage-Centered Analysis

Because inflammatory macrophages are a major focus of this project, interactions involving this population were extracted from the global CellChat network.

Particular attention was given to macrophage-derived signaling toward populations including:

- CD4 T cells
- CD8 cytotoxic T cells
- B cells
- cDC2
- Other immune populations
- Stromal populations

The macrophage-centered analysis was used to investigate whether inflammatory macrophages participate broadly in the predicted communication landscape and to identify candidate pathways through which they may influence other cells.

The analysis generates dedicated interaction tables for selected macrophage-to-target-cell relationships.

---

# 10. Ligand–Receptor Interaction Analysis

Individual predicted interactions were examined at the ligand–receptor level.

Representative macrophage-associated signaling relationships identified during the analysis included:

- **TNF → TNFRSF1A/B**
- **CCL3 / CCL4 → CCR5**
- BAFF-associated signaling
- GALECTIN-associated signaling

These interactions were interpreted as candidate communication mechanisms rather than confirmed functional interactions.

Ligand–receptor analysis provides greater biological resolution than pathway-level scores alone by identifying the molecular components underlying predicted network relationships.

---

# 11. Pathway-Level Communication Analysis

Individual ligand–receptor interactions were aggregated into signaling pathways using the CellChat framework.

This transforms a large interaction network into biologically interpretable signaling programs.

Prominent pathways identified in the analysis included:

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

Pathway-level analysis provides a systems-level perspective on the major signaling programs represented within the inferred communication landscape.

---

# 12. Pathway-Specific Network Analysis

Selected signaling pathways were examined individually to determine which populations contributed to their predicted communication networks.

Pathway-specific analyses included:

- BAFF
- GALECTIN
- TNF
- CCL

These pathways were selected for detailed visualization because of their biological relevance to immune regulation, inflammation, lymphocyte biology, or leukocyte recruitment.

Pathway-specific networks are available in the:

```text
figures/
```

directory.

---

# 13. Communication Strength Ranking

Pathway-level communication was summarized to identify prominent signaling programs within the dataset.

The resulting ranking provides a comparative view of pathways represented strongly in the inferred network.

The ranking is exported as:

```text
results/Pathway_Communication_Strength.csv
```

and visualized in:

```text
figures/Figure8_Top_Communication_Pathways.png
```

Communication strength is a **model-derived quantity** and should not be interpreted as a direct measurement of biological pathway activity.

---

# 14. Biological Interpretation

The inferred communication network was interpreted in the context of lupus nephritis immunobiology.

Major biological themes included:

### Antigen Presentation

MHC-I and MHC-II communication suggests extensive antigen-presentation-related interactions within the renal immune environment.

### Leukocyte Recruitment

CCL signaling highlights candidate chemokine networks capable of contributing to immune-cell recruitment and organization.

### Innate and Myeloid Signaling

CLEC and MIF pathways provide evidence of broader innate immune communication programs.

### Immune Regulation

GALECTIN-associated communication suggests regulatory interactions involving multiple immune populations.

### B-Cell Biology

BAFF-associated signaling provides a connection between the inferred communication network and an established therapeutic pathway in lupus.

---

# 15. Translational Interpretation

The communication analysis was used to identify signaling programs that may be relevant to therapeutic target discovery.

Importantly, therapeutic relevance was considered separately from communication strength.

A pathway with strong inferred communication is not automatically a therapeutic target.

Candidate pathways require additional evaluation based on factors such as:

- Disease relevance
- Cell-type specificity
- Human genetic evidence
- Existing therapeutic evidence
- Druggability
- Safety
- Independent cohort validation
- Experimental validation

This distinction is particularly important when translating computational network analysis into therapeutic hypotheses.

---

# Output Files

The workflow generates structured outputs in the `results/` directory, including:

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

Descriptions of these files are available in:

```text
results/README.md
```

---

# Figures

Major visual outputs include:

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

Figure descriptions and interpretation are provided in:

```text
figures/README.md
```

---

# Reproducibility

The complete analysis is implemented as scripted R workflows.

The scripts should be executed in sequence:

```text
01_setup_cellchat.R
        │
        ▼
02_cellchat_human_amp_ln.R
        │
        ▼
Communication Inference
        │
        ▼
Network and Pathway Analysis
        │
        ▼
Results + Figures
```

All principal interaction tables, pathway summaries, and visualizations are generated programmatically.

No manual modification of analytical results is required for the workflow.

Large serialized single-cell or CellChat objects may be excluded from the repository because they can be regenerated from the source data and analysis scripts.

---

# Methodological Limitations

Several limitations should be considered when interpreting the analysis.

### Transcript abundance does not equal protein activity

CellChat relies primarily on transcriptomic evidence and prior ligand–receptor knowledge. Expression of a ligand or receptor does not establish protein abundance, activation, secretion, or downstream signaling.

### Communication is computationally inferred

Predicted ligand–receptor interactions represent communication potential rather than direct evidence of physical or functional signaling.

### Spatial proximity is not directly measured

Single-cell RNA sequencing does not preserve tissue spatial organization. Two populations predicted to communicate may not necessarily be spatially adjacent within the kidney.

### Cell-population averages can mask heterogeneity

Communication inference at the annotated population level may obscure variation among individual cells, patients, or cellular substates.

### Results depend on annotation

Cell-type definitions influence the structure of the inferred communication network. Annotation errors or broad cell categories may affect downstream interpretation.

### Cohort-level analysis does not establish patient-specific signaling

The present workflow characterizes communication within the analyzed dataset and should not be interpreted as demonstrating identical signaling networks in every lupus nephritis patient.

### Experimental validation remains necessary

Candidate pathways and ligand–receptor interactions require independent spatial, protein-level, or functional validation before mechanistic conclusions can be established.

---

# Future Methodological Extensions

The current framework can be extended through:

- Differential communication analysis across patient subtypes
- Disease-versus-control communication analysis
- Spatial transcriptomic validation of ligand–receptor pairs
- Ligand activity prediction
- Network centrality analysis
- Integration with genetic evidence
- Integration with therapeutic target databases
- Multi-omic communication modeling
- Independent cohort validation
- AI-assisted pathway prioritization

---

# Relationship to the Broader Portfolio

This methodology provides the network-biology layer of the **AI Computational Immunology Portfolio**.

```text
Project 1
Cross-Species Target Discovery
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
and Precision Targeting
```

Project 1 identifies candidate disease-associated targets.

Project 2 places immune populations and signaling pathways within an intercellular network context.

Project 3 integrates multiple sources of biological evidence to prioritize therapeutic candidates.

Project 4 evaluates patient-level molecular heterogeneity and cluster-specific therapeutic hypotheses.

Together, these projects form a progressive computational framework from **disease biology to therapeutic prioritization and precision medicine**.
