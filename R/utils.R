# utils.R - Utility functions for the book
# Data Science with R, 2nd Edition
# =============================================

#' Get Book Image Path
#' 
#' Helper function to construct image paths relative to book root.
#' Uses the new `_assets/images/` directory structure.
#' 
#' @param chapter Chapter folder name (e.g., "01-introduction")
#' @param filename Image filename
#' @return Full path to the image
#' @examples
#' book_img("01-introduction", "rstudio.png")
#' 
book_img <- function(chapter, filename) {
  file.path("_assets", "images", chapter, filename)
}

#' Format Large Numbers
#' 
#' Formats large numbers with appropriate suffixes (K, M, B).
#' Useful for labeling axes or displaying statistics.
#' 
#' @param x Numeric vector
#' @param digits Number of decimal places (default 1)
#' @return Character vector with formatted numbers
#' @examples
#' format_number(c(1000, 1500000, 2000000000))
#' # Returns: "1K", "1.5M", "2B"
#' 
format_number <- function(x, digits = 1) {
  dplyr::case_when(
    abs(x) >= 1e9 ~ paste0(round(x / 1e9, digits), "B"),
    abs(x) >= 1e6 ~ paste0(round(x / 1e6, digits), "M"),
    abs(x) >= 1e3 ~ paste0(round(x / 1e3, digits), "K"),
    TRUE ~ as.character(round(x, digits))
  )
}

#' Pretty Print Data Frame Summary
#' 
#' Prints a concise summary of a data frame.
#' 
#' @param df A data frame
#' @return Invisible NULL, prints to console
#' @examples
#' df_summary(mtcars)
#' 
df_summary <- function(df) {
  if (!is.data.frame(df)) stop("Input must be a data frame")
  
  cat("Dimensions:", nrow(df), "rows x", ncol(df), "columns\n")
  cat("Memory:", format(object.size(df), units = "auto"), "\n\n")
  
  cat("Column Types:\n")
  types <- sapply(df, function(x) class(x)[1])
  type_counts <- table(types)
  for (t in names(type_counts)) {
    cat("  ", t, ":", type_counts[t], "\n")
  }
  
  cat("\nMissing Values:\n")
  na_counts <- sapply(df, function(x) sum(is.na(x)))
  if (any(na_counts > 0)) {
    na_cols <- na_counts[na_counts > 0]
    for (col in names(na_cols)) {
      pct <- round(100 * na_cols[col] / nrow(df), 1)
      cat("  ", col, ":", na_cols[col], "(", pct, "%)\n")
    }
  } else {
    cat("  None\n")
  }
  
  invisible(NULL)
}

#' Create Training/Test Split Summary
#' 
#' Prints a summary of a training/test split.
#' 
#' @param train Training data
#' @param test Test data
#' @param target Target variable name (optional)
#' @return Invisible NULL, prints to console
#' 
split_summary <- function(train, test, target = NULL) {
  total <- nrow(train) + nrow(test)
  
  cat("Split Summary\n")
  cat("=============\n")
  cat("Training:", nrow(train), "(", round(100 * nrow(train) / total, 1), "%)\n")
  cat("Test:    ", nrow(test), "(", round(100 * nrow(test) / total, 1), "%)\n")
  
  if (!is.null(target) && target %in% names(train)) {
    cat("\nTarget Distribution (", target, "):\n", sep = "")
    
    train_dist <- prop.table(table(train[[target]]))
    test_dist <- prop.table(table(test[[target]]))
    
    cat("Training:\n")
    for (lvl in names(train_dist)) {
      cat("  ", lvl, ":", round(100 * train_dist[lvl], 1), "%\n")
    }
    
    cat("Test:\n")
    for (lvl in names(test_dist)) {
      cat("  ", lvl, ":", round(100 * test_dist[lvl], 1), "%\n")
    }
  }
  
  invisible(NULL)
}
