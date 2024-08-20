[![Codacy Badge](https://app.codacy.com/project/badge/Grade/108904994aa84de89b5f933b0f33bc67)](https://app.codacy.com/gh/urniaz/ShinyWizard/dashboard?utm_source=gh&utm_medium=referral&utm_content=&utm_campaign=Badge_grade) [![Circle CI Badge](https://img.shields.io/badge/build-passing-brightgreen?style=flat&label=circleci)](https://app.circleci.com/pipelines/github/urniaz?circle-token=79db963de7c13c1570f70cb8ac1c77a5) ![CRAN/METACRAN License](https://img.shields.io/cran/l/ShinyWizard)  ![CRAN/METACRAN Version](https://img.shields.io/cran/v/ShinyWizard)

# ShinyWizard : an interactive presentation of any R package 

<table width="100%" border="0">
  <tbody><tr>
    <td width="80%">ShinyWizard is <b>Shiny App</b> to build an <b>interactive presentation</b> for any R package. <br><br>ShinyWizard installs as standard R package and runs as Shiny app. </td>
    <td width="20%"><img src="https://github.com/urniaz/ShinyWizard/blob/Version-1.0.3.36-dev/ShinyWizard/inst/source/www/img/logo.png"></td>
  </tr>
</tbody></table>

## Quick Run 

```r
devtools::install_github("urniaz/ShinyWizard/ShinyWizard", ref="Version-1.0.3.36-dev", force = TRUE)
library("ShinyWizard")
ShinyWizard::RunShinyWizard()
```

## Quick Examples   =>  [Examples](#22-examples)


[1. Installation](#1-installation)

[2. Documentation](#2-documentation)
- [2.1 Functions](#21-functions)
  - [2.1.1 RunShinyWizard](#211-RunShinyWizard)
- [2.2 Examples](#22-examples)
- [2.3 Tutorials](#23-tutorials)
    
[3. Tests](#3-tests)

[4. How to cite](#4-how-to-cite)

[5. Acknowledgement](#5-acknowledgement)

[6. References](#6-references)


## 1. Installation

## Install 

```r
devtools::install_github("urniaz/ShinyWizard", ref="package", force = TRUE)
library("ShinyWizard")
```
## Run App

```r
ShinyWizard::RunShinyWizard()
```

## 2. Documentation

### 2.1 Functions
The documentation for package including user guides, package vignettes, descriptions of the functions and other documentation is simply accessible by running command below.

```r
# To show the manual and functions' descriptions 
help(package = "ShinyWizard")
```
#### 2.1.1 RunShinyWizard

RunShinyWizard(loc = NULL, devMode = FALSE)

devMode - when TRUE the developer mode is used. It means all tasks run by separate background jobs thus console is not blocked. It works by R Studio API so works only in R studio. It is mode only for development facilitate. Should not be used for production. 

### 2.2 Examples

![](docs/1.png) ![](docs/2.png) ![](docs/3.png) ![](docs/4.png)

### 2.3 Tutorials

TBA


## 3. Tests

Test are implemented as *continuous integration* by CircleCI. Continuous integration is a DevOps software development practice where code changes are regularly merge into a central repository, after which automated builds and tests are run.

The *source* of tests covering the code of the package are available in [tests](https://github.com/urniaz/ShinyWizard/blob/master/tests) folder of the repository.


## 4. How to cite

TBA


## 5. Acknowledgement

TBA


## 6. References

TBA
