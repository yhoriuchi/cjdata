# Ref: https://github.com/mvuorre/exampleRPackage/blob/master/data-raw/preprocess.R

# Load raw data from .csv file

library(tidyverse)
source("R/read_Qualtrics.R")
exampleData <- read_Qualtrics("data-raw/Campus_Diversity_Project__Dartmouth_Faculty_Recruitment.csv")

# Apply preprocessing...
# Save the cleaned data in the required R package location
usethis::use_data(exampleData, overwrite = TRUE)

