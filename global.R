# Package names
packages <- c("devtools", "shiny", "shinythemes", "shinydashboard", "shinyjs")

# Install packages not yet installed
installed_packages <- packages %in% rownames(installed.packages())
if (any(installed_packages == FALSE)) {
  install.packages(packages[!installed_packages])
}

# Packages loading
invisible(lapply(packages, library, character.only = TRUE))

# lncRna
install_github("prodakt/lncRna")
library("lncRna")
