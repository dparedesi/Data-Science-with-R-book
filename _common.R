# _common.R - Shared setup for all book chapters
# Data Science with R, 2nd Edition
# ============================================

# --- Core Packages ---
library(tidyverse)    # Includes dplyr, ggplot2, readr, tidyr, purrr, stringr
library(dslabs)       # Datasets for learning data science

# --- Data Import ---
library(readxl)       # Excel files
library(rvest)        # Web scraping

# --- Text Analysis ---
library(syuzhet)      # Sentiment analysis
library(tm)           # Text mining
library(wordcloud)    # Word cloud visualization
library(tidytext)     # Tidy text mining
library(gutenbergr)   # Public domain texts

# --- Utilities ---
library(gtools)       # Various tools (permutations, etc.)
library(lubridate)    # Date/time handling

# --- Machine Learning ---
library(class)        # k-NN algorithm
library(ISLR)         # Datasets from ISLR book
library(HistData)     # Historical datasets
library(modeldata)    # ML datasets
library(glmnet)       # Regularized regression
library(ranger)       # Random forests
library(naivebayes)   # Naive Bayes classifier
library(dendextend)   # Dendrogram extensions
library(factoextra)   # Cluster visualization
library(corrplot)     # Correlation plots

# --- Google Analytics (if credentials available) ---
library(googleAuthR)
library(googleAnalyticsR)

# --- Apply dslabs theme by default ---
ds_theme_set()

# --- Knitr Options ---
knitr::opts_chunk$set(
  comment = "#>",
  collapse = TRUE,
  cache = FALSE,
  width = 72,
  out.width = "80%",
  fig.align = 'center',
  fig.width = 6,
  fig.height = 3.708,  # width * 1/phi (golden ratio)
  fig.show = "hold"
)
