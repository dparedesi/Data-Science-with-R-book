---
output: html_document
editor_options: 
  chunk_output_type: inline
---
# Data Science with R - 2nd Edition

Welcome to the source code for the second edition of "Data Science with R". This book has been completely modernized and localized to English to provide a comprehensive guide to data science using the latest R ecosystem tools.

## Key Features

*   **Modern Tidyverse**: Uses the native pipe (`|>`) and modern `dplyr` verbs across all examples.
*   **Tidymodels**: Full suite of machine learning chapters (Regression, Classification, Unsupervised Learning) using the `tidymodels` framework.
*   **Real-World Cases**: Includes a new "Real Estate Analysis" case study using `txhousing` data and static Google Analytics tutorials.
*   **GenAI Integration**: New chapters on using LLMs and APIs within R workflow.
*   **Ethics**: Dedicated sections on algorithmic bias and an ethics checklist for data projects.

## Building the Book

This project uses `bookdown`. To build the book locally:

1.  **Setup Environment**:
    Run the setup script to install all dependencies (CRAN and system requirements).
    ```r
    source("setup_dependencies.R")
    ```

2.  **Render**:
    ```r
    bookdown::render_book("index.Rmd")
    ```

The output will be generated in the `docs/` folder.

## Structure

*   `01.intro` - `04.statistics`: Core R, Visualization, and Statistics.
*   `05.wrangling`: Data Import and Text Mining.
*   `06.machine-learning`: Supervised and Unsupervised Learning using `tidymodels`.
*   `07.real-cases`: Applied case studies.
*   `08.genai`: Generative AI with R.

## License

This work is licensed under a Creative Commons Attribution-NonCommercial-ShareAlike 4.0 International License.
