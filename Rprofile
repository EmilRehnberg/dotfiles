require(magrittr)
if(interactive()){
  library(colorout)
  library(setwidth)
  library(vimcom)
}

# think ruby's `%w`
wordArray <- function(string){ string %>% strsplit("[[:space:]]+") %>% unlist }

# Divide by zero with set default
dataDivision <- function(numerator, denominator, divZero = NA){
  division <- numerator / denominator
  ifelse(is.finite(division), division, divZero)
}

# extract factor columns from data frame.
getFactors <- function(dataFrame){
 dataFrame %>%
   names %>%
   sapply(function(colName){
            dataFrame %>%
              getElement(colName) %>%
              is.factor
   }) %>%
   dataFrame[,.]
}

# returns if object is square shaped i.e. number of rows and columns are the equal
isSquareShaped <- function(object) { equals(ncol(object), nrow(object)) }

# calculates the diagonal proportion in a square-shaped object
diagonalProportion <-
  function(object){
    if(object %>% isSquareShaped %>% not){
      warning("calculating the diagonal proportion only applies to squared objects")
      return(0)
    }
    divide_by(object %>% diag %>% sum,
              object %>% sum)}
