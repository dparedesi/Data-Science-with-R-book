#rm(list = ls(all = TRUE)) # Clears all variables before each chapter

library(tidyverse)
library(dslabs)
library(dplyr)
library(gtools)
library(readr)
library(readxl)
library(rvest)
library(syuzhet)
library(stringr)
library(tm) 
library(wordcloud)
library(lubridate)
library(gutenbergr)
library(class)
library(caret)
library(ISLR)
library(HistData)
library(modeldata)
library(glmnet)
library(ranger)
library(naivebayes)
library(dendextend)
library(factoextra)
library(corrplot)
library(googleAuthR)
library(googleAnalyticsR)
ds_theme_set()

#library(maps)## load maps first to avoid map conflict with purrr
#library(MASS) ## load MASS and matrixStats first to avoid select and count conflict
#library(matrixStats) 

## Adapted from Hadley Wickham and Garrett Grolemund's r4ds
#options(digits = 3, width = 72, formatR.indent = 2)

knitr::opts_chunk$set(
  comment = "#>",
  collapse = TRUE,
  cache = FALSE,
  width = 72,
  #tidy.opts=list(width.cutoff=72, tidy=TRUE),
  out.width = "80%",
  fig.align = 'center',
  fig.width = 6,
  fig.height = 3.708,  # width * 1 / phi
  fig.show = "hold")

#options(dplyr.print_min = 5, dplyr.print_max = 5)
