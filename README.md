# cjdata

<!-- badges: start -->
<!-- badges: end -->

**cjdata** is a very small package to read a CSV file from Qualtrics and reshape the data for conjoint analysis. The current version only supports analysis for a binary-choice outcome. Users should wrangle respondent-level data separately and merge them by each respondent's id. 

Website: https://yhoriuchi.github.io/cjdata/

## Installation

You can install the development version of cjdata from [GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("yhoriuchi/cjdata")
```

## Example

This is a basic example which reshape data for conjiont analysis. The original data set is from *Campus Diversity: The Hidden Conseus* by John Carey, Katie Clayton, and Yusaku Horiuchi (Cambridge University Press, 2020). The complete replication package is available at https://doi.org/10.7910/DVN/KMS5ZY. For more information about the book, see: https://horiuchi.org/diversity/.

``` r
library(cjdata)
load(exampleData)
outcomes <- str_c("Q2.", seq(from = 4, to = 31, by = 3))
df_conjiont <- reshape_conjoint(exampleData, V1, outcomes)
```

To read the original Qualtrics data (with two rows being used for information about each column), use another function in this package, <code>read_Qualtrics()</code>.
