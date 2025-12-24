# themes.R - Custom ggplot2 themes for the book
# Data Science with R, 2nd Edition
# =============================================

#' Book Theme for ggplot2
#' 
#' A clean, publication-ready theme for plots in the book.
#' Based on theme_minimal with customizations for readability.
#' 
#' @param base_size Base font size (default 12)
#' @param base_family Base font family (default "")
#' @return A ggplot2 theme object
#' @examples
#' library(ggplot2)
#' ggplot(mtcars, aes(wt, mpg)) + 
#'   geom_point() + 
#'   theme_book()
#'   
theme_book <- function(base_size = 12, base_family = "") {
  theme_minimal(base_size = base_size, base_family = base_family) +
    theme(
      # Panel
      panel.grid.minor = element_blank(),
      panel.grid.major = element_line(color = "gray90"),
      panel.background = element_rect(fill = "white", color = NA),
      
      # Axis
      axis.line = element_line(color = "gray40"),
      axis.text = element_text(color = "gray30"),
      axis.title = element_text(color = "gray20", face = "bold"),
      
      # Legend
      legend.position = "bottom",
      legend.background = element_rect(fill = "white", color = NA),
      legend.key = element_rect(fill = "white", color = NA),
      
      # Title and caption
      plot.title = element_text(face = "bold", size = rel(1.2), hjust = 0),
      plot.subtitle = element_text(color = "gray40", hjust = 0),
      plot.caption = element_text(color = "gray60", size = rel(0.8)),
      
      # Margins
      plot.margin = margin(10, 10, 10, 10)
    )
}

#' Color Palette for the Book
#' 
#' Returns a vector of colors for consistent visualization throughout the book.
#' 
#' @param n Number of colors needed (default all 8)
#' @return Character vector of hex color codes
#' @examples
#' book_colors(3)
#' 
book_colors <- function(n = 8) {
  palette <- c(
    "#2C3E50",  # Dark blue-gray
    "#E74C3C",  # Red
    "#3498DB",  # Blue
    "#2ECC71",  # Green
    "#F39C12",  # Orange
    "#9B59B6",  # Purple
    "#1ABC9C",  # Teal
    "#34495E"   # Slate
  )
  
  if (n > length(palette)) {
    warning("Requested more colors than available in palette. Colors will be recycled.")
    return(rep(palette, length.out = n))
  }
  
  palette[1:n]
}

#' Scale color using book palette
#' 
#' @param ... Additional arguments passed to scale_color_manual
#' @return A ggplot2 scale object
#' 
scale_color_book <- function(...) {
  ggplot2::scale_color_manual(values = book_colors(), ...)
}

#' Scale fill using book palette
#' 
#' @param ... Additional arguments passed to scale_fill_manual
#' @return A ggplot2 scale object
#' 
scale_fill_book <- function(...) {
  ggplot2::scale_fill_manual(values = book_colors(), ...)
}
