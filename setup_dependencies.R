# setup_dependencies.R
options(repos = c(CRAN = "https://cloud.r-project.org"))

# Function to install packages if they don't exist
install_if_missing <- function(packages) {
  new_packages <- packages[!(packages %in% installed.packages()[, "Package"])]
  if(length(new_packages)) {
    message("Installing missing packages: ", paste(new_packages, collapse = ", "))
    install.packages(new_packages, dependencies = TRUE)
  } else {
    message("All requested packages are already installed.")
  }
}

# 1. Core Build Tools
core_pkgs <- c("bookdown", "knitr", "rmarkdown", "devtools", "pdftools", "magick")

# 2. Main Data Science Stack (Tidyverse)
tidyverse_pkgs <- c("tidyverse", "dslabs", "gtools", "syuzhet", "tm", "wordcloud", "gutenbergr", "lubridate", "zoo", "directlabels", "tidytext")

# 3. Modeling & Machine Learning (Modern + Legacy)
# Note: 'caret' functionality has been migrated, but we keep the package if legacy code needs it for now.
# 'tidymodels' pulls in parsnip, recipes, rsample, tune, yardstick, workflows, broom, dialr
ml_pkgs <- c("tidymodels", "class", "caret", "ISLR", "HistData", "modeldata", 
             "glmnet", "ranger", "naivebayes", "kknn", "kernlab", 
             "dendextend", "factoextra", "corrplot", "discrim")

# 4. GenAI & API
genai_pkgs <- c("httr2", "jsonlite")

# 5. Legacy/Google (if still needed)
google_pkgs <- c("googleAuthR", "googleAnalyticsR")

# Combine all
all_pkgs <- unique(c(core_pkgs, tidyverse_pkgs, ml_pkgs, genai_pkgs, google_pkgs))

# Execute Installation
install_if_missing(all_pkgs)

message("\n--- Dependency Check Complete ---\n")
