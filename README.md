# Coursera - Data Cleaning - UCI HAR Datasat

Data cleaning project within the context of the coursera data science course.

## Execute the analysis

This documents describes how to execute the script. A detailed description of the data transformation itself and the analysis steps performed by the script is given in **CodeBook.md**.

### Prerequisites
 
The UCI HAR Dataset has to be present in the project directory and has to have its default name:

```
/UCI HAR Dataset/*
```

The r packages *magrittr*, *dplyr*, *stringr* have to be installed. If this is not yet the case, they can be installed with the following commands in an active R session:

```
install.packages("magrittr")
install.packages("dplyr")
install.packages("stringr")
```
An active internet connection is necessary for this to work.

### Data cleaning and analysis

All required data cleaning, analysis and output is performed by the script **run_analysis.R**. Despite the above mentioned package and data requirements, it has no further dependencies. 

In an R session execute:
```
source("run_analysis.R")
```

To run from a shell:

```
Rscript run_analysis.R
```


