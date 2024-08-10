# Simple R Shiny Wizard App

ShinyWizard is an interactive shiny app to build DEMO presenations for any package. ShinyWizard is distributed as an R package for easy use and compatybilty. 

Siply run the ShintWizard demo generated with ShinyWiards - carrazy isini t?

** Shiny app distributed as R package **

# Install 
```r
devtools::install_github("urniaz/ShinyWizard", ref="package", force = TRUE)
library("ShinyWizard")
```
# Run app
```r
ShinyWizard::RunShinyWizard()
```

# Design concept
The master power has ```config.yaml``` file and based on ofnortion prived there the wizardis atumatically uild. 

# Configuration

#Installation

To install the stable version from CRAN, simply run the following from an R console:

install.packages("shiny")

To install the latest development builds directly from GitHub, run this instead:

if (!require("devtools"))
  install.packages("devtools")
devtools::install_github("shiny", "rstudio")

# Getting started
