---
output: github_document
---

# Data Science with R <img src="assets/images/01-introduction/multidisciplinaria.png" align="right" width="150"/>

<!-- badges: start -->
[![License: CC BY-NC-SA 4.0](https://img.shields.io/badge/License-CC%20BY--NC--SA%204.0-lightgrey.svg)](https://creativecommons.org/licenses/by-nc-sa/4.0/)
[![R Version](https://img.shields.io/badge/R-4.5.2-blue.svg)](https://cran.r-project.org/)
<!-- badges: end -->

> **Data Analysis and Prediction Algorithms with R, Third Edition**
> 
> By Daniel Paredes Inilupu

## 📖 Read Online

**[https://bookdown.org/dparedesi/data-science-con-r/](https://bookdown.org/dparedesi/data-science-con-r/)**

## 📚 What You'll Learn

| Part | Topics |
|------|--------|
| **I. Fundamentals** | R objects, functions, data frames, tidyverse |
| **II. Visualization** | ggplot2, gapminder case study |
| **III. Statistics** | Probability, distributions, inference |
| **IV. Data Wrangling** | Importing data, text mining |
| **V. Machine Learning** | tidymodels, classification, regression, clustering |
| **VI. Applied Cases** | Real estate analysis, Google Analytics |
| **VII. Generative AI** | LLM APIs, AI-assisted coding |
| **Appendix** | Ethics checklist |

## ✨ Key Features

- **Modern Tidyverse**: Uses the native pipe (`|>`) and modern `dplyr` verbs
- **Tidymodels**: Full ML chapters using the `tidymodels` framework
- **Real-World Cases**: Includes new case studies with real datasets
- **GenAI Integration**: Covers using LLMs and APIs within R workflow
- **Ethics**: Dedicated sections on algorithmic bias and ethics checklist

## 🛠️ Technical Stack

- **R**: 4.5.2+
- **Framework**: [bookdown](https://bookdown.org/)
- **ML**: [tidymodels](https://www.tidymodels.org/)
- **Visualization**: [ggplot2](https://ggplot2.tidyverse.org/)

## 🚀 Quick Start

```r
# Install dependencies
source("setup_dependencies.R")

# Build the book
bookdown::render_book("index.Rmd")
```

The output will be generated in the `docs/` folder.

## 📁 Structure

```
├── 01.intro/          Introduction
├── 02.fundamentals/   Objects, Functions, Data Frames
├── 03.visualization/  ggplot2, Gapminder Case Study
├── 04.statistics/     Probability and Inference
├── 05.wrangling/      Data Import, Text Mining
├── 06.machine-learning/  Supervised & Unsupervised Learning
├── 07.real-cases/     Applied Case Studies
├── 08.genai/          Generative AI with R
├── 09.appendix/       Ethics Checklist
```

## 📝 Citation

If you use this book in your work, please cite:

```bibtex
@book{paredes2024datascience,
  author = {Paredes Inilupu, Daniel},
  title = {Data Science with R: Data Analysis and Prediction Algorithms},
  year = {2025},
  edition = {3rd},
  publisher = {Leanpub},
  url = {https://leanpub.com/dataScienceConR/}
}
```

## 💰 Support This Work

You can support this effort by purchasing the PDF version on [Leanpub](https://leanpub.com/dataScienceConR/). The purchase includes access to future updates.

## 🤝 Contributing

See [CONTRIBUTING.md](CONTRIBUTING.md) for guidelines on how to report errors, suggest improvements, or submit fixes.

## 📄 License

<a rel="license" href="http://creativecommons.org/licenses/by-nc-sa/4.0/">
<img alt="Creative Commons License" style="border-width:0" src="https://i.creativecommons.org/l/by-nc-sa/4.0/88x31.png" />
</a>
<br />
This work is licensed under a <a rel="license" href="http://creativecommons.org/licenses/by-nc-sa/4.0/">Creative Commons Attribution-NonCommercial-ShareAlike 4.0 International License</a>.

## 📧 Contact

Questions or suggestions? Email: dparedesi@uni.pe
