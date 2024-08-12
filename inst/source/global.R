# Clear Environment
rm(list = ls(all.names = TRUE))

# Load configuration file
config <- yaml::yaml.load_file('config.yaml')

# Package names
packages <- c("devtools", "shiny", "shinythemes", "shinydashboard", "shinyjs", "yaml", "readr", "stringr", "shinyWidgets", "bslib")

# Install packages not yet installed
installed_packages <- packages %in% rownames(installed.packages())
if (any(installed_packages == FALSE)) {
  install.packages(packages[!installed_packages])
}

# Packages loading
invisible(lapply(packages, library, character.only = TRUE))

# ShinyWizard
library("ShinyWizard")
