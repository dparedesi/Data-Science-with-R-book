# Alt-Text Guidelines for Images

This guide ensures all images in the book are accessible to screen readers and users with visual impairments.

## Why Alt-Text Matters

- **Screen readers** use alt-text to describe images to blind/low-vision users
- **Search engines** index alt-text for better discoverability
- **Broken images** show alt-text as fallback
- **Legal compliance** with accessibility standards (WCAG 2.1)

## Writing Good Alt-Text

### Principles

1. **Be Concise**: Aim for 125 characters or fewer
2. **Be Descriptive**: Describe what the image shows, not what it is
3. **Be Contextual**: Consider what information the reader needs
4. **Avoid Redundancy**: Don't repeat caption text

### For Different Image Types

#### Statistical Plots

```r
knitr::include_graphics(
  file.path(img_path, "04-statistics", "scatter-example.png"),
  alt = "Scatter plot showing positive correlation between height and weight, with a fitted regression line"
)
```

**Good**: "Scatter plot showing positive correlation between father and son heights"
**Bad**: "A plot" or "Figure 1"

#### Diagrams/Concepts

```r
knitr::include_graphics(
  file.path(img_path, "06-machine-learning", "confusion-matrix.png"),
  alt = "Confusion matrix diagram showing True Positive, False Positive, True Negative, and False Negative quadrants"
)
```

#### Screenshots

```r
knitr::include_graphics(
  file.path(img_path, "01-introduction", "rstudio.png"),
  alt = "RStudio interface showing four panels: code editor, console, environment, and files"
)
```

**Good**: "RStudio interface showing four panels: code editor, console, environment, and files"
**Bad**: "Screenshot of RStudio"

#### Mathematical/Algorithm Visualizations

```r
knitr::include_graphics(
  file.path(img_path, "06-machine-learning", "kNN-classify.png"),
  alt = "k-NN classification diagram with a yellow test point surrounded by 3 nearest neighbors (2 red, 1 blue), predicting red class"
)
```

## Image-by-Image Reference

### Chapter 1: Introduction
| Image | Recommended Alt-Text |
|-------|---------------------|
| multidisciplinaria.png | "Venn diagram showing data science as intersection of statistics, programming, domain knowledge, and data mining" |
| CRAN-google.png | "Google search results page showing CRAN R Project download link as first result" |
| CRAN-website.png | "CRAN homepage with download links for Linux, macOS, and Windows" |
| CRAN-windows.png | "CRAN Windows download page with base R installation link" |
| CRAN-64-bits.png | "CRAN download link for latest R version installer" |
| rstudio-google.png | "Google search results for RStudio download" |
| rstudio-website-0.png | "RStudio website homepage with Download button in navigation" |
| rstudio-website-1.png | "RStudio Desktop download options showing Free and Pro versions" |
| rstudio-website-2.png | "RStudio installer download button for current operating system" |
| VirtualBox_Windows-7-Enterprise*.png | "Initial RStudio window showing three panels: console, environment, and files" |
| rstudio.png | "RStudio interface with four panels: source editor, console, environment, and plots" |

### Chapter 3: Visualization
| Image | Recommended Alt-Text |
|-------|---------------------|
| flower-parts.png | "Botanical diagram showing flower parts: sepal, petal, stamen, and pistil" |

### Chapter 4: Statistics
| Image | Recommended Alt-Text |
|-------|---------------------|
| probabilities-marbles.png | "Container with colored marbles: 5 blue, 3 yellow, and 4 gray" |
| monty-hall-closed.png | "Three closed doors labeled 1, 2, and 3 in the Monty Hall problem" |
| monty-hall-open.png | "Monty Hall problem with door 3 open showing a goat, doors 1 and 2 remain closed" |
| roulette-casino.png | "Casino roulette wheel with numbered red and black pockets" |
| polls-us.png | "Table of US election polls from April-May 2020 showing sample sizes and margins of error" |

### Chapter 5: Data Wrangling
| Image | Recommended Alt-Text |
|-------|---------------------|
| hispanic-countries.png | "Wikipedia table of Hispanic countries by population" |
| download-user-tweets.png | "Twitter data download interface for user tweet archives" |

### Chapter 6: Machine Learning
| Image | Recommended Alt-Text |
|-------|---------------------|
| ML.png | "Machine learning diagram showing supervised vs unsupervised learning branches" |
| kNN-train.png | "Training data points on a 2D plane with red and blue class labels" |
| kNN-test.png | "Test point (yellow) with distance lines to nearby training data points" |
| kNN-classify.png | "k-NN classification showing 3 nearest neighbors (2 red, 1 blue), classifying test point as red" |
| confusion-matrix.png | "2x2 confusion matrix with True Positive, False Positive, True Negative, False Negative cells" |
| kmeans-distance.png | "K-means iteration showing data points and distance calculations to two centroids" |
| kmeans-centers.png | "K-means result with two clusters and centroids marked with X" |
| hclust-one.png | "Initial hierarchical clustering step linking two closest points" |
| hclust-two.png | "Hierarchical clustering merging additional nearby points" |
| hclust-three.png | "Dendrogram showing hierarchical clustering tree structure" |

## Implementing Alt-Text

To add alt-text in R Markdown code chunks:

```r
```{r, echo=FALSE, fig.alt="Your descriptive alt text here"}
knitr::include_graphics(file.path(img_path, "chapter", "image.png"))
```
```

Or using the `fig.alt` chunk option globally in `_common.R`:

```r
knitr::opts_chunk$set(fig.alt = "Descriptive placeholder text")
```

## Accessibility Checklist

Before publishing, verify:
- [ ] All images have alt-text
- [ ] Alt-text is descriptive, not just filename
- [ ] Complex diagrams have extended descriptions
- [ ] Color is not the only means of conveying information
- [ ] Text in images is readable at small sizes
