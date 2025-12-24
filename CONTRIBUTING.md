# Contributing to Data Science with R

Thank you for your interest in contributing to this book! Your contributions help make this resource better for everyone learning data science with R.

## Ways to Contribute

### 🐛 Report Errors or Typos
If you find a typo, error in code, or inaccuracy:
1. Open an issue with the title: `[Typo]` or `[Error]` + brief description
2. Include the chapter name and section
3. Describe the issue and suggest a correction if possible

### 💡 Suggest Improvements
Have ideas for better explanations or new examples?
1. Open an issue with the title: `[Suggestion]` + brief description
2. Explain your idea and how it would improve the book

### 🔧 Submit Code Fixes
1. Fork the repository
2. Create a new branch: `git checkout -b fix/description`
3. Make your changes
4. Test that the book builds: `bookdown::render_book("index.Rmd")`
5. Submit a pull request

## Code Style Guidelines

### R Code
- Use the tidyverse style guide: https://style.tidyverse.org/
- Use the native pipe `|>` (not `%>%`)
- Keep code chunks under 80 characters wide when possible
- Include comments for complex operations

### Writing
- Use clear, concise language
- Define technical terms when first introduced
- Include practical examples for concepts
- Keep exercises progressively challenging

## Building the Book Locally

```r
# Install dependencies
source("setup_dependencies.R")

# Build the book
bookdown::render_book("index.Rmd")
```

## Questions?

Feel free to open an issue with `[Question]` in the title, or email the author at dparedesi@uni.pe.

## Code of Conduct

Be respectful and constructive in all interactions. We're all here to learn and improve.
