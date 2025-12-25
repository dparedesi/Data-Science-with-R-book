--- 
title: "Data Science with R"
subtitle: "Data Analysis and prediction algorithms with R. Third Edition"
author: "Author: Mg. Daniel Paredes Inilupu"
date: "2025-12-25"
#date: "2024-12-27"
site: bookdown::bookdown_site
documentclass: krantz
bibliography: [book.bib, packages.bib]
biblio-style: apalike
link-citations: yes
colorlinks: yes
urlcolor: blue
geometry: "left=1.5in, right=1.5in, top=1.25in, bottom=1.25in"
github-repo: dparedesi/Data-Science-with-R-book
description: "A comprehensive guide to data science using R, covering fundamentals, visualization, statistics, machine learning with tidymodels, and generative AI integration. Third Edition by Daniel Paredes."
always_allow_html: yes
graphics: yes
output:
  bookdown::gitbook:
    includes:
      in_header: analytics.html
      #after_body: disqus.html
    keep_md: yes  # Important: Keep the Markdown files
params:
 hidden: false
 #no_last: "The exercises, as well as some chapters we will learn, will be activated in this book as we progress through the course classes. This excerpt will be enabled for you up to one week after the course ends. "
---




# Preface {-}

Welcome to the third edition of *Data Science with R*!

In an era where data-driven decisions shape industries from healthcare to finance, mastering R gives you the power to extract insights, build predictive models, and communicate findings effectively. This book has evolved from personal learning notes into a comprehensive resource that takes you from fundamentals to advanced data science techniques using practical, hands-on exercises.

This book is designed for beginners with no prior R experience who want a structured path into data science, as well as analysts looking to upgrade from spreadsheets to reproducible R workflows. It also serves students, professionals, and practitioners seeking to modernize their machine learning skills with tidymodels. Basic familiarity with statistics concepts is helpful but not required, as all code examples are self-contained and explained step-by-step.

The third edition reflects the latest developments in the R ecosystem. We have updated everything to run on R 4.5.2 and RStudio 2025.09.2. A major shift in this edition is the full migration to tidymodels for machine learning and the adoption of modern tidyverse patterns, including the native pipe operator. We have also introduced entirely new topics such as Generative AI and LLM integration with R, AI-assisted coding workflows, ethics in data science, and enhanced text mining. You will also find expanded content on interactive visualization, deep learning with Keras and TensorFlow, big data processing with Sparklyr, and reproducible workflows using Git and GitHub.

Each chapter builds on previous concepts, but you can also jump to topics of interest. If you are learning R from scratch, start with the Fundamentals in the first two chapters. Chapter 3 covers visualization with ggplot2, while Chapter 12 dives into building machine learning models. For those interested in working with Large Language Models, Chapter 14 covers Generative AI. Throughout the book, you will find hands-on exercises to test your understanding. Solutions are provided, but we encourage you to try them yourself first.

Just like previous editions, many exercises are inspired by practical classroom experiences and activities from the [Professional Certificate in Data Science](https://online-learning.harvard.edu/series/professional-certificate-data-science)^[https://online-learning.harvard.edu/series/professional-certificate-data-science] by **HarvardX**. The code used to generate this book is available on GitHub, encouraging transparency and reproducibility.

## Support This Work {-}

Over 700 hours went into creating this resource. If you find it valuable, consider purchasing the PDF on [Leanpub](https://leanpub.com/dataScienceConR/). Your purchase includes:

- Future updates at no extra cost
- Three months of direct Q&A access with the author
- Support for keeping the web version free for everyone


The web version available at [bookdown](https://bookdown.org/dparedesi/data-science-con-r/)^[https://bookdown.org/dparedesi/data-science-con-r/] seeks to democratize data science knowledge. Share it and let's contribute together to freeing knowledge.


## Stay Connected {-}

This book has reached readers in Mexico, Colombia, Spain, Peru, Chile, and many other countries. I deeply thank readers of previous editions for their comments and suggestions, which have been fundamental to improving each version.

If you have questions or suggestions, write to me at dparedesi@uni.pe. I usually respond within 48 hours.

<a rel="license" href="http://creativecommons.org/licenses/by-nc-sa/4.0/"><img alt="Creative Commons License" style="border-width:0" src="https://i.creativecommons.org/l/by-nc-sa/4.0/88x31.png" /></a><br />This work is licensed under a <a rel="license" href="http://creativecommons.org/licenses/by-nc-sa/4.0/">Creative Commons Attribution-NonCommercial-ShareAlike 4.0 International License</a>.

# Acknowledgments {-}

## Family {-}

First and foremost, I want to express my profound gratitude to my wife, Desislava, for her invaluable emotional support during the countless hours I dedicated to this project. Her knowledge in R was also key—contributing solutions and perspectives that enriched this work.

## Mentors and Inspirations {-}

A special thanks to [Rafael Irizarry](https://hsph.harvard.edu/profile/rafael-a-irizarry/)^[https://hsph.harvard.edu/profile/rafael-a-irizarry/], a true benchmark in the R world, whose didactic approach to teaching advanced techniques significantly advanced my learning. I also extend my gratitude to the developers who, with their dedication, continue to create and maintain this wonderful language.

My gratitude also goes to Briguit Reinaldo, CEO of Cedhinfo, whose tireless work brings the teaching of computer technologies to more people in Peru, inspiring many to explore new opportunities.

## Contributors {-}

Finally, I want to acknowledge the valuable contribution of engineering students from UNI who participated in grammatical review, paraphrasing, exercise creation, and topic proposals. Special thanks to [Josep Agama](https://www.linkedin.com/in/josep-agama-749a61190/)^[https://www.linkedin.com/in/josep-agama-749a61190/] and [Andrés Espinoza](https://www.linkedin.com/in/aespinozacontreras/)^[https://www.linkedin.com/in/aespinozacontreras/] for their fundamental contributions to the first three chapters.

<!--chapter:end:index.Rmd-->


# Introduction {-}

::: {.rmdnote}
**What You'll Learn in This Chapter:**

- Understand why R is an excellent choice for data science
- Install R and RStudio on your computer
- Navigate the RStudio interface confidently
- Write and execute your first R code
:::

Data science requires a multidisciplinary approach that combines statistics, programming, data mining, and domain expertise. This book is designed to help you develop those skills through practical, hands-on examples in R.

<img src="_assets/images/01-introduction/multidisciplinaria.png" alt="Venn diagram showing data science as intersection of statistics, programming, domain knowledge, and data mining" width="80%" style="display: block; margin: auto;" />

## Why R? {-}

R is a language created by statisticians for data analysis, making it an excellent choice for your data science journey. It is free and open-source, meaning there are no licensing costs and you can inspect how any function works under the hood. Its rich ecosystem includes over 19,000 packages on CRAN covering virtually any analytical task, from machine learning to bioinformatics. 

One of R's strongest features is reproducibility, allowing you to write scripts once and share them with colleagues to obtain consistent results anywhere. It also offers best-in-class visualization through ggplot2 for publication-quality graphics and Shiny for interactive dashboards. Furthermore, you will find an active community with extensive documentation, tutorials, and a welcoming presence on social media.

While Python is also popular in data science, R excels particularly in statistical analysis and data visualization. These are the core skills we will develop throughout this book, leveraging the tidyverse ecosystem to make data manipulation intuitive and readable.

## Installing R {-}

You can download R from the Comprehensive R Archive Network (**CRAN**).

1. Search for CRAN on Google:

<img src="_assets/images/01-introduction/CRAN-google.png" alt="Google search results page showing CRAN R Project download link" width="80%" style="display: block; margin: auto;" />

2. On the CRAN page, select the version for your operating system—Linux, Mac OS X, or Windows:

<img src="_assets/images/01-introduction/CRAN-website.png" alt="CRAN homepage with download links for Linux, macOS, and Windows" width="80%" style="display: block; margin: auto;" />

The following steps show the Windows installation process. The steps for Mac and Linux are similar—simply select your operating system and follow the corresponding download link.

3. On the CRAN website, click on `base` to download the core R installation. This includes all the basic packages you need to get started. Later chapters will show you how to install additional packages.

<img src="_assets/images/01-introduction/CRAN-windows.png" alt="CRAN Windows download page with base R installation link" width="80%" style="display: block; margin: auto;" />

4. Click on the download link to get the latest stable version:

<img src="_assets/images/01-introduction/CRAN-64-bits.png" alt="CRAN download link for latest R version installer" width="80%" style="display: block; margin: auto;" />

Once downloaded, run the installer and follow the on-screen instructions.

::: {.rmdtip}
**Installation Tip:** When the installer asks about options, the default settings work perfectly for beginners. You can always customize your installation later.
:::

## Installing RStudio {-}

Although you could start using R directly in the console, we recommend installing RStudio—an integrated development environment (IDE) that makes working with R significantly more productive and enjoyable.

1. Search for RStudio on Google:

<img src="_assets/images/01-introduction/rstudio-google.png" alt="Google search results for RStudio download" width="80%" style="display: block; margin: auto;" />

2. You'll see the Posit website (RStudio's parent company). Click on **DOWNLOAD** in the upper right menu:

<img src="_assets/images/01-introduction/rstudio-website-0.png" alt="RStudio website homepage with Download button in navigation" width="80%" style="display: block; margin: auto;" />

3. Scroll down until you find the download options. Select the **Free** RStudio Desktop option:

<img src="_assets/images/01-introduction/rstudio-website-1.png" alt="RStudio Desktop download options showing Free and Pro versions" width="80%" style="display: block; margin: auto;" />

4. The page will display a download button optimized for your operating system. You can also choose from the list of all available installers below:

<img src="_assets/images/01-introduction/rstudio-website-2.png" alt="RStudio installer download button for current operating system" width="80%" style="display: block; margin: auto;" />

Once the installer is downloaded, run it and follow the on-screen instructions.

::: {.rmdnote}
**Having trouble?** Installation issues are usually straightforward to resolve. Check the [CRAN FAQ](https://cran.r-project.org/faqs.html) or search "R installation [your OS]" for community solutions. The [RStudio Community](https://community.rstudio.com/) is also an excellent resource.
:::

## RStudio Sections {-}

When you start RStudio for the first time, you'll see three main sections:

<img src="_assets/images/01-introduction/VirtualBox_Windows-7-Enterprise_22_03_2018_16_21_16.png" alt="Initial RStudio window showing three panels: console, environment, and files" width="80%" style="display: block; margin: auto;" />

One of the great advantages of R over point-and-click analysis software is that we can save our work as **Scripts**—text files containing R code that can be shared, version-controlled, and re-run at any time.

To create a new Script, click on **File → New File → R Script**:

<img src="_assets/images/01-introduction/VirtualBox_Windows-7-Enterprise_22_03_2018_16_21_42.png" alt="RStudio File menu expanded showing New File then R Script option" width="80%" style="display: block; margin: auto;" />

This opens the fourth panel, giving you the complete RStudio layout:

<img src="_assets/images/01-introduction/rstudio.png" alt="RStudio interface with four panels: source editor, console, environment, and plots" width="80%" style="display: block; margin: auto;" />

Let's understand the layout. The **Source Editor** in the top-left is where you write and edit your R scripts. Think of it as your code notebook where you can save, organize, and run code. Below it is the **Console** (bottom-left), where code executes and results appear. You can type commands directly here for quick experiments.

On the right side, the **Environment/History** panel (top-right) shows all variables and functions you have created in your current session, while the history tab tracks your commands. Finally, the **Files/Plots/Help** panel (bottom-right) serves multiple purposes, allowing you to browse files, view generated plots, and access package documentation.

### Essential Keyboard Shortcuts {-}

Mastering keyboard shortcuts will significantly speed up your workflow. The most commonly used command is running the current line or selection, which you can do by pressing `Ctrl + Enter` (or `Cmd + Enter` on Mac). To run the entire script, use `Ctrl + Shift + S` (`Cmd + Shift + S`).

Creating a new script is as easy as pressing `Ctrl + Shift + N` (`Cmd + Shift + N`), and you should save your work frequently with `Ctrl + S` (`Cmd + S`). A shortcut specific to R is inserting the assignment operator (`<-`), which is done with `Alt + -` (`Option + -`). Finally, you can quickly comment or uncomment lines using `Ctrl + Shift + C` (`Cmd + Shift + C`).

::: {.rmdtip}
**Pro Tip:** Press `Alt + Shift + K` (Windows/Linux) or `Option + Shift + K` (Mac) in RStudio to see the complete list of keyboard shortcuts.
:::

## Testing Your Installation {-}

Let's verify everything is working correctly. Go to the Console panel and calculate how much 13 multiplied by 265 is. Click on the console, type the following, and press **Enter**:


``` r
13 * 265
#> [1] 3445
```

You should see `3445` as the result. Let's understand the output format:

::: {.rmdnote}
**Understanding R Output:**

- The `[1]` before the result indicates this is the first element of the output. R can return multiple values, and the bracketed number helps you track which element you're looking at.
- In this book, we use `##` to distinguish R output from R code. Lines starting with `##` show what you'll see in your console after running the code.
:::

Now let's try something more interesting. R isn't just a calculator—it's a powerful tool for working with data. Try this in your console:


``` r
# Create a vector of values
values <- c(10, 20, 30, 40, 50)

# Calculate the mean
mean(values)
#> [1] 30

# How many elements are there?
length(values)
#> [1] 5
```

You've just created your first data structure (a vector) and applied functions to it—fundamental concepts we'll explore in depth in the next chapter.

### Writing Scripts {-}

While the console is great for quick experiments, scripts are essential for reproducible work. Try this in the **Source Editor** (not the console):


``` r
# My First R Script
# Calculating basic statistics

# Create some data
temperatures <- c(22, 25, 23, 28, 30, 27, 24)

# Calculate statistics
mean(temperatures)    # Average temperature
max(temperatures)     # Highest temperature
min(temperatures)     # Lowest temperature
```

To execute code from the script:

1. **Run a single line**: Place your cursor on the line and press `Ctrl + Enter` (or `Cmd + Enter` on Mac)
2. **Run selected lines**: Highlight the lines you want to run and press `Ctrl + Enter`
3. **Run the entire script**: Press `Ctrl + Shift + S` (or `Cmd + Shift + S` on Mac)

Notice that lines starting with `#` are **comments**—R ignores them, but they're invaluable for explaining your code to others (and to your future self!).

::: {.rmdcaution}
**Challenge: Test Your Setup**

Try these exercises to confirm everything works:

1. Calculate `sqrt(144)` in the console (the square root of 144)
2. Create a new script with three different calculations and save it as `my_first_script.R`
3. Use the assignment operator (`<-`) to store a value: `my_number <- 42`
4. Print your stored value by typing `my_number` and pressing Enter
:::

## What's Next? {-}

Congratulations! You have successfully set up your R environment and written your first R code. You now understand why R is a powerful choice for data science and how to navigate the four panels of the RStudio interface. You have also learned to use the console, write scripts, and apply essential keyboard shortcuts.

In the next chapter, we will dive into **R Fundamentals**, learning about objects, data types, vectors, and functions that form the foundation of all R programming. You will discover how R stores and manipulates data, setting the stage for the data analysis and visualization techniques to come.

Let's continue the journey!

<!--chapter:end:01-introduction/introduction.Rmd-->


# (PART) Fundamentals and Key Tools {-}

# Objects {#objects}

In the world of programming, an **object** is like a container that holds information. This information can be of different types: numbers, text, complex data, and even code. The important thing is that an object groups everything necessary to represent an entity or concept.

In R, practically everything is an object. The variables we will use to store data, the functions we will use to process that data, and even the data itself, are objects.

## What are objects in R?

Imagine you are organizing your move to the United States. Each item you pack in a box (clothes, books, appliances) can be considered an object. Each object has characteristics that define it: a name, a type, a size, a weight, etc.

In R, objects also have characteristics that define them. These characteristics are called **attributes**. For instance, every object has a **Name** so we can refer to it, and a **Type** that indicates what kind of data it contains (numeric, character, logical, etc.). Objects also have a **Class** defining their structure and behavior (such as vector, list, or data frame) and a **Length** indicating the number of elements they contain.

### R as an object-oriented language

R is an **object-oriented** programming language, meaning it relies on the concept of objects to organize and process information. This approach offers several advantages, such as **Modularity**, allowing us to divide a program into smaller, manageable parts. It also promotes **Reusability**, as objects can be used in different parts of the program or even in other projects. Furthermore, objects provide **Encapsulation**, hiding implementation details to facilitate their use and maintenance.

### The power of abstraction

The concept of an object allows us to **abstract** the complexity of the real world. Instead of thinking about the details of how data is stored and processed in computer memory, we can think in terms of objects representing real-world entities.

For example, instead of thinking of a series of numbers representing the temperatures of different cities, we can think of a "temperatures" object containing all that information.

This abstraction facilitates understanding and handling information, allowing us to focus on the logic of the problem we want to solve.

## Variables: The first objects on your journey

Before we start packing for our move to the United States, we need to know what things we will take. Each object we decide to take is represented in R as a **variable**.

Think of variables as labels we put on each object. For example, we could use the variable `state` to save the name of the state we are moving to, or the variable `num_suitcases` to save the number of suitcases we will take.

### Creating variables in R

In R, we don't need to declare a variable before using it. We simply assign it a value using the `<-` symbol.

> **Note:** You might see the `=` symbol used for assignment in other programming languages or even in some R code. While `=` works in R, the `<-` operator is the standard and idiomatic way to assign values to variables. It helps distinguish between assigning a value to a variable and passing arguments to a function (where `=` is always used).

**Example:**


``` r
# Assign the value "California" to the variable "state"
state <- "California"

# Assign the value 5 to the variable "num_suitcases"
num_suitcases <- 5
```

To see the value we have saved in a variable, we simply type its name in the RStudio console and press Enter.

**Example:**


``` r
state <- "California"

state
#> [1] "California"
```

When executing this code, you will see the value `"California"` appear in the console.

### Operations with variables

We can also use variables to perform operations. For example, if we want to calculate the total cost of our plane trip, we could use the variables `ticket_price` and `num_people`.

**Example:**


``` r
ticket_price <- 300
num_people <- 4

total_cost <- ticket_price * num_people

total_cost
#> [1] 1200
```

In this example, we first assign values to the variables `ticket_price` and `num_people`. Then, we multiply these variables to calculate the `total_cost` and display its value in the console.

### Best practices for naming variables

**Watch out for capitalization!**

R is case-sensitive. If you create a variable called `state` and then try to access it as `State`, R will not find it.

**Descriptive names**

It is important to use descriptive names for variables, clearly indicating what information they contain. Instead of using variables like `x` or `y`, it is better to use names like `ticket_price` or `num_suitcases`.

**Rules for naming variables**

When naming your variables, remember that they can contain letters, numbers, and underscores (`_`), but they cannot start with a number or contain spaces. Also, keep in mind that R is case-sensitive, so capitalization matters.

### Data types

Variables in R can contain different types of data. **Numeric** variables are used for numbers, such as the population of a city or the cost of a plane ticket. **Character** variables store text, like the name of a state ("California") or a city ("Los Angeles"). **Logical** variables represent binary truth values, `TRUE` or `FALSE`, which are useful for conditions, such as indicating whether we want to visit a specific city.

## Object types for complex data

The variables we have seen so far are very useful for storing individual information, such as the name of a city or the number of suitcases we will carry on our move. However, in the real world, we often need to work with more complex datasets.

Imagine you want to save the names of all the cities you plan to visit on your trip to the United States. Would you have to create a variable for each city? That would be very tedious!

Fortunately, R offers other types of objects that allow us to organize and manipulate information more efficiently. Let's look at some of them:

### Vectors: organizing information of the same type

Vectors are like trains transporting a series of objects of the same type. They can be numbers, text, or logical values, but all elements of a vector must be of the same type. For example, we could use a vector to save the name of each state in the United States, or a vector to save the population of each state.

**Creating vectors:** To create a vector, we can use the `c()` function (which stands for "combine") and list the elements we want to include, separated by commas.


``` r
# Create a vector with the names of some states
states <- c("California", "Texas", "Florida", "New York")

# Create a vector with the population of each state (in millions)
population <- c(39.2, 29.0, 21.4, 19.4) 
```

If we want to know the amount of data our vector has, its length, we will use the `length()` function. The `class()` function tells us the class of the object, that is, what type of data it contains.


``` r
length(population)  
#> [1] 4
class(states)     
#> [1] "character"
class(population)   
#> [1] "numeric"
```

We can use the `names()` function to assign names to the elements of a vector. This can be useful for identifying each element.


``` r
names(population) <- states
population
#> California      Texas    Florida   New York 
#>       39.2       29.0       21.4       19.4
```

In addition to `c()`, there are other useful functions for creating vectors. The `seq()` function creates a sequence of numbers, allowing us to specify the start value, the end value, and the increment.


``` r
# Create a vector with numbers from 1 to 10
numbers <- seq(1, 10)

# Create a vector with numbers from 2 to 20, by 2
even_numbers <- seq(2, 20, by = 2)
```

Another useful function is `rep()`, which repeats a value or a vector a specified number of times.


``` r
# Create a vector with the value 1 repeated 5 times
ones <- rep(1, 5)

# Create a vector with the sequence "A", "B" repeated 3 times
letters <- rep(c("A", "B"), 3)  # Output: "A" "B" "A" "B" "A" "B"
```

**Accessing vector elements:** Each element of a vector has a position, indicated by a number in brackets. The first element is at position 1, the second at position 2, and so on.


``` r
# Show the first element of the "states" vector
states[1]  # Output: "California"

# Show the third element of the "population" vector
population[3]  # Output: 21.4
```

We can also access multiple elements at once using the `:` operator. For example, to access elements from the second to the fourth of the `states` vector:


``` r
states[2:4]
#> [1] "Texas"    "Florida"  "New York"
```

**Operations with vectors:** We can perform mathematical operations with numeric vectors. For example, if we want to calculate the total population of the four states, we can use the `+` operator to sum the elements of the `population` vector.


``` r
population <- c(39.2, 29.0, 21.4, 19.4) 

population[1] + population[2] + population[3] + population[4]  
#> [1] 109
```

If we want to perform the same operation more concisely, R allows us to sum all elements of a vector directly:


``` r
population <- c(39.2, 29.0, 21.4, 19.4) 

sum(population)  
#> [1] 109
```

R also offers other tools for performing operations with vectors. For example, if we want to calculate the square root of the population of each state:


``` r
sqrt(population)  
#> [1] 6.260990 5.385165 4.626013 4.404543
```

In this case, the `sqrt()` function calculates the square root of each element of the `population` vector individually. This is possible because many functions in R are vectorized, meaning they can operate directly on vectors, element by element. Vectorized functions are very efficient as they avoid the need to write loops to process each element of the vector separately.
We will explore functions in R and how to use them for more complex data analysis in greater depth later.

**Vector coercion:** Unlike other programming languages, R tries to interpret or change a value when it encounters an error. For example, if we try to convert a character vector to numeric, R will convert the elements it can and replace the ones it cannot with `NA`.


``` r
example <- c("3", "b", "6", "a", "bridge", "4")
as.numeric(example)
#> Warning: NAs introduced by coercion
#> [1]  3 NA  6 NA NA  4
```

**Sorting vectors:** We can sort the elements of a vector using the `sort()` function.


``` r
districts <- c("Comas", "Lince", "Miraflores", "Lurigancho", "Chorrillos")
sort(districts) 
#> [1] "Chorrillos" "Comas"      "Lince"      "Lurigancho" "Miraflores"
```

We can also order a vector using its indices with the `order()` function. This way, we get a vector with the positions the elements of the original vector would occupy if they were sorted. This can be useful when we want to sort a vector based on another vector or when we want to preserve the original vector without modifying it.


``` r
indices <- order(districts)  # Output: 5 1 2 4 3
districts[indices]
#> [1] "Chorrillos" "Comas"      "Lince"      "Lurigancho" "Miraflores"
```

**NA in vectors:** If a vector contains NA values, some operations may return NA. We can use the `is.na()` function to identify NA values and filter them.


``` r
example_na <- c(28, 3, 19, NA, 89, 45, NA, 86, 5, 18, 28, NA)
example_no_na <- example_na[!is.na(example_na)]
mean(example_no_na)  # Output: 38.66667
#> [1] 35.66667
```

### Lists: grouping objects of different types

Lists are like containers that can hold different types of objects. Imagine a box where you can put clothes, books, tools, and any other object you need. In R, lists allow you to group diverse information into a single object.

**Creating lists:** To create a list, we use the `list()` function and specify the elements we want to include, separated by commas. Each element can have a name, indicated with the `=` symbol.


``` r
# Create a list with information about a city
city_info <- list(name = "San Francisco", 
                  population = 880000, 
                  cost_of_living = 3.8, 
                  climate = "Temperate")
```

**Accessing list elements:** To access the elements of a list, we can use their names or their positions.


``` r
# Access the "name" element of the "city_info" list
city_info$name  # Output: "San Francisco"

# Access the second element of the "city_info" list
city_info[[2]]  # Output: 880000
```

### Matrices: organizing data in rows and columns

Matrices are like tables that organize information in rows and columns. All elements of a matrix must be of the same type.

**Creating matrices:** To create a matrix, we use the `matrix()` function. We must specify the data we want to include, the number of rows (`nrow`), and the number of columns (`ncol`).


``` r
# Create a matrix with distances between cities (in miles)
city_distances <- matrix(c(0, 2600, 2100, 950, 
                           2600, 0, 1100, 2700, 
                           2100, 1100, 0, 2100, 
                           950, 2700, 2100, 0), 
                         nrow = 4, ncol = 4)
city_distances
#>      [,1] [,2] [,3] [,4]
#> [1,]    0 2600 2100  950
#> [2,] 2600    0 1100 2700
#> [3,] 2100 1100    0 2100
#> [4,]  950 2700 2100    0
```

**Accessing matrix elements:** To access the elements of a matrix, we use brackets and specify the row and column of the element we want.


``` r
# Access the element in row 1, column 3 of the "city_distances" matrix
city_distances[1, 3] 
#> [1] 2100
```

### Arrays: multidimensional matrices

Arrays are like matrices that have more than two dimensions. Imagine a matrix that, in addition to rows and columns, has depth. In R, arrays allow you to organize data in more complex structures.

**Creating arrays:** To create an array, we use the `array()` function.


``` r
# Create an array with maximum and minimum temperatures of 
# three cities during the summer months (June, July, August)
temperatures <- array(c(25, 28, 30, 22, 25, 28,  # City 1
                        28, 20, 32, 25, 18, 30,  # City 2
                        22, 25, 28, 18, 23, 25), # City 3
                      dim = c(3, 2, 3))  # 3 cities, 2 temperatures (max/min), 3 months
temperatures
#> , , 1
#> 
#>      [,1] [,2]
#> [1,]   25   22
#> [2,]   28   25
#> [3,]   30   28
#> 
#> , , 2
#> 
#>      [,1] [,2]
#> [1,]   28   25
#> [2,]   20   18
#> [3,]   32   30
#> 
#> , , 3
#> 
#>      [,1] [,2]
#> [1,]   22   18
#> [2,]   25   23
#> [3,]   28   25
```

**Accessing array elements:** To access the elements of an array, we use brackets and specify the position of the element in each dimension.


``` r
# Access the maximum temperature of city 2 in July
temperatures[2, 1, 2] 
#> [1] 20
```

### Factors: representing categorical data

Factors are a special type of object used to represent categorical data, that is, data that can be classified into groups. For example, the type of climate ("warm", "temperate", "cold"), the region of a country ("north", "south", "east", "west"), or the type of housing ("house", "apartment").

**Creating factors:** To create a factor, we use the `factor()` function.


``` r
# Create a factor with climate types of different cities
climate_types <- factor(c("Temperate", "Warm", "Cold"))
```

**Levels of a factor:** The different values a factor can take are called levels. In the previous example, the levels of the `climate_types` factor are "Temperate", "Warm", and "Cold".

**Utility of factors:** Factors are very useful for data analysis, as they allow grouping and comparing information efficiently. For example, we could use the `climate_types` factor to analyze how the cost of living varies in cities with different climates.

## The Universe of Objects in R

Throughout this chapter, we have explored the different types of objects inhabiting the R universe. From the simplest variables to multidimensional arrays, each object plays an important role in building our data analyses.

### Philosophy of objects in R

In R, everything is an object. This philosophy has profound implications for how code is written and executed. By treating everything as an object, R promotes consistency, modularity, and reuse.

Objects allow us to encapsulate information and behavior, facilitating code organization and maintenance. Furthermore, the ability to create our own objects gives us great power to model and solve complex problems.

By understanding the philosophy of objects in R, we can make the most of the language's capabilities for data analysis.

### Comparison with other languages

While many modern programming languages use the object-oriented paradigm, R has a particular approach. In languages like Python or Java, creating classes and objects is a fundamental part of the language. In R, while it is possible to create classes and objects, the language focuses more on the use of functions to manipulate and transform data.

This difference is due in part to R's history as a language for statistical analysis. In this context, functions are a natural tool for performing calculations and analyses.




## Exercises

Now that you know the different types of objects in R, it's time to put your knowledge to the test.

1. Create four variables to plan your move. Define `city_name` with the city you would like to move to, `population` with its number of inhabitants, and `distance` with the kilometers from your current location. Also, create a logical variable `want_to_live_there` indicating if you truly want to live there.



<details>
  <summary type="button">Solution</summary>

``` r
city_name <- "Seattle"
population <- 724745 
distance <- 8340  # Approximate distance from Lima, Peru
want_to_live_there <- TRUE
```
</details>

2. Create a vector called `nearby_cities` containing the names of three cities near the city you chose in the previous exercise.



<details>
  <summary type="button">Solution</summary>

``` r
nearby_cities <- c("Tacoma", "Bellevue", "Everett")
```
</details>

3. Construct a list called `my_list` that groups different types of information about yourself. It should include your name, your age, a vector with your three favorite colors, and a logical value indicating if you simplify like chocolate.



<details>
  <summary type="button">Solution</summary>

``` r
my_list <- list(name = "Ana", 
                age = 30, 
                favorite_colors = c("blue", "green", "red"), 
                likes_chocolate = TRUE)
```
</details>

4. Create a matrix called `monthly_expenses` containing your estimated monthly expenses in the following categories:

| Category           | January | February | March |
|--------------------|-------|---------|-------|
| Housing            |       |         |       |
| Transport          |       |         |       |
| Food               |       |         |       |
| Entertainment      |       |         |       |

Complete the matrix with numerical values.



<details>
  <summary type="button">Solution</summary>

``` r
monthly_expenses <- matrix(c(1500, 1500, 1500,  # Housing
                             300,  250,  350,   # Transport
                             500,  400,  550,   # Food
                             200,  150,  250),  # Entertainment
                           nrow = 4, ncol = 3,
                           dimnames = list(c("Housing", "Transport", "Food", "Entertainment"),
                                           c("January", "February", "March")))
```
</details>

5. Create a factor called `climate_types` containing the names of the different climate types in the United States (you can use "Temperate", "Warm", "Cold", etc.). Assign labels to the factor levels to make them more descriptive (for example, "Cold climate", "Temperate climate", etc.).



<details>
  <summary type="button">Solution</summary>

``` r
climate_types <- factor(c("Temperate", "Warm", "Cold", "Warm", "Temperate"),
                     levels = c("Cold", "Temperate", "Warm"),
                     labels = c("Cold climate", "Temperate climate", "Warm climate"))

climate_types
```
</details>

6. Create a vector called `cities_to_visit` with the names of 5 cities you would like to visit in the United States. Then, create another vector called `days_per_city` with the number of days you would like to spend in each city. Finally, create a third vector called `daily_cost` with the estimated daily cost in each city (in dollars).



<details>
  <summary type="button">Solution</summary>

``` r
cities_to_visit <- c("New York", "Los Angeles", "Chicago", "San Francisco", "Miami")
days_per_city <- c(5, 4, 3, 6, 2)  
daily_cost <- c(200, 180, 150, 220, 170)
```
</details>

7. Create a vector called `max_temperatures` with the average maximum temperatures (in Celsius) of the cities you want to visit during the month of July. Then, create a vector called `min_temperatures` with the average minimum temperatures. Finally, create a matrix containing these two vectors as columns, and name the rows with the names of the cities.



<details>
  <summary type="button">Solution</summary>

``` r
max_temperatures <- c(29, 28, 27, 22, 31)  # Max temperatures in July
min_temperatures <- c(21, 18, 19, 15, 25)  # Min temperatures in July

# Create the matrix
temperatures <- matrix(c(max_temperatures, min_temperatures), nrow = 5, ncol = 2,
                       dimnames = list(cities_to_visit, c("Maximum", "Minimum")))

temperatures
#>               Maximum Minimum
#> New York           29      21
#> Los Angeles        28      18
#> Chicago            27      19
#> San Francisco      22      15
#> Miami              31      25
```
</details>

8. Create a three-dimensional array containing information about the climate of the cities you want to visit. The first dimension should represent the cities, the second dimension should represent the months of the year ("January", "February", ..., "December"), and the third dimension should represent two variables: "Temperature" and "Precipitation". You can use dummy values to fill the array.



<details>
  <summary type="button">Solution</summary>

``` r
# Create an array with dimensions 5 cities x 12 months x 2 variables
climate <- array(dim = c(5, 12, 2),
                dimnames = list(cities_to_visit,
                                month.name,
                                c("Temperature", "Precipitation")))

# Fill the array with dummy values (example)
climate[,, "Temperature"] <- sample(10:35, 60, replace = TRUE)  # Temperatures between 10 and 35 degrees
climate[,, "Precipitation"] <- sample(0:100, 60, replace = TRUE)  # Precipitation between 0 and 100 mm

climate
#> , , Temperature
#> 
#>               January February March April May June July August September
#> New York           11       35    13    25  28   14   13     26        23
#> Los Angeles        29       24    16    18  26   23   23     13        29
#> Chicago            35       33    19    29  14   13   12     32        35
#> San Francisco      23       29    25    16  19   16   33     20        29
#> Miami              18       34    22    12  14   29   30     25        34
#>               October November December
#> New York           19       26       28
#> Los Angeles        31       13       19
#> Chicago            32       28       29
#> San Francisco      31       35       14
#> Miami              18       26       21
#> 
#> , , Precipitation
#> 
#>               January February March April May June July August September
#> New York           43        8    70    44  55  100   29     95        89
#> Los Angeles        40       26    30    55  10   82   92     46        40
#> Chicago            33       85    51    69  38   15    4     84        91
#> San Francisco      74       30    62     1  20   76   90     20        29
#> Miami              42       29     5    87  14   25   37     12        58
#>               October November December
#> New York           38      100       11
#> Los Angeles        71       60       85
#> Chicago            37       42       73
#> San Francisco      54       95       86
#> Miami              62       15       27
```
</details>

9. Imagine you have a vector with the daily maximum temperatures of a US city for a year. Create a program that, using only the concepts learned in this chapter (variables, vectors, matrices, arrays, and factors), identifies the longest streak of consecutive days with maximum temperatures above a given threshold (for example, 25 degrees Celsius).



<details>
  <summary type="button">Solution</summary>
This exercise requires efficient vector handling and algorithmic logic to identify the longest streak. Here is a possible solution:


``` r
# Create a vector with dummy maximum temperatures for a year
temperatures <- sample(10:35, 365, replace = TRUE)

# Define the temperature threshold
threshold <- 25

# Create a logical vector indicating if the temperature exceeds the threshold
hot_days <- temperatures > threshold

# Initialize variables to track the longest streak
current_streak <- 0
longest_streak <- 0
start_longest_streak <- 0

# Iterate through the hot days vector
for (i in 1:length(hot_days)) {
  if (hot_days[i]) {
    current_streak <- current_streak + 1
  } else {
    if (current_streak > longest_streak) {
      longest_streak <- current_streak
      start_longest_streak <- i - current_streak
    }
    current_streak <- 0
  }
}

# Show the longest streak and its position
cat("The longest streak of hot days is:", longest_streak, "\n")
#> The longest streak of hot days is: 5
cat("Starts on day:", start_longest_streak, "\n")
#> Starts on day: 41
```
This code uses a `for` loop to traverse the hot days vector and two variables (`current_streak` and `longest_streak`) to track the longest streak.

</details>

10. Imagine you have a vector with the daily stock prices of a company for a year. Create a program that, using only the concepts learned in this chapter, determines the time period in which you could have bought and sold the shares to obtain the maximum profit. Assume you can only buy and sell once.



<details>
  <summary type="button">Solution</summary>
  This exercise is a variant of the classic "maximize stock profit" problem. Solving it optimally can be complex, but with the concepts from this chapter, we can create an algorithm that finds a solution (though not necessarily the optimal one).


``` r
# Create a vector with dummy stock prices for a year
prices <- sample(50:150, 365, replace = TRUE)

# Initialize variables to track max profit
max_profit <- 0
buy_day <- 1
sell_day <- 1

# Iterate through the prices vector
for (i in 1:(length(prices) - 1)) {
  for (j in (i + 1):length(prices)) {
    profit <- prices[j] - prices[i]
    if (profit > max_profit) {
      max_profit <- profit
      buy_day <- i
      sell_day <- j
    }
  }
}

# Show max profit and buy/sell days
cat("Maximum profit:", max_profit, "\n")
#> Maximum profit: 100
cat("Buy day:", buy_day, "\n")
#> Buy day: 193
cat("Sell day:", sell_day, "\n")
#> Sell day: 309
```
This code uses two nested `for` loops to compare all possible pairs of buy and sell days.
</details>



<!--chapter:end:02-fundamentals/01.objects.Rmd-->


# Functions

## Introduction to the world of functions
In the previous chapter, we explored the different types of objects we can use to store and organize information in R. We learned to create variables, vectors, lists, matrices, and arrays, and saw how to access their elements and perform operations with them.

Now, in this chapter, we will go a step further and delve into the world of **functions**. Functions are one of the fundamental pillars of programming in R, allowing us to perform more complex tasks and automate our work.

### What are functions?

Imagine a coffee machine. You provide the ingredients (water, coffee, sugar), and the machine performs a series of steps to produce a cup of coffee. Similarly, a function in R is a set of instructions that receives input data (the **arguments**) and performs a series of operations to produce a result (the **return value**).

Functions allow us to encapsulate a set of instructions into a single block of code, facilitating reuse and code organization. Instead of writing the same instructions over and over again, we can create a function that performs them for us.

### Why use functions?

Functions offer several advantages, starting with **Reusability**, which allows us to use the same logic in different parts of our code or across projects. They also improve **Organization** by breaking code into logical blocks, and enhance **Readability** by keeping scripts concise. Finally, functions provide **Abstraction**, hiding complex implementation details so we can focus on the problem logic.

### First functions: exploring basic R functions

R includes a large number of predefined functions. For instance, `sum()` calculates the total of a vector's elements, while `mean()` computes their arithmetic average.


``` r
numbers <- c(1, 2, 3, 4, 5)
sum(numbers)  # Output: 15
#> [1] 15

temperatures <- c(25, 28, 26, 29, 27)
mean(temperatures)  # Output: 27
#> [1] 27
```

Other common functions include `round()`, which limits the number of decimal places, and `length()`, which tells us how many elements a vector contains.


``` r
pi  # Output: 3.141593
#> [1] 3.141593
round(pi, 2)  # Output: 3.14
#> [1] 3.14

cities <- c("New York", "Los Angeles", "Chicago")
length(cities)  # Output: 3
#> [1] 3
```

These are just a few of the many predefined functions that R offers. As we progress through the book, we will explore more functions and learn how to use them to perform more complex data analysis.


## Anatomy of a function

In the previous section, we saw what functions are and why they are so useful in programming. Now, we are going to delve into the structure of a function, so you can create your own functions and automate tasks in your data analysis.

### Arguments: the ingredients of the function

To make a cup of coffee, you need ingredients: water, coffee, and maybe sugar or milk. Similarly, functions in R need **arguments** to do their job. Arguments are the input data that the function uses to perform its operations.

For example, the `sum()` function needs a vector of numbers as an argument to calculate the sum of its elements.


``` r
numbers <- c(1, 2, 3, 4, 5)
sum(numbers)  # Output: 15
#> [1] 15
```

A function's arguments are specified in parentheses after the function name. If a function requires multiple arguments, they are separated by commas.

For example, imagine we want to create a function to calculate the total cost of a plane trip. This function might need the `ticket_price`, the `num_people` traveling, and an optional `discount` (such as a reduction for students or senior citizens).

The function could be called `calculate_vacation_cost` and would be used as follows:


``` r
calculate_vacation_cost(ticket_price = 300, num_people = 2, discount = 0.1)
```

In this case, we are passing three arguments to the function: `ticket_price` with value 300, `num_people` with value 2, and `discount` with value 0.1 (representing a 10% discount).

### Body: the instructions of the function

The **body** of a function is the set of instructions that are executed when the function is called. These instructions can be any valid R code: variable assignments, mathematical operations, conditionals, loops, calls to other functions, etc.

The body of a function is defined within curly braces `{}`.

For example, the body of the function `calculate_trip_cost` could be:


``` r
calculate_vacation_cost <- function(ticket_price, num_people, discount = 0) {
  total_cost <- ticket_price * num_people * (1 - discount)
  return(total_cost)
}
```

In this body, first the total cost of the trip is calculated by multiplying the ticket price by the number of people and by (1 minus the discount). Then, `return()` is used to return the `total_cost`.

Note that in the function definition, the argument `discount` has a default value of 0. This means that if we do not specify a value for `discount` when calling the function, the value 0 will be used.

For example, if we do not specify a value for `discount`, the function uses the default value 0, and the total cost is 600:

``` r
# Call the function without specifying the discount
calculate_vacation_cost(ticket_price = 300, num_people = 2)
#> [1] 600
```

If we want to apply a discount, we can specify it when calling the function:


``` r
calculate_vacation_cost(ticket_price = 300, num_people = 2, discount = 0.1)
#> [1] 540
```

In this case, the total cost is 540, since a 10% discount is applied.


### Return value: the result of the function

The **return value** is the result the function produces after executing its instructions. It can be a simple value (a number, text, a logical value) or a more complex object (a vector, a list, a data frame).

In R, the return value is specified with the `return()` function. If `return()` is not used, the function will return the result of the last expression evaluated in the body.

In the `calculate_vacation_cost` example, the return value is the `total_cost` of the trip, which is a number.

### Examples: creating simple functions step by step

Let's see an example of how to create a simple function that converts degrees Celsius to Fahrenheit:


``` r
celsius_to_fahrenheit <- function(celsius) {
  fahrenheit <- (celsius * 9 / 5) + 32
  return(fahrenheit)
}
```

In this example, `celsius_to_fahrenheit` is the name of the function, and `celsius` is its argument representing the input temperature. Inside the body, the function calculates the equivalent Fahrenheit value using the formula `(celsius * 9 / 5) + 32` and stores it in the variable `fahrenheit`, which is then sent back as the result using `return()`.

Now we can use our function to convert temperatures:


``` r
celsius_to_fahrenheit(0)   # Output: 32
#> [1] 32
celsius_to_fahrenheit(100)  # Output: 212
#> [1] 212
```
Congratulations! You just created your first function in R. As we progress through the chapter, you will learn to create more complex functions and use them to solve real-world problems.


## Mastering the use of functions

We have already seen how to create simple functions with basic arguments, including the possibility of assigning default values. Now, we will explore even more advanced techniques to master the use of functions and write more flexible and efficient code.

### Functions with a variable number of arguments (`...`): Adapting to different situations

Sometimes, we don't know beforehand how many arguments a function will receive. For these cases, R offers us the possibility of defining functions with a variable number of arguments using the three dots (`...`).

For example, the `sum()` function can receive any number of arguments:


``` r
sum(1, 2, 3) 
#> [1] 6
sum(1, 2, 3, 4, 5)  # Output: 15
#> [1] 15
```

We can use the three dots (`...`) to create our own functions that accept a variable number of arguments. For example, a function that calculates the average of several numbers:


``` r
calculate_average <- function(...) {
  numbers <- c(...)
  average <- mean(numbers)
  return(average)
}

calculate_average(1, 2, 3)
#> [1] 2
calculate_average(1, 2, 3, 4, 5)
#> [1] 3
```

In this example, the three dots (`...`) capture all the arguments passed to the function and store them in the `numbers` vector. Then, the function calculates the average of the numbers in the vector and returns it as a result.

It is important to note that when using `...`, we lose the ability to name the arguments individually. However, we gain flexibility by being able to pass a variable number of arguments to the function.

### Variable scope: local and global variables

The **scope** of a variable refers to the part of the code where the variable is accessible. In R, variables defined inside a function have a **local** scope, meaning they are only accessible within the function. Variables defined outside any function have a **global** scope, meaning they are accessible from anywhere in the code.

For example, in the function `calculate_average`, the variable `numbers` has a local scope:


``` r
calculate_average <- function(...) {
  numbers <- c(...)
  average <- mean(numbers)
  return(average)
}
```

If we try to access the variable numbers outside the function, we will get an error:

``` r
numbers  # Error: object 'numbers' not found
```

This is because `numbers` only exists inside the `calculate_average` function. When the function finishes executing, the local variables defined inside it cease to exist.

On the other hand, if we define a variable outside any function, it will be a global variable:


``` r
conversion_rate <- 0.621371  # Conversion rate from kilometers to miles
```

We can access the `conversion_rate` variable from anywhere in the code, even inside a function:


``` r
kilometers_to_miles <- function(kilometers) {
  miles <- kilometers * conversion_rate
  return(miles)
}

kilometers_to_miles(100)
#> [1] 62.1371
```

It is important to keep variable scope in mind when writing functions to avoid errors and confusion. If a variable is not defined in the current scope (local), R will look in the global scope. If the variable is not found in any scope, an error will occur.

For example, imagine we want to calculate the total cost of a trip, including the cost of the plane ticket, accommodation, and other expenses. We can create a function that receives these expenses as arguments and calculates the total cost:


``` r
calculate_trip_cost <- function(ticket, accommodation, other_expenses) {
  total_cost <- ticket + accommodation + other_expenses
  return(total_cost)
}
```

If we call this function with expense values, we get the total cost:


``` r
calculate_trip_cost(ticket = 300, accommodation = 500, other_expenses = 100) 
#> [1] 900
```

Now, imagine we want to apply a tax to the total cost. We could define a global variable `tax_rate`:


``` r
tax_rate <- 0.16
```

> **Warning:** Relying on global variables inside a function (like `tax_rate` in the example below) is generally considered bad practice. It makes the function dependent on the external environment, which can lead to unexpected errors if the global variable changes or doesn't exist. It is better to pass all necessary values as arguments to the function.

And then modify the function to include the tax:


``` r
calculate_trip_cost <- function(ticket, accommodation, other_expenses) {
  total_cost <- ticket + accommodation + other_expenses
  total_cost <- total_cost * (1 + tax_rate)
  return(total_cost)
}
```

When calling the function again, the total cost will include the tax:


``` r
calculate_trip_cost(ticket = 300, accommodation = 500, other_expenses = 100)
#> [1] 1044
```

In this case, the `calculate_trip_cost` function can access the global variable `tax_rate` because it is not defined locally within the function.

If we try to use a variable that is not defined in any scope, we will get an error:


``` r
calculate_trip_cost <- function(ticket, accommodation, other_expenses) {
  total_cost <- ticket + accommodation + other_expenses + tip
  return(total_cost)
}

calculate_trip_cost(ticket = 300, accommodation = 500, other_expenses = 100)  # Error: object 'tip' not found
```

In this case, the variable `tip` is not defined either locally or globally, so the function cannot access it.

It is important to understand the concept of variable scope to write functions that work correctly and avoid errors.

### Examples: functions to calculate taxes, discounts, etc.

Functions are very useful for automating repetitive tasks, such as calculating taxes, discounts, or converting units. Let's look at some examples with different levels of difficulty:

**Calculating shipping cost for a package**


``` r
calculate_shipping_cost <- function(weight, destination) {
  if (destination == "local") {
    cost <- 5 + 0.1 * weight
  } else if (destination == "national") {
    cost <- 10 + 0.2 * weight
  } else {  # destination == "international"
    cost <- 20 + 0.5 * weight
  }
  return(cost)
}

# Usage example
package_weight <- 2.5  # Weight in kilograms
destination <- "national"
shipping_cost <- calculate_shipping_cost(package_weight, destination)

shipping_cost
#> [1] 10.5
```

In this example, the `calculate_shipping_cost()` function calculates the shipping cost of a package based on its weight and destination. The function uses a conditional structure (`if`-`else if`-`else`) to apply different shipping rates depending on the destination.

**Calculating income tax with brackets**


``` r
calculate_income_tax <- function(income) {
  if (income <= 10000) {
    rate <- 0.10
  } else if (income <= 20000) {
    rate <- 0.15
  } else {
    rate <- 0.20
  }
  tax <- income * rate
  return(tax)
}

# Usage example
income <- 15000
tax <- calculate_income_tax(income)

tax
#> [1] 2250
```

In this example, the `calculate_income_tax()` function calculates a person's income tax based on their income. The function uses a conditional structure (`if`-`else if`-`else`) to apply different tax rates according to the income bracket.

**Calculating trip cost with multiple options**


``` r
calculate_trip_cost <- function(origin_city, destination_city, 
                                 transport_type = "plane", 
                                 num_people = 1, 
                                 hotel = NULL, 
                                 daily_expenses = 100, 
                                 trip_duration = 7) {
  
  # Calculate transport cost
  if (transport_type == "plane") {
    transport_cost <- 300 * num_people  # Base price per person
  } else if (transport_type == "train") {
    transport_cost <- 150 * num_people  # Base price per person
  } else {
    transport_cost <- 0  # Assuming transport is by own car
  }
  
  # Calculate accommodation cost
  if (!is.null(hotel)) {
    accommodation_cost <- hotel$price * trip_duration
  } else {
    accommodation_cost <- 0  # Assuming staying not at a hotel
  }
  
  # Calculate other expenses
  other_expenses <- daily_expenses * num_people * trip_duration
  
  # Calculate total cost
  total_cost <- transport_cost + accommodation_cost + other_expenses
  
  return(total_cost)
}

# Usage example
trip_cost_1 <- calculate_trip_cost(origin_city = "Lima", 
                                     destination_city = "New York", 
                                     transport_type = "plane", 
                                     num_people = 2)

trip_cost_2 <- calculate_trip_cost(origin_city = "Lima", 
                                     destination_city = "Los Angeles", 
                                     transport_type = "train", 
                                     num_people = 3, 
                                     hotel = list(price = 150), 
                                     daily_expenses = 120, 
                                     trip_duration = 10)

trip_cost_1 
#> [1] 2000
trip_cost_2 
#> [1] 5550
```

## Higher-order functions

In previous sections, we explored how to create and use functions in R. Now, let's delve into a more advanced concept: **higher-order functions**.

Higher-order functions are those that can receive other functions as arguments or return a function as a result.

This type of function allows us to write more flexible and expressive code, and they are a powerful tool for data analysis.

### `lapply()` and `sapply()`: applying a function to each element

Imagine you have a list with information about several US cities, and you want to calculate the population density of each city. You could write a `for` loop to iterate through the list and calculate the density of each city separately. However, R offers a more efficient and elegant way to do this: the `lapply()` function.

`lapply()` (which stands for "list apply") takes two arguments:

*   A list (or a vector).
*   A function to be applied to each element of the list.

`lapply()` applies the function to each element of the list and returns a new list with the results.


``` r
# Create a list with information about cities
cities <- list(
  New_York = list(population = 8.4e6, area = 783.8),
  Los_Angeles = list(population = 3.9e6, area = 1302.0),
  Chicago = list(population = 2.7e6, area = 606.1)
)

# Function to calculate population density
calculate_density <- function(city) {
  density <- city$population / city$area
  return(density)
}

# Calculate population density of each city
densities <- lapply(cities, calculate_density)

densities
#> $New_York
#> [1] 10717.02
#> 
#> $Los_Angeles
#> [1] 2995.392
#> 
#> $Chicago
#> [1] 4454.71
```

In this example, `lapply()` applies the `calculate_density` function to each element of the `cities` list and returns a new list `densities` with the population density of each city.

The `sapply()` function is similar to `lapply()`, but tries to simplify the result. If the result is a list of vectors of the same type and length, `sapply()` returns a vector or a matrix.


``` r
# Calculate population density of each city with sapply()
densities <- sapply(cities, calculate_density)

densities
#>    New_York Los_Angeles     Chicago 
#>   10717.020    2995.392    4454.710
```

In this case, `sapply()` returns a vector with population densities.

### `apply()`: applying a function to rows or columns

The `apply()` function allows us to apply a function to the rows or columns of a matrix or array. It's like having a tool that allows us to go through each row or column of our data table and perform a specific calculation on each one.

For example, if we have a matrix with the maximum and minimum temperatures of different cities, we can use `apply()` to calculate the average temperature of each city.


``` r
# Create a matrix with temperatures
temperatures <- matrix(c(25, 18, 30, 22, 35, 28), nrow = 3, ncol = 2,
                       dimnames = list(c("New York", "Los Angeles", "Chicago"),
                                       c("Maximum", "Minimum")))

# Calculate average temperature of each city
average_temperatures <- apply(temperatures, 1, mean)

average_temperatures
#>    New York Los Angeles     Chicago 
#>        23.5        26.5        29.0
```

In this example, `apply()` applies the `mean()` function to each row of the `temperatures` matrix (the argument `1` indicates that the function should be applied to rows) and returns a vector with the average temperatures of each city.

If we wanted to calculate the maximum or minimum temperature among all cities, we could use `apply()` with the `max()` or `min()` function, respectively, and apply it to columns (using argument `2`).


``` r
# Calculate maximum temperature among all cities
maximum_temperature <- apply(temperatures, 2, max)

maximum_temperature
#> Maximum Minimum 
#>      30      35
```

### `mapply()`: applying a function to multiple arguments

The `mapply()` function allows us to apply a function to multiple arguments in parallel. It's like having a tool that allows us to take several sets of data and apply the same operation to each corresponding set.

For example, imagine we have two vectors: one with the names of different US cities and another with their respective populations. We want to create a new vector containing the phrase "The city of [city name] has a population of [population] inhabitants". We could use `mapply()` to apply a function combining the city name and its population to each pair of elements from the vectors.


``` r
# Create vectors with city names and populations
cities <- c("New York", "Los Angeles", "Chicago")
populations <- c(8.4e6, 3.9e6, 2.7e6)

# Function to create the phrase
create_phrase <- function(city, population) {
  phrase <- paste("The city of", city, "has a population of", population, "inhabitants.")
  return(phrase)
}

# Create vector with phrases
city_phrases <- mapply(create_phrase, cities, populations)

city_phrases
#>                                                           New York 
#>    "The city of New York has a population of 8400000 inhabitants." 
#>                                                        Los Angeles 
#> "The city of Los Angeles has a population of 3900000 inhabitants." 
#>                                                            Chicago 
#>     "The city of Chicago has a population of 2700000 inhabitants."
```

In this example, `mapply()` applies the `create_phrase` function to the `cities` and `populations` vectors in parallel, taking one element from each vector at a time, and returns a vector with the resulting phrases.

Note that the `create_phrase` function receives two arguments: `city` and `population`. `mapply()` is responsible for taking one element from each vector and passing them as arguments to the function. In the first iteration, it passes "New York" as `city` and 8.4e6 as `population`. In the second iteration, it passes "Los Angeles" and 3.9e6, and so on.

Another example of using `mapply()` would be if we have two vectors with maximum and minimum temperatures of different cities, and we want to calculate the temperature difference between maximum and minimum for each city.


``` r
# Create vectors with maximum and minimum temperatures
maxs <- c(25, 30, 35)
mins <- c(18, 22, 28)

# Calculate temperature difference for each city
temp_difference <- mapply(function(max, min) max - min, maxs, mins)

temp_difference
#> [1] 7 8 7
```

In this example, `mapply()` applies the anonymous function `function(max, min) max - min` to the `maxs` and `mins` vectors in parallel, taking the first element of `maxs` and the first element of `mins`, then the second element of each vector, and so on. For each pair of elements, the anonymous function calculates the difference and returns a vector with the results.

### Examples: data analysis with higher-order functions

Higher-order functions are a powerful tool for data analysis. They allow us to perform complex operations concisely and efficiently. Imagine you have a matrix with information about different states, where each row represents a state and each column a numeric variable, such as population or per capita income. You could use `apply()` to calculate the mean of each column.


``` r
# Create a matrix with information about states
states <- matrix(c(39.2e6, 29.0e6, 21.4e6, 64500, 56100, 50800), nrow = 3, ncol = 2,
                 dimnames = list(c("California", "Texas", "Florida"),
                                 c("population", "per_capita_income")))

# Calculate mean of each column
means <- apply(states, 2, mean)

means
#>        population per_capita_income 
#>       29866666.67          57133.33
```

In this example, `apply()` applies the `mean()` function to each column of the states matrix and returns a vector with the means.

Another one would be if we have a list with prices of different hotels in several US cities. You could use `sapply()` to apply a function calculating the tax of each price, or `lapply()` to convert prices from dollars to euros.

You could also use `apply()` to calculate the average price of hotels in each city, or to find the most expensive and cheapest hotel in each city.

As we progress through the book, we will see more examples of how to use higher-order functions to solve real-world problems.

The possibilities are endless, and higher-order functions give you great flexibility to manipulate and analyze your data.

## Closures: functions with memory

Until now, we have seen that functions in R receive arguments, execute a set of instructions, and return a result. However, functions can also have "memory", that is, they can remember information between calls. This is possible thanks to a concept called **closures**.

### Concept: functions that "remember"

A closure is a function that "remembers" the environment in which it was created. This means the function has access to variables that were defined at the time of its creation, even if those variables are no longer in the current scope.

To better understand this concept, let's see an example. Imagine we want to create a function that counts how many times it has been called. We can do this using a closure:


``` r
create_counter <- function() {
  counter <- 0  # Initialize the counter

  # Define the function that increments the counter
  increment_counter <- function() {
    counter <<- counter + 1
    return(counter)
  }

  return(increment_counter)  # Return the function
}

# Create a counter
my_counter <- create_counter()

# Call the counter several times
my_counter()  
#> [1] 1
my_counter()  
#> [1] 2
my_counter()  
#> [1] 3
```

In this example, the `create_counter()` function creates a `counter` variable and an `increment_counter()` function. The `increment_counter()` function has access to the `counter` variable and increments it by 1 each time it is called. The `create_counter()` function returns the `increment_counter()` function.

When we call `my_counter()`, we are calling the `increment_counter()` function that was created inside `create_counter()`. This function "remembers" the value of the `counter` variable and increments it on each call.

It is important to note that the `counter` variable is not a global variable. It is only accessible within the `increment_counter()` function. This is because `counter` was defined inside the `create_counter()` function, so its scope is local to that function.

However, the `increment_counter()` function "captures" the `counter` variable in its environment, allowing it to access it even after the `create_counter()` function has finished executing.

### Applications: creating counters, functions with internal state

Closures have many applications in programming. They are commonly used for **creating counters** that maintain an internal state between calls, **configuring parameters** where a generated function remembers specific settings (like a temperature scale), and **encapsulating data** to hide sensitive information or internal logic within the function scope.

### Examples: simulating a game, creating an operation history

Let's see some more concrete examples of using closures:

*   **Simulating a game:** We can use a closure to simulate a game where the player has to guess a secret number. The closure can "remember" the secret number and keep track of the player's attempts.

*   **Creating an operation history:** We can use a closure to create a function that records operations performed on a variable. The closure can "remember" the operation history and show it when requested.

Closures are a powerful tool that allows us to write more flexible and expressive code. As you become familiar with them, you will discover new ways to apply them in your data analysis.

## Debugging and error handling: solving the mysteries of your code

So far, we have explored the fascinating world of functions in R. We have learned to create, use, and combine them to perform complex tasks. However, on the programming journey, encountering errors is inevitable. Sometimes, our code doesn't work as we expect, and we encounter cryptic error messages that leave us perplexed.

In this section, we will learn to identify, understand, and fix errors in our R code. We will also see how to handle errors gracefully, so our code is more robust and reliable.


### Identifying errors: common error messages in R

When our code contains an error, R will show us an error message in the console. These messages can seem intimidating at first, but with a little practice, we will learn to interpret them and use them to find the cause of the error.

Some common error messages in R include `Error: object 'object_name' not found`, which happens when you interpret a non-existent variable or function. Another is `invalid argument` when function inputs don't match the expected type, such as passing text to a numeric function. You might also encounter `argument is of length zero` in `if` conditions, often due to `NULL` or empty vectors, or `invalid 'for' loop sequence` when the loop iterator definition is flawed.

It is important to read error messages carefully and try to understand what they are telling us. Often, the error message will give us a clue about the cause of the problem.


### Debugging tools: `debug()`, `traceback()`

R offers several tools to debug our code and find the cause of errors. Two of the most useful tools are `debug()` and `traceback()`.

*   `debug()`: This function allows us to execute a function step by step, allowing us to inspect the value of variables at each step and understand how the code is executing. To use `debug()`, we simply call the function with the name of the function we want to debug as an argument.

    
    ``` r
    debug(my_function)
    ```

    Then, when we call `my_function()`, R will enter debug mode and allow us to execute the code line by line.

*   `traceback()`: This function shows us the sequence of function calls that led to the error. This can be useful for understanding how the error was reached and which functions are involved. To use `traceback()`, simply call the function after an error has occurred.

    
    ``` r
    traceback()
    ```

    R will show a list of the functions that were called, starting with the function where the error occurred and ending with the function that started the code execution.


### Error handling: `tryCatch()`

Sometimes, we want our code to continue executing even if an error occurs. For this, we can use the `tryCatch()` function.

`tryCatch()` allows us to specify a block of code that will be executed if an error occurs. We can also specify a block of code that will be executed if no error occurs.


``` r
tryCatch(
  {
    # Code that might produce an error
  },
  error = function(e) {
    # Code to be executed if an error occurs
  },
  finally = {
    # Code to be executed always, whether or not there is an error
  }
)
```

For example, if we are reading data from a file and the file does not exist, we can use `tryCatch()` to show an error message and continue with code execution.


``` r
tryCatch(
  {
    data <- read.csv("my_file.csv")
  },
  error = function(e) {
    print("Error reading file. Please verify the file exists.")
  }
)
```

### Examples: debugging functions with errors, handling exceptions

Let's see some examples of how to use debugging tools and error handling in R:

*   **Debugging a function with `debug()`:**

    Imagine we create a function to calculate a person's Body Mass Index (BMI), but when using it, we get an error. We can use `debug()` to analyze what happens inside the function.

    
    ``` r
    calculate_bmi <- function(weight, height) {
      bmi <- weight / (height ^ 2) 
      return(bmi)
    }
    
    debug(calculate_bmi)
    calculate_bmi(weight = 70, height = 1.75)  # We call the function to start debugging
    ```

    When executing this code, R will enter debug mode. In the console, we will see a new prompt `Browse[1]>`. We can use commands like `n` (next) to execute the next line of code, `c` (continue) to continue normal execution, or `Q` to exit debug mode. We can also print the value of variables using their name (e.g. `weight`, `height`, `bmi`).

*   **Handling an exception with `tryCatch()`:**

    Suppose we are creating a function to calculate the annual population growth rate of a city. If the initial population is 0, the division will produce an error. We can use `tryCatch()` to handle this situation:

    
    ``` r
    calculate_growth_rate <- function(initial_population, final_population, years) {
      tryCatch(
        {
          rate <- ((final_population / initial_population)^(1 / years) - 1) * 100
          return(rate)
        },
        error = function(e) {
          message("Error: Initial population cannot be zero.")
          return(NA)
        }
      )
    }
    
    calculate_growth_rate(10000, 12000, 5)  # Output: 3.7137...
    #> [1] 3.713729
    calculate_growth_rate(0, 12000, 5)  # Output: "Error: Initial population cannot be zero." 
    #> [1] Inf
    ```

    In this example, if `initial_population` is 0, `tryCatch()` captures the error and displays a message. Then, it returns `NA` to indicate that calculation could not be performed.

With practice, you will learn to use these tools to debug your code, handle errors, and write more robust and reliable programs.


## Exercises

It's time to test your skills with functions! Below, you will find a series of exercises with different levels of difficulty.


11. Create a function called `miles_to_kilometers()` converting miles to kilometers. The function should receive a `miles` argument and return the equivalent in kilometers. (Remember that 1 mile equals 1.60934 kilometers).



<details>
  <summary type="button">Solution</summary>

``` r
miles_to_kilometers <- function(miles) {
  kilometers <- miles * 1.60934
  return(kilometers)
}
```
</details>

12. Create a function called `triangle_area()` calculating the area of a triangle. The function should receive two arguments: `base` and `height`, and return the triangle's area. (Remember that the area of a triangle is equal to (base * height) / 2).



<details>
  <summary type="button">Solution</summary>

``` r
triangle_area <- function(base, height) {
  area <- (base * height) / 2
  return(area)
    }
```
</details>

13. Create a function called `price_with_vat()` calculating the price of a product including VAT. The function should receive two arguments: `price_without_vat` and `vat_rate` (default, 0.16), and return the price with VAT.



<details>
  <summary type="button">Solution</summary>

``` r
price_with_vat <- function(price_without_vat, vat_rate = 0.16) {
  price_with_vat <- price_without_vat * (1 + vat_rate)
  return(price_with_vat)
}
```
</details>

14. Create a function called `is_even()` determining if a number is even. The function should receive a `number` argument and return `TRUE` if the number is even and `FALSE` if not. (Hint: use the modulo operator `%%`).



<details>
  <summary type="button">Solution</summary>

``` r
    is_even <- function(number) {
      return(number %% 2 == 0)
    }
```
</details>

15. Create a function called `my_factorial()` calculating the factorial of a number. The factorial of a positive integer *n*, denoted by *n!*, is the product of all positive integers less than or equal to *n*. For example, 5! = 5 * 4 * 3 * 2 * 1 = 120. (Hint: use a recursive function). Note: We name it `my_factorial()` to avoid shadowing R's built-in `factorial()` function.



<details>
  <summary type="button">Solution</summary>

``` r
my_factorial <- function(n) {
  if (n < 0) {
      # We use message() and return(NA) because we haven't covered stop() yet
      message("Factorial is not defined for negative numbers")
      return(NA)
    }
  if (n == 0) {
    return(1)
  } else {
    return(n * my_factorial(n - 1))
  }
}
```
</details>

16. Create a function called `fibonacci()` generating a Fibonacci sequence of a given length. The Fibonacci sequence is a series of numbers where each number is the sum of the two preceding ones. The sequence typically starts with 0 and 1. For example, a Fibonacci sequence of length 10 would be: 0, 1, 1, 2, 3, 5, 8, 13, 21, 34.



<details>
  <summary type="button">Solution</summary>

``` r
fibonacci <- function(n) {
  if (n <= 0) {
    return(numeric(0))
  } else if (n == 1) {
    return(0)
  } else if (n == 2) {
    return(c(0, 1))
  } else {
    fib_seq <- numeric(n)
    fib_seq[1] <- 0
    fib_seq[2] <- 1
    for (i in 3:n) {
      fib_seq[i] <- fib_seq[i - 1] + fib_seq[i - 2]
    }
    return(fib_seq)
  }
}

fibonacci(10)
#>  [1]  0  1  1  2  3  5  8 13 21 34
```
</details>

17. Create a function called `gcd()` calculating the greatest common divisor (GCD) of two numbers. The GCD of two or more non-zero integers is the largest positive integer that divides them without a remainder. For example, the GCD of 12 and 18 is 6. (Hint: use the Euclidean algorithm).



<details>
  <summary type="button">Solution</summary>

``` r
gcd <- function(a, b) {
  while (b != 0) {
    temp <- b
    b <- a %% b
    a <- temp
  }
  return(a)
}
```
</details>

18. Create a function called `validate_password()` validating a password. The function should receive a `password` argument and return `TRUE` if the password meets the following conditions, and `FALSE` otherwise:

    *   Has at least 8 characters.
    *   Contains at least one uppercase letter.
    *   Contains at least one lowercase letter.
    *   Contains at least one number.
    *   Contains at least one special character (!@#$%^&*).



<details>
  <summary type="button">Solution</summary>

``` r
validate_password <- function(password) {
  if (nchar(password) < 8) {
    return(FALSE)
  }
  if (!grepl("[A-Z]", password)) {
    return(FALSE)
  }
  if (!grepl("[a-z]", password)) {
    return(FALSE)
  }
  if (!grepl("[0-9]", password)) {
    return(FALSE)
  }
  if (!grepl("[!@#$%^&*]", password)) {
    return(FALSE)
  }
  return(TRUE)
}
```
</details>

19. Create a function called `apply_discount()` receiving a price calculation function and a discount as arguments. The `apply_discount()` function should return a new function calculating the price with the discount applied.



<details>
  <summary type="button">Solution</summary>

``` r
apply_discount <- function(price_function, discount) {
  function(original_price) {
    discounted_price <- price_function(original_price) * (1 - discount)
    return(discounted_price)
  }
}
```
</details>

20. Create a function called `create_temperature_converter()` receiving a temperature scale as argument ("Celsius", "Fahrenheit" or "Kelvin"). The function should return a function converting temperatures to the specified scale.



<details>
  <summary type="button">Solution</summary>

``` r
create_temperature_converter <- function(scale) {
  if (scale == "Celsius") {
    return(function(temp) (temp - 32) * 5 / 9)  # Fahrenheit to Celsius
  } else if (scale == "Fahrenheit") {
    return(function(temp) (temp * 9 / 5) + 32)  # Celsius to Fahrenheit
  } else if (scale == "Kelvin") {
    return(function(temp) temp + 273.15)  # Celsius to Kelvin
  } else {
      # We use message() and return(NA) because we haven't covered stop() yet
      message("Invalid temperature scale.")
      return(NA)
  }
}
```
</details>

21. Create a function called `guess_number()` simulating a guess the number game. The function should generate a random number between 1 and 100 and ask the user to guess it. The function should give hints to the user (higher or lower) and count the number of attempts. (Hint: use a closure to store the secret number and the number of attempts).



<details>
  <summary type="button">Solution</summary>

``` r
guess_number <- function() {
  secret_number <- sample(1:100, 1)
  attempts <- 0

  guess <- function() {
    attempts <<- attempts + 1
    cat("Attempt", attempts, ": ")
    number <- as.numeric(readline())
    if (is.na(number)) {
      cat("Please enter a valid number.\n")
    } else if (number < secret_number) {
      cat("The secret number is higher.\n")
    } else if (number > secret_number) {
      cat("The secret number is lower.\n")
    } else {
      cat("You guessed it! The secret number was", secret_number, "\n")
      cat("It took you", attempts, "attempts.\n")
    }
  }

  return(guess)
}

game <- guess_number()

game()
#> Attempt 1 : 
#> Please enter a valid number.
```
</details>


22. Create a function that, given a vector of integers, finds the contiguous subsequence with the maximum sum. For example, for the vector `c(-2, 1, -3, 4, -1, 2, 1, -5, 4)`, the contiguous subsequence with the maximum sum is `c(4, -1, 2, 1)`, with a sum of 6.



<details>
  <summary type="button">Solution</summary>

``` r
max_subsequence <- function(x) {
  current_max <- 0
  global_max <- 0
  start <- 1
  end <- 1
  temp_start <- 1

  for (i in 1:length(x)) {
    current_max <- current_max + x[i]
    if (current_max > global_max) {
      global_max <- current_max
      start <- temp_start
      end <- i
    }
    if (current_max < 0) {
      current_max <- 0
      temp_start <- i + 1
    }
  }
  return(list(subsequence = x[start:end], sum = global_max))
}

test <- c(-2, 1, -3, 4, -1, 2, 1, -5, 4)
max_subsequence(test)
#> $subsequence
#> [1]  4 -1  2  1
#> 
#> $sum
#> [1] 6
```
</details>

23. Create a function that, given a character vector, determines if it is possible to obtain a palindrome by rearranging its letters. A palindrome is a word or phrase that reads the same left to right as right to left (e.g. "radar").



<details>
  <summary type="button">Solution</summary>

``` r
is_palindrome_possible <- function(text) {
  letters <- strsplit(tolower(text), "")[[1]]
  frequencies <- table(letters)
  odds <- sum(frequencies %% 2)
  return(odds <= 1)
}

test <- c("radar", "hello", "abb")
result <- sapply(test, is_palindrome_possible)
result
#> radar hello   abb 
#>  TRUE FALSE  TRUE
```
</details>

24. Create a function that, given a positive integer, determines if it is a prime number. A prime number is a natural number greater than 1 that has no divisors other than 1 and itself.



<details>
  <summary type="button">Solution</summary>

``` r
is_prime <- function(n) {
  if (n <= 1) {
    return(FALSE)
  }
  if (n <= 3) {
    return(TRUE)
  }
  if (n %% 2 == 0 || n %% 3 == 0) {
    return(FALSE)
  }
  i <- 5
  while (i * i <= n) {
    if (n %% i == 0 || n %% (i + 2) == 0) {
      return(FALSE)
    }
    i <- i + 6
  }
  return(TRUE)
}

```
The condition `i * i <= n` in the `while` loop limits iterations to the square root of `n`. This optimizes the algorithm, as it is not necessary to check divisors greater than the square root of `n`.
The increment `i <- i + 6` is based on the observation that all prime numbers greater than 3 can be expressed in the form 6k ± 1. Therefore, only numbers of the form 6k ± 1 need to be checked as possible divisors.
</details>



<!--chapter:end:02-fundamentals/02.functions.Rmd-->


# Data Frames

## Introduction to Data Frames

In previous chapters, we explored different types of objects in R, such as variables, vectors, lists, and matrices. These objects allow us to store information in more efficient ways. Now, in this chapter, we will delve into the world of **data frames**, an essential tool for organizing and analyzing information that will help you make the best decision about your move to the United States.

### What are data frames?

Imagine a spreadsheet, with rows and columns organizing information in a tabular way. In R, a data frame is precisely that: a data structure that stores information in a tabular format, with rows representing **observations** (for example, every US city) and columns representing **variables** (such as population, cost of living, crime rate).

Each column of a data frame can contain a different data type: numeric, character, logical, factor, etc. This makes data frames very versatile for storing diverse information.

For example, a data frame about US cities could serve as a comprehensive record. It might contain a character column for the `city` name and another for the `state` it belongs to. Numeric columns could store the `population` and the `area` in square kilometers, while a logical column like `has_beach` could indicate whether the city is coastal.

### Why data frames?

In R, there are various structures for organizing data, such as vectors, lists, and matrices. However, data frames stand out as a fundamental tool in data analysis. Why?

Data frames offer a unique combination of features that make them ideal for representing and manipulating complex information:

Data frames are uniquely suited for data analysis because of their specific features. Their **tabular structure** organizes data into rows and columns, similar to a spreadsheet, making it intuitive to visualize. They offer **flexibility** by allowing each column to hold a different data type, such as numbers, text, or dates. this structure also ensures **efficiency**, as most R analysis packages are optimized to work directly with data frames.

In summary, data frames are a versatile and powerful data structure that adapts to the needs of modern data analysis.

### Data Frames in action: exploring information about the United States

In the context of your move to the United States, data frames will be essential for organizing and analyzing the information you need to make the best decision. We can use data frames to store information about:

We can use data frames to store and correlate various aspects of your potential new home. You might track **crime rates** across different states, compare the **cost of living** (housing, food, transportation) in target cities, analyze **climate data** like temperature and precipitation, or study **demographics** such as population age and education levels.

With this information organized in data frames, you will be able to perform deeper analyses and make more informed decisions about your move.

## Creating Data Frames: Building your database for the move

Now that you know what data frames are and why they are so important in data analysis, it's time to learn how to create them. In R, we can create data frames in different ways: importing data from external files or creating them manually.

### Importing data from files: CSV, Excel

A common way to create data frames is by importing data from external files, such as CSV (Comma Separated Values) files or Excel files. R offers us functions to read data from different formats.

One of the most common ways to create data frames is by importing data from external files. For **CSV (Comma Separated Values)** files, we rely on the `read_csv()` function from the `readr` package (part of the tidyverse), which is faster and more robust than the base R equivalent. To import a file, you simply provide its URL or file path:

    
    ``` r
    library(readr)
    url <- "https://dparedesi.github.io/DS-with-R-datasets/student-grades.csv"
    
    # Import data from a CSV file called "student-grades.csv"
    grades <- read_csv(url)
    #> Rows: 21 Columns: 9
    #> ── Column specification ─────────────────────────────
    #> Delimiter: ","
    #> chr (3): start_date, gender, type
    #> dbl (6): P1, P2, P3, P4, P5, P6
    #> 
    #> ℹ Use `spec()` to retrieve the full column specification for this data.
    #> ℹ Specify the column types or set `show_col_types = FALSE` to quiet this message.
    
    grades
    #> # A tibble: 21 × 9
    #>    start_date gender type                 P1    P2    P3    P4    P5    P6
    #>    <chr>      <chr>  <chr>             <dbl> <dbl> <dbl> <dbl> <dbl> <dbl>
    #>  1 03/05/2020 female Individual Work 1     5     5     5     5     5     5
    #>  2 03/05/2020 male   Individual Work 1     5     5     5     5     4     5
    #>  3 03/05/2020 female Individual Work 1     5     5     4     5     5     5
    #>  4 03/05/2020 male   Individual Work 1     5     5     5     5     5     5
    #>  5 03/05/2020 male   Individual Work 1     2     5     5     5     5     5
    #>  6 03/05/2020 male   Individual Work 1     5     4     5     1     5     5
    #>  7 03/05/2020 male   Individual Work 1     2     1     5     5     2     5
    #>  8 03/05/2020 male   Individual Work 1     5     5     5     5     5     5
    #>  9 03/05/2020 male   Individual Work 1     4     5     5     5     5     5
    #> 10 03/05/2020 male   Individual Work 1     3     4     5     5     5     5
    #> # ℹ 11 more rows
    ```

The `read_csv()` function offers several arguments to customize how files are read. The `header` argument allows you to specify if the first row contains column names, while `sep` defines the column separator (defaulting to a comma). You can also use `dec` to set the character used for decimal points.

For **Excel files**, we use the `read_excel()` function from the `readxl` package. This function works similarly but includes specific arguments like `sheet` to specify which spreadsheet tab to import.

    
    ``` r
    # Install the readxl package (if you don't have it installed)
    install.packages("readxl")
    
    # Load the readxl package
    library(readxl)
    
    # Import data from an Excel file called "states.xlsx"
    states <- read_excel("states.xlsx")
    ```

### Creating data frames manually

We can also create data frames manually, combining vectors with the `data.frame()` function.


``` r
# Create vectors with information about cities
cities <- c("New York", "Los Angeles", "Chicago")
states <- c("New York", "California", "Illinois")
population <- c(8.4e6, 3.9e6, 2.7e6)

# Create a data frame with city information
df_cities_simple <- data.frame(city = cities, state = states, population = population)

df_cities_simple
#>          city      state population
#> 1    New York   New York    8400000
#> 2 Los Angeles California    3900000
#> 3     Chicago   Illinois    2700000
```

In this example, we create a data frame called `df_cities_simple` with three columns: `city`, `state`, and `population`. Each column is created from a vector. Note that the vectors must have the same length to be combined into a data frame.

### Examples

We can use data frames to organize diverse information about our move to the United States. For example, we could create a data frame with information about different cities, including their cost of living, crime rate, and climate. We could also create a data frame with information about the different states, including their population, gross domestic product (GDP), and education system.


``` r
# Create a data frame with information about cities
df_cities <- data.frame(
  city = c("New York", "Los Angeles", "Chicago", "Houston"),
  state = c("New York", "California", "Illinois", "Texas"),
  cost_of_living = c(3.5, 2.8, 2.5, 2.0),  # In thousands of dollars
  crime_rate = c(400, 350, 500, 450),  # Per 100,000 inhabitants
  climate = c("Temperate", "Mediterranean", "Continental", "Subtropical")
)

df_cities
#>          city      state cost_of_living crime_rate       climate
#> 1    New York   New York            3.5        400     Temperate
#> 2 Los Angeles California            2.8        350 Mediterranean
#> 3     Chicago   Illinois            2.5        500   Continental
#> 4     Houston      Texas            2.0        450   Subtropical

# Create a data frame with information about states
df_states <- data.frame(
  state = c("California", "Texas", "Florida", "New York"),
  population = c(39.2e6, 29.0e6, 21.4e6, 19.4e6),
  gdp = c(3.2e12, 1.8e12, 1.1e12, 1.7e12),  # In dollars
  education_system = c("Good", "Regular", "Good", "Excellent")
)

df_states
#>        state population     gdp education_system
#> 1 California   39200000 3.2e+12             Good
#> 2      Texas   29000000 1.8e+12          Regular
#> 3    Florida   21400000 1.1e+12             Good
#> 4   New York   19400000 1.7e+12        Excellent
```

These data frames will allow us to analyze the information more efficiently and make more informed decisions about our move.

## Exploring Data Frames: Discovering the secrets of your data

We have already learned to create data frames, now it is time to explore their content and discover the information they hide. R offers us various tools to examine and understand our data.

### Accessing rows, columns, and cells

A data frame is like a map organized in rows and columns. To access the information we need, we must know how to navigate this map. R provides us with different ways to access rows, columns, and cells of a data frame.

There are several ways to access specific data within a dataframe. To retrieve a **column**, you can use the `$` operator (e.g., `df_cities$state`) or bracket notation with the column name in quotes (e.g., `df_states["population"]`). To access a specific **row**, use brackets with the row number (e.g., `df_cities[3, ]`). For a precise **cell** at the intersection of a row and column, specify both indices (e.g., `df_states[2, 3]`). You can also **filter rows** based on conditions, such as extracting all cities where the cost of living is less than 3 using a logical expression inside the brackets.

### Functions for exploring data frames

R offers several useful functions for exploring data frames:

R provides useful functions for a quick overview of your data. `head()` displays the first six rows, while `tail()` shows the last six. To understand the structure—such as column names and data types—you can use `str()`. For a statistical overview including mean, median, and quartiles, `summary()` is the go-to function. Additionally, `View()` opens an interactive spreadsheet-style window to browse the data.

### Examples: exploring data frames with move information

By exploring the data frames we created in the previous section, we can obtain valuable information about US cities and states. For example, we could use `summary()` to get descriptive statistics of the cost of living in different cities, or `View()` to examine information about each state in detail.


``` r
# Get descriptive statistics of cost of living in different cities
summary(df_cities$cost_of_living)
#>    Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
#>   2.000   2.375   2.650   2.700   2.975   3.500
```


``` r
# Examine detailed information about each state
View(df_states)
```

In addition to the mentioned functions, we can use other tools to explore our data frames. For example, we can use the `table()` function to get the frequency of each value in a categorical column, such as the `climate` column in the `df_cities` data frame.


``` r
table(df_cities$climate)
#> 
#>   Continental Mediterranean   Subtropical     Temperate 
#>             1             1             1             1
```

We can also use the `hist()` function to create a histogram of a numeric column, such as the population column in the `df_states` data frame.


``` r
hist(df_states$population)
```

<img src="Data-Science-with-R_files/figure-html/unnamed-chunk-139-1.png" alt="" width="80%" style="display: block; margin: auto;" />

These are just some ideas of how we can explore our data frames. As you become familiar with R, you will discover new functions and techniques for analyzing and visualizing your data.

## Manipulating Data Frames: Transforming your data

In the previous section, we learned to explore data frames and access the information they contain. Now, we will go a step further and learn to **manipulate** data frames, transforming data to answer specific questions and obtain relevant information for our move.

### Introduction to the pipeline operator (`|>`)

Before modifying data frames, we will introduce a tool to write more readable and efficient code: the **native pipeline operator** (`|>`). This operator was introduced in R 4.1 (2021) as a built-in language feature, meaning it works without any additional packages.

> **Note:** You may also encounter the `%>%` pipe operator from the `magrittr` package (part of the tidyverse). Both `|>` and `%>%` work similarly for most data analysis tasks. We use the native `|>` operator throughout this book as it is built into R, but `%>%` is still widely used in older codebases.

The pipeline operator allows us to chain several operations sequentially. Instead of writing nested code, we can use the pipeline operator to "pass" the result of one operation to the next.

To use additional data manipulation functions, we'll load the `tidyverse` package, which includes `dplyr` - a package with many useful functions for working with data frames.

A package in R is like a toolbox with additional functions and data for performing specific tasks. To use a package's functions, we must first install it and then load it into our working environment.

To install the `tidyverse` package, we can use the following instruction in the R console:


``` r
install.packages("tidyverse")
```

This will install `tidyverse` and all the packages it contains, including `dplyr`. Once the package is installed, we can load it with the `library()` function:


``` r
library(tidyverse)
```

Now we can use the pipeline operator `(|>)` and functions from `dplyr.`

For example, we'll use the `murders` dataset from the `dslabs` package. This dataset contains gun murder data by US state in 2010, including variables like state name, abbreviation, region, population, and total murders. Let's use a pipeline to view selected columns:


``` r
install.packages("dslabs")
```


``` r
# Load library and dataset
library(dslabs)
data(murders)

# Pipeline
murders |> select(state, population, total)
#>                   state population total
#> 1               Alabama    4779736   135
#> 2                Alaska     710231    19
#> 3               Arizona    6392017   232
#> 4              Arkansas    2915918    93
#> 5            California   37253956  1257
#> 6              Colorado    5029196    65
#> 7           Connecticut    3574097    97
#> 8              Delaware     897934    38
#> 9  District of Columbia     601723    99
#> 10              Florida   19687653   669
#> 11              Georgia    9920000   376
#> 12               Hawaii    1360301     7
#> 13                Idaho    1567582    12
#> 14             Illinois   12830632   364
#> 15              Indiana    6483802   142
#> 16                 Iowa    3046355    21
#> 17               Kansas    2853118    63
#> 18             Kentucky    4339367   116
#> 19            Louisiana    4533372   351
#> 20                Maine    1328361    11
#> 21             Maryland    5773552   293
#> 22        Massachusetts    6547629   118
#> 23             Michigan    9883640   413
#> 24            Minnesota    5303925    53
#> 25          Mississippi    2967297   120
#> 26             Missouri    5988927   321
#> 27              Montana     989415    12
#> 28             Nebraska    1826341    32
#> 29               Nevada    2700551    84
#> 30        New Hampshire    1316470     5
#> 31           New Jersey    8791894   246
#> 32           New Mexico    2059179    67
#> 33             New York   19378102   517
#> 34       North Carolina    9535483   286
#> 35         North Dakota     672591     4
#> 36                 Ohio   11536504   310
#> 37             Oklahoma    3751351   111
#> 38               Oregon    3831074    36
#> 39         Pennsylvania   12702379   457
#> 40         Rhode Island    1052567    16
#> 41       South Carolina    4625364   207
#> 42         South Dakota     814180     8
#> 43            Tennessee    6346105   219
#> 44                Texas   25145561   805
#> 45                 Utah    2763885    22
#> 46              Vermont     625741     2
#> 47             Virginia    8001024   250
#> 48           Washington    6724540    93
#> 49        West Virginia    1852994    27
#> 50            Wisconsin    5686986    97
#> 51              Wyoming     563626     5
```

Code with pipeline is easier to read and understand, as it follows the natural flow of operations. Pipeline creates a view; we are not editing the `murders` data frame.

We can show the first rows using the `head()` function:


``` r
head(murders |> select(state, population, total))
#>        state population total
#> 1    Alabama    4779736   135
#> 2     Alaska     710231    19
#> 3    Arizona    6392017   232
#> 4   Arkansas    2915918    93
#> 5 California   37253956  1257
#> 6   Colorado    5029196    65
```

We can also use the pipeline operator to show the first rows:

``` r
murders |> select(state, population, total) |> head()
#>        state population total
#> 1    Alabama    4779736   135
#> 2     Alaska     710231    19
#> 3    Arizona    6392017   232
#> 4   Arkansas    2915918    93
#> 5 California   37253956  1257
#> 6   Colorado    5029196    65
```

For better readability, we will use one function per line, obtaining the same result:

``` r
murders |>
  select(state, population, total) |> # Select columns
  head() # Show first 6 rows
#>        state population total
#> 1    Alabama    4779736   135
#> 2     Alaska     710231    19
#> 3    Arizona    6392017   232
#> 4   Arkansas    2915918    93
#> 5 California   37253956  1257
#> 6   Colorado    5029196    65
```

### Transforming a table with `mutate()`
We can create new columns or modify existing ones using the `mutate()` function. For example, to add a column with the homicide rate per 100,000 inhabitants to the `murders` data frame:


``` r
murders |>
  mutate(ratio = total / population * 100000) |>
  head()
#>        state abb region population total    ratio
#> 1    Alabama  AL  South    4779736   135 2.824424
#> 2     Alaska  AK   West     710231    19 2.675186
#> 3    Arizona  AZ   West    6392017   232 3.629527
#> 4   Arkansas  AR  South    2915918    93 3.189390
#> 5 California  CA   West   37253956  1257 3.374138
#> 6   Colorado  CO   West    5029196    65 1.292453
```
This creates a view with the additional `ratio` column.

If we want to modify the `murders` data frame directly, we use the assignment operator `<-`:


``` r
murders <- murders |>
  mutate(ratio = total / population * 100000)
```


### Filtering data: selecting cities that interest you

We can filter rows meeting a condition using the `filter()` function. For example, to get states with less than 1 homicide per 100,000 inhabitants:


``` r
# Load dataset
data(murders)

murders |>
  mutate(ratio = total / population * 100000) |>
  filter(ratio < 1)
#>            state abb        region population total     ratio
#> 1         Hawaii  HI          West    1360301     7 0.5145920
#> 2          Idaho  ID          West    1567582    12 0.7655102
#> 3           Iowa  IA North Central    3046355    21 0.6893484
#> 4          Maine  ME     Northeast    1328361    11 0.8280881
#> 5      Minnesota  MN North Central    5303925    53 0.9992600
#> 6  New Hampshire  NH     Northeast    1316470     5 0.3798036
#> 7   North Dakota  ND North Central     672591     4 0.5947151
#> 8         Oregon  OR          West    3831074    36 0.9396843
#> 9   South Dakota  SD North Central     814180     8 0.9825837
#> 10          Utah  UT          West    2763885    22 0.7959810
#> 11       Vermont  VT     Northeast     625741     2 0.3196211
#> 12       Wyoming  WY          West     563626     5 0.8871131
```

We can use different operators to create our conditions:

R supports standard comparison operators to create conditions: greater than (`>`), less than (`<`), greater than or equal to (`>=`), less than or equal to (`<=`), equal to (`==`), and different from (`!=`). You can combine multiple conditions using logical operators: `&` for AND, `|` for OR, and `!` for NOT.

For example, to filter by ratio less than 1 and West region:


``` r
murders |>
  mutate(ratio = total / population * 100000) |>
  filter(ratio < 1 & region == "West")
#>     state abb region population total     ratio
#> 1  Hawaii  HI   West    1360301     7 0.5145920
#> 2   Idaho  ID   West    1567582    12 0.7655102
#> 3  Oregon  OR   West    3831074    36 0.9396843
#> 4    Utah  UT   West    2763885    22 0.7959810
#> 5 Wyoming  WY   West     563626     5 0.8871131
```

### Sorting data: finding the safest cities

The `arrange()` function from the `dplyr` package allows us to order the rows of a data frame based on one or more columns. Imagine you have a data frame with information about different cities, and you want to order them from safest to least safe, based on their crime rate. Or perhaps you want to order them by cost of living, from cheapest to most expensive. `arrange()` allows you to do this easily.

For example, to order states by homicide rate (from lowest to highest):


``` r
murders |>
  mutate(ratio = total / population * 100000) |>
  arrange(ratio) |>
  head()
#>           state abb        region population total     ratio
#> 1       Vermont  VT     Northeast     625741     2 0.3196211
#> 2 New Hampshire  NH     Northeast    1316470     5 0.3798036
#> 3        Hawaii  HI          West    1360301     7 0.5145920
#> 4  North Dakota  ND North Central     672591     4 0.5947151
#> 5          Iowa  IA North Central    3046355    21 0.6893484
#> 6         Idaho  ID          West    1567582    12 0.7655102
```

If we want to sort in descending order, we use the `desc()` function:


``` r
murders |>
  mutate(ratio = total / population * 100000) |>
  arrange(desc(ratio)) |>
  head()
#>                  state abb        region population total     ratio
#> 1 District of Columbia  DC         South     601723    99 16.452753
#> 2            Louisiana  LA         South    4533372   351  7.742581
#> 3             Missouri  MO North Central    5988927   321  5.359892
#> 4             Maryland  MD         South    5773552   293  5.074866
#> 5       South Carolina  SC         South    4625364   207  4.475323
#> 6             Delaware  DE         South     897934    38  4.231937
```

We can also sort by multiple columns. For example, if we want to sort first by `region` and then by `state` (in alphabetical order):


``` r
murders |> 
  arrange(region, state) |>
  head()
#>           state abb    region population total
#> 1   Connecticut  CT Northeast    3574097    97
#> 2         Maine  ME Northeast    1328361    11
#> 3 Massachusetts  MA Northeast    6547629   118
#> 4 New Hampshire  NH Northeast    1316470     5
#> 5    New Jersey  NJ Northeast    8791894   246
#> 6      New York  NY Northeast   19378102   517
```

### Aggregating and summarizing data: obtaining general overview

The `summarize()` function from the `dplyr` package allows us to calculate descriptive statistics for one or more columns of a data frame. It's like summarizing information from our data frame into a single number or a set of numbers.

For example, to calculate the mean population of states:


``` r
murders |>
  summarize(mean_population = mean(population))
#>   mean_population
#> 1         6075769
```

We can combine `summarize()` with `group_by()` to calculate statistics by groups. For example, to calculate average population by region:


``` r
murders |>
  group_by(region) |>
  summarize(mean_population = mean(population))
#> # A tibble: 4 × 2
#>   region        mean_population
#>   <fct>                   <dbl>
#> 1 Northeast            6146360 
#> 2 South                6804378.
#> 3 North Central        5577250.
#> 4 West                 5534273.
```

### Joining data frames: combining information

Imagine you have two data frames: one with information about cities (name, population, etc.) and another with information about the states those cities belong to (state name, governor, etc.). If you want to combine information from both data frames to have a single data frame with all information about cities and their states, you can use `dplyr` join functions.

`dplyr` offers several functions for joining data frames, such as `left_join()`, `right_join()`, `inner_join()`, and `full_join()`. Each function performs a different type of join, depending on how data frame rows are combined.

The `left_join()` function joins two data frames keeping all rows from the first data frame (the one on the left) and adding columns from the second data frame that match the first data frame's rows. If a row from the first data frame has no match in the second data frame, new columns will have `NA` values.

For example, if we have a data frame with city information and another with state information, we can join them by the `state` column:


``` r
df_cities_states <- left_join(df_cities, df_states, by = "state")
```

The resulting data frame `df_cities_states` will contain information from both data frames combined. If a city in `df_cities` does not have a corresponding state in `df_states`, columns from `df_states` will have `NA` values for that city.

Let's see a concrete example. Suppose we have the following data frames:


``` r
df_cities <- data.frame(
  city = c("New York", "Los Angeles", "Chicago", "Houston"),
  state = c("New York", "California", "Illinois", "Texas")
)

df_states <- data.frame(
  state = c("California", "Texas", "Florida"),
  governor = c("Gavin Newsom", "Greg Abbott", "Ron DeSantis")
)

# Join data frames by "state" column
df_cities_states <- left_join(df_cities, df_states, by = "state")

df_cities_states
#>          city      state     governor
#> 1    New York   New York         <NA>
#> 2 Los Angeles California Gavin Newsom
#> 3     Chicago   Illinois         <NA>
#> 4     Houston      Texas  Greg Abbott
```

In this example, `left_join()` combines `df_cities` and `df_states` data frames by the `state` column. Note that "New York" and "Chicago" cities have `NA` values in the `governor` column, since their states ("New York" and "Illinois") are not present in the `df_states` data frame.

The other join functions (`right_join()`, `inner_join()`, and `full_join()`) work similarly, but with different criteria for combining data frame rows.

The other join functions work similarly but with different inclusion criteria. `right_join()` does the opposite of `left_join()`, keeping all rows from the right data frame and only matching rows from the left. `inner_join()` is more restrictive, keeping only rows that have matches in both tables, while `full_join()` is the most inclusive, retaining all rows from both data frames and filling in `NA` where no match exists.

You can consult `dplyr` documentation for more information about these functions.

### Examples

The `dplyr` functions we have seen allow us to perform complex data transformations to answer specific questions about our move to the United States. Let's see some examples with R code:

**Examples of analysis questions**

We can combine these tools to answer specific questions. To find suitable locations, we might filtered for cities with a "Good" education system and a cost of living index below 2.5. Alternatively, to study economic prosperity, we could sort states by their GDP per capita (calculated as GDP divided by population) in descending order. For a more comprehensive climate analysis, we could join our city data with a separate climate table.

With these tools, you will be able to explore and analyze information about the United States to make the best decision about your move.



## Exercises

25. Report the state abbreviation `abb` and population `population` columns from the `murders` data frame



<details>
  <summary type="button">Solution</summary>

``` r
murders |>
  select(abb, population)

```
</details>

26. Report all data frame data that are not from the South region.



<details>
  <summary type="button">Solution</summary>

``` r
murders |>
  filter(region != "South")

```
</details>

> If we want to filter all records that are from the South and West region we will use `%in%` instead of `==` to compare versus a vector

27. Create the vector `south_and_west` containing values "South" and "West". Then filter records that are from those two regions.



<details>
  <summary type="button">Solution</summary>

``` r
south_and_west <- c("South", "West")
  
murders |>
  filter(region %in% south_and_west)

```
</details>

28. Add the `ratio` column to the `murders` data frame with the murder ratio per 100,000 inhabitants. Then, filter those with a ratio less than 0.5 and are from "South" and "West" regions. Report `state`, `abb`, and `ratio` columns.



<details>
  <summary type="button">Solution</summary>

``` r
data(murders)

south_and_west <- c("South", "West")
  
murders <- murders |>
  mutate(ratio = total/population*100000) |>
  filter(ratio < 0.5 & region %in% south_and_west) |>
  select(state, abb, ratio)

murders

```
</details>

> To sort using pipeline we use the `arrange(x)` function, where `x` is the name of the column we want to take as reference which will sort in ascending order or `arrange(desc(x))` to sort in descending order.

29. Modify the code generated in the previous exercise to sort the result by the `ratio` field.



<details>
  <summary type="button">Solution</summary>

``` r
data(murders)

south_and_west <- c("South", "West")
  
murders <- murders |>
  mutate(ratio = total/population*100000) |>
  filter(ratio < 0.5 & region %in% south_and_west) |>
  select(state, abb, ratio) |>
  arrange(ratio)

murders

```
So, finally we can know what state options we have to be able to move and solve the presented case.
</details>



## Data frames in plots

Now we will see some functions that allow us to visualize our data. Little by little we will build more complex and visually more aesthetic graphs to present. First let's see the most basic functions R presents us. In the next chapter we will see in more detail graph types and in which situations it is recommended to use one or another graph.

### Scatter plots
One of the most used plots in R is the scatter plot, which is a type of mathematical diagram using Cartesian coordinates to show values for two variables for a set of data [@jarrell1994, pp. 492]. By default we assume the variables to analyze are independent. Thus, the scatter plot will show the degree of correlation (not causality) between the two variables.

The simplest way to plot a scatter plot is with the `plot(x,y)` function, where `x` and `y` are vectors indicating the _x-axis_ coordinates and _y-axis_ coordinates of each point we want to plot. For example, let's see the relationship between population size and total murders.


``` r
# Let's store population data in the x_axis object
x_axis <- murders$population

# Let's store total murders data in the y_axis object
y_axis <- murders$total

# With this code we create the scatter plot
plot(x_axis, y_axis)

```

<img src="Data-Science-with-R_files/figure-html/unnamed-chunk-168-1.png" alt="" width="80%" style="display: block; margin: auto;" />

We can see a correlation between population and number of cases. Let's transform the `x_axis` dividing by one million (${10}^6$). Thus we will have the x axis expressed in millions.


``` r
x_axis <- murders$population/10^6
y_axis <- murders$total

plot(x_axis, y_axis)

```

<img src="Data-Science-with-R_files/figure-html/unnamed-chunk-169-1.png" alt="" width="80%" style="display: block; margin: auto;" />

### Histograms
We can also create histograms from a vector with the `hist` function.


``` r
data(murders)

murders <- murders |>
  mutate(ratio = total/population*100000)

hist(murders$ratio)

```

<img src="Data-Science-with-R_files/figure-html/unnamed-chunk-170-1.png" alt="" width="80%" style="display: block; margin: auto;" />

The ease R gives us to create graphs will save us time for analysis. From here we can quickly see that most states have a `ratio < 5`.

### Box plot

Finally, R allows us to create box plots easily with the `boxplot` function. So, if we wanted to analyze the distribution of `ratio` we would use the following code:


``` r
boxplot(murders$ratio)

```

<img src="Data-Science-with-R_files/figure-html/unnamed-chunk-171-1.png" alt="" width="80%" style="display: block; margin: auto;" />

## Data interpretation
We have seen graphs that can be generated with a line of code, but we need to interpret them. To do so, we need to learn or remember some statistics. Throughout this book we will learn statistical concepts not going deep into the math part, but from the practical part and leveraging that functions already exist in R.

Let's remember our case/problem. We have a list of murders in each of the 51 states. If we order them by the total column we would have:


``` r
murders |> 
  arrange(total) |>
  head()
#>           state abb        region population total     ratio
#> 1       Vermont  VT     Northeast     625741     2 0.3196211
#> 2  North Dakota  ND North Central     672591     4 0.5947151
#> 3 New Hampshire  NH     Northeast    1316470     5 0.3798036
#> 4       Wyoming  WY          West     563626     5 0.8871131
#> 5        Hawaii  HI          West    1360301     7 0.5145920
#> 6  South Dakota  SD North Central     814180     8 0.9825837
```

R provides us with the `summary()` function, which gives us a summary of a vector's data.


``` r
summary(murders$total)
#>    Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
#>     2.0    24.5    97.0   184.4   268.0  1257.0
```

The summary provides key insights: the **Min** and **Max** show the range of the data; the **1st Qu** (first quartile) and **3rd Qu** (third quartile) indicate the 25th and 75th percentiles; the **Median** marks the exact middle of the distribution; and the **Mean** gives the arithmetic average.

### Quartiles
To understand quartiles let's visualize total data in an ordered way. To only obtain a single column in pipeline we will use `.$` before the variable name:


``` r
murders |> 
  arrange(total) |>
  pull(total)
#>  [1]    2    4    5    5    7    8   11   12   12   16   19   21   22   27   32
#> [16]   36   38   53   63   65   67   84   93   93   97   97   99  111  116  118
#> [31]  120  135  142  207  219  232  246  250  286  293  310  321  351  364  376
#> [46]  413  457  517  669  805 1257
```

Quartiles divide our vector into 4 parts with the same amount of data. Given we have 51 values, we would have groups of `51/4 = 12.75`. We would have groups of 13 values (3 groups of 13 elements and one of 12 elements).

For example, the first group would be composed of these numbers:


```
#>  [1]  2  4  5  5  7  8 11 12 12 16 19 21 22
```

The second group would be composed of these numbers:


```
#>  [1] 27 32 36 38 53 63 65 67 84 93 93 97 97
```
And so on. In total 4 groups made up of 25% of data each.

#### First quartile
Therefore, when we see the 1st quartile, `1st Qu.`, let's think that is the cut indicating up to where I can find 25% of the data.


``` r
summary(murders$total)
#>    Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
#>     2.0    24.5    97.0   184.4   268.0  1257.0
```

In our example `24.5` indicates that every number less than or equal to that number will be within the first 25% of data (25% of 51 data points = 12.75, rounded to 13 data points).

If we list numbers less than or equal to 24.5 we will have this list:

``` r
murders |>
  arrange(total) |>
  filter(total <= 24.5) |>
  pull(total)
#>  [1]  2  4  5  5  7  8 11 12 12 16 19 21 22
```

Which is exactly the same list we obtained previously for the first group.

#### Second quartile or median
The second quartile, also called the median (`Median`), indicates the cut of the second group. The first group contains the first 25% of data, the second group has additional 25%. So this cut would give us exactly the value found in the middle.


``` r
summary(murders$total)
#>    Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
#>     2.0    24.5    97.0   184.4   268.0  1257.0
```

In our example `97` indicates that below that number we will find 50% of total data (50% of 51 data points = 25.5, rounded to 26 data points).


``` r
murders |>
  arrange(total) |>
  filter(total <= 97) |>
  pull(total)
#>  [1]  2  4  5  5  7  8 11 12 12 16 19 21 22 27 32 36 38 53 63 65 67 84 93 93 97
#> [26] 97
```

#### Third quartile
The third quartile is the cut of the third group. Up to the median we already had 50%, if we add another 25% of data we would have 75%.


``` r
summary(murders$total)
#>    Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
#>     2.0    24.5    97.0   184.4   268.0  1257.0
```

In our example `268` indicates that below that number we will find 75% of total data (75% of 51 data points = 38.25, rounded to 38 data points).

### Interpretation of box plot
We are now ready to create a box plot with total murders and interpret results.


``` r
boxplot(murders$total)
```

<img src="Data-Science-with-R_files/figure-html/unnamed-chunk-182-1.png" alt="" width="80%" style="display: block; margin: auto;" />

The box starts at value 24.5 (first quartile) and ends at value 268 (third quartile). The thick line represents the median (second quartile), 97 in our example.

Between the first quartile and third quartile (between 24.5 and 97 for our example) we will find 50% of the data, also called interquartile range or `IQR`.

Outside the box we see a vertical line upwards and another downwards, showing the range of our data. Outside those lines we see dots which are atypical data very far from the mean, known as **outliers**.

We can quickly find to which states these extreme data belong if we sort the table descendingly using the `desc` function:


``` r
murders |>
  arrange(desc(total)) |>
  head()
#>          state abb        region population total    ratio
#> 1   California  CA          West   37253956  1257 3.374138
#> 2        Texas  TX         South   25145561   805 3.201360
#> 3      Florida  FL         South   19687653   669 3.398069
#> 4     New York  NY     Northeast   19378102   517 2.667960
#> 5 Pennsylvania  PA     Northeast   12702379   457 3.597751
#> 6     Michigan  MI North Central    9883640   413 4.178622
```

We see that in California `1257` cases were reported. That is one of the extreme data points we see in the box plot.

### Examples
1. Create variable `pop_log10` and store log base 10 data of population (`log10()` function). Perform the same log base 10 transformation for total murders and store it in variable `tot_log10`. Generate a scatter plot of these two variables.


``` r
pop_log10 <- log10(murders$population)
tot_log10 <- log10(murders$total)

plot(pop_log10, tot_log10)
```

<img src="Data-Science-with-R_files/figure-html/unnamed-chunk-184-1.png" alt="" width="80%" style="display: block; margin: auto;" />

2. Create a histogram of population in millions (divided by ${10}^6$).


``` r
hist(murders$population/10^6)
```

<img src="Data-Science-with-R_files/figure-html/unnamed-chunk-185-1.png" alt="" width="80%" style="display: block; margin: auto;" />

3. Create a box plot of population.


``` r
boxplot(murders$population)
```

<img src="Data-Science-with-R_files/figure-html/unnamed-chunk-186-1.png" alt="" width="80%" style="display: block; margin: auto;" />



## Exercises

Below, you will find a series of exercises with different levels of difficulty. It is time to put into practice what you have learned in this chapter. Remember you can use `dplyr` functions like `filter()`, `arrange()`, `mutate()`, `summarize()`, `group_by()` and `left_join()` to manipulate data frames.

30. Create a data frame called `my_expenses`. It should contain a `category` factor with levels "Housing", "Transport", "Food", and "Entertainment", along with three numeric columns (`january`, `february`, `march`) recording expenses for each category.



<details>
  <summary type="button">Solution</summary>

``` r
my_expenses <- data.frame(
  category = factor(c("Housing", "Transport", "Food", "Entertainment")),
  january = c(1500, 300, 500, 200),
  february = c(1500, 250, 400, 150),
  march = c(1500, 350, 550, 250)
)

my_expenses
#>        category january february march
#> 1       Housing    1500     1500  1500
#> 2     Transport     300      250   350
#> 3          Food     500      400   550
#> 4 Entertainment     200      150   250
```
</details>

31. Use `head()`, `tail()`, `str()` and `summary()` functions to explore `my_expenses` data frame.



<details>
  <summary type="button">Solution</summary>

``` r
head(my_expenses)
#>        category january february march
#> 1       Housing    1500     1500  1500
#> 2     Transport     300      250   350
#> 3          Food     500      400   550
#> 4 Entertainment     200      150   250
tail(my_expenses)
#>        category january february march
#> 1       Housing    1500     1500  1500
#> 2     Transport     300      250   350
#> 3          Food     500      400   550
#> 4 Entertainment     200      150   250
str(my_expenses)
#> 'data.frame':	4 obs. of  4 variables:
#>  $ category: Factor w/ 4 levels "Entertainment",..: 3 4 2 1
#>  $ january : num  1500 300 500 200
#>  $ february: num  1500 250 400 150
#>  $ march   : num  1500 350 550 250
summary(my_expenses)
#>           category    january        february        march       
#>  Entertainment:1   Min.   : 200   Min.   : 150   Min.   : 250.0  
#>  Food         :1   1st Qu.: 275   1st Qu.: 225   1st Qu.: 325.0  
#>  Housing      :1   Median : 400   Median : 325   Median : 450.0  
#>  Transport    :1   Mean   : 625   Mean   : 575   Mean   : 662.5  
#>                    3rd Qu.: 750   3rd Qu.: 675   3rd Qu.: 787.5  
#>                    Max.   :1500   Max.   :1500   Max.   :1500.0
```
</details>

32. Access `february` column of `my_expenses` data frame using `$` operator. Then, access the second row of the data frame using brackets.



<details>
  <summary type="button">Solution</summary>

``` r
my_expenses$february
#> [1] 1500  250  400  150
my_expenses[2, ]
#>    category january february march
#> 2 Transport     300      250   350
```
</details>

33. Filter `my_expenses` data frame to get only rows where expenses in `january` are greater than 400.



<details>
  <summary type="button">Solution</summary>

``` r
my_expenses |>
  filter(january > 400)
#>   category january february march
#> 1  Housing    1500     1500  1500
#> 2     Food     500      400   550
```
</details>

34. Sort `my_expenses` data frame descendingly by expenses in `march`.



<details>
  <summary type="button">Solution</summary>

``` r
my_expenses |>
  arrange(desc(march))
#>        category january february march
#> 1       Housing    1500     1500  1500
#> 2          Food     500      400   550
#> 3     Transport     300      250   350
#> 4 Entertainment     200      150   250
```
</details>

35. Add a column called `total` to `my_expenses` data frame containing the sum of January, February, and March expenses for each category.



<details>
  <summary type="button">Solution</summary>

``` r
my_expenses <- my_expenses |> 
  mutate(total = january + february + march)
```
</details>

36. Calculate mean and standard deviation of total expenses for each category in `my_expenses` data frame.



<details>
  <summary type="button">Solution</summary>

``` r
my_expenses |> 
  summarize(mean_total = mean(total), 
            std_total = sd(total))
#>   mean_total std_total
#> 1     1862.5  1793.216
```
</details>

37. Group `my_expenses` data frame by category and calculate sum of expenses for each month.



<details>
  <summary type="button">Solution</summary>

``` r
my_expenses |> 
  group_by(category) |> 
  summarize(sum_january = sum(january), 
            sum_february = sum(february), 
            sum_march = sum(march))
#> # A tibble: 4 × 4
#>   category      sum_january sum_february sum_march
#>   <fct>               <dbl>        <dbl>     <dbl>
#> 1 Entertainment         200          150       250
#> 2 Food                  500          400       550
#> 3 Housing              1500         1500      1500
#> 4 Transport             300          250       350
```
</details>

38. Visually analyze the following chart describing total murder distribution by regions. Just by visualizing it, could you point out which region has the smallest data range, ignoring outliers? Which region has the highest median?



<img src="Data-Science-with-R_files/figure-html/unnamed-chunk-204-1.png" alt="" width="80%" style="display: block; margin: auto;" />

<details>
  <summary type="button">Solution</summary>
  West has the smallest data range and has two outliers. South has the highest median among all regions.
  
  Analyzing solely by seeing a chart allows us to put ourselves in the final observer's shoes and understand if decisions can be made just with presented information.
</details>

39. Create `south` vector where you store filtered data of total murders occurred in South region. Then, create a histogram of `south` vector.



<details>
  <summary type="button">Solution</summary>

``` r
south <- murders |>
  filter(region == "South") |>
  pull(total)

hist(south)
```
</details>

40. Create a new data frame called `df_cities_climate` combining information from `df_cities` and `df_climate` (you must create `df_climate` data frame with city climate information). Ensure resulting data frame contains all cities from `df_cities`, even if they don't have climate information in `df_climate`.



<details>
  <summary type="button">Solution</summary>

``` r
df_climate <- data.frame(
  city = c("New York", "Los Angeles", "Chicago"),
  average_temperature = c(12.8, 17.7, 10.7),  # In degrees Celsius
  annual_precipitation = c(1269, 373, 965)  # In millimeters
)

df_cities_climate <- left_join(df_cities, df_climate, by = "city")
```
</details>

41. Create a data frame with some missing values (`NA`). Then, replace missing values with mean of non-missing values in same column.



<details>
  <summary type="button">Solution</summary>

``` r
# Create data frame with missing values
df_with_na <- data.frame(
  x = c(1, 2, NA, 4, 5),
  y = c(NA, 7, 8, NA, 10)
)

df_with_na
#>    x  y
#> 1  1 NA
#> 2  2  7
#> 3 NA  8
#> 4  4 NA
#> 5  5 10

# Replace missing values with mean
df_with_na <- df_with_na |> 
  mutate(x = ifelse(is.na(x), mean(x, na.rm = TRUE), x),
         y = ifelse(is.na(y), mean(y, na.rm = TRUE), y))

df_with_na
#>   x         y
#> 1 1  8.333333
#> 2 2  7.000000
#> 3 3  8.000000
#> 4 4  8.333333
#> 5 5 10.000000
```
</details>

42. Create a function called `clean_data_frame()` receiving a data frame as argument and replacing missing values with mean of non-missing values in each column.



<details>
  <summary type="button">Solution</summary>

``` r
clean_data_frame <- function(df) {
  for (col in names(df)) {
    if (is.numeric(df[[col]])) {
      df[[col]] <- ifelse(is.na(df[[col]]), mean(df[[col]], na.rm = TRUE), df[[col]])
    }
  }
  return(df)
}

## Test created function
# Create data frame with missing values to test function
df_test <- data.frame(
  age = c(25, 30, NA, 28, 35),
  height = c(1.75, 1.80, 1.65, NA, 1.70),
  weight = c(70, 80, 75, 65, NA)
)

df_test
#>   age height weight
#> 1  25   1.75     70
#> 2  30   1.80     80
#> 3  NA   1.65     75
#> 4  28     NA     65
#> 5  35   1.70     NA

# Apply function to test data frame
df_clean <- clean_data_frame(df_test)

# Show clean data frame
df_clean
#>    age height weight
#> 1 25.0  1.750   70.0
#> 2 30.0  1.800   80.0
#> 3 29.5  1.650   75.0
#> 4 28.0  1.725   65.0
#> 5 35.0  1.700   72.5
```
</details>




<!--chapter:end:02-fundamentals/03.data_frames.Rmd-->


# Advanced Techniques

## Metaprogramming: writing code that writes code

In previous chapters, we explored different object types in R and how to use functions to manipulate them. Now, we are going to delve into a more advanced concept: **metaprogramming**.

Metaprogramming is a technique that allows us to write code that generates other code. It's like having a code factory where we can create new functions and expressions dynamically.

Why is this useful? Metaprogramming can be very useful for:

Metaprogramming is incredibly useful for **automating repetitive tasks**, allowing us to generate boilerplate code dynamically. It also enables us to create **more flexible functions** that adapt to different data structures, and facilitates **writing concise, expressive code** that captures complex logic simply.

In R, metaprogramming is based on the manipulation of **expressions**. An expression is a representation of R code as an object. We can create expressions, modify them, and evaluate them to generate new code.

### Manipulating expressions: The art of sculpting code

In R, metaprogramming relies on manipulating **expressions**. An expression is a representation of R code as an object. Instead of simply executing the code, we can manipulate it as if it were a block of clay, shaping and modifying it to create new expressions and functions.

Think of an expression like a cooking recipe. The recipe contains a set of instructions (ingredients and steps to follow) to create a dish. Similarly, an expression in R contains instructions to perform a task.

R offers us several tools to manipulate expressions, as if they were the hands of a sculptor shaping clay:

R provides a toolkit for sculpting expressions. The `quote()` function captures code as an expression without running it, like saving a recipe for later. `substitute()` allows you to inject values into an expression, replacing placeholders with actual variables. To execute these stored expressions, we use `eval()`, which runs the code and returns the result. Finally, `parse()` can turn text strings directly into executable expressions.

With these tools, we can manipulate expressions to create new functions, modify the behavior of existing functions, and generate code dynamically.

### Examples

Metaprogramming might seem like an abstract concept at first, but its applications are very concrete and powerful. Let's look at some examples of how we can use metaprogramming in R to create dynamic functions and generate code automatically.

**Example 1: Creating a function that generates other functions**

Imagine you need to create several functions performing similar operations, but with some different parameters. For example, functions adding different constants to a number. Instead of writing each function separately, you can use metaprogramming to create a function that generates these functions dynamically.


``` r
create_sum_function <- function(n) {
  expression <- substitute(function(x) x + n)
  eval(expression)
}

sum_5 <- create_sum_function(5)
sum_10 <- create_sum_function(10)

sum_5(10)
#> [1] 15
sum_10(10)
#> [1] 20
```

In this example, the `create_sum_function()` function receives a number `n` as an argument and generates a new function adding `n` to its argument. The `substitute()` function is used to create an expression representing the function we want to generate, and the `eval()` function is used to evaluate the expression and create the function.

**Example 2: Generating code for data analysis**

Suppose you want to perform a data analysis involving several steps, such as filtering data, calculating statistics, and generating a plot. You can use metaprogramming to generate the code for this analysis dynamically, based on specified parameters.


``` r
analyze_data <- function(data, filter_cond, column_to_analyze, statistic, plot_type) {
  
  # Filter data
  filtered_data <- substitute(data[filter_cond, ][[column_to_analyze]])
  
  filtered_data <- eval(filtered_data)
  
  # Calculate statistic
  calculated_statistic <- substitute(statistic(filtered_data))
  calculated_statistic <- eval(calculated_statistic)
  
  # Generate plot
  plot_expression <- substitute(plot_type(filtered_data))
  eval(plot_expression)
  
  # Return calculated statistic
  return(calculated_statistic)
}

# Usage example
df <- data.frame(
  x = c(1, 3, 2, 5.5, 4, 3.5, 8, 7, 9, 10),
  y = c(10, 8, 9, 6, 7, 5, 3.6, 4, 2, 1)
)

# We want to filter data where x > 5, calculate mean of y and generate a histogram
result <- analyze_data(df, df$x > 5, "y", mean, hist)

result
#> [1] 3.32
```

<img src="Data-Science-with-R_files/figure-html/unnamed-chunk-215-1.png" alt="" width="80%" style="display: block; margin: auto;" />

**Example 3: Creating a function to generate plots with dynamic variable names and advanced options**

Imagine you need to create a function generating different types of plots (scatter, histograms, boxplots) with custom options like titles, labels, colors, and legends, and that can also handle different datasets and variables. In this case, metaprogramming can be very useful to create a flexible function adapting to these needs.


``` r
create_plot <- function(data, plot_type, var_x, var_y = NULL, 
                          title = NULL, color = "blue", 
                          labels_x = NULL, labels_y = NULL, 
                          legend = NULL) {
  
  # Create base plot expression
  if (plot_type == "scatter") {
    expression <- substitute(plot(data[[var_x]], data[[var_y]], 
                                 xlab = labels_x, ylab = labels_y,
                                 main = title, col = color))
  } else if (plot_type == "histogram") {
    expression <- substitute(hist(data[[var_x]], main = title, xlab = labels_x, col = color))
  } else if (plot_type == "boxplot") {
    expression <- substitute(boxplot(data[[var_x]], main = title, ylab = labels_y, col = color))
  } else {
    stop("Invalid plot type.")
  }
  
  # Evaluate base expression
  eval(expression)
  
  # Add legend if specified
  if (!is.null(legend)) {
    legend("topright", legend = legend, fill = color)
  }
}

# Usage example
df <- data.frame(
  x = c(1, 3, 2, 5.5, 4, 3.5, 8, 7, 9, 10),
  y = c(10, 8, 9, 6, 7, 5, 3.6, 4, 2, 1)
)

create_plot(df, "scatter", "x", "y", 
              title = "Scatter Plot", color = "red", 
              labels_x = "Variable X", labels_y = "Variable Y")

create_plot(df, "histogram", "x", 
              title = "Histogram of X", color = "green", 
              labels_x = "Variable X")

create_plot(df, "boxplot", "y", 
              title = "Boxplot of Y", color = "blue", 
              labels_y = "Variable X", 
              legend = c("Group A"))

```

<img src="Data-Science-with-R_files/figure-html/unnamed-chunk-216-1.png" alt="" width="80%" style="display: block; margin: auto;" /><img src="Data-Science-with-R_files/figure-html/unnamed-chunk-216-2.png" alt="" width="80%" style="display: block; margin: auto;" /><img src="Data-Science-with-R_files/figure-html/unnamed-chunk-216-3.png" alt="" width="80%" style="display: block; margin: auto;" />
In this example, the `create_plot()` function can generate different types of plots with custom options. The function uses `substitute()` to construct the base plot expression, and then `eval()` to evaluate the expression and generate the plot. Additionally, the function can add a legend to the plot if the legend argument is specified.

This example illustrates how metaprogramming can be useful for creating more flexible and complex functions that adapt to different needs.

## Functional programming: a new paradigm

In previous chapters, we explored different object types in R and how to use functions to manipulate them. We have also seen how metaprogramming allows us to write code that generates other code. Now, we are going to delve into a different programming paradigm: **functional programming**.

Functional programming is a programming style based on the use of **pure functions** and data **immutability**.

Functional programming relies on two core concepts: **pure functions** and **immutability**. A pure function is consistent and side-effect-free, meaning it always produces the same output for the same input and does not modify any external state. **Immutability** ensures that data is not changed after creation; instead of modifying an existing object, we create a new one with the desired changes.

These principles make functional programming easier to reason about, debug, and maintain. It also facilitates writing concurrent and parallel code, as pure functions have no side effects that can interfere with other processes.

### Basic principles of functional programming

Functional programming rests on several pillars. First, **functions are first-class citizens**, meaning they can be assigned to variables and passed as arguments just like data. Second, it relies on **pure functions** that produce consistent outputs without side effects. Third, it emphasizes **immutability**, creating new data rather than modifying existing objects. Finally, it typically **rejects loops**, facilitating data processing through higher-order functions instead.

### Higher-order functions in R

R offers several higher-order functions that are especially useful for functional programming. These functions allow us to manipulate vectors, lists, and other objects concisely and efficiently, avoiding the use of `for` and `while` loops. The `purrr` package offers variants of `map()` for different types of results: `map_dbl()` to get a numeric vector, `map_chr()` to get a character vector, `map_lgl()` to get a logical vector, etc.


The `purrr` package provides a robust suite of tools. `map()` applies a function to each element of a list or vector, returning a new list (or vector with variants like `map_dbl`). `reduce()` performs a cumulative operation, combining elements one by one until a single result remains. `keep()` acts as a filter, retaining only those elements that satisfy a given condition.

The `~` symbol in higher-order functions is used to define an anonymous function. This means you are creating a function "on the fly", without needing to give it an explicit name. The part following `~` is the body of this function, specifying operations to be performed on each element of the vector or list to which the function is applied. The dot `.` is used as a placeholder to refer to the current element.

These functions, along with other higher-order functions like `map2()`, `pmap()`, `accumulate()`, and `every()`, give us great flexibility for processing data functionally in R.

### Examples

Let's see some examples of how to apply functional programming in R:

Let's put these concepts into practice with some concrete examples. First, consider a scenario where we want to **calculate the sum of squares of even numbers** in a vector.

    
    ``` r
    numbers <- c(1, 2, 3, 4, 5)
    sum_squares_evens <- numbers |>
      keep(~. %% 2 == 0) |>
      map_dbl(~. ^2) |>
      reduce(`+`)
    
    sum_squares_evens
    #> [1] 20
    ```

For a second example, let's filter a list of cities to find those with a **population greater than 5 million**.

    
    ``` r
    cities <- list(
      list(name = "New York", population = 8.4e6),
      list(name = "Los Angeles", population = 3.9e6),
      list(name = "Chicago", population = 2.7e6)
    )
    
    big_cities <- cities |>
      keep(~.x$population > 5e6)
    
    big_cities
    #> [[1]]
    #> [[1]]$name
    #> [1] "New York"
    #> 
    #> [[1]]$population
    #> [1] 8400000
    ```

    In this example, "x" acts as a placeholder to represent each element of the `cities` list as it iterates over it. That is, in each iteration, "x" will take the value of one of the cities in the list.
    
You might wonder why we use `.x` in these expressions. This placeholder serves three main purposes. First, it allows us to define an **anonymous function**—a quick, unnamed function (`~ .x$population > 5e6`) that evaluates whether a city meets our criteria. Second, it provides a way to **access elements**; the `.x` represents the current list item, allowing us to grab properties like `.x$population`. Finally, it promotes **conciseness**, enabling us to write compact, readable code without formally defining a separate function for a simple operation. You can technically use other variable names, but `.x` is the standard convention in `purrr`.

Functional programming is a powerful paradigm that can help you write cleaner, more efficient, and maintainable code. As you become familiar with its principles and tools, you will be able to apply them to a wide variety of data analysis problems.

## R6: The future of OOP in R

For advanced Object-Oriented Programming (OOP) using the R6 package, please refer to [Appendix B](#r6-intro).




##  Exercises

Below, you will find a series of exercises with different levels of difficulty. It is time to put into practice what you have learned in this chapter.


43. Formulate an expression that represents the sum of two variables, `a` and `b`.



<details>
  <summary type="button">Solution</summary>

``` r
expression <- quote(a + b)
```
</details>

44. Compose an expression for the multiplication of `x` and `y`, then execute it to find the result.



<details>
  <summary type="button">Solution</summary>

``` r
x <- 5
y <- 10
expression <- quote(x * y)
eval(expression)
#> [1] 50
```
</details>

45. Generate a numeric vector and apply the `map()` function to compute the square of each element.



<details>
  <summary type="button">Solution</summary>

``` r
numbers <- c(1, 2, 3, 4, 5)
squares <- map(numbers, function(x) x^2)
squares
#> [[1]]
#> [1] 1
#> 
#> [[2]]
#> [1] 4
#> 
#> [[3]]
#> [1] 9
#> 
#> [[4]]
#> [1] 16
#> 
#> [[5]]
#> [1] 25
```
</details>

46. Define a vector of numbers and utilize `keep()` from the `purrr` package to retain only the even values.



<details>
  <summary type="button">Solution</summary>

``` r
numbers <- c(1, 2, 3, 4, 5)
evens <- keep(numbers, ~ . %% 2 == 0)
evens
#> [1] 2 4
```
</details>

47. Build a function named `create_power_function()` that takes a number `n` and returns a new function capable of raising its input to the power of `n`.



<details>
  <summary type="button">Solution</summary>

``` r
create_power_function <- function(n) {
  function(x) x^n
}
```
</details>

48. Construct a numeric vector and apply `reduce()` to calculate the product of all its elements.



<details>
  <summary type="button">Solution</summary>

``` r
numbers <- c(1, 2, 3, 4, 5)
product <- reduce(numbers, `*`)
product
#> [1] 120
```
</details>




49. Design a function `create_flexible_sum_function()` that accepts a number `n` and yields a function that adds `n` to the sum of any arguments passed to it.



<details>
  <summary type="button">Solution</summary>

``` r
create_flexible_sum_function <- function(n) {
  function(...) {
    sum(c(...)) + n
  }
}

# Tests
# Create a function adding 5 to any set of numbers
sum_5 <- create_flexible_sum_function(5)

# Usage examples and verification
sum_5(2, 3, 4)
#> [1] 14

sum_5(10, 20)
#> [1] 35

sum_5()
#> [1] 5
```
</details>

50. Develop a `create_dynamic_plot()` function that takes a data frame, a plot type ("scatter", "histogram", or "boxplot"), and a list of options (like title and color), generating the requested plot dynamically.



<details>
  <summary type="button">Solution</summary>

``` r
create_dynamic_plot <- function(data, plot_type, options) {
  # Create base plot expression
  if (plot_type == "scatter") {
    expression <- quote(plot(data[[options$var_x]], data[[options$var_y]],
                            xlab = options$labels_x, ylab = options$labels_y,
                            main = options$title, col = options$color))
  } else if (plot_type == "histogram") {
    expression <- quote(hist(data[[options$var_x]], 
                            main = options$title, 
                            xlab = options$labels_x, col = options$color))
  } else if (plot_type == "boxplot") {
    expression <- quote(boxplot(data[[options$var_x]], 
                               main = options$title, 
                               ylab = options$labels_y, col = options$color))
  } else {
    stop("Invalid plot type.")
  }
  
  # Evaluate base expression
  eval(expression)
}

# Create sample data
data <- data.frame(x = rnorm(100), y = rnorm(100))

# Tests
# Scatter plot
options_scatter <- list(var_x = "x", var_y = "y",
                            title = "Scatter Plot",
                            labels_x = "Variable X",
                            labels_y = "Variable Y",
                            color = "blue")
create_dynamic_plot(data, "scatter", options_scatter)

# Histogram
options_histogram <- list(var_x = "x",
                            title = "Histogram",
                            labels_x = "Values",
                            color = "green")
create_dynamic_plot(data, "histogram", options_histogram)

# Boxplot
options_boxplot <- list(var_x = "y",
                         title = "Boxplot",
                         labels_y = "Values",
                         color = "red")
create_dynamic_plot(data, "boxplot", options_boxplot)
```

<img src="Data-Science-with-R_files/figure-html/unnamed-chunk-234-1.png" alt="" width="80%" style="display: block; margin: auto;" /><img src="Data-Science-with-R_files/figure-html/unnamed-chunk-234-2.png" alt="" width="80%" style="display: block; margin: auto;" /><img src="Data-Science-with-R_files/figure-html/unnamed-chunk-234-3.png" alt="" width="80%" style="display: block; margin: auto;" />
</details>







<!--chapter:end:02-fundamentals/04.advanced_techniques.Rmd-->


# (PART) Data Visualization and Summarization{-}
# Ggplot and dplyr

**Learning Objectives:**

In this chapter, we will master the art of data storytelling. We will learn to create layered visualizations using `ggplot2`, customizing every aspect from aesthetics and scales to themes and labels. Additionally, we will gain proficiency in summarizing data with `dplyr` functions like `summarize()` and `group_by()`, all while deepening our understanding of the grammar of graphics approach.

---

Building on the basic plotting skills from previous chapters, we'll now create more sophisticated and visually polished visualizations. The `ggplot2` package provides a powerful and consistent framework for building graphics layer by layer.

To get started, we'll use the `ggplot` object included in the `tidyverse` library (the `tidyverse` package includes `ggplot2` among its core packages). Since we've already installed `tidyverse` previously, we only need to load it:


``` r
library(tidyverse)
```

We'll learn these visualization techniques using our previous case/problem, allowing us to build up our `ggplot` skills gradually with familiar data.

## Creating the ggplot object

We will start by creating the `ggplot` object from the `murders` data using the pipeline operator `|>`. Let's also remember to have loaded the `murders` data from the `dslabs` library.


``` r
library(dslabs)
data(murders)

murders |>
  ggplot()
```

<img src="Data-Science-with-R_files/figure-html/unnamed-chunk-237-1.png" alt="" width="80%" style="display: block; margin: auto;" />

This code only shows us an empty box. This is because we haven't specified which variables to take from the data frame nor what type of plot we want.

To build our plot, we'll add components using *layers*. The `ggplot` system allows us to add one layer at a time, each specifying a different aspect of the visualization. We connect layers using the `+` operator.

## Aesthetic mapping layer
First we will focus on the basic aesthetics, that is: what goes on the _**x-axis**_ and what we put on the _**y-axis**_. To do this we will use the aesthetic function which in R is `aes()`. For example, let's add the `population` data on the _x-axis_ and the `total` data on the _y-axis_. We don't have to use the `$` accessor because the `aes` function takes the `murders` table before the pipeline as a reference.


``` r

murders |>
  ggplot() +
  aes(x = population, y = total)

```

<img src="Data-Science-with-R_files/figure-html/unnamed-chunk-238-1.png" alt="" width="80%" style="display: block; margin: auto;" />

Now we have a box with the axes marked, but still without any data inside the box.

## Geoms layer
Let's add one more layer that indicates what type of plot we want. To do this we will use the so-called **geoms**. There are different types of geoms. For example, a scatter plot is shown with points, therefore we will use the `geom_point()` function. For more detail we can see the documentation of `geom_point()` [here](https://ggplot2.tidyverse.org/reference/geom_point.html).


``` r

murders |>
  ggplot() +
  aes(x = population, y = total) +
  geom_point()

```

<img src="Data-Science-with-R_files/figure-html/unnamed-chunk-239-1.png" alt="" width="80%" style="display: block; margin: auto;" />

In the same way, we can show lines connecting the data instead of points with the `geom_line()` function.


``` r

murders |>
  ggplot() +
  aes(x = population, y = total) +
  geom_line()

```

<img src="Data-Science-with-R_files/figure-html/unnamed-chunk-240-1.png" alt="" width="80%" style="display: block; margin: auto;" />

Up to this point we have created the same scatter plot that we saw in the previous chapter. The power of ggplot lies in the ease of adding components. For example, to label each point with the state abbreviation (`abb`), we simply add it as a `label` attribute inside `aes` and include the `geom_text()` layer.


``` r

murders |>
  ggplot() +
  aes(x = population, y = total, label=abb) +
  geom_point() +
  geom_text()

```

<img src="Data-Science-with-R_files/figure-html/unnamed-chunk-241-1.png" alt="" width="80%" style="display: block; margin: auto;" />

In this plot we can already see that the upper right point corresponds to **CA** which is the abbreviation for the state of **California**.

### Tweaking aes and geoms
We can tweak our plots in multiple ways by adding attributes to our functions.

For example, if we want to identify which region each point belongs to (if it is from the US North, South, etc.) we would have to edit `aes()` and make `color` take into account the `region` variable as follows:


``` r

murders |>
  ggplot() +
  aes(x = population, y = total, label=abb, color=region) +
  geom_point() +
  geom_text()

```

<img src="Data-Science-with-R_files/figure-html/unnamed-chunk-242-1.png" alt="" width="80%" style="display: block; margin: auto;" />

Then, we can also edit the attributes of the `geoms`. For example, let's make the size of the points larger. To do this we edit inside `geom_points()`:


``` r

murders |>
  ggplot() +
  aes(x = population, y = total, label=abb, color=region) +
  geom_point(size=3) +
  geom_text()

```

<img src="Data-Science-with-R_files/figure-html/unnamed-chunk-243-1.png" alt="" width="80%" style="display: block; margin: auto;" />

Having increased the size of the points, we can no longer see the text of the state abbreviations well. We can nudge the text on the _x-axis_ or on the _y-axis_. Since we are talking about several million people, let's nudge the letters 1.5 million to the right.


``` r

murders |>
  ggplot() +
  aes(x = population, y = total, label=abb, color=region) +
  geom_point(size=3) +
  geom_text(nudge_x = 1500000)

```

<img src="Data-Science-with-R_files/figure-html/unnamed-chunk-244-1.png" alt="" width="80%" style="display: block; margin: auto;" />

To avoid entering such large numbers we can transform the population on the x-axis in the `aes()` function. Thus, once we express the data without counting the millions we would have to nudge the text only 1.5 points to the right:


``` r

murders |>
  ggplot() +
  aes(x = population/10^6, y = total, label=abb, color=region) +
  geom_point(size=3) + 
  geom_text(nudge_x = 1.5)

```

<img src="Data-Science-with-R_files/figure-html/unnamed-chunk-245-1.png" alt="" width="80%" style="display: block; margin: auto;" />

This transformation gives us the same result as before and the _x-axis_ is now easier to understand now that we can see the numbers.

## Scale layer
Visually we can still improve our plot further. We see several data points concentrated in lower values and only a few extremes. In those cases it is better to have a view scaling the axes using logarithms. To do this, we will use the layers `scale_x_continuous()` and `scale_y_continuous()`. For example, if we want to transform the scale to base 2 logarithm we would have to add layers, but also change the value of `nudge_x`, due to the scale change:


``` r

murders |>
  ggplot() +
  aes(x = population/10^6, y = total, label=abb, color=region) +
  geom_point(size=3) +
  geom_text(nudge_x = 0.23) +
  scale_x_continuous(trans = "log2") +
  scale_y_continuous(trans = "log2")

```

<img src="Data-Science-with-R_files/figure-html/unnamed-chunk-246-1.png" alt="" width="80%" style="display: block; margin: auto;" />

In the same way, we could do the transformation to base 10 logarithm:


``` r

murders |>
  ggplot() +
  aes(x = population/10^6, y = total, label=abb, color=region) +
  geom_point(size=3) +
  geom_text(nudge_x = 0.075) +
  scale_x_continuous(trans = "log10") +
  scale_y_continuous(trans = "log10")

```

<img src="Data-Science-with-R_files/figure-html/unnamed-chunk-247-1.png" alt="" width="80%" style="display: block; margin: auto;" />

The transformation of the scale to base 10 logarithm is widely used in statistics and R provides us with a faster function to proceed with this scale transformation, the function `scale_x_log10()`, which gives us the same result as the previous plot.


``` r

murders |>
  ggplot() +
  aes(x = population/10^6, y = total, label=abb, color=region) +
  geom_point(size=3) +
  geom_text(nudge_x = 0.075) +
  scale_x_log10() +
  scale_y_log10()

```

<img src="Data-Science-with-R_files/figure-html/unnamed-chunk-248-1.png" alt="" width="80%" style="display: block; margin: auto;" />

## Label, title and legend layer
We can also [change the labels](https://www.datanovia.com/en/blog/ggplot-legend-title-position-and-labels/) (`label` in English) of the plot. So far on the _x-axis_ we see that **population/10^6** appears and we can change it with the function `xlab()`. In the same way we can change on the _y-axis_ using `ylab()`. To add a title to the plot we will use the function `ggtitle()`. To change the name of the legend we will use the function `scale_color_discrete()`.


``` r

murders |>
  ggplot() +
  aes(x = population/10^6, y = total, label=abb, color=region) +
  geom_point(size=3) +
  geom_text(nudge_x = 0.075) +
  scale_x_log10() +
  scale_y_log10() +
  xlab("Population expressed in millions (logarithmic scale)") +
  ylab("Total number of murders (logarithmic scale)") +
  ggtitle("Gun murders in the US in 2010") +
  scale_color_discrete(name = "Regions")

```

<img src="Data-Science-with-R_files/figure-html/unnamed-chunk-249-1.png" alt="" width="80%" style="display: block; margin: auto;" />

> **Modern Alternative:** You can also use the `labs()` function to set multiple labels in a single layer: `labs(x = "...", y = "...", title = "...", color = "...")`. This is often cleaner for plots with many labels.

## Reference lines
We can add reference lines, whether vertical with `geom_vline(xintercept = )`, horizontal with `geom_hline(yintercept = ...)` or diagonal with `geom_abline(intercept = )`, the latter asks us at what point it cuts the _y-axis_ and draws a line with a default slope of 1.

For example, we could calculate the average of total murders and draw a horizontal reference line.


``` r

#Calculate the average of the total
avg_total <- mean(murders$total)

#And add the horizontal reference line
murders |>
  ggplot() +
  aes(x = population/10^6, y = total, label=abb, color=region) +
  geom_point(size=3) +
  geom_text(nudge_x = 0.075) +
  scale_x_log10() +
  scale_y_log10() +
  xlab("Population expressed in millions (logarithmic scale)") +
  ylab("Total number of murders (logarithmic scale)") +
  ggtitle("Gun murders in the US in 2010") +
  scale_color_discrete(name = "Regions") +
  geom_hline(yintercept = avg_total)

```

<img src="Data-Science-with-R_files/figure-html/unnamed-chunk-250-1.png" alt="" width="80%" style="display: block; margin: auto;" />

Or we could calculate the murder rate per million inhabitants throughout the US and draw a reference diagonal. In the case of the diagonal we have to express it in the same scale of the axis, therefore we have to convert it to `log10`.


``` r

# Calculate the average rate
ratio <- sum(murders$total)/sum(murders$population) * 10^6

# Calculate base 10 logarithm to obtain the intercept on the "y-axis"
ratio_log10 <- log10(ratio)

#And add the diagonal reference line
murders |>
  ggplot() +
  aes(x = population/10^6, y = total, label=abb, color=region) +
  geom_point(size=3) +
  geom_text(nudge_x = 0.075) +
  scale_x_log10() +
  scale_y_log10() +
  xlab("Population expressed in millions (logarithmic scale)") +
  ylab("Total number of murders (logarithmic scale)") +
  ggtitle("Gun murders in the US in 2010") +
  scale_color_discrete(name = "Regions") +
  geom_abline(intercept = ratio_log10)

```

<img src="Data-Science-with-R_files/figure-html/unnamed-chunk-251-1.png" alt="" width="80%" style="display: block; margin: auto;" />

We can improve this reference line by making it dashed and gray. To do this, simply edit the `geom_abline()` function as follows:


``` r

murders |>
  ggplot() +
  aes(x = population/10^6, y = total, label=abb, color=region) +
  geom_point(size=3) +
  geom_text(nudge_x = 0.075) +
  scale_x_log10() +
  scale_y_log10() +
  xlab("Population expressed in millions (logarithmic scale)") +
  ylab("Total number of murders (logarithmic scale)") +
  ggtitle("Gun murders in the US in 2010") +
  scale_color_discrete(name = "Regions") +
  geom_abline(intercept = ratio_log10, lty = 2, color = "darkgrey")

```

<img src="Data-Science-with-R_files/figure-html/unnamed-chunk-252-1.png" alt="" width="80%" style="display: block; margin: auto;" />

## Changing the plot style
The plot style using `ggplot()` can be easily changed. There are multiple themes we can use by loading the **ggthemes** library. We can, for example, use a widely used theme: the economist theme by adding the `theme_economist()` layer.


``` r
library(ggthemes)

murders |>
  ggplot() +
  aes(x = population/10^6, y = total, label=abb, color=region) +
  geom_point(size=3) +
  geom_text(nudge_x = 0.075) +
  scale_x_log10() +
  scale_y_log10() +
  xlab("Population expressed in millions (logarithmic scale)") +
  ylab("Total number of murders (logarithmic scale)") +
  ggtitle("Gun murders in the US in 2010") +
  scale_color_discrete(name = "Regions") +
  geom_abline(intercept = ratio_log10, lty = 2, color = "darkgrey") +
  theme_economist()

```

<img src="Data-Science-with-R_files/figure-html/unnamed-chunk-253-1.png" alt="" width="80%" style="display: block; margin: auto;" />

We still see overlapping abbreviations. We can make the names repel each other using the `geom_text_repel()` function instead of `geom_text()` that we are currently using. To use this function we need to call the **ggrepel** library.


``` r
library(ggthemes)
library(ggrepel)

murders |>
  ggplot() +
  aes(x = population/10^6, y = total, label=abb, color=region) +
  geom_point(size=3) +
  geom_text_repel() +
  scale_x_log10() +
  scale_y_log10() +
  xlab("Population expressed in millions (logarithmic scale)") +
  ylab("Total number of murders (logarithmic scale)") +
  ggtitle("Gun murders in the US in 2010") +
  scale_color_discrete(name = "Regions") +
  geom_abline(intercept = ratio_log10, lty = 2, color = "darkgrey") +
  theme_economist()
#> Warning: ggrepel: 1 unlabeled data points (too many overlaps). Consider
#> increasing max.overlaps
```

<img src="Data-Science-with-R_files/figure-html/unnamed-chunk-254-1.png" alt="" width="80%" style="display: block; margin: auto;" />

This plot is visually much easier to understand and aesthetically much better than the default plot we created in previous chapters. We can explore more examples at this [link](https://rstudio-pubs-static.s3.amazonaws.com/228019_f0c39e05758a4a51b435b19dbd321c23.html).

## Saving plots

Once you've created a plot, you'll often want to save it to a file. The `ggsave()` function makes this easy:


``` r
# Save the last plot created
ggsave("my_plot.png", width = 8, height = 6)

# Or save a specific plot object
p <- murders |> ggplot() + aes(x = population, y = total) + geom_point()
ggsave("murders_plot.pdf", plot = p)
```

The function automatically detects the file type from the extension (`.png`, `.pdf`, `.svg`, etc.).

---

## Summarizing data with dplyr

Visualization and data summarization go hand in hand. While plots help us *see* patterns in our data, summary statistics help us *quantify* those patterns. The `dplyr` package provides powerful functions for calculating summaries.

The `tidyverse` package includes several packages, among them `dplyr` which makes it easier for us to summarize data from a variable. When we call the `tidyvere` library we are also calling all the functions of `dplyr`. To start using the functions of `dplyr` we are going to load the `heights` data frame which is in the `dslabs` library.


``` r
library(tidyverse)
library(dslabs)
```



First let's understand the `heights` data frame, we can apply pipeline and then use the `head()` function:


``` r
heights |> 
  head()
#>      sex height
#> 1   Male     75
#> 2   Male     70
#> 3   Male     68
#> 4   Male     74
#> 5   Male     61
#> 6 Female     65
```

This data frame corresponds to the list of attributes of students in a university, where the `height` column indicates the height of each one in inches.

Finally, let's add the column `height_m` where we will transform the height to meters. Remember that a meter has 39.37 inches. Let's store the result in the variable `heights_m`.


``` r
heights_m <- heights |> 
  mutate(height_m = height/39.37)

heights_m |> 
  head()
#>      sex height height_m
#> 1   Male     75 1.905004
#> 2   Male     70 1.778004
#> 3   Male     68 1.727203
#> 4   Male     74 1.879604
#> 5   Male     61 1.549403
#> 6 Female     65 1.651003
```

The fastest way to summarize a list of data is indicating what the average is and how much its [standard deviation](https://support.minitab.com/en-us/minitab/18/help-and-how-to/statistics/basic-statistics/supporting-topics/data-concepts/what-is-the-standard-deviation/)^[What is the standard deviation?] is. If we wanted to obtain the average we would use the `mean()` function and `sd()` to obtain the standard deviation. For example:


``` r
avg <- mean(heights_m$height_m)
std_dev <- sd(heights_m$height_m)
```

However, this summarizes all students for us without considering whether men could be on average taller than women. If we wanted to calculate the average and std. dev. we would have to filter first, then store in a variable and finally calculate the average and standard deviation. This is impractical and for that `dplyr` grants us the `summarize()` function.

### Summarize function
We can use the `summarize` function using the pipeline operator. Thus, we could calculate the average and std. dev. in this way:


``` r
heights_m |>
    filter(sex == "Male") |>
    summarize(avg = mean(height_m), std_dev = sd(height_m))
#>        avg    std_dev
#> 1 1.760598 0.09172018
```

This function also generates a data frame for us. We can validate it if we store the result in the variable `heights_m_male` and then report the _class_ of the variable:


``` r
heights_m_male <- heights_m |>
    filter(sex == "Male") |>
    summarize(avg = mean(height_m), std_dev = sd(height_m))

class(heights_m_male)
#> [1] "data.frame"
```

We can report the data frame `heights_m_male` and use it for future analyzes accessing with the accessor `$`.


``` r
heights_m_male
#>        avg    std_dev
#> 1 1.760598 0.09172018
```

We see that the average height of men is 1.76 meters with a standard deviation of 0.09 meters.

In the same way, we can use `summarize` to calculate other functions such as:


``` r
heights_m |>
    filter(sex == "Male") |>
    summarize(min_val = min(height_m), max_val = max(height_m), median_val = median(height_m))
#>    min_val  max_val median_val
#> 1 1.270003 2.100004   1.752604
```

The tallest student measures more than 2.1 meters. Half of the male students measure more than 1.75 meters.

However, we would now have to change to "Female" to calculate the data for women. We need to group and then summarize the data taking into account the grouping. For this there is the function `group_by()`

### Group By Function
This function allows us to create grouped data frames which makes it easier for us to summarize the data. We would only have to select based on what we want to group and no longer filter by sex. In this case the grouping would be based on the `sex` column:


``` r
heights_m |>
    group_by(sex) |> 
    summarize(avg = mean(height_m), std_dev = sd(height_m))
#> # A tibble: 2 × 3
#>   sex      avg std_dev
#>   <fct>  <dbl>   <dbl>
#> 1 Female  1.65  0.0955
#> 2 Male    1.76  0.0917
```

On average, women are shorter than men.

If we now remember our danger case in the US. We can calculate the ratio of total crimes regarding the population and then compare it by region in this way:


``` r
murders |> 
  mutate(ratio = total / population * 100000) |> 
  group_by(region) |> 
  summarize(avg_ratio = mean(ratio))
#> # A tibble: 4 × 2
#>   region        avg_ratio
#>   <fct>             <dbl>
#> 1 Northeast          1.85
#> 2 South              4.42
#> 3 North Central      2.18
#> 4 West               1.83
```

On average, the South region is more dangerous.



## Exercises
This time we are going to perform exercises within the field of biology and for this we must remember the parts of a flower. This way we will give more sense to the problem:

<img src="_assets/images/03-visualization/flower-parts.png" alt="Botanical diagram showing flower parts: sepal, petal, stamen, and pistil" width="150pt" style="display: block; margin: auto;" />

51. Load the `iris` data frame (`data(iris)`), which details the characteristics of 150 flowers across 3 species. Create a scatter plot visualizing the relationship between sepal length and petal length.



<details>
  <summary type="button">Solution</summary>

``` r
iris |> 
  ggplot() +
  aes(x = Sepal.Length, y = Petal.Length) +
  geom_point()
```
</details>

52. Enhance the previous visualization by coloring the points to represent the species of each flower.



<details>
  <summary type="button">Solution</summary>

``` r
iris |> 
  ggplot() +
  aes(x = Sepal.Length, y = Petal.Length, color = Species) +
  geom_point() 
```
</details>

53. Polish your plot by setting the title to "Relationship between sepal and petal size of different flowers", naming the x-axis "Sepal length (in cm)", the y-axis "Petal length (in cm)", and labeling the legend simply as "Species".



<details>
  <summary type="button">Solution</summary>

``` r
iris |> 
  ggplot() +
  aes(x = Sepal.Length, y = Petal.Length, color = Species) +
  geom_point() +
  xlab("Sepal length (in cm)") +
  ylab("Petal length (in cm)") +
  ggtitle("Relationship between sepal and petal size of different flowers") +
  scale_color_discrete(name = "Species")
```
</details>

54. Generate a statistical summary of the ratio between sepal length and petal length, reporting a data frame that includes the average, standard deviation, and median of this ratio.



<details>
  <summary type="button">Solution</summary>

``` r
iris |>
  mutate(ratio = Sepal.Length / Petal.Length) |> 
  summarize(avg = mean(ratio), std_dev = sd(ratio), median_val = median(ratio))
```
</details>

55. Refine your previous ratio summary to show these statistics (average, standard deviation, and median) calculated separately for each species.



<details>
  <summary type="button">Solution</summary>

``` r
iris |>
  mutate(ratio = Sepal.Length / Petal.Length) |> 
  group_by(Species) |> 
  summarize(avg = mean(ratio), std_dev = sd(ratio), median_val = median(ratio))
```
</details>



---

## Key Takeaways

This chapter emphasized a **layered approach** to visualization, building plots incrementally with aesthetics, geoms, and scales. We learned to map data to visual properties using `aes`, select the appropriate geometry (like `geom_point` or `geom_line`), and transform axes to reveal patterns in skewed data. Beyond the visuals, we explored how to customize themes and labels for clarity, and how to quantify insights using `dplyr` summarization tools before saving our work with `ggsave()`.


<!--chapter:end:03-visualization/ggplot.Rmd-->


# Gapminder

[The Gapminder Foundation](https://www.gapminder.org/)^[https://www.gapminder.org/] is a Swedish non-profit organization that promotes global development through the use of statistics that can help reduce common myths and sensationalist stories about global health and economics. An important selection of data is already loaded in the `dslabs` library in the `gapminder` data frame. Our case/problem now will be to answer these two questions:

>1. Is it still reasonable to divide the world between Western countries* and developing countries?
>2. Is it true that every day we are worse off and rich countries get richer while poor countries get poorer?

(*): Samuel Huntington in 1993 published an article called [Clash of Civilizations](https://web.archive.org/web/20100821191056/http://history.club.fatih.edu.tr/103%20Huntington%20Clash%20of%20Civilizations%20full%20text.htm)^[Full text of Huntington's article (in English)] where he defined Western countries as those located in the regions of North America, Northern/Southern/Western Europe and Australia and New Zealand.

To address these questions, we will follow a structured data science workflow. We'll start by **exploring the data** to understand its structure and content, then move to **in-depth analysis** to identify relevant variables. Finally, we will use **visualization and summarization** techniques to synthesize our findings and provide clear answers.

First let's explore the structure of the data frame with `str()`:


``` r
gapminder |> 
  str()
#> 'data.frame':	10545 obs. of  9 variables:
#>  $ country         : Factor w/ 185 levels "Albania","Algeria",..: 1 2 3 4 5 6 7 8 9 10 ...
#>  $ year            : int  1960 1960 1960 1960 1960 1960 1960 1960 1960 1960 ...
#>  $ infant_mortality: num  115.4 148.2 208 NA 59.9 ...
#>  $ life_expectancy : num  62.9 47.5 36 63 65.4 ...
#>  $ fertility       : num  6.19 7.65 7.32 4.43 3.11 4.55 4.82 3.45 2.7 5.57 ...
#>  $ population      : num  1636054 11124892 5270844 54681 20619075 ...
#>  $ gdp             : num  NA 1.38e+10 NA NA 1.08e+11 ...
#>  $ continent       : Factor w/ 5 levels "Africa","Americas",..: 4 1 1 2 2 3 2 5 4 3 ...
#>  $ region          : Factor w/ 22 levels "Australia and New Zealand",..: 19 11 10 2 15 21 2 1 22 21 ...
```

We have a data frame with more than 10 thousand data points and 9 variables.

Now let's take a look at the data with `head()`:


``` r
gapminder |> 
  head()
#>               country year infant_mortality life_expectancy fertility
#> 1             Albania 1960           115.40           62.87      6.19
#> 2             Algeria 1960           148.20           47.50      7.65
#> 3              Angola 1960           208.00           35.98      7.32
#> 4 Antigua and Barbuda 1960               NA           62.97      4.43
#> 5           Argentina 1960            59.87           65.39      3.11
#> 6             Armenia 1960               NA           66.86      4.55
#>   population          gdp continent          region
#> 1    1636054           NA    Europe Southern Europe
#> 2   11124892  13828152297    Africa Northern Africa
#> 3    5270844           NA    Africa   Middle Africa
#> 4      54681           NA  Americas       Caribbean
#> 5   20619075 108322326649  Americas   South America
#> 6    1867396           NA      Asia    Western Asia
```

Remember that for library data frames we can usually find the documentation and understand each attribute faster:


``` r
?gapminder
```

Going directly to the questions would be not leaving that curiosity free to see what else is in the data. Thus, we are going to start with other variables such as infant mortality, fertility or population.

We can filter all the data that are from Peru and select the column country, year, infant mortality and population:


``` r
gapminder |> 
  filter(country == "Peru") |> 
  select(country, year, infant_mortality, population)
#>    country year infant_mortality population
#> 1     Peru 1960            135.9   10061519
#> 2     Peru 1961            132.6   10350239
#> 3     Peru 1962            129.1   10650672
#> 4     Peru 1963            125.4   10961539
#> 5     Peru 1964            121.8   11281015
#> 6     Peru 1965            118.2   11607684
#> 7     Peru 1966            114.8   11941327
#> 8     Peru 1967            111.6   12282081
#> 9     Peru 1968            108.7   12629333
#> 10    Peru 1969            106.0   12982444
#> 11    Peru 1970            103.4   13341071
#> 12    Peru 1971            100.9   13704333
#> 13    Peru 1972             98.3   14072476
#> 14    Peru 1973             95.8   14447649
#> 15    Peru 1974             93.3   14832839
#> 16    Peru 1975             91.0   15229951
#> 17    Peru 1976             88.9   15639898
#> 18    Peru 1977             87.0   16061327
#> 19    Peru 1978             85.5   16491087
#> 20    Peru 1979             83.9   16924758
#> 21    Peru 1980             82.4   17359118
#> 22    Peru 1981             80.7   17792551
#> 23    Peru 1982             78.7   18225727
#> 24    Peru 1983             76.3   18660443
#> 25    Peru 1984             73.7   19099575
#> 26    Peru 1985             70.7   19544950
#> 27    Peru 1986             67.6   19996250
#> 28    Peru 1987             64.6   20451712
#> 29    Peru 1988             61.7   20909897
#> 30    Peru 1989             58.9   21368856
#> 31    Peru 1990             56.3   21826658
#> 32    Peru 1991             53.7   22283130
#> 33    Peru 1992             51.0   22737056
#> 34    Peru 1993             48.2   23184222
#> 35    Peru 1994             45.4   23619358
#> 36    Peru 1995             42.5   24038761
#> 37    Peru 1996             39.7   24441076
#> 38    Peru 1997             36.9   24827409
#> 39    Peru 1998             34.3   25199744
#> 40    Peru 1999             31.8   25561297
#> 41    Peru 2000             29.6   25914875
#> 42    Peru 2001             27.6   26261363
#> 43    Peru 2002             25.7   26601463
#> 44    Peru 2003             24.1   26937737
#> 45    Peru 2004             22.6   27273188
#> 46    Peru 2005             21.3   27610406
#> 47    Peru 2006             20.1   27949958
#> 48    Peru 2007             19.0   28292768
#> 49    Peru 2008             18.0   28642048
#> 50    Peru 2009             17.1   29001563
#> 51    Peru 2010             16.3   29373644
#> 52    Peru 2011             15.6   29759891
#> 53    Peru 2012             14.9   30158768
#> 54    Peru 2013             14.2   30565461
#> 55    Peru 2014             13.6   30973148
#> 56    Peru 2015             13.1   31376670
#> 57    Peru 2016               NA         NA
```

Let's add a filter to obtain only the data from 2015:

``` r
gapminder |> 
  filter(country == "Peru" & year == 2015) |> 
  select(country, year, infant_mortality, population)
#>   country year infant_mortality population
#> 1    Peru 2015             13.1   31376670
```

We can make a comparison between Peru and Chile if we create a vector and instead of the `==` operator we use the `%in%` operator that allows evaluating that our data are **in** that vector.


``` r
vector_countries = c("Peru", "Chile")

gapminder |> 
  filter(country %in% vector_countries & year == 2015) |> 
  select(country, year, infant_mortality, population)
#>   country year infant_mortality population
#> 1   Chile 2015              7.0   17948141
#> 2    Peru 2015             13.1   31376670
```

Infant mortality is measured in number of children who die per 1,000 infants. This means that it already takes into account the population. In 2015 Peru had a higher infant mortality rate than Chile.

## Initial gapminder plots
However, if we want to analyze global data, comparing countries one by one would be impractical. Let's use `ggplot` to see if there is a relationship in our data.

Let's create a scatter plot with data from the **year 1990** of the fertility variable (`fertility`), which is the average number of children per woman, and the life expectancy variable (`life_expectancy`).


``` r
gapminder |> 
  filter(year == 1990) |> 
  ggplot() +
  aes(x = fertility, y = life_expectancy) +
  geom_point()

```

<img src="Data-Science-with-R_files/figure-html/unnamed-chunk-285-1.png" alt="" width="80%" style="display: block; margin: auto;" />

From this graph we can see that countries where families have 7.5 children have a lower life expectancy. On the other hand, in countries with high life expectancy the average number of children is less than 2 children per family.

As we have done previously, we can color the points according to some other variable. In this case, knowing which continent they belong to could give us a better idea of the data.


``` r
gapminder |> 
  filter(year == 1990) |> 
  ggplot() +
  aes(x = fertility, y = life_expectancy, color = continent) +
  geom_point()

```

<img src="Data-Science-with-R_files/figure-html/unnamed-chunk-286-1.png" alt="" width="80%" style="display: block; margin: auto;" />

In this graph, groups begin to be seen. Several European countries are in the upper left quadrant, while several African countries are in the lower right quadrant.

## Facets
Although the previous graph already shows us a correlation of variables, we cannot see how it has changed from one year to another. For this we will use the facet layer (`facet_`).

In the layer `facet_grid(row_variable ~ column_variable)` we replace "row_variable" with the name of our variable or replace it with a `.` if we don't want any of them. For example, from the previous example let's compare how the distribution changed by comparing the year 1960 with the year 2013.


``` r
vector_years <- c(1960, 2013)

gapminder |> 
  filter(year %in% vector_years) |> 
  ggplot() +
  aes(x = fertility, y = life_expectancy, color = continent) +
  geom_point() +
  facet_grid(year ~ .)
```

<img src="Data-Science-with-R_files/figure-html/unnamed-chunk-287-1.png" alt="" width="80%" style="display: block; margin: auto;" />

We can make it even clearer which continent changed the most if we add the continent variable as a column.


``` r
vector_years <- c(1960, 2013)

gapminder |> 
  filter(year %in% vector_years) |> 
  ggplot() +
  aes(x = fertility, y = life_expectancy, color = continent) +
  geom_point() +
  facet_grid(year ~ continent)
```

<img src="Data-Science-with-R_files/figure-html/unnamed-chunk-288-1.png" alt="" width="80%" style="display: block; margin: auto;" />

Having several columns for each continent makes it harder to understand because the columns become smaller. It is recommended to have few columns. So we invert the order between year and continent.


``` r
vector_years <- c(1960, 2013)

gapminder |> 
  filter(year %in% vector_years) |> 
  ggplot() +
  aes(x = fertility, y = life_expectancy, color = continent) +
  geom_point() +
  facet_grid(continent ~ year)
```

<img src="Data-Science-with-R_files/figure-html/unnamed-chunk-289-1.png" alt="" width="80%" style="display: block; margin: auto;" />

Here the change by regions is much more evident: the majority of countries have reduced fertility per family while increasing life expectancy. We are living longer than in the 1960s and having fewer children per family. These trends have occurred across all continents.

We don't always have to show all variables, in this case continents. We can continue applying filters so that it shows us a subset of continents that we want to compare. For example:


``` r
vector_years <- c(1960, 2013)
vector_continents <- c("Europe", "Asia")

gapminder |> 
  filter(year %in% vector_years & continent %in% vector_continents) |> 
  ggplot() +
  aes(x = fertility, y = life_expectancy, color = continent) +
  geom_point() +
  facet_grid(continent ~ year)
```

<img src="Data-Science-with-R_files/figure-html/unnamed-chunk-290-1.png" alt="" width="80%" style="display: block; margin: auto;" />
    
In this case it would be visually better if the continents were not in separate rows, but could still be appreciated in the graph. To do this, we will use the wrap facet (`facet_wrap(~ x)`), where `x` is the variable we want to wrap. In our case it would be the year, instead of appearing in separate rows we can join and transpose them.
    

``` r
vector_years <- c(1960, 2013)
vector_continents <- c("Europe", "Asia")

gapminder |> 
  filter(year %in% vector_years & continent %in% vector_continents) |> 
  ggplot() +
  aes(x = fertility, y = life_expectancy, color = continent) +
  geom_point() +
  facet_wrap( ~ year)
```

<img src="Data-Science-with-R_files/figure-html/unnamed-chunk-291-1.png" alt="" width="80%" style="display: block; margin: auto;" />

We can add more data by adding more data to the vectors. For example, let's add a cut in the middle between 1960 and 2013.


``` r
vector_years <- c(1960, 1985, 2013)
vector_continents <- c("Europe", "Asia")

gapminder |> 
  filter(year %in% vector_years & continent %in% vector_continents) |> 
  ggplot() +
  aes(x = fertility, y = life_expectancy, color = continent) +
  geom_point() +
  facet_wrap( ~ year)
```

<img src="Data-Science-with-R_files/figure-html/unnamed-chunk-292-1.png" alt="" width="80%" style="display: block; margin: auto;" />

## Time series
Time series are sequences of data measured at determined moments and ordered chronologically. R allows us to easily plot time series, we only need our data frames to include some time variable.

### Individual time series
In an individual time series we only analyze how a single variable has evolved, for example the evolution of the fertility rate in Peru. For this we can use a scatter plot with points or with lines.

As we will remember, we use `geom_point()` for points:


``` r
gapminder |> 
  filter(country == "Peru") |> 
  ggplot() +
  aes(x = year, y = fertility) +
  geom_point()
#> Warning: Removed 1 row containing missing values or values
#> outside the scale range (`geom_point()`).
```

<img src="Data-Science-with-R_files/figure-html/unnamed-chunk-293-1.png" alt="" width="80%" style="display: block; margin: auto;" />

We get a "warning" indicating that there are values that cannot be drawn because they are `NA` and are not available. This does not prevent showing the graph.

If we want a line graph, which is the most used in time series, we use `geom_line()`:


``` r
gapminder |> 
  filter(country == "Peru") |> 
  ggplot() +
  aes(x = year, y = fertility) +
  geom_line()
#> Warning: Removed 1 row containing missing values or values
#> outside the scale range (`geom_line()`).
```

<img src="Data-Science-with-R_files/figure-html/unnamed-chunk-294-1.png" alt="" width="80%" style="display: block; margin: auto;" />

### Multiple time series
In multiple time series we seek comparison to analyze in a time series how the data evolved. For example, this would be the time series if we compare Peru, Bolivia and Chile:


``` r
countries <- c("Peru", "Bolivia", "Chile")

gapminder |> 
  filter(country %in% countries) |> 
  ggplot() +
  aes(x = year, y = fertility, color = country) +
  geom_line()
#> Warning: Removed 3 rows containing missing values or values
#> outside the scale range (`geom_line()`).
```

<img src="Data-Science-with-R_files/figure-html/unnamed-chunk-295-1.png" alt="" width="80%" style="display: block; margin: auto;" />

We can also remove the legend and show the name of the countries as labels on the same graph. To do this we will first have to create a data frame using the function `data.frame()` that indicates the coordinates where we want each label to appear:


``` r
countries <- c("Peru", "Bolivia", "Chile")

labels <- data.frame(country_names = countries, x = c(1975, 1965, 1962), y = c(6, 7, 4))
  
labels
#>   country_names    x y
#> 1          Peru 1975 6
#> 2       Bolivia 1965 7
#> 3         Chile 1962 4
```

We will use this to indicate that we want, for example, Bolivia to be written at the intersection of the year 1972 and with a fertility rate of 6.8.

To use these labels in `ggplot` we will edit the arguments in the `geom_text` layer. We will use the `data` attributes to indicate that we want to obtain the data from an external source, and we will include the `aes` layer inside `geom_text` to correlate the data frame we have created with the graph. We must keep in mind that the column name in both data frames must be the same, in this case `country`:


``` r
countries <- c("Peru", "Bolivia", "Chile")

labels <- data.frame(country = countries, x = c(1976, 1972, 1965), y = c(5.2, 6.8, 5.5))

gapminder |> filter(country %in% countries) |>
  ggplot() +
  aes(year, fertility, col = country) +
  geom_line() +
  geom_text(data = labels, aes(x, y, label = country)) +
  theme(legend.position = "none")
#> Warning: Removed 3 rows containing missing values or values
#> outside the scale range (`geom_line()`).
```

<img src="Data-Science-with-R_files/figure-html/unnamed-chunk-297-1.png" alt="" width="80%" style="display: block; margin: auto;" />


## Exercises
For these exercises we will continue using the `gapminder` data frame.

56. Generate a scatter plot comparing fertility rates and life expectancy for the Americas in the year 2000. Use color to differentiate between the regions within the continent.



<details>
  <summary type="button">Solution</summary>

``` r
gapminder |>
  filter( continent == "Americas" & year == 2000) |>
  ggplot() +
  aes(fertility, life_expectancy, color = region) +
  geom_point()
```
</details>

> To create a vector of sequences we can use `X:Y`. This creates a vector that goes from number X to number Y

57. During the Vietnam War, both the US and Vietnam suffered significant losses. Create a line chart visualizing how life expectancy changed in both countries from 1955 to 1990 to observe the war's impact.



<details>
  <summary type="button">Solution</summary>

``` r
countries <- c("Vietnam", "United States")
year_sequence <- 1955:1990

gapminder |>
  filter(country %in% countries & year %in% year_sequence) |> 
  ggplot() +
  aes(year, life_expectancy, color = country) +
  geom_line()
```
</details>

58. Expand the previous chart to include Cambodia, allowing us to visualize the devastating impact of the Khmer Rouge regime (1975-1979) on life expectancy alongside the Vietnam War data.



<details>
  <summary type="button">Solution</summary>

``` r
countries <- c("Vietnam", "United States", "Cambodia")
year_sequence <- 1955:1990

gapminder |>
  filter(country %in% countries & year %in% year_sequence) |> 
  ggplot() +
  aes(year, life_expectancy, color = country) +
  geom_line()
```
</details>



## Histograms with ggplot
We could continue exploring the data until we understand it much better. Eventually we would get to the GDP (`gdp`) data and in turn we would understand that comparing only GDP alone makes no sense since there are countries with much more population than others. Data transformation is not something new, but we will see that it is something recurrent in our analyzes.

We are going to use a transformation that allows us to obtain how much is the GDP per capita per day in each country in each year


``` r
gapminder <- gapminder |> 
  mutate(gdp_per_capita_per_day = gdp/population/365)
```

We could visualize this variable first by creating a histogram of it. A histogram in ggplot is nothing more than one of the `geoms` we have available, in this case it would be `geom_histogram(binwidth = x)`, where **x** is the width of the bar. For example, let's calculate the distribution of our created variable in the year 2010:


``` r
gapminder |> 
  mutate(gdp_per_capita_per_day = gdp/population/365) |> 
  filter(year == 2010) |> 
  ggplot() +
  aes(gdp_per_capita_per_day) +
  geom_histogram(binwidth = 5)
#> Warning: Removed 9 rows containing non-finite outside the
#> scale range (`stat_bin()`).
```

<img src="Data-Science-with-R_files/figure-html/unnamed-chunk-305-1.png" alt="" width="80%" style="display: block; margin: auto;" />

We can filter out the **NA** so that we no longer get the low "warnings" with the function we saw previously `is.na()`. In this case since we don't want the **NA** we will negate the function by placing the symbol `!` at the beginning.


``` r
gapminder |> 
  mutate(gdp_per_capita_per_day = gdp/population/365) |> 
  filter(year == 2010 & !is.na(gdp_per_capita_per_day)) |> 
  ggplot() +
  aes(gdp_per_capita_per_day) +
  geom_histogram(binwidth = 5)

```

<img src="Data-Science-with-R_files/figure-html/unnamed-chunk-306-1.png" alt="" width="80%" style="display: block; margin: auto;" />

At this point it should be quick to detect that there is a concentration of data from countries with low GDP per capita and we could be tempted to apply a scale transformation on the _x-axis_. Let's try with logarithm in base 2:


``` r
gapminder |> 
  mutate(gdp_per_capita_per_day = gdp/population/365) |> 
  filter(year == 2010 & !is.na(gdp_per_capita_per_day)) |> 
  ggplot() +
  aes(gdp_per_capita_per_day) +
  geom_histogram(binwidth = 0.5) + #Change the width to 0.5 due to logarithmic scale
  scale_x_continuous(trans = "log2")

```

<img src="Data-Science-with-R_files/figure-html/unnamed-chunk-307-1.png" alt="" width="80%" style="display: block; margin: auto;" />

Let's be careful interpreting this data. We cannot say that it is a symmetric distribution, even when with this scale we are tempted to do so. Remember the scale and use it appropriately.

> **Tip:** For smooth distribution curves, you can also use `geom_density()` instead of `geom_histogram()`. Density plots are particularly useful when comparing multiple groups on the same plot.

## Box plots with ggplot
In the same way, box plots are one more `geom` within the available ones, for this we will use the `geom_boxplot()` layer.

For example, let's create a box plot to analyze GDP per capita per day by continent:


``` r
gapminder |> 
  mutate(gdp_per_capita_per_day = gdp/population/365) |> 
  filter(year == 2010 & !is.na(gdp_per_capita_per_day)) |> 
  ggplot() +
  aes(continent, gdp_per_capita_per_day) +
  geom_boxplot()
```

<img src="Data-Science-with-R_files/figure-html/unnamed-chunk-308-1.png" alt="" width="80%" style="display: block; margin: auto;" />

Now let's zoom in. Within each continent we have regions, for example in the Americas we have South America, Central America, North America, and so on with each continent. Let's change the `continent` variable to `region`.


``` r
gapminder |> 
  mutate(gdp_per_capita_per_day = gdp/population/365) |> 
  filter(year == 2010 & !is.na(gdp_per_capita_per_day)) |> 
  ggplot() +
  aes(region, gdp_per_capita_per_day) +
  geom_boxplot()
```

<img src="Data-Science-with-R_files/figure-html/unnamed-chunk-309-1.png" alt="" width="80%" style="display: block; margin: auto;" />

As we can verify: this visualization allows us to infer very little. Before discarding a graph let's think if we can change the configuration to improve the visualization.

The first thing we can improve is the names of the regions. They are in horizontal form, but we could rotate it 45 degrees using the `theme()` layer.


``` r
gapminder |> 
  mutate(gdp_per_capita_per_day = gdp/population/365) |> 
  filter(year == 2010 & !is.na(gdp_per_capita_per_day)) |> 
  ggplot() +
  aes(region, gdp_per_capita_per_day) +
  geom_boxplot() +
  theme(axis.text.x = element_text(angle = 45, hjust = 1) )
```

<img src="Data-Science-with-R_files/figure-html/unnamed-chunk-310-1.png" alt="" width="80%" style="display: block; margin: auto;" />

The names are understood, but if we want to find the top 3 (either by median or average) we would have to look for them one by one. Let's reorder it, but first let's be aware of some previous considerations:

The `region` column is a `Factor` type variable, it is not a character string. Even when visually we did not find a difference, factors are used to categorize data. For example, bronze, silver, platinum customers, etc.

Factors are useful because internally they are replaced by numbers and numbers, at a computational level, are faster to sort. The default sorting is alphabetical, as we can appreciate if we use the `levels` function.


``` r
levels(gapminder$region)
#>  [1] "Australia and New Zealand" "Caribbean"                
#>  [3] "Central America"           "Central Asia"             
#>  [5] "Eastern Africa"            "Eastern Asia"             
#>  [7] "Eastern Europe"            "Melanesia"                
#>  [9] "Micronesia"                "Middle Africa"            
#> [11] "Northern Africa"           "Northern America"         
#> [13] "Northern Europe"           "Polynesia"                
#> [15] "South America"             "South-Eastern Asia"       
#> [17] "Southern Africa"           "Southern Asia"            
#> [19] "Southern Europe"           "Western Africa"           
#> [21] "Western Asia"              "Western Europe"
```

We will use the `reorder()` function to change the order of the factors and since we are altering the dataframe we would have to use it inside the `mutate()` function. The `reorder()` function asks us as the first attribute the factor to reorder, then the vector that we will take into account and finally a grouping function. For example, order based on the median of each region (visually remember that it is the thick line inside each box):


``` r
gapminder |> 
  mutate(gdp_per_capita_per_day = gdp/population/365) |> 
  filter(year == 2010 & !is.na(gdp_per_capita_per_day)) |> 
  mutate(region = reorder(region, gdp_per_capita_per_day, FUN = median)) |> 
  ggplot() +
  aes(region, gdp_per_capita_per_day) +
  geom_boxplot() +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))
```

<img src="Data-Science-with-R_files/figure-html/unnamed-chunk-312-1.png" alt="" width="80%" style="display: block; margin: auto;" />

Note that a `mutate` has been placed after filtering the data. This is to guarantee that we are removing the **NA**. Otherwise, we risk that all values are **NA** and the reordering is not performed and remains default.

We see at the far left some regions in Africa, and at the far right Europe and USA. Remember that we can add color according to some variable. In this case let's add color based on the continent:


``` r
gapminder |> 
  mutate(gdp_per_capita_per_day = gdp/population/365) |> 
  filter(year == 2010 & !is.na(gdp_per_capita_per_day)) |> 
  mutate(region = reorder(region, gdp_per_capita_per_day, FUN = median)) |> 
  ggplot() +
  aes(region, gdp_per_capita_per_day, color = continent) +
  geom_boxplot() +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))
```

<img src="Data-Science-with-R_files/figure-html/unnamed-chunk-313-1.png" alt="" width="80%" style="display: block; margin: auto;" />

Although we can already differentiate it, in a box plot it is usually the fill (`fill` in English) of the box that is painted. So, let's change the `color` attribute to the `fill` attribute. And let's remove the legend on the _x-axis_. It is not necessary in this case where the regions are self-explanatory.


``` r
gapminder |> 
  mutate(gdp_per_capita_per_day = gdp/population/365) |> 
  filter(year == 2010 & !is.na(gdp_per_capita_per_day)) |> 
  mutate(region = reorder(region, gdp_per_capita_per_day, FUN = median)) |> 
  ggplot() +
  aes(region, gdp_per_capita_per_day, fill = continent) +
  geom_boxplot() +
  theme(axis.text.x = element_text(angle = 45, hjust = 1)) +
  xlab("")
```

<img src="Data-Science-with-R_files/figure-html/unnamed-chunk-314-1.png" alt="" width="80%" style="display: block; margin: auto;" />

This graph helps us see the top 5, but since there are several regions concentrated in small values of GDP per capita we visually lose those regions. We need a scale transformation.

If you are thinking of adding a logarithmic scale layer for the _y-axis_ you are on the right track. Let's try:


``` r
gapminder |> 
  mutate(gdp_per_capita_per_day = gdp/population/365) |> 
  filter(year == 2010 & !is.na(gdp_per_capita_per_day)) |> 
  mutate(region = reorder(region, gdp_per_capita_per_day, FUN = median)) |> 
  ggplot() +
  aes(region, gdp_per_capita_per_day, fill = continent) +
  geom_boxplot() +
  theme(axis.text.x = element_text(angle = 45, hjust = 1)) +
  xlab("") +
  scale_y_continuous(trans = "log2")
```

<img src="Data-Science-with-R_files/figure-html/unnamed-chunk-315-1.png" alt="" width="80%" style="display: block; margin: auto;" />

Sometimes it is necessary not only to show the boxes, but also where each of the data points is located. For this we can add the `geom_point()` layer that we had previously used to show the points of each data.


``` r
gapminder |> 
  mutate(gdp_per_capita_per_day = gdp/population/365) |> 
  filter(year == 2010 & !is.na(gdp_per_capita_per_day)) |> 
  mutate(region = reorder(region, gdp_per_capita_per_day, FUN = median)) |> 
  ggplot() +
  aes(region, gdp_per_capita_per_day, fill = continent) +
  geom_boxplot() +
  theme(axis.text.x = element_text(angle = 45, hjust = 1)) +
  xlab("") +
  scale_y_continuous(trans = "log2") +
  geom_point(size = 0.5)
```

<img src="Data-Science-with-R_files/figure-html/unnamed-chunk-316-1.png" alt="" width="80%" style="display: block; margin: auto;" />

## Comparison of distributions
To be able to solve the first question of the case we would have to compare the distributions of the "Western" countries versus the developing countries.

For this, since we do not have a column that indicates which are from the West, we are going to create a `western_countries` with the list of regions that fall into this category:


``` r
western_countries <- c("Western Europe", "Northern Europe", "Southern Europe", "Northern America", "Australia and New Zealand")
```

> We will also use the `ifelse(test, yes, no)` function to create a new column such that if the region is in the West it stores a value, and if it is not in the West it stores another value. It is recommended to read the documentation in `?ifelse`.

Let's add the column for the group each country belongs to:


``` r
western_countries <- c("Western Europe", "Northern Europe", "Southern Europe", "Northern America", "Australia and New Zealand")

gapminder |> 
  mutate(gdp_per_capita_per_day = gdp/population/365) |> 
  filter(year == 2010 & !is.na(gdp_per_capita_per_day)) |> 
  mutate(group = ifelse(region %in% western_countries, "Western", "Developing")) |> 
  head()
#>               country year infant_mortality life_expectancy fertility
#> 1             Albania 2010             14.8            77.2      1.74
#> 2             Algeria 2010             23.5            76.0      2.82
#> 3              Angola 2010            109.6            57.6      6.22
#> 4 Antigua and Barbuda 2010              7.7            75.8      2.13
#> 5           Argentina 2010             13.0            75.8      2.22
#> 6             Armenia 2010             16.1            73.0      1.55
#>   population          gdp continent          region gdp_per_capita_per_day
#> 1    2901883   6137563946    Europe Southern Europe               5.794597
#> 2   36036159  79164339611    Africa Northern Africa               6.018638
#> 3   21219954  26125663270    Africa   Middle Africa               3.373106
#> 4      87233    836686777  Americas       Caribbean              26.277814
#> 5   41222875 434405530244  Americas   South America              28.871158
#> 6    2963496   4102285513      Asia    Western Asia               3.792527
#>        group
#> 1    Western
#> 2 Developing
#> 3 Developing
#> 4 Developing
#> 5 Developing
#> 6 Developing
```

Now that we have how to differentiate the countries we can see their distribution until we find how to answer our question. We start by creating a histogram with logarithmic scale in the _x-axis_ and separate it using `facet_grid` based on the group it belongs to:


``` r
western_countries <- c("Western Europe", "Northern Europe", "Southern Europe", "Northern America", "Australia and New Zealand")

gapminder |> 
  mutate(gdp_per_capita_per_day = gdp/population/365) |> 
  filter(year == 2010 & !is.na(gdp_per_capita_per_day)) |> 
  mutate(group = ifelse(region %in% western_countries, "Western", "Developing")) |> 
  ggplot() +
  aes(gdp_per_capita_per_day) +
  geom_histogram(binwidth = 1) +
  scale_x_continuous(trans = "log2") +
  facet_grid(. ~ group)
```

<img src="Data-Science-with-R_files/figure-html/unnamed-chunk-319-1.png" alt="" width="80%" style="display: block; margin: auto;" />

We see that the daily GDP per capita has a distribution with higher values compared to developing countries. However, the picture in one year is not everything. We are ready to see if the separation was the same 40 years back from the date in the example (2010). We are also going to add the `geom_histogram()` layer the color attribute to see the border of the bars which by default are grey.


``` r
western_countries <- c("Western Europe", "Northern Europe", "Southern Europe", "Northern America", "Australia and New Zealand")

gapminder |> 
  mutate(gdp_per_capita_per_day = gdp/population/365) |> 
  filter(year %in% c(1970, 2010) & !is.na(gdp_per_capita_per_day)) |> 
  mutate(group = ifelse(region %in% western_countries, "Western", "Developing")) |> 
  ggplot() +
  aes(gdp_per_capita_per_day) +
  geom_histogram(binwidth = 1, color = "black") +
  scale_x_continuous(trans = "log2") +
  facet_grid(year ~ group)
```

<img src="Data-Science-with-R_files/figure-html/unnamed-chunk-320-1.png" alt="" width="80%" style="display: block; margin: auto;" />

Both groups, both "Western" and "Developing" have improved in that 40-year span, but developing countries have advanced more than Western countries.

So far we have assumed something: that all countries that reported in 2010 also reported data in 1970. To make the comparison finer we have to look for the distribution of countries that have data reported both in 1970 and in 2010.

To do this, we are going to create a vector that lists the countries with data in 1970 and another of those that have data in 2010 and then look for the intersection. Remember that to extract a column we use the `pull()` function.


``` r
western_countries <- c("Western Europe", "Northern Europe", "Southern Europe", "Northern America", "Australia and New Zealand")

list_1 <- gapminder |> 
  mutate(gdp_per_capita_per_day = gdp/population/365) |> 
  filter(year %in% c(1970) & !is.na(gdp_per_capita_per_day)) |> 
  pull(country)

list_2 <- gapminder |> 
  mutate(gdp_per_capita_per_day = gdp/population/365) |> 
  filter(year %in% c(2010) & !is.na(gdp_per_capita_per_day)) |> 
  pull(country)

```

To find the intersection of these two vectors we will use the function `intersect(vector_1, vector_2)`, which will give us the vector we are looking for.


``` r
intersection_vector <- intersect(list_1, list_2)
```

So, we recreate our histogram including only the countries on this list.


``` r
gapminder |> 
  mutate(gdp_per_capita_per_day = gdp/population/365) |> 
  filter(year %in% c(1970, 2010) & !is.na(gdp_per_capita_per_day)) |> 
  filter(country %in% intersection_vector) |> 
  mutate(group = ifelse(region %in% western_countries, "Western", "Developing")) |> 
  ggplot() +
  aes(gdp_per_capita_per_day) +
  geom_histogram(binwidth = 1, color = "black") +
  scale_x_continuous(trans = "log2") +
  facet_grid(year ~ group)
```

<img src="Data-Science-with-R_files/figure-html/unnamed-chunk-323-1.png" alt="" width="80%" style="display: block; margin: auto;" />

We see now more clearly with comparable data how there are more countries within the developing region that increased per capita GDP, and by a larger margin than Western countries. But this first inference is still visual, we need to compare how the median, range, etc. changed. For this we will use a box plot very similar to the previous one, but this time we will edit `geom_boxplot()` so that it shows us in a single graph how each region has changed from 1970 to 2010.


``` r
gapminder |> 
  mutate(gdp_per_capita_per_day = gdp/population/365) |> 
  filter(year %in% c(1970, 2010) & !is.na(gdp_per_capita_per_day)) |> 
  filter(country %in% intersection_vector) |> 
  mutate(region = reorder(region, gdp_per_capita_per_day, FUN = median)) |> 
  ggplot() +
  aes(region, gdp_per_capita_per_day) +
  geom_boxplot(aes(region, gdp_per_capita_per_day, fill=factor(year))) +
  theme(axis.text.x = element_text(angle = 45, hjust = 1)) +
  xlab("") +
  scale_y_continuous(trans = "log2")

```

<img src="Data-Science-with-R_files/figure-html/unnamed-chunk-324-1.png" alt="" width="80%" style="display: block; margin: auto;" />

We see how there are regions within Asia that have grown substantially. As we know from general culture, some countries in Asia are already powers, but today with these graphs we can understand well how much each region has changed until becoming a power.

Therefore, we can now answer both questions of the case:

1. It is not reasonable to continue using the categorization of "Western" and "developing" since there are more and more regions that are poorly represented by those categories, such as East Asia.
2. It is not true that rich countries get richer while poor countries get poorer. We have seen that developing countries have even higher growth than the growth that Western countries have.



## Exercises

For this series of exercises we will use the `stars` data frame from the `dslabs` library. This dataset contains attributes of stars including their temperature, spectral type, and magnitude. The `magnitude` column represents absolute magnitude—a measure of intrinsic brightness where more negative values indicate greater luminosity.


``` r
library(dslabs)
data(stars)
head(stars)
```

59. The temperature data is currently in Kelvin. Create a new column `temp_celsius` using the formula $C = K - 273.15$, then visualize the relationship between temperature and magnitude. Color the points by star type and use a base-10 logarithmic scale for the x-axis to better display the wide range of temperatures.



<details>
  <summary type="button">Solution</summary>

``` r
stars |> 
  mutate(temp_celsius = temp - 273.15) |> 
  ggplot() +
  aes(temp_celsius, magnitude, color = type) +
  scale_x_log10() +
  geom_point()
```
</details>

60. Since lower magnitude values correspond to higher brightness, reverse the y-axis scale using `scale_y_reverse()` to make the plot more intuitive (brighter stars at the top).



<details>
  <summary type="button">Solution</summary>

``` r
stars |> 
  mutate(temp_celsius = temp - 273.15) |> 
  ggplot() +
  aes(temp_celsius, magnitude, color = type) +
  scale_x_log10() +
  geom_point() +
  scale_y_reverse()
```
</details>
61. The Sun is a G-type star. To determine if these are the most luminous, create a box plot comparing the magnitude distributions across different star types.



No, G-type stars are not the most luminous. For this we can elaborate this graph:

<details>
  <summary type="button">Solution</summary>

``` r
stars |> 
  ggplot() +
  aes(type, magnitude) +
  geom_boxplot() +
  scale_y_reverse()
```
</details>



---

## Key Takeaways

In this chapter, we followed a complete **data exploration process**, starting with understanding the data structure before diving into visualization. We utilized **faceting** to reveal trends across categories and time, and used **time series** plots to track specific country trajectories. We also explored distributions using **histograms** and **box plots**, applying **scale transformations** to handle skewed economic data. Finally, we practiced **iterative refinement**, adjusting our plots step-by-step to tell a clearer story.


<!--chapter:end:03-visualization/gapminder.Rmd-->


# (PART) Statistics {-}

# Introduction to Probabilities {-}
Understanding probability theory is indispensable for every Data Scientist.

In the following chapters we are going to learn how to apply probability theory in R. It is expected that the reader has basic knowledge in statistics given that we will not go into depth in each of the statistical concepts.

For example, we are not going to explain formulas for calculating probabilities of independent or dependent events. Instead, we are going to apply directly probabilities of independent or dependent events in R.

# Discrete Probabilities
We will start with some basic principles of categorical data. Probabilities of this type are called discrete probabilities. Understanding the basic principles of discrete probabilities will help us understand continuous probabilities which are the most common in data science applications.

In this chapter, we will master the foundations of discrete probability. We will start by calculating probabilities using mathematical definitions and then learn to estimate them using Monte Carlo simulations. We will leverage R functions like `sample()`, `replicate()`, and `mean()` to model random events, and use the `gtools` package to solve problems involving permutations and combinations. Finally, we will determine how to choose an adequate sample size to ensure our simulations yield reliable results.

Recall that a discrete variable is a variable that cannot take some values within a minimum countable set, that is, it does not accept any value, only those that belong to the set.

For example, if we have 4 women and 6 men seated in a room and we were to raffle 1 prize, intuitively we would know that the probability that the winner is a man is 60%.

## Calculation using the mathematical definition
The probability we obtained by intuition in the previous example can be expressed as follows:

$P(A) = probability\ of\ event\ A = \frac{Times\ event\ A\ can\ occur}{Total\ possible\ outcomes}$

$P(Winner\ is\ man) = \frac{6}{10} = 60\%$

## Monte Carlo Simulation for Discrete Variables
Monte Carlo simulation or method is a statistical method used to solve complex mathematical problems through the generation of random variables. In this case the problem is not complex, but Monte Carlo can be used to familiarize ourselves with a method that we will use constantly.

We will use Monte Carlo simulation to estimate the proportion we would obtain if we repeated this experiment randomly a determined number of times. That is, the probability of the event using this estimation would be the proportion of times that event occurred in our simulation.

In R we can easily create random samples using the `sample()` function. For example, let's create a vector of students and then use the `sample()` function to choose one at random.


``` r
students <- c("woman", "woman", "woman", "woman", "man", 
                 "man", "man", "man", "man", "man")

sample(students, 1)
```

We could also use the `rep()` function to create the `students` vector faster. To do this we would enter as the first argument a vector and as the second another vector indicating how many times we want them to be created. Thus, we would create the students vector faster.


``` r
students <- rep(c("woman", "man"), times = c(4, 6))

students
#>  [1] "woman" "woman" "woman" "woman" "man"   "man"   "man"   "man"   "man"  
#> [10] "man"
```

Now we have to simulate a determined number of times the experiment of picking a random element. For this we will use the `replicate()` function. Let's replicate this experiment 100 times:


``` r
students <- rep(c("woman", "man"), times = c(4, 6))

n_times <- 100

results <- replicate(n_times, {
  sample(students, 1)
  })

results
#>   [1] "man"   "man"   "woman" "man"   "man"   "woman" "man"   "man"   "man"  
#>  [10] "man"   "woman" "man"   "man"   "woman" "woman" "man"   "man"   "man"  
#>  [19] "woman" "man"   "man"   "woman" "woman" "man"   "man"   "man"   "woman"
#>  [28] "man"   "man"   "man"   "woman" "man"   "woman" "man"   "man"   "woman"
#>  [37] "man"   "man"   "man"   "man"   "woman" "man"   "man"   "man"   "man"  
#>  [46] "woman" "man"   "woman" "man"   "man"   "man"   "woman" "man"   "man"  
#>  [55] "man"   "man"   "woman" "man"   "man"   "man"   "woman" "woman" "man"  
#>  [64] "man"   "woman" "man"   "woman" "man"   "man"   "man"   "woman" "man"  
#>  [73] "woman" "man"   "woman" "woman" "woman" "man"   "man"   "woman" "woman"
#>  [82] "man"   "man"   "man"   "woman" "woman" "man"   "woman" "man"   "woman"
#>  [91] "man"   "man"   "man"   "man"   "woman" "man"   "man"   "man"   "woman"
#> [100] "woman"
```

We can see what the result was for each of the 100 draws we simulated.

Now we will use the `table()` function to transform our `results` vector into a summary table that shows us how many times each value appeared.


``` r
table(results)
#> results
#>   man woman 
#>    65    35
```

If we store this result in a vector `results_table`, we can then use the `prop.table()` function to know the proportion of each value:


``` r
results_table <- table(results)

prop.table(results_table)
#> results
#>   man woman 
#>  0.65  0.35
```

We should not worry if the probability that it is a man has not come out exactly 60%. Recall that we are estimating the probability using a method that depends on the number of times we simulate the experiment. The more times we repeat the experiment the closer we will be to the value. For example, let's replicate this experiment now 10,000 times.


``` r
students <- rep(c("woman", "man"), times = c(4, 6))

n_times <- 10000

results <- replicate(n_times, {
  
  sample(students, 1)

  })

results_table <- table(results)

prop.table(results_table)
#> results
#>   man woman 
#> 0.595 0.405
```

We see how the value converges to 60%. We should not worry if the value varies by a few digits from the one presented in this book given that we are simulating a random event.

Finally, for this simple example we could also have used the `mean()` function. Although this calculates the average of a set of numbers, we could convert our `students` vector to numerical values, where each value is converted to 1 or 0 depending on some condition.

To do this, R makes the conversion of vectors to 1 and 0 very simple using the comparator operator `==`:


``` r
students == "man"
#>  [1] FALSE FALSE FALSE FALSE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE
```

When we apply the `mean()` function to this result, it coerces `TRUE` values to `1` and `FALSE` values to `0`. Thus, if we apply the average of this list, we would have the percentage of men and with it the probability that when choosing a person it is a man:


``` r
mean(students == "man")
#> [1] 0.6
```

### Other functions to create vectors 
We have already learned the `rep()` function to create vectors faster. Another function we find in R is the `expand.grid(x, y)` function which creates a data frame of all combinations between vectors `x` and `y`.


``` r
greetings <- c("Hello", "Goodbye")
names_list <- c("Andrew", "Joseph", "John", "Emily", "Cesar", "Jeremy")

result <- expand.grid(greeting = greetings, name = names_list)
result
#>    greeting   name
#> 1     Hello Andrew
#> 2   Goodbye Andrew
#> 3     Hello Joseph
#> 4   Goodbye Joseph
#> 5     Hello   John
#> 6   Goodbye   John
#> 7     Hello  Emily
#> 8   Goodbye  Emily
#> 9     Hello  Cesar
#> 10  Goodbye  Cesar
#> 11    Hello Jeremy
#> 12  Goodbye Jeremy
```

Finally, we have the `paste(x,y)` function, which concatenates two strings or vectors of strings adding a space in the middle.

``` r
paste(result$greeting, result$name)
#>  [1] "Hello Andrew"   "Goodbye Andrew" "Hello Joseph"   "Goodbye Joseph"
#>  [5] "Hello John"     "Goodbye John"   "Hello Emily"    "Goodbye Emily" 
#>  [9] "Hello Cesar"    "Goodbye Cesar"  "Hello Jeremy"   "Goodbye Jeremy"
```

Thus, we can easily generate, for example, a deck of cards distributed in 4 suits: hearts, diamonds, spades, and clubs. The cards of each suit are numbered from 1 to 10, where 1 is the Ace, and followed by Jack, Queen, and King.

To do this, we would have to create a vector of suits and a vector of numbers to then create the combinationl and have the complete deck.


``` r
numbers <- c("Ace", "Two", "Three", "Four", "Five", "Six", "Seven", 
             "Eight", "Nine", "Ten", "Jack", "Queen", "King")
suits <- c("of Hearts", "of Diamonds", "of Spades", "of Clubs")

# Create card combinations
combination <- expand.grid(number = numbers, suit = suits)

# Concatenate vectors to have our final combination
paste(combination$number, combination$suit)
#>  [1] "Ace of Hearts"     "Two of Hearts"     "Three of Hearts"  
#>  [4] "Four of Hearts"    "Five of Hearts"    "Six of Hearts"    
#>  [7] "Seven of Hearts"   "Eight of Hearts"   "Nine of Hearts"   
#> [10] "Ten of Hearts"     "Jack of Hearts"    "Queen of Hearts"  
#> [13] "King of Hearts"    "Ace of Diamonds"   "Two of Diamonds"  
#> [16] "Three of Diamonds" "Four of Diamonds"  "Five of Diamonds" 
#> [19] "Six of Diamonds"   "Seven of Diamonds" "Eight of Diamonds"
#> [22] "Nine of Diamonds"  "Ten of Diamonds"   "Jack of Diamonds" 
#> [25] "Queen of Diamonds" "King of Diamonds"  "Ace of Spades"    
#> [28] "Two of Spades"     "Three of Spades"   "Four of Spades"   
#> [31] "Five of Spades"    "Six of Spades"     "Seven of Spades"  
#> [34] "Eight of Spades"   "Nine of Spades"    "Ten of Spades"    
#> [37] "Jack of Spades"    "Queen of Spades"   "King of Spades"   
#> [40] "Ace of Clubs"      "Two of Clubs"      "Three of Clubs"   
#> [43] "Four of Clubs"     "Five of Clubs"     "Six of Clubs"     
#> [46] "Seven of Clubs"    "Eight of Clubs"    "Nine of Clubs"    
#> [49] "Ten of Clubs"      "Jack of Clubs"     "Queen of Clubs"   
#> [52] "King of Clubs"
```

Once our deck is created we can inquire some probabilities easily with the created vector.

Let's calculate the probability that when choosing a card it is "King of Diamonds":

``` r
# Store the combinationl in the variable deck
deck <- paste(combination$number, combination$suit)

mean(deck == "King of Diamonds")
#> [1] 0.01923077
```

Or we can also calculate the probability that when choosing a card it is some Queen:

``` r
# First create the vector of "Queen of..."
queens <- paste("Queen", suits)

# Probability calculation
mean(deck %in% queens)
#> [1] 0.07692308
```

This chapter highlighted two complementary approaches to probability. The **mathematical definition** ($P(A) = \frac{\text{favorable outcomes}}{\text{total outcomes}}$) gives us exact answers for simple problems. However, for more complex scenarios, **Monte Carlo simulation** allows us to estimate probabilities by replicating experiments thousands of times using `sample()` and `replicate()`. We learned that `mean(condition)` is an efficient way to calculate proportions in R, and that increasing the number of repetitions brings our simulation estimates closer to the true theoretical probability.


## Exercises
62. Calculate the probability of **not** rolling a 1 on a single die roll and store it in a variable named `prob`. Then, use this variable to determine the probability that the number 1 does not appear in three consecutive rolls.



<details>
  <summary type="button">Solution</summary>

``` r
prob <- 5 / 6

prob * prob * prob
```
</details>

63. Imagine a container holding 5 blue, 3 yellow, and 4 gray marbles. Determine the probability that a marble chosen at random is blue.

<div align="center">
<img src="_assets/images/04-statistics/probabilities-marbles.png" alt="Container with colored marbles: 5 blue, 3 yellow, and 4 gray" width="200pt" style="display: block; margin: auto;" />
</div>



<details>
  <summary type="button">Solution</summary>

``` r
marbles <- rep(c("blue", "yellow", "gray"), times = c(5, 3, 4))

# Solution using monte carlo simulation, repeating the event 10,000 times:
results <- replicate(10000, {
  
  sample(marbles, 1)
  
  })

prop.table(table(results))

# Solution using the `mean()` function:
mean(marbles == "blue")
```

Mathematically it would be:

Given the event: $X = chosen\ marble\ is\ blue$:

$P(X)=\frac{5}{5+3+4}=\frac{5}{12}=41.67\%$

The probability that the marble is blue is 41.67%.

</details>

64. Using the same container of marbles, calculate the probability that a randomly chosen marble is **not** blue.



<details>
  <summary type="button">Solution</summary>

``` r
marbles <- rep(c("blue", "yellow", "gray"), times = c(5, 3, 4))

mean(marbles != "blue")
```

The probability is 58.33%.

Mathematically it would be:

Given the event $X = chosen\ marble\ is\ blue$:

$P(\sim~X)=1-P(X)=1-\frac{5}{12}=1-41.67\%=58.33\%$

</details>

65. Consider drawing two marbles from the container in sequence without replacing the first one. Calculate the probability that the first marble is blue and the second is **not** blue. Create numeric variables for each color count to perform this calculation.



<details>
  <summary type="button">Solution</summary>

``` r
# Create variables
blue <- 5
yellow <- 3
gray <- 4

# Calculate probability that the first marble is blue:
p_1 <- blue / (blue + yellow + gray)

# First calculate the probability that the second is blue:
p_aux <- (blue - 1) / (blue - 1 + yellow + gray)

# Calculate the complement because they ask that the second is NOT blue:
p_2 <- 1 - p_aux

# Calculate what is asked:
p_1 * p_2
```

This is called **sampling without replacement**. We have two events, we are taking out two marbles. The second event depends on the first. These two events are not independent of each other.

</details>

66. Repeat the previous experiment, but this time **replace** the first marble before drawing the second one. Update your R code to calculate the probability that the first marble is blue and the second is **not** blue under these conditions.



<details>
  <summary type="button">Solution</summary>

``` r
# Create variables
blue <- 5
yellow <- 3
gray <- 4

# Calculate probability that the first marble is blue:
p_1 <- blue / (blue + yellow + gray)

# First calculate the probability that the second is blue:
p_aux <- blue / (blue + yellow + gray)

# Calculate the complement because they ask that the second is NOT blue:
p_2 <- 1 - p_aux

# Calculate what is asked:
p_1 * p_2
```

This is called **sampling with replacement**. We have two events, we are taking out two marbles again. The second event does **not** depend on the first. These two events are independent.

</details>



## Combinations and Permutations
Some probability situations involve multiple events. When one of the events affects others, they are called dependent events. For example, when objects are chosen from a list or group and are not returned, the first choice reduces the options for future choices.

There are two ways to order or combine results of dependent events. **Permutations** are groupings in which the order of objects matters. **Combinations** are groupings in which the content matters but the order does not.

For this we will use the `gtools` package, which includes libraries like `gtools` that provide us with intuitive functionalities to work with permutations and combinations.


``` r
# First install the gtools package
install.packages("gtools")

# To start using it, load the gtools library
library(gtools)

```

### Permutations
The order matters when we calculate, for example, the winners of a competition. Suppose we have 10 students who are competing on equal terms for who builds the most accurate machine learning model.


``` r
data_scientists <- c("Jenny", "Freddy", "Yasan", "Iver", "Pamela", "Alexandra", 
                     "Bladimir", "Enrique", "Karen", "Christiam")
```

Only the top 3 will receive the prize. In this case the order matters, so we will use the function `permutations(total, selection, data)` where `total` indicates the size of the vector, `selection` indicates the size of the result I want, and finally `data` is my source vector.


``` r
permutations(10, 3, v = data_scientists)

```

We have already calculated all possible results. We can calculate on this result the probability that Freddy wins the competition and that Pamela is in second place.


``` r
results <- permutations(10, 3, v = data_scientists)

# Total results: nrow(results)
total <- nrow(results)

# Probability that Freddy wins:
mean(results[, 1] == "Freddy" & results[, 2] == "Pamela")
#> [1] 0.01111111
```

### Combinations
The order does not matter when, for example, we form groups of 2 to participate in the competition.


``` r
combinations(10, 2, v = data_scientists)
```

If now only one team is going to win the prize, we could calculate the probability that the team made up of Pamela and Enrique are the ones who win.


``` r
results <- combinations(10, 2, v = data_scientists)

# Total results:
nrow(results)
#> [1] 45

# Probability:
mean((results[, 1] == "Pamela" & results[, 2] == "Enrique") | 
     (results[, 1] == "Enrique" & results[, 2] == "Pamela"))
#> [1] 0.02222222
```

Although we can obtain the probability by calculating all combinations, in R it will be very frequent to use Monte Carlo to estimate the probability by simulation. For the previous case we would not have to generate all combinations, but simply take a sample of two people who would be the members of the winning team. Recall that we have assumed that everyone has equal chances of winning.


``` r
sample(data_scientists, 2)
```

Then, we would have to replicate this experiment over and over again, store the sampling results and calculate the proportion of how many times the winning team was composed of Pamela and Enrique.


``` r
n <- 10000

result <- replicate(n, {
      team <- sample(data_scientists, 2)
      
      meets_condition <- (team[1] == "Pamela" & team[2] == "Enrique") | 
                          (team[2] == "Pamela" & team[1] == "Enrique")
      
      meets_condition
})

mean(result)
#> [1] 0.0232
```

Note that, as we saw previously, the value converges as we increase the number of times we repeat the experiment `n`. We have simulated repeating the experiment 10 thousand times. However, how many times would it be necessary to replicate the experiment to trust the results of the simulation?

## Sufficient Experiments with Monte Carlo Simulation
Intuitively we can indicate that the greater the number of experiments the more precise the estimated probability. We can, thus, do several simulations with different number of experiments for each simulation. In this way we could find a reasonable number of experiments for our simulation. To do this, first we create a numerical vector where the number of times we are going to simulate the experiment is indicated. Our vector will contain the following values: 10, 20, 40, 80, 160,..., etc. This means that the first time we will simulate the experiment 10 times, the second 20 times and so on.


``` r
n_times <- 10*2^(1:17)
n_times
#>  [1]      20      40      80     160     320     640    1280    2560    5120
#> [10]   10240   20480   40960   81920  163840  327680  655360 1310720
```

Then, we use the code we created to replicate the experiment to create a function called `probability_by_sample`:


``` r
probability_by_sample <- function(n) {
  result <- replicate(n, {
    team <- sample(data_scientists, 2)
    
    meets_condition <- (team[1] == "Pamela" & team[2] == "Enrique") | 
                        (team[2] == "Pamela" & team[1] == "Enrique")
    
    meets_condition
  })
  
  mean(result)
}
```

We already have a function that allows us to replicate the experiment as many times as we want. For example, in the previous section we simulated 10 thousand experiments. Now that we have created the function we would do:


``` r
# Probability using functions:
probability_by_sample(10000)
#> [1] 0.0245
```

Again, this is a simulation. So every time we execute that function the probability will vary as it is a random sample.

To apply a function on each of the values of a vector we use the function `sapply(vector, function)` where `vector` is the vector where the data on which I want to apply the function is and `function` is the function I want to apply.


``` r
prob <- sapply(n_times, probability_by_sample)

prob
#>  [1] 0.10000000 0.00000000 0.02500000 0.01250000 0.02812500 0.02968750
#>  [7] 0.02031250 0.02265625 0.02089844 0.02119141 0.02397461 0.02197266
#> [13] 0.02225342 0.02208862 0.02212219 0.02229462 0.02235031
```

This gives us the probabilities depending on the number of times we repeat the experiment. Now let's place these results in a scatter plot to see how it converges


``` r
probabilities <- data.frame(
  n = n_times,
  probability = prob
)

probabilities |> 
  ggplot() +
  aes(n, probability) +
  geom_line() +
  geom_point() +
  xlab("# of times of the experiment")
```

<img src="Data-Science-with-R_files/figure-html/unnamed-chunk-369-1.png" alt="" width="80%" style="display: block; margin: auto;" />

We can also change the scale to zoom in on the probabilities for smaller experiment number values and add a reference line with the theoretical probability value calculated previously:


``` r
probabilities |> 
  ggplot() +
  aes(n, probability) +
  geom_line() +
  geom_point() +
  xlab("# of times of the experiment") +
  scale_x_continuous(trans = "log2") +
  geom_hline(yintercept = 0.022222, color = "blue", lty = 2)

```

<img src="Data-Science-with-R_files/figure-html/unnamed-chunk-370-1.png" alt="" width="80%" style="display: block; margin: auto;" />

We observe that, for this experiment, repeating the experiment 10 thousand times (x-axis = 3 because it is $10^3$) already gives us a good approximation to the real value.

## Case: Birthdays in Classrooms
Let's review the concepts learned with another example. In a _Data Science for Managers_ class there are 50 students. Using Monte Carlo simulation, let's estimate what is the probability that there are at least two people who have birthdays on the same day. (Let's ignore those who have birthdays on February 29).

First let's list all the days of the year available for birthdays:


``` r
days <- 1:365
```

Let's generate a random sample of 50 numbers from the `days` vector, but this time with replacement because a person could have the same day, and store it in the `colleagues` variable.


``` r
colleagues <- sample(days, 50, replace = TRUE)
```

To validate if any of the values are repeated we will use the `duplicated()` function which validates if there are duplicate values within the vector:


``` r
duplicated(colleagues)
#>  [1] FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE
#> [13]  TRUE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE
#> [25]  TRUE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE  TRUE FALSE
#> [37] FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE  TRUE FALSE FALSE FALSE
#> [49] FALSE FALSE
```

Finally, to determine if there was any `TRUE` value we use the `any()` function:

``` r
any(duplicated(colleagues))
#> [1] TRUE
```

The result tells us whether it is true or not that there are at least two people who have birthdays on the same day. To estimate by Monte Carlo simulation what the probability is, we have to repeat the experiment many times and take the proportion of how many times we get `TRUE` as a result.


``` r
# Monte Carlo simulation with 10 thousand repetitions
n_times <- 10000

results <- replicate(n_times, {    
    
    colleagues <- sample(days, 50, replace = TRUE)
    
    # Returns a logical value of whether there are duplicates
    any(duplicated(colleagues))
})

# Probability:
mean(results) 
#> [1] 0.97
```

We see that the estimated probability is very high, above 95%. What would happen if I have a room of 25 people?

To do this, we modify the previous code and create the variable `classroom` which will indicate the number of students in that class:


``` r
# Monte Carlo simulation with 10 thousand repetitions
n_times <- 10000
classroom <- 25

results <- replicate(n_times, {    # Returns a logical vector
    colleagues <- sample(days, classroom, replace = TRUE)
    any(duplicated(colleagues))
})

# Probability:
mean(results) 
#> [1] 0.5618
```

Let's now create the function `estimate_probability` and estimate using this function the probability of finding at least two people with the same birthday in a room of 25 people. This time we have to specify that the sampling is with "replacement" because by default the `sample()` function is "without replacement".


``` r
# Create the function
estimate_probability <- function(classroom, n_times = 10000){
    results <- replicate(n_times, {    # Returns a logical vector
        colleagues <- sample(days, classroom, replace = TRUE)
        any(duplicated(colleagues))
    })

    # Probability:
    mean(results) 
}

estimate_probability(25)
#> [1] 0.5707
```

Finally, if we already have a function that calculates based on the number of people in a room we can create a numerical vector with the total number of people from different rooms and then apply the function we have created. The result can be stored in the variable `prob`.


``` r
# Create 80 different classrooms
# The first room with 1 person, the last room with 80 people
classrooms <- 1:80

# Estimate probability depending on the number of students per room
prob <- sapply(classrooms, estimate_probability)

prob
#>  [1] 0.0000 0.0028 0.0097 0.0174 0.0265 0.0395 0.0572 0.0723 0.0940 0.1219
#> [11] 0.1404 0.1639 0.2004 0.2340 0.2489 0.2879 0.3152 0.3423 0.3849 0.4074
#> [21] 0.4501 0.4776 0.5059 0.5451 0.5712 0.5969 0.6226 0.6469 0.6775 0.7033
#> [31] 0.7284 0.7519 0.7798 0.7958 0.8204 0.8349 0.8429 0.8672 0.8844 0.8942
#> [41] 0.9006 0.9191 0.9228 0.9313 0.9413 0.9469 0.9545 0.9629 0.9643 0.9706
#> [51] 0.9705 0.9763 0.9805 0.9846 0.9865 0.9908 0.9890 0.9918 0.9946 0.9947
#> [61] 0.9947 0.9961 0.9967 0.9981 0.9972 0.9977 0.9979 0.9985 0.9986 0.9989
#> [71] 0.9997 0.9996 0.9994 0.9998 0.9998 0.9999 0.9996 0.9996 1.0000 1.0000
```

Thus, if we place it in a scatter plot we can see how the probability increases as there are more students:


``` r
probabilities <- data.frame(
  n = classrooms,
  probability = prob
)

probabilities |> 
  ggplot() +
  aes(n, probability) +
  geom_point() +
  xlab("Number of students in each class")
```

<img src="Data-Science-with-R_files/figure-html/unnamed-chunk-379-1.png" alt="" width="80%" style="display: block; margin: auto;" />

We can now impress our friends from different groups by telling them that, if they are in a room of 60 people, "you can bet them" that there are two people in that room who have birthdays on the same day. It is not definitive, but the chances are very much in our favor.


## Exercises

67. Alonso and Georgina play chess, and Georgina has a 60% chance of winning any given game. **Without using a simulation**, calculate the probability that Alonso wins at least one game out of four played.



<details>
  <summary type="button">Solution</summary>
  
Calculating the probability that Alonso has won at least once is the complement of the probability that Georgina has won all 4 times. Thus, we will first calculate the probability that Georgina has always won and then calculate the complement.


``` r
# Probability that Georgina wins all 4 games
prob <- 0.6^4

# Probability that Alonso wins at least once
1 - prob

```
</details>

68. Now, estimate the probability of Alonso winning at least one of four games using a Monte Carlo simulation. Assume Alonso has a 40% chance of winning each individual match.


``` r
game_results <- sample(c("loses","wins"), 4, replace = TRUE, prob = c(0.6, 0.4))
```



<details>
  <summary type="button">Solution</summary>

``` r
# Times I run the simulation
n_times <- 10000

# Generate result of experiments that Alonso wins
alonso_wins <- replicate(n_times, {
    game_results <- sample(c("loses","wins"), 4, replace = TRUE, prob = c(0.6, 0.4))
    any(game_results == "wins")
})

# Estimate probability
mean(alonso_wins)

```
</details>

69. Generalize the previous simulation by creating a function `probability_of_winning` that accepts Alonso's win probability `p` as an argument. Use this function to simulate outcomes for a sequence of win probabilities from 0.4 to 0.95 (steps of 0.025) and visualize the results in a scatter plot.



<details>
  <summary type="button">Solution</summary>

``` r
# Create function
probability_of_winning <- function(p){
  n_times <- 10000
  
  alonso_wins <- replicate(n_times, {
      game_results <- sample(c("loses","wins"), 4, replace = TRUE, prob = c(1-p, p))
      any(game_results == "wins")
  })
  
  mean(alonso_wins)

}

# Create vector with different probabilities
p <- seq(0.4, 0.95, 0.025)

prob <- sapply(p, probability_of_winning)

plot(p, prob, xlab="p: probability that Alonso wins in each game", 
     ylab="prob: prob. that Alonso wins at least one game")
```
</details>



## Integrative Exercise
Let's solve together this exercise that integrates everything we have learned in this chapter, called the Monty Hall problem.

### Monty Hall Problem
Monty Hall was a TV presenter who made famous a contest in his show which we are going to replicate below. We have three doors in front of us:

<div align="center">
<img src="_assets/images/04-statistics/monty-hall-closed.png" alt="Three closed doors labeled 1, 2, and 3 in the Monty Hall problem" width="400pt" style="display: block; margin: auto;" />
</div>

Behind one of these doors is a zero-kilometer car, while in the other two there is a goat. We, as contest participants, have to choose together which door to open. Whatever is behind it will be ours.

Suppose we have chosen door number 2. Once you announce our choice, Monty Hall tells us that he is going to help us and opens a door for us right now. He opens one of the other doors and it turns out there is a goat in door 3 that he opened.

<div align="center">
<img src="_assets/images/04-statistics/monty-hall-open.png" alt="Monty Hall problem with door 3 open showing a goat, doors 1 and 2 remain closed" width="400pt" style="display: block; margin: auto;" />
</div>

Monty Hall asks us: 

>I am going to give you a chance to change doors and that will be your final choice, Would you change doors or stick with the door chosen at the beginning?

Intuitively we knew that, when all doors were closed, the car is in one of 3 doors. The probability of winning would be $\frac{1}{3} = 0.3333$ so it didn't matter which door to choose. But when he opens door number three he gives us information and the first thing we should ask ourselves is whether the probabilities have been affected or not. Although this is an advanced math exercise using change of variable, we can execute a Monte Carlo simulation to estimate the probabilities and solve it without using almost any mathematical formula.

Let's start by simulating the experiment. At the beginning we had three doors, door 1, 2 and 3. We will create the variable `doors`.


``` r
doors <- c("door 1", "door 2", "door 3")
```

Then, we know that behind the doors there is a car and two goats distributed randomly. We will use the function `sample` to order them randomly.


``` r
prizes <- sample(c("car", "goat", "goat"))
```

Since Monty Hall knows where the prize is. We are going to create a variable `prize_door` where we will store where the car is.


``` r
prize_door <- doors[prizes == "car"]
```

Now we choose a door randomly and store our result in the variable `choice`.


``` r
choice <- sample(doors, 1)
```

Given that we already have the chosen door shown we will simulate Monty Hall choosing the door to open. Since he is the presenter he will choose any door that is not the door where the prize is or your door.


``` r
door_opened <- sample(doors[!doors %in% c(choice, prize_door)],1)
```

Finally, we are going to put all the code together and in the last line add the comparison of whether the prize door matches our choice. This time we are going to choose not to change doors, so our choice does not vary.


``` r
doors <- c("door 1", "door 2", "door 3")
prizes <- sample(c("car", "goat", "goat"))
prize_door <- doors[prizes == "car"]
choice <- sample(doors, 1)
door_opened <- sample(doors[!doors %in% c(choice, prize_door)],1)

choice == prize_door
```

With our experiment created we are going to simulate what would happen if we stick with the choice and what would happen if we change it.

#### Stick with the chosen door
Let's replicate about 10 thousand times to see the proportion of times we would win if we stick with our door.


``` r
n_times <- 10000

results <- replicate(n_times, {
      doors <- c("door 1", "door 2", "door 3")
      prizes <- sample(c("car", "goat", "goat"))
      prize_door <- doors[prizes == "car"]
      choice <- sample(doors, 1)
      door_opened <- sample(doors[!doors %in% c(choice, prize_door)],1)
      
      choice == prize_door
})

mean(results)
#> [1] 0.3348
```

We see that the probability obtained by Monte Carlo simulation is an estimation very close to the probability that we had intuitively calculated. That is, if we keep our choice of the door we chose we have a 33.33% probability of winning.

But, what happens if we change doors? Is the probability of winning the same?

#### Change door
We are going to use the code and modify it by creating the variable `new_choice` to make the door change.


``` r
n_times <- 10000

results <- replicate(n_times, {
      doors <- c("door 1", "door 2", "door 3")
      prizes <- sample(c("car", "goat", "goat"))
      prize_door <- doors[prizes == "car"]
      choice <- sample(doors, 1)
      door_opened <- sample(doors[!doors %in% c(choice, prize_door)],1)
      
      new_choice <- doors[!doors %in% c(choice, door_opened)]
      
      new_choice == prize_door
})

mean(results)
#> [1] 0.6599
```

As we see, changing the door in this show gave us a probability of 66.66% of winning, while keeping our choice only 33.33%.

It may sound counterintuitive, but statistically speaking it is better to change doors instead of trusting our luck and keeping the initial choice.

<!--chapter:end:04-statistics/discrete.Rmd-->

---
output: html_document
editor_options: 
  chunk_output_type: console
---

# Continuous Probabilities
Recall that a continuous variable is a variable that takes values along a continuum, that is, over an entire interval of values. An essential attribute of a continuous variable is that, unlike a discrete variable, it can never be measured exactly; the observed value depends largely on the precision of the measuring instruments. With a continuous variable, there is inevitably a measurement error. As an example, the height of a person (1.72m, 1.719m, 1.7186m....). Another example could be the time it takes an athlete to run 100 meters flat, since this time can take values such as 9.623 seconds; 10.456485 seconds; 12.456412 seconds; that is, an interval of values.

::: {.callout-note}
## Learning Objectives

After completing this chapter, you will be able to:

In this chapter, we will learn how to handle data that can take any value within a range. We will distinguish between empirical distributions, based on real data, and theoretical distributions, which model ideal behavior. We will use the Cumulative Distribution Function (CDF) to calculate probabilities for intervals and apply the normal distribution to model real-world continuous data. Additionally, we will learn to assess whether data fits a normal distribution using Q-Q plots and the Shapiro-Wilk test, and perform Monte Carlo simulations for continuous variables using `rnorm()`.
:::

For example, recall that in the `heights` data frame we have the heights of a group of university students.


``` r
heights |> 
  filter(sex == "Male") |> # Filter only males
  mutate(height_m = height/39.37) |> # Convert to meters
  ggplot() +
  aes(sex, height_m, color = height_m) +
  geom_point(position = position_jitterdodge())
```

<img src="Data-Science-with-R_files/figure-html/unnamed-chunk-398-1.png" alt="" width="80%" style="display: block; margin: auto;" />

When graphing the data distribution, we intuitively realize that it does not make sense to calculate the proportion of people who measure exactly 1.73m because it would also serve us if a person measures 1.731, 1.729, or any close value that is not exactly 1.73, whether due to how it was measured or any other type of error.

It makes more sense to analyze the data by intervals, as can be seen in this histogram that groups by intervals of 0.05 meters = 5 cm.


``` r
heights |> 
  filter(sex == "Male") |> # Filter only males
  mutate(height_m = height/39.37) |> # Convert to meters
  ggplot() +
  aes(height_m) +
  geom_histogram(binwidth = 0.05, color = "black")
```

<img src="Data-Science-with-R_files/figure-html/unnamed-chunk-399-1.png" alt="" width="80%" style="display: block; margin: auto;" />

It is much more practical to define a function that operates on intervals instead of unique values. For this we use the Cumulative Distribution Function (CDF).

## Empirical Distribution
When we use data to analyze its distribution, we speak of an empirical distribution. It is the actual distribution of a subject or an option, and measures the real and individual possibilities, regarding the measurement of the subject's direct score, or of an option of which the frequency of occurrence has been measured.

For example, for our case we can create the vector `men` (men) made up of all the values of the heights of men:


``` r
men <- heights |> 
  filter(sex == "Male") |> 
  mutate(height_m = height/39.37) |> 
  pull(height_m)
```

Then, we can create the function `empirical_cdf` (CDF) that takes `x` as a variable and calculates the proportion of men who measure less than or equal to `x` within the data found in the `men` vector.


``` r
empirical_cdf <- function(x){
  mean(men <= x)
}
```

Thus, if we want to calculate what the proportion of students who measure 1.73m or less would be.


``` r
empirical_cdf(1.73)
#> [1] 0.3768473
```

On the other hand, recall that the median is the value that divides our data into two equal parts. So, if we calculate the median:


``` r
median(men)
#> [1] 1.752604
```

And then we enter the value 1.7526035 into our function to ask what is the proportion of students who measure 1.7526035 or less, we should get a value very close to 50% by definition of the median.


``` r
median_val <- median(men)
empirical_cdf(median_val)
#> [1] 0.5073892
```

So far we have calculated proportions with the cumulative distribution function. However, if we want to know what is the **probability** that when choosing a man at random they measure 1.9m or less, we could use the same `empirical_cdf`. Since each student has the same chance of being chosen, the answer to the question would be the proportion of students who measure 1.9 or less.

$F(1.9) = P(x \le 1.9)$


``` r
empirical_cdf(1.9)
#> [1] 0.9396552
```

We observe that the probability is approximately 93.97%.

If we now want to calculate the probability that someone chosen at random is taller than 1.80m, we first calculate the CDF for 1.8 and then obtain the complement.

$P(x > 1.8) = 1 - P(x \le 1.8)$


``` r
# Probability of measuring 1.80m or less
prob <- empirical_cdf(1.8)

# Probability of measuring more than 1.80m
1 - prob
#> [1] 0.3583744
```

The probability is approximately 35.8%.

If we now wanted to know the probability that when choosing someone at random they measure more than 1.6m, but not more than 1.95m, we would have.

$P(x > 1.6\ \cap\ x \le 1.95) = P(x \le 1.95) - P(x \le 1.6)$


``` r
prob_1 <- empirical_cdf(1.95)

prob_2 <- empirical_cdf(1.6)

prob_1 - prob_2
#> [1] 0.9445813
```

## Theoretical Distribution
On the other hand, a theoretical distribution is a distribution that is derived from certain principles or assumptions by logical and mathematical reasoning, as opposed to one derived from real-world data obtained by empirical research. Among them we have the normal distribution, the binomial distribution, and the Poisson distribution.

For example, if we draw an approximate line of our data on men's heights we would have this graph:


``` r
heights |> 
  filter(sex == "Male") |> 
  mutate(height_m = height/39.37) |>
  ggplot() +
  aes(height_m) +
  geom_histogram(binwidth = 0.05, color = "black") +
  geom_density(aes(y = after_stat(count)*0.05), colour = "blue", lty = 5)

```

<img src="Data-Science-with-R_files/figure-html/unnamed-chunk-408-1.png" alt="" width="80%" style="display: block; margin: auto;" />

We see that the distribution has an approximately symmetric, bell shape. This distribution could be modeled using a [normal distribution](https://support.minitab.com/en-us/minitab/18/help-and-how-to/statistics/basic-statistics/supporting-topics/normality/what-is-the-normal-distribution/) (also called Gaussian distribution, Gauss curve, or Gauss bell). To do this, in R we will use the function `pnorm(x, average, std_dev)` to estimate the probability but using a normal distribution function with an average `average` and a standard deviation `std_dev`. In this way, we can estimate what is the probability that if we choose a value at random it is less than or equal to `x`.

For example, let's calculate again the probability that when choosing a man at random he measures 1.65m or less, we could use the same FDA and now the `pnorm()` function.


``` r
# Using the empirical distribution (real data):
empirical_cdf(1.9)
#> [1] 0.9396552

# Using the theoretical normal distribution (approx. data):
avg <- mean(men)
std_dev <- sd(men)

probability <- pnorm(1.9, avg, std_dev)
probability
#> [1] 0.9357267
```

We obtain approximately the same results. Using a normal distribution facilitates our work when our data has a normal behavior.

Mathematically we are calculating the area under the curve which is seen in blue:


``` r
sec <- seq(-4, 4, length = 100) * std_dev + avg
normal <- dnorm(sec, avg, std_dev)

data.frame(value = normal) |> 
  ggplot() +
  aes(sec, value) +
  geom_line() +
  theme(axis.text.y = element_blank()) +
  xlab("Height (meters)") +
  ylab("") +
  ggtitle("Normal Distribution") +
  geom_area(aes(x = ifelse(sec < 1.9, sec, 0)), fill = "blue") +
  xlim(min(sec), max(sec)) +
  labs(subtitle = paste("P(x <= 1.9) =", probability))
```

<img src="Data-Science-with-R_files/figure-html/unnamed-chunk-410-1.png" alt="" width="80%" style="display: block; margin: auto;" />

In the same way, we could estimate the probability that a person chosen at random measures more than 1.8m.


``` r
# Using the empirical distribution (real data):
1 - empirical_cdf(1.8)
#> [1] 0.3583744

# Using the theoretical normal distribution (approx. data):
avg <- mean(men)
std_dev <- sd(men)

probability <- 1- pnorm(1.8, avg, std_dev)
probability
#> [1] 0.3337484
```

Mathematically we are calculating the area under the curve which is seen in blue:


``` r
sec <- seq(-4, 4, length = 100) * std_dev + avg
normal <- dnorm(sec, avg, std_dev)

data.frame(value = normal) |> 
  ggplot() +
  aes(sec, value) +
  geom_line() +
  theme(axis.text.y = element_blank()) +
  xlab("Height (meters)") +
  ylab("") +
  ggtitle("Normal Distribution") +
  geom_area(aes(x = ifelse(sec > 1.8, sec, 0)), fill = "blue") +
  xlim(min(sec), max(sec)) +
  labs(subtitle = paste("P(x > 1.8) =", probability))
```

<img src="Data-Science-with-R_files/figure-html/unnamed-chunk-412-1.png" alt="" width="80%" style="display: block; margin: auto;" />

Finally, let's recalculate the probability that when choosing someone at random they measure more than 1.6m, but not more than 1.95m, we would have.


``` r
# Using the empirical distribution (real data):
prob_1 <- empirical_cdf(1.95)
prob_2 <- empirical_cdf(1.6)
prob_1 - prob_2
#> [1] 0.9445813

# Using the theoretical normal distribution (approx. data):
avg <- mean(men)
std_dev <- sd(men)

probability <- pnorm(1.95, avg, std_dev) - pnorm(1.6, avg, std_dev)
probability
#> [1] 0.9405618
```

Mathematically we are calculating the area under the curve which is seen in blue:


``` r
sec <- seq(-4, 4, length = 100) * std_dev + avg
normal <- dnorm(sec, avg, std_dev)

data.frame(value = normal) |> 
  ggplot() +
  aes(sec, value) +
  geom_line() +
  theme(axis.text.y = element_blank()) +
  xlab("Height (meters)") +
  ylab("") +
  ggtitle("Normal Distribution") +
  geom_area(aes(x = ifelse(sec > 1.6 & sec <= 1.95, sec, 0)), fill = "blue") +
  xlim(min(sec), max(sec)) +
  labs(subtitle = paste("P(1.6 < x <= 1.95) =", probability))
```

<img src="Data-Science-with-R_files/figure-html/unnamed-chunk-414-1.png" alt="" width="80%" style="display: block; margin: auto;" />

We can plot a Q-Q plot, which is a scatter plot created by plotting two sets of quantiles against each other. The function `stat_qq(x)` creates a normal Q-Q plot. This function plots the data in sorted order against the quantiles of a standard Normal distribution. The function `stat_qq_line()` adds a reference line. Although understanding this requires advanced statistics, we can interpret it that if when using this function the correlation is very close to the line then our data is very likely to follow a normal distribution.


``` r
heights |> 
  filter(sex == "Male") |>
  mutate(height_m = height/39.37) |>
  ggplot() +
  aes(sample = height_m) + 
  stat_qq() +
  stat_qq_line()
```

<img src="Data-Science-with-R_files/figure-html/unnamed-chunk-415-1.png" alt="" width="80%" style="display: block; margin: auto;" />

The points seem to fall on a straight line. This gives us a good indication that assuming our height data comes from a population that is normally distributed is reasonable. Observe that the _y-axis_ plots the empirical quantiles and _x-axis_ plots the theoretical quantiles. The latter are the quantiles of the standard Normal distribution with mean 0 and standard deviation 1.

Visual inspection is not always reliable. It is possible to use a significance test that compares the sample distribution with a normal one to determine whether or not the data shows a serious deviation from normality. The most used test for these tests is the Shapiro-Wilk normality test.

For this we will use the function `shapiro.test()`, which performs a normality test and gives us a [p-value](https://www.investopedia.com/terms/p/p-value.asp)^(https://www.investopedia.com/terms/p/p-value.asp). It is based on the correlation between the data and the corresponding normal scores. If the `p-value > 0.05` then the data distribution is not significantly different from the normal distribution. In other words, we can assume normality.


``` r
shapiro.test(men)
#> 
#> 	Shapiro-Wilk normality test
#> 
#> data:  men
#> W = 0.96374, p-value = 2.623e-13
```

The p-value is less than 0.05 so, although our distribution resembles a normal one, it does not pass the significance test.

::: {.callout-tip}
## Key Takeaways

We have explored the differences between **empirical distributions**, derived directly from observed data using functions like `empirical_cdf()`, and **theoretical distributions**, which rely on mathematical models such as the normal distribution. We learned to use `pnorm(x, mean, sd)` to calculate cumulative probabilities, providing a powerful tool for analyzing continuous variables. Finally, we introduced **Q-Q plots** and the **Shapiro-Wilk test** as method to verify if our data follows a normal distribution, with a p-value greater than 0.05 indicating that the assumption of normality is reasonable.
:::



## Exercises

For the following exercises assume that the distribution of ages of students in the _Data Science with R_ course approximates a normal distribution with an average of 24 years and a standard deviation of 3. If we select a student at random:

70. Given the parameters of our student age distribution, calculate the probability that a randomly chosen student is **at most** 23 years old.



<details>
  <summary type="button">Solution</summary>

``` r
avg_e <- 24
std_dev_e <- 3

pnorm(23, avg_e, std_dev_e)
```
</details>

71. Determine the probability that a selected student is **older than** 28 years.



<details>
  <summary type="button">Solution</summary>

``` r
avg_e <- 24
std_dev_e <- 3

1 - pnorm(28, avg_e, std_dev_e )
```
</details>

72. Calculate the probability that a student is between 22 and 27 years old (older than 22 but at most 27).



<details>
  <summary type="button">Solution</summary>

``` r
avg_e <- 24
std_dev_e <- 3

pnorm(27, avg_e, std_dev_e ) - pnorm(22, avg_e, std_dev_e )
```
</details>

73. Find the probability that a student's age falls within one standard deviation of the average (i.e., between `average - sd` and `average + sd`).



<details>
  <summary type="button">Solution</summary>

``` r
avg_e <- 24
std_dev_e <- 3

max <- avg_e + std_dev_e
min <- avg_e - std_dev_e

pnorm(max, avg_e, std_dev_e ) - pnorm(min, avg_e, std_dev_e )

```
</details>



## Monte Carlo Simulation for Continuous Variables
Although we have used a normal function to calculate the approximate probability, we can create more than one normal function with that average and that standard deviation. We will use the function `rnorm(n, average, std_dev)` to create a vector of `n` random data, such that they are normally distributed with an average `avg` and a standard deviation `std_dev`.

Recall that our original data has the following characteristics:


``` r
avg <- mean(men)
avg
#> [1] 1.760598

std_dev <- sd(men)
std_dev
#> [1] 0.09172018

length_val <- length(men)
length_val
#> [1] 812
```

If we want to generate a random normal distribution we will use `rnorm()`:


``` r
# Creation of the normally distributed random vector:
random_normal <- rnorm(length_val, avg, std_dev)

# We create a histogram to visualize it better
hist(random_normal)
result <- paste("Sample:", length_val, ". Average:", 
                round(mean(random_normal), 3), ". Std. dev.:", 
                round(sd(random_normal), 3)
                )
mtext(result,3)
```

<img src="Data-Science-with-R_files/figure-html/unnamed-chunk-426-1.png" alt="" width="80%" style="display: block; margin: auto;" />

We can execute the code again to verify that it generates another distribution for us:


``` r
# Creation of the normally distributed random vector:
random_normal <- rnorm(length_val, avg, std_dev)

# We create a histogram to visualize it better
hist(random_normal)
result <- paste("Sample:", length_val, ". Average:", 
                round(mean(random_normal), 3), ". Std. dev.:", 
                round(sd(random_normal), 3)
                )
mtext(result,3)
```

<img src="Data-Science-with-R_files/figure-html/unnamed-chunk-427-1.png" alt="" width="80%" style="display: block; margin: auto;" />

We can repeat this experiment of obtaining `n` random data that have approximately the same `average` and the same `std_dev` about 10 thousand times to calculate the proportion of times that a man measures more than 1.8m.


``` r
n_times <- 10000

simulation_results <- replicate(n_times, {
  random_normal <- rnorm(length_val, avg, std_dev)
  random_normal > 1.8
})

mean(simulation_results)
#> [1] 0.3338273
```

Thus, we have obtained practically the same value that we achieved in the previous section, but this time estimating using the Monte Carlo simulation.




## Exercises

The distribution of the admission exam grades of the Univ. UNISM is distributed approximately normally. The average is 14.5 and the standard deviation is 1. We want to know the distribution of the first place. It is known that 5 thousand people apply once a year per exam and take a single exam.

74. Generate 5 thousand grades about 1,000 times using Monte Carlo simulation and perform a histogram of the result.



<details>
  <summary type="button">Solution</summary>

``` r
n_times <- 1000
avg <- 14.5
std_dev <- 1

max_grades <- replicate(n_times, {
  exam_simulation <- rnorm(5000, avg, std_dev)
  max(exam_simulation)
})

hist(max_grades)
shapiro.test(max_grades)
```
</details>

75. Now, modify your simulation to analyze the **distribution of the yearly averages**. Generate the sample average for each of the 1,000 simulations and plot the histogram.



<details>
  <summary type="button">Solution</summary>

``` r
n_times <- 1000
avg <- 14.5
std_dev <- 1

notas_avg <- replicate(n_times, {
  exam_simulation <- rnorm(5000, avg, std_dev)
  mean(exam_simulation)
})

hist(notas_avg)
shapiro.test(notas_avg)
```
</details>

76. Using the results from your first simulation (distribution of maximum grades), estimate the probability that the highest grade in a given year exceeds 18.5.



<details>
  <summary type="button">Solution</summary>

``` r
n_times <- 1000
avg <- 14.5
std_dev <- 1

max_grades <- replicate(n_times, {
  exam_simulation <- rnorm(5000, avg, std_dev)
  max(exam_simulation)
})

mean(max_grades > 18.5)
```
</details>



<!--chapter:end:04-statistics/continuous.Rmd-->


# Statistical Inference
To infer means to draw a conclusion from general or particular facts. Statistical inference is a set of methods and techniques that allow deducing characteristics of a population using data from a random sample. The method we are going to use most to infer is the parameter estimation method.

We estimate parameters of a population from a sample because very rarely we will be able to have access to all the data of the population. Such is the case of election polls, disease studies, etc.

::: {.callout-note}
## Learning Objectives

After completing this chapter, you will be able to:

In this chapter, we will build the foundation for making valid conclusions from data. We will start by mastering the calculation of expected values and standard errors, which are critical for characterizing random variables. Then, we will explore the Central Limit Theorem to understand how sampling distributions behave. Finally, we will apply these concepts to estimate population parameters from sample data, calculating confidence intervals and margins of error to analyze real-world scenarios like election polling.
:::

We will introduce fundamental concepts such as **expected value** and **standard error**, which will be useful to us to make inferences.

## Expected Value
Let's use the following case to understand this concept intuitively.

> We have been hired in a casino to analyze if it is reasonable to install a roulette with 37 values ranging from 0 to 36. The house wants to open the game with a special offer if the ball lands on 0 or 21 paying 10 to 1. This means that if a player plays and wins we pay them 10 dollars and if they lose they would pay us 1 dollar.

<div align="center">
<img src="_assets/images/04-statistics/roulette-casino.png" alt="Casino roulette wheel with numbered red and black pockets" width="300pt" style="display: block; margin: auto;" />
</div>

With what we have learned so far we can simulate our game with the case data. We have 37 values, of which in 2 of them give a player a profit of +10 or a loss -1. Let's also define `prob_win` as the probability that a player wins.


``` r
# Total times played
plays <- 1

# Probability that a player wins each time
prob_win <- 2/37
prob_lose <- 1 - prob_win

# Random sample
sample_vec <- sample(c(10, -1), plays, replace = TRUE, prob = c(prob_win, prob_lose))

sample_vec
#> [1] -1
```

The distribution of this variable is simple given that it can only take two values: 10 or -1. When we simulate a very large number of games it can be seen how it is distributed according to the indicated probability of winning and losing.


``` r
plays <- 100000

prob_win <- 2/37
prob_lose <- 1 - prob_win

tibble(outcome = sample_vec) |>
  ggplot(aes(x = factor(outcome))) +
  geom_bar(fill = "steelblue") +
  labs(x = "Outcome ($)", y = "Count", title = "Distribution of Roulette Outcomes")

```

<img src="Data-Science-with-R_files/figure-html/unnamed-chunk-438-1.png" alt="" width="80%" style="display: block; margin: auto;" />

We have been using Monte Carlo simulation to estimate what the **mean** of the game results would be in real life.


``` r
# Estimation of the mean by Monte Carlo simulation
mean(sample_vec)
#> [1] -1
```

In addition, we have seen that, the more the sample grows, our **mean** in the Monte Carlo simulation converges to a value, in this case the probability of winning mainly in the roulette. That value to which it converges we will call **expected value**, which as its name indicates will be the value we expect to obtain in reality. The more the sample size grows the more our sample mean converges to this expected value. The notation we will use will be $E[X]$.

When there are only two possible results $a$ and $b$ with proportions $p$ and $1-p$ respectively, the expected value will be calculated using this formula:

$E[X] = ap + b(1-p)$


``` r
# Expected Value:
(10) * prob_win + (-1) * prob_lose
#> [1] -0.4054054
```

Previously we had calculated the mean using Monte Carlo simulation. If we compare it with the expected value we see how both numbers are approximately the same, as the theory predicts.

<!--
Likewise, we can calculate the standard deviation which we will call **standard error**. The mathematical notation is $SE[X]$ and we will calculate it using the following formula:

$SE[X] = |a-b|\sqrt{p(1-p)}$


``` r
# Standard error:
abs(10 - -1)*sqrt(prob_win*prob_lose)
#> [1] 2.487368
```

-->

Returning to the simulation of roulette games, a single person does not play so many times. Each person plays about 40 times a day at roulette. Thus, we can generate 40 games that a random player could play and find how much he would win:


``` r
plays <- 40

prob_win <- 2/37
prob_lose <- 1 - prob_win

sample_vec <- sample(c(10, -1), plays, replace = TRUE, prob = c(prob_win, prob_lose))

sum(sample_vec)
#> [1] -7
```

Finally, not only one person will play. Let's replicate this sample about 100,000 times to simulate the number of players we would have in a quarter.


``` r

players <- 100000
plays <- 40

prob_win <- 2/37
prob_lose <- 1 - prob_win

set.seed(2025)
winnings_simulation <- replicate(players, {
  
  sample_vec <- sample(c(10, -1), plays, replace = TRUE, prob = c(prob_win, prob_lose))

  sum(sample_vec)  
  
})

```

So far we have done the same as we have learned in previous chapters. However, we could also see how the players' winnings are distributed. And for that it is enough to create a histogram of the result.


``` r
tibble(winnings = winnings_simulation) |>
  ggplot(aes(x = winnings)) +
  geom_histogram(bins = 30, fill = "steelblue", color = "white") +
  labs(x = "Total Winnings ($)", y = "Count", title = "Distribution of Player Winnings")
```

<img src="Data-Science-with-R_files/figure-html/unnamed-chunk-444-1.png" alt="" width="80%" style="display: block; margin: auto;" />

It is not a coincidence that if we create a histogram with all the winnings of all the players the result looks like a normal distribution. In fact, that was the main approach that George Pólya made in 1920 when he presented his **Central Limit Theorem**.

## Central Limit Theorem
The Central Limit Theorem tells us that if we take several samples of the same size $n$ and in each sample we sum the values within each sample we will obtain a value $S$ (the sum) then we will find that its distribution approximates well to a normal curve.

If we replicate this language to our example it would be: The central limit theorem tells us that if we take samples of 40 games for each player and then calculate for each player the total they won, then we will find that the distribution of the amount won by many players approximates a normal distribution.

Since it is a new distribution, we can calculate its mean and standard deviation. Being samples we will use the learned term **expected value** of the sum to refer to the sample mean and we will add the term of **standard error** of the sum to refer to the sample standard deviation

This would be the formula to calculate the expected value of the sum:

$E[S_n] = n (ap+b(1-p))$


``` r
plays <- 40

prob_win <- 2/37
prob_lose <- 1 - prob_win

# Expected value of the sum
E_sum <- plays * ( (10)*prob_win + (-1)*prob_lose )
E_sum
#> [1] -16.21622
```

And to calculate the standard error of the sum we will use the following formula:

$SE[S_n]=\sqrt{n}\ |a-b|\ \sqrt{p(1-p)}$


``` r
plays <- 40

prob_win <- 2/37
prob_lose <- 1 - prob_win

# Standard error of the sum
SE_sum <- sqrt(plays) * abs(10 - -1) * sqrt(prob_win*prob_lose)
SE_sum
#> [1] 15.73149
```

With these two theoretical data, the expected value and the standard error, we can graph the normal curve of the sum of winnings of our game.

<img src="Data-Science-with-R_files/figure-html/unnamed-chunk-447-1.png" alt="" width="80%" style="display: block; margin: auto;" />

What does this mean? That if theoretically we can already graph the normal curve then we can also calculate the probability that the sum is greater or less than some value. This is the main advantage of the Central Limit Theorem since we can calculate probabilities of the population using this approximation and the data of a single sample.

For example, if we want to know what is the probability that a player wins money after playing 40 times in roulette we would have to calculate the probability that $S$ is greater than **zero**, represented by the blue shaded area:

<img src="Data-Science-with-R_files/figure-html/unnamed-chunk-448-1.png" alt="" width="80%" style="display: block; margin: auto;" />

To perform this calculation in R we would use the `pnorm` function:


``` r
# Probability of getting more than 0 dollars having played 40 games:
1- pnorm(0, E_sum, SE_sum)
#> [1] 0.1513144
```

Let's validate that the Monte Carlo simulation approximates this theoretical value we just calculated:


``` r
# Probability of getting more than 0 dollars having played 40 games:
mean(winnings_simulation > 0)
#> [1] 0.16813
```

We have used two ways to estimate the probability, the theoretical estimation using the central limit theorem and the Monte Carlo simulation. These two numbers are quite close to the real probability. In both cases, the larger the sample, the more reasonable our estimation will be.

On the other hand, the same happens if we wanted to analyze the average and not the sum of the winnings. But for the average case we will use the following formulas:

1. Expected value of the average: $E[\overline{X}]=ap+b(1-p)$.
2. Standard error of the average: $SE[\overline{X}]=|a-b|\sqrt{\frac{p(1-p) }{n}}$.

::: {.callout-tip}
## Key Takeaways

This chapter provided the tools to quantify uncertainty. We learned that the **Expected Value**, $E[X]$, represents the long-term average outcome of a random variable. The **Central Limit Theorem** is the bridge that allows us to approximate the sum of independent samples using a normal distribution, regardless of the original population's shape. This theorem enables us to calculate the **Expected Value of the Sum** ($E[S_n] = n \cdot E[X]$) and the **Standard Error of the Sum** ($SE[S_n] = \sqrt{n} \cdot SE[X]$), empowering us to estimate probabilities and make inferences about a population without needing to measure every single individual.
:::



## Exercises

The admission exam of the National Univ. of San Marcos consists of 100 multiple choice questions (A, B, C, D, E) with a value of 20 points for each correct question and 1.125 for each wrong answer. We want to analyze what would happen if a student answers all 100 questions randomly and if there are chances of getting a vacancy knowing that minimum 900 points are needed to enter some career.

77. Consider a multiple-choice exam with 100 questions, where each correct answer awards 20 points and each wrong answer deducts 1.125 points. Determine the expected value of points a student would receive for a single question if they guessed randomly among the 5 options.



<details>
  <summary type="button">Solution</summary>

``` r
points_correct <- 20
points_wrong <- -1.125
  
prob_correct <- 1/5
prob_wrong <- 1 - prob_correct

# Expected value of guessing a question:
E <- points_correct * prob_correct + points_wrong * prob_wrong

E

```
</details>

78. Based on the expected value for a single question, calculate the total expected value if a student guesses on all 100 questions of the exam.



<details>
  <summary type="button">Solution</summary>

``` r
# Total questions:
n <- 100

# Expected value of the sum
E_sum <- n * E

E_sum
```
</details>

79. Calculate the standard error associated with the total score if a student guesses on all 100 questions.



<details>
  <summary type="button">Solution</summary>

``` r
# Standard error of the sum
SE_sum <- sqrt(n)*abs(points_correct - points_wrong) * sqrt(prob_correct*prob_wrong)

SE_sum
```
</details>

80. Using the Central Limit Theorem and the values calculated previously, determine the probability that a student guessing on all questions would achieve a score higher than 900 points.



<details>
  <summary type="button">Solution</summary>

``` r
min_score <- 900

# Probability of obtaining less than the minimum:
prob <- pnorm(min_score, E_sum, SE_sum)

# Probability of obtaining more than the minimum:
1 - prob
```

This means that the probability that a student obtains the minimum score by guessing all the questions is: `0.0000000000014525`.

Conclusion: let's study before taking the exam. It is not reasonable to take the exam randomly and mark randomly.

</details>

> Recall that `e-n` is the representation of $10^{-n}$.

81. Validate your theoretical calculation by running a Monte Carlo simulation. Simulate the exam scores for 22,000 applicants guessing randomly and calculate the proportion who score above 900 points.



<details>
  <summary type="button">Solution</summary>

``` r
total <- 22000

set.seed(2025)
admission_simulation <- replicate(total, {
  exam_score <- sample(c(points_correct, points_wrong), n, replace = TRUE, prob = c(prob_correct, prob_wrong) )

  sum(exam_score)  
})

# Probability of obtaining more than 900 points:
mean(admission_simulation > 900)

# Histogram if we want to see the distribution of points obtained:
hist(admission_simulation)

```

We see that the simulation gives us practically the same result. Practically there are no possibilities of entering UNMSM by guessing the answers.

</details>



## Parameter Estimation Method
So far, using Monte Carlo simulation we have built samples randomly, but knowing the probability of occurrence. However, we will not always know the proportion previously. If we have, for example, a population and we want to know how many have been infected by Covid-19, we cannot test everyone. Or if we have the total voters for an election, we cannot survey everyone to know who would win. Not only is it very expensive, but it would take us a lot of time.

The **parameter estimation method** is the procedure used to know the characteristics of a population parameter, from the knowledge of a sample of $n$ respondents

We will analyze this following case.

> We have two political parties: Blue and Red. We do not know how much the total population is, nor the proportion that will vote for one or the other party. The only thing we can do is conduct voting intention polls.

For example, these would be the results of the poll of a random sample of 10 people:

<img src="Data-Science-with-R_files/figure-html/unnamed-chunk-461-1.png" alt="" width="80%" style="display: block; margin: auto;" />

Intuitively we know that we cannot deduce which party will win given that the sample is very small. To know which party will win we need to estimate as precisely as possible the parameter $p$ that represents the proportion of voters of the Blue Party in the population and the parameter $1-p$ that represents the proportion of voters of the Red party.

Making some mathematical transformations to our theoretical estimates seen previously and defining $a=1$ as value if they vote Blue and $b=0$ if they do not vote for Blue, we can obtain the following theoretical estimates for this case:

By defining a vote for Blue as $a=1$ and a vote for others as $b=0$, we can derive theoretical estimates that link our sample data to the unknown population parameter $p$.

First, consider the **expected value of a single vote**. Mathematically, $E[X]=p$. This confirms that the value we expect to obtain from a single random voter matches the proportion $p$ we are trying to find.

Next, we look at the **expected value of the average** across multiple surveys. If we were to conduct many surveys of $n$ respondents each, the average of these sample means, denoted as $E[\overline{X}]$, would also equal $p$. This reinforces that our sample mean is an unbiased estimator of the population proportion.

Finally, we must account for variability using the **standard error of the average**, defined as $SE[\overline{X}]=\sqrt{\frac{p(1-p) }{n}}$. This metric tells us how much the results of our multiple surveys would fluctuate around the true parameter $p$, taking into account the sample size $n$.

The expected value of the average $E[\overline{X}]$, formula 2, is theoretically equal to the parameter $p$ that we are looking to estimate. However, without knowing how much $p$ is we would have to have multiple samples of $n$ respondents, then calculate the mean for each case $\overline{X}$ and finally calculate the average of these values. This is very expensive, so we will look for another way to estimate $E[\overline{X}]$.

Given that we do not have so far how to estimate $E[\overline{X}]$, and given that we know that $E[\overline{X}]=p$ then we could give several values to $p$ and see the impact on the standard error of the average that we know also depends on $p$.

Let's generate, first, a sequence of parameter $p$, from 0% to 100%, 100 different values:


``` r
p <- seq(0, 1, length=100)

p
#>   [1] 0.00000000 0.01010101 0.02020202 0.03030303 0.04040404 0.05050505
#>   [7] 0.06060606 0.07070707 0.08080808 0.09090909 0.10101010 0.11111111
#>  [13] 0.12121212 0.13131313 0.14141414 0.15151515 0.16161616 0.17171717
#>  [19] 0.18181818 0.19191919 0.20202020 0.21212121 0.22222222 0.23232323
#>  [25] 0.24242424 0.25252525 0.26262626 0.27272727 0.28282828 0.29292929
#>  [31] 0.30303030 0.31313131 0.32323232 0.33333333 0.34343434 0.35353535
#>  [37] 0.36363636 0.37373737 0.38383838 0.39393939 0.40404040 0.41414141
#>  [43] 0.42424242 0.43434343 0.44444444 0.45454545 0.46464646 0.47474747
#>  [49] 0.48484848 0.49494949 0.50505051 0.51515152 0.52525253 0.53535354
#>  [55] 0.54545455 0.55555556 0.56565657 0.57575758 0.58585859 0.59595960
#>  [61] 0.60606061 0.61616162 0.62626263 0.63636364 0.64646465 0.65656566
#>  [67] 0.66666667 0.67676768 0.68686869 0.69696970 0.70707071 0.71717172
#>  [73] 0.72727273 0.73737374 0.74747475 0.75757576 0.76767677 0.77777778
#>  [79] 0.78787879 0.79797980 0.80808081 0.81818182 0.82828283 0.83838384
#>  [85] 0.84848485 0.85858586 0.86868687 0.87878788 0.88888889 0.89898990
#>  [91] 0.90909091 0.91919192 0.92929293 0.93939394 0.94949495 0.95959596
#>  [97] 0.96969697 0.97979798 0.98989899 1.00000000
```

Thinking of 100 different values of $p$ would be like thinking of 100 different elections where the Blue party and the red one have participation, like the election for mayors nationwide. In some districts the candidate of the Blue party loses with 0%, in others ties at 50% and in others wins clearly with 100% of the votes.

Intuitively we know that if our real proportion was $p=80\%$ for the Blue party, that is that 8 out of every 10 will vote Blue, then it is very likely that in each survey we take we will find that in that district the Blue party has the majority of votes. This is predicted with the formula seen before and also includes the size of the survey $n$ as part of the calculation:

$SE[\overline{X}]=\sqrt{\frac{p(1-p) }{n}}$

That said, let's return to our vector `p` that contains several values of parameter $p$. On those values we can calculate what would happen if we survey groups of 20 people. Knowing the sample size we can calculate the standard error of the average for each of the values of $p$:


``` r
# Total people in each survey:
n <- 20

# Standard error of the average:
SE_avg <- sqrt(p*(1-p))/sqrt(n)

SE_avg  
#>   [1] 0.00000000 0.02235954 0.03145942 0.03833064 0.04402928 0.04896646
#>   [7] 0.05335399 0.05731823 0.06094183 0.06428243 0.06738214 0.07027284
#>  [13] 0.07297936 0.07552152 0.07791540 0.08017428 0.08230929 0.08432982
#>  [19] 0.08624394 0.08805856 0.08977974 0.09141275 0.09296223 0.09443229
#>  [25] 0.09582660 0.09714840 0.09840064 0.09958592 0.10070661 0.10176486
#>  [31] 0.10276258 0.10370152 0.10458327 0.10540926 0.10618079 0.10689904
#>  [37] 0.10756509 0.10817988 0.10874431 0.10925913 0.10972506 0.11014270
#>  [43] 0.11051262 0.11083529 0.11111111 0.11134044 0.11152357 0.11166072
#>  [49] 0.11175205 0.11179770 0.11179770 0.11175205 0.11166072 0.11152357
#>  [55] 0.11134044 0.11111111 0.11083529 0.11051262 0.11014270 0.10972506
#>  [61] 0.10925913 0.10874431 0.10817988 0.10756509 0.10689904 0.10618079
#>  [67] 0.10540926 0.10458327 0.10370152 0.10276258 0.10176486 0.10070661
#>  [73] 0.09958592 0.09840064 0.09714840 0.09582660 0.09443229 0.09296223
#>  [79] 0.09141275 0.08977974 0.08805856 0.08624394 0.08432982 0.08230929
#>  [85] 0.08017428 0.07791540 0.07552152 0.07297936 0.07027284 0.06738214
#>  [91] 0.06428243 0.06094183 0.05731823 0.05335399 0.04896646 0.04402928
#>  [97] 0.03833064 0.03145942 0.02235954 0.00000000
```

Now let's generate a scatter plot of both the different values of $p$ and the standard errors for each $p$.

``` r
tibble(p = p, SE_avg = SE_avg) |>
  ggplot(aes(x = p, y = SE_avg)) +
  geom_point(color = "steelblue") +
  coord_cartesian(ylim = c(0, 0.12)) +
  labs(x = "Proportion (p)", y = "Standard Error", title = "Standard Error vs. Proportion")
```

<img src="Data-Science-with-R_files/figure-html/unnamed-chunk-464-1.png" alt="" width="80%" style="display: block; margin: auto;" />

Thus, we see how we can obtain different standard errors of the average for different values of $p$.

Intuitively we had the notion of what would happen given a $p=80\%$. Now in the graph we see it better. If the real intention of vote was 80% in that district then when taking several surveys and seeing the results of each survey we would obtain as expected value 80% and as standard error 8.8% or 0.088 as seen in the graph highlighted in blue:


``` r
coord_x <- 0.8
coord_y <- sqrt(coord_x * (1 - coord_x)) / sqrt(n)

tibble(p = p, SE_avg = SE_avg) |>
  ggplot(aes(x = p, y = SE_avg)) +
  geom_point(color = "steelblue") +
  geom_hline(yintercept = coord_y, linetype = "dashed", color = "blue") +
  geom_vline(xintercept = coord_x, linetype = "dashed", color = "blue") +
  coord_cartesian(ylim = c(0, 0.12)) +
  labs(x = "Proportion (p)", y = "Standard Error", title = "SE at p = 80%")
```

<img src="Data-Science-with-R_files/figure-html/unnamed-chunk-465-1.png" alt="" width="80%" style="display: block; margin: auto;" />

With these values of $E[\overline{X}]=p=80\%$ and $SE[\overline{X}]=8.8\%$ of standard error we can calculate a range of one standard error around $80\%$, which would go from $71.2\%$ to $88.8\%$ and then calculate what would be the probability that the mean $\overline{X}$ found in one of the surveys falls in this range. Visually it would be:

<img src="Data-Science-with-R_files/figure-html/unnamed-chunk-466-1.png" alt="" width="80%" style="display: block; margin: auto;" />

In R, calculating the probability that a data point falls in the range of 1 standard error would be:


``` r
# Calculation of probability that dat is between -1 and 1 standard error:
pnorm(1) - pnorm(-1)
#> [1] 0.6826895
```

We can expand to have a greater range of **2 standard errors** around $80\%$ and increase our probability:

<img src="Data-Science-with-R_files/figure-html/unnamed-chunk-468-1.png" alt="" width="80%" style="display: block; margin: auto;" />

In R it would be:


``` r
# Calculation of probability that dat is between -2 and 2 standard errors:
pnorm(2) - pnorm(-2)
#> [1] 0.9544997
```

The probability increases to 95%, however how do we interpret this?. We haven't even calculated the real value of the mean $\overline{X}$ of some survey.

Simple, this means that, theoretically, there is a 95% probability that the mean $\overline{X}$ that we find in each survey is in the range of 62% to 98%, two standard errors around $80\%$. 95% of the time in the worst case, in a survey of 20 people, the Blue party would obtain 62% and in the best case 98%, so we could predict that the Blue party will win. Or not?

Several things should make noise to us so far. First, the range so large, from 62% to 98%. Second, we have assumed a scenario: that the Blue voting intention was known and was 80%. That is, we have assumed $p=80\%$ which allowed us to calculate $E[\overline{X}]=80\%$ and place that value at the center of the normal. However, $p$ is unknown and is precisely what we are trying to estimate.

If, on the contrary, the result was tighter, for example $p=55\%$, such a wide range would not serve us. Let's see how it would be:


``` r
coord_x <- 0.55
coord_y <- sqrt(coord_x * (1 - coord_x)) / sqrt(n)

tibble(p = p, SE_avg = SE_avg) |>
  ggplot(aes(x = p, y = SE_avg)) +
  geom_point(color = "steelblue") +
  geom_hline(yintercept = coord_y, linetype = "dashed", color = "blue") +
  geom_vline(xintercept = coord_x, linetype = "dashed", color = "blue") +
  coord_cartesian(ylim = c(0, 0.12)) +
  labs(x = "Proportion (p)", y = "Standard Error", title = "SE at p = 55%")
```

<img src="Data-Science-with-R_files/figure-html/unnamed-chunk-470-1.png" alt="" width="80%" style="display: block; margin: auto;" />

If the real voting intention was $55\%$ we would have an expected value of the average $E[\overline{X}]=p=55\%$ and a corresponding standard error of the average $SE[\overline{X}]=11\%$. Again, by Central Limit Theorem we can calculate a range of **two standard errors** around $55\%$:

<img src="Data-Science-with-R_files/figure-html/unnamed-chunk-471-1.png" alt="" width="80%" style="display: block; margin: auto;" />

The calculation of the probability of being in that range in R would be the same because we continue in the range of 2 standard errors. Therefore the probability would be the same.


``` r
# Calculation of probability that dat is between -2 and 2 standard errors:
pnorm(2) - pnorm(-2)
#> [1] 0.9544997
```

However, what does change is the range. Now the range goes from 32.8% to 77.2%, two standard errors around the expected value of the average $E[\overline{X}]$. Although the probability is still 95%, that does not help us at all this time because there is 95% that what we find in our sample is a value between 33% and 77%. Some survey samples will give us 33% of votes for Blue and other samples 77%.

And the problem lies in the number of samples taken $n$. If we see again the formula we see how $n$ influences the result.

$SE[\overline{X}]=\sqrt{\frac{p(1-p) }{n}}$

Let's increment then our number of respondents to 500:


``` r
n <- 500

p <- seq(0, 1, length = 100)
SE_avg <- sqrt(p*(1-p))/sqrt(n)

tibble(p = p, SE_avg = SE_avg) |>
  ggplot(aes(x = p, y = SE_avg)) +
  geom_point(color = "steelblue") +
  coord_cartesian(ylim = c(0, 0.12)) +
  labs(x = "Proportion (p)", y = "Standard Error", title = "SE vs Proportion (n = 500)")

```

<img src="Data-Science-with-R_files/figure-html/unnamed-chunk-473-1.png" alt="" width="80%" style="display: block; margin: auto;" />

This sample gives us smaller standard errors. For example, if the real proportion of voters of the Blue party was $p=55\%$ we would have $E[\overline{X}]=p=55\%$ and a $SE[\overline{X}]=2.2\%$:


``` r
coord_x <- 0.55
coord_y <- sqrt(coord_x * (1 - coord_x)) / sqrt(n)

tibble(p = p, SE_avg = SE_avg) |>
  ggplot(aes(x = p, y = SE_avg)) +
  geom_point(color = "steelblue") +
  geom_hline(yintercept = coord_y, linetype = "dashed", color = "blue") +
  geom_vline(xintercept = coord_x, linetype = "dashed", color = "blue") +
  coord_cartesian(ylim = c(0, 0.12)) +
  labs(x = "Proportion (p)", y = "Standard Error", title = "SE at p = 55% (n = 500)")
```

<img src="Data-Science-with-R_files/figure-html/unnamed-chunk-474-1.png" alt="" width="80%" style="display: block; margin: auto;" />

If we now calculate a range of two standard errors around $55\%$ we would have a range that goes from $50.6\%$ to $59.4\%$. Again, interpretation is that the mean that we find in our random survey has a 95% probability of being in that range.

We see then that this theoretical prediction, the standard error, becomes smaller as the sample size $n$ increases and in turn depends on the probability of the population $p$ that we do not know. Moreover, with a real value of $p=0.5$, (50%), we have the maximum value of the standard error that we can obtain. Thus, if we correct $p$ at 50%, which would be the extreme of cases, a tie, we can calculate how the value of the standard error of the average changes according to the sample size:


``` r
p <- 0.5
n <- seq(20, 5000, 20)
SE_avg <- sqrt(p*(1-p)/n)

tibble(n = n, SE_avg = SE_avg) |>
  ggplot(aes(x = n, y = SE_avg)) +
  geom_line(color = "steelblue") +
  geom_hline(yintercept = 0.015, linetype = "dashed", color = "blue") +
  geom_vline(xintercept = 1000, linetype = "dashed", color = "blue") +
  labs(x = "Sample Size (n)", y = "Standard Error", title = "SE vs Sample Size (p = 50%)")

```

<img src="Data-Science-with-R_files/figure-html/unnamed-chunk-475-1.png" alt="" width="80%" style="display: block; margin: auto;" />

A sample of 1,000 people, for example, generates us a maximum standard error of 0.015 or 1.5%.

### Margin of Error
As we have already seen, we could consider a range of 1 standard error or 2 standard errors around $E[\overline{X}]$ and calculate the probability that our sample mean $\overline{X}$ is in that range. Or what is mathematically the same, we could say that if we build a range of 1 or 2 standard errors around our sample mean $\overline{X}$ there is a determined probability that in that range is included the expected value $E[\overline{X}]$ which is, by formula equal to $p$, the value we want to estimate.

It is crucial then to calculate the standard error of the average $SE[\overline{X}]$, but we see ourselves limited because it depends on $p$.

There is another way to calculate $SE[\overline{X}]$ without using $p$ and is known as the standard error of estimation $\hat{SE}[\overline{X}]$. For this we will use the following formula:

$\hat{SE}[\overline{X}]=\sqrt{\frac{\overline{X}(1-\overline{X})}{n}}$


Where, as we already know, $\overline{X}$ is the mean of our sample or sample mean. For our example case, it is the percentage that the Blue party obtained in the survey we conducted.

Now that we have the sample mean $\overline{X}$ and we can already calculate the standard error of estimation $\hat{SE}[\overline{X}]$ we can start building ranges around $\overline{X}$ that increase the probability of finding $p$.

To make communication simpler, we will use by convention the notation **margin of error** to indicate that we are going to take a **range of 2 standard errors of estimation**.

For example, we have a sample of 1100 people and after reviewing the survey results we have a sample mean of $\overline{X}=56\%$ for the Blue party. With this we can estimate the standard error of estimation $\hat{SE}[\overline{X}]$ with the formula we just described and finally calculate the margin of error.


``` r
# Total respondents
total <- 1100

# Survey results, 56% indicated Blue:
X_avg <- 0.56

# Standard error estimation
SE_est <- sqrt(X_avg * (1 - X_avg)/total)
SE_est
#> [1] 0.01496663

# Margin of error, MoE
MoE <- 2 * SE_est
MoE
#> [1] 0.02993326
```

With this we would have that from a sample of 1100 people, we have estimated 56% voting intention for the Blue party with a margin of error of $+- 2.99\%$.

Finally, let's see examples of the different surveys conducted in April and early May 2020 to measure voting intentions in the US.

<img src="_assets/images/04-statistics/polls-us.png" alt="Table of US election polls from April-May 2020 showing sample sizes, margins of error, and candidate percentages" width="80%" style="display: block; margin: auto;" />

We see as columns:

The table columns provide key details about each survey. The **Poll** column identifies the surveying company, while **Date** indicates when the survey was conducted. **Sample** shows the number of respondents, which varies by pollster, and **MoE** represents the margin of error. The **Candidates** columns display the backing for each presidential contender (note that percentages may not sum to 100% due to checking for blank or null votes). Finally, **Spread** estimates the lead one candidate holds over the other.

If, on the other hand, we ask ourselves why larger surveys are not done, for example 50,000 people, the reason is that:

You might wonder why we rely on smaller samples instead of surveying, say, 50,000 people. The primary constraint is cost; reaching such a large audience is prohibitively expensive. Furthermore, parameter estimation is inherently theoretical—providing a razor-thin margin of error implies a false sense of absolute certainty. In reality, voter opinions are fluid, no survey is perfectly random (often missing rural populations), and respondents who claim they will vote might ultimately stay home.

### Confidence Intervals
Confidence intervals are a very useful concept widely used by Data Scientists. However, it is nothing more than another way of expressing what we have already learned so far.

And it is that a **confidence interval** of 95% tells us that there is a 95% probability that the interval we generate includes the parameter $p$ that we want to estimate. This is nothing more than another way of indicating that we have to build an interval considering the margin of error, that is two standard errors around our sample mean.

For the sample of 1100 people we saw in the previous section, we reported an estimate of 56% with a margin of error of $+- 2.99\%$.

If we now want to use **confidence intervals** in our language we would say: We estimate 56% for the Blue party with a confidence interval of 95%. This confidence interval goes from 53% to 59%.

## Spread Estimation
Although we are interested in estimating the proportion that the Blue party would obtain $p$, sometimes it is more useful to know the difference (by how much it wins/loses). For example, when we have two parties in the second round of elections not only do we have votes for Blue and Red, but also blank/spoiled. Also, in regular elections we have more than one pollster doing several surveys. So one could give 45% for Blue, 41% for Red. While another can give 41% for Blue and 38% for Red, etc. If we compare surveys, rather than knowing the exact percentage it is more useful to know by how much the blue party wins, since if we see that in all, for example it wins by 4%, with a tiny standard error, then $p$ would not matter much. Only with the difference data we could take get an idea of who will win.

This difference is called _spread_. We had defined that the voting intention for the Blue party was $p$ and for the red party $1-p$. So what we would expect to obtain for the difference would be $p - (1-p)$, that is $2p - 1$.

Standard error of the _spread_:

$SE[spread]=2\sqrt{\frac{p(1-p) }{n}}$

We see that the standard error is twice the standard error of the average, which depends on $p$, and we have already found previously an estimation to not depend on $p$ but on the mean of our sample. So we will use:

$\hat{SE[spread]}=2\sqrt{\frac{\overline{X}(1-\overline{X}) }{n}}$

Let's see with an example these concepts. Let's study the 2016 US elections. In this case we have multiple pollsters, conducting multiple surveys months prior to elections, and mainly two parties competing for president.

We are going to use the `polls_us_election_2016` data frame included in the `dslabs` library which includes data from multiple surveys conducted for the 2016 US elections between Hillary Clinton and Donald Trump. The first thing we will do is explore the data:


``` r
library(dslabs)
head(polls_us_election_2016)
```

As we see, we do not have the standard error, nor the confidence interval. So we will proceed to make some mutations applying the formulas learned so far focusing on the voting intention for Hillary Clinton.


``` r
surveys <- polls_us_election_2016 |>
  filter(state == "U.S.") |> 
  mutate(X_avg = rawpoll_clinton/100) |>
  mutate(SE_prom = sqrt((X_avg*(1-X_avg))/samplesize)) |>
  mutate(inferior = X_avg - 2*SE_prom,
         superior = X_avg + 2*SE_prom) |>
  select(pollster, enddate, X_avg, SE_prom, inferior, superior)

# First 5 rows
surveys |> 
  head(5)
#>                   pollster    enddate  X_avg     SE_prom  inferior  superior
#> 1 ABC News/Washington Post 2016-11-06 0.4700 0.010592790 0.4488144 0.4911856
#> 2  Google Consumer Surveys 2016-11-07 0.3803 0.002978005 0.3743440 0.3862560
#> 3                    Ipsos 2016-11-06 0.4200 0.010534681 0.3989306 0.4410694
#> 4                   YouGov 2016-11-07 0.4500 0.008204286 0.4335914 0.4664086
#> 5         Gravis Marketing 2016-11-06 0.4700 0.003869218 0.4622616 0.4777384
```

For example, IPSOS in a survey published on 11/06/16 estimated 42% voting intention for Clinton with a 95% confidence interval in a range going from 39.89% to 44.10%.

Does this data mean that they estimated she would lose? No, given that in this case we are using real data the proportion of votes for Clinton with those for Trump will not sum 100%. In fact, on actual election day Clinton obtained 48.2% and Trump 46.1% of total votes cast. That is real $p$ was 48.2%.

What we could calculate is how many of these pollsters guessed right in their estimation. That is, if in their confidence intervals is the $p=48.2\%$ that Clinton finally obtained. To do this, we will add a column `guessed_right` (guessed_right) with the validation of whether it is in the confidence interval and then use `summarize()` to calculate the percentage of surveys that guessed right.


``` r
surveys |> 
  mutate(guessed_right = inferior <= 0.482 & 0.482 <= superior) |> 
  summarize(mean(guessed_right))
#>   mean(guessed_right)
#> 1           0.2802893
```

Only 28% of published surveys published confidence intervals that included $p$. This, among many other reasons, because at the beginning there are many more undecided who finally decide in the last weeks.

Let's analyze now how many guessed right in the spread. It could be that even though they did not estimate exact $p$ the difference did remain over time. To do this, let's add to our surveys the column `spread` with the difference of votes:


``` r
surveys_spread <- polls_us_election_2016 |>
  filter(state == "U.S.") |> 
  mutate(spread = (rawpoll_clinton - rawpoll_trump)/100)
```

And now we are going to do a trick calculating the spread of our sample:

$spread=2*\overline{X}-1$

We can transform this formula:

$spread-1=2*\overline{X}$

$\frac{spread-1}{2}=\overline{X}$

Or what is the same:

$\overline{X}=\frac{spread-1}{2}$

This formula gives us an approximation of how much $\overline{X}$ would be transformed to a scale of 0 to 100%. With it, let's calculate the standard error and the confidence interval:


``` r
surveys_spread <- surveys_spread |> 
  mutate(X_avg = (spread + 1)/2) |>
  mutate(SE_spread = 2*sqrt((X_avg*(1-X_avg))/samplesize)) |>
  mutate(inferior = spread - 2*SE_spread,
         superior = spread + 2*SE_spread) |>
  select(pollster, enddate, spread, SE_spread, inferior, superior)

# First 5 rows
surveys_spread |> 
  head(5)
#>                   pollster    enddate spread   SE_spread     inferior
#> 1 ABC News/Washington Post 2016-11-06 0.0400 0.021206832 -0.002413664
#> 2  Google Consumer Surveys 2016-11-07 0.0234 0.006132712  0.011134575
#> 3                    Ipsos 2016-11-06 0.0300 0.021334733 -0.012669466
#> 4                   YouGov 2016-11-07 0.0400 0.016478037  0.007043926
#> 5         Gravis Marketing 2016-11-06 0.0400 0.007746199  0.024507601
#>     superior
#> 1 0.08241366
#> 2 0.03566542
#> 3 0.07266947
#> 4 0.07295607
#> 5 0.05549240
```

Now let's calculate how many of these pollsters guessed right in their estimation. That is, if in their confidence intervals is the real value of $spread=48.2\%-46.1\%=2.1\%$ that Clinton finally obtained spread. To do this, we will add the column `guessed_right` and then `summarize()`.


``` r
surveys_spread |> 
  mutate(guessed_right = inferior <= 0.021 & 0.021 <= superior) |> 
  summarize(mean(guessed_right))
#>   mean(guessed_right)
#> 1           0.6735986
```

In this case we see how 67.3% of the time, surveys correctly estimated the difference in votes favorable to Clinton.

As a clarification, final reminder of this case, even though Clinton obtained more votes she did not win the elections because the US system is different and not necessarily if you win in votes you obtain the presidency.

## Estimates Outside Election Polls
We have used election polls to understand statistical inference concepts. However, most Data Scientists are not related to voting intention estimation calculations. That does not mean we will not use those concepts. The central limit theorem not only works in election polls. What it means is that we will use some slightly different formulas that apply to more daily life cases.

From what we have learned so far the main change is the formula to calculate the standard error. We will use instead the standard deviation $\sigma$ of the sample to calculate the standard error:

$SE[\overline{X}]=\frac{\sigma}{\sqrt{n}}$

Where $\overline{X}$ is the average of our random sample and $n$ is the sample size.

### Example: Estimating Average Height

Let's apply this to a real-world scenario. Suppose we want to estimate the average height of adult males in a population, but we can only measure a sample of 50 people.

Using the `heights` dataset from `dslabs`, let's simulate this process:


``` r
# Load the heights data
data(heights)

# Our "population" (in reality, we wouldn't have access to this)
population <- heights |>
  filter(sex == "Male") |>
  mutate(height_cm = height * 2.54) |>  # Convert to cm
  pull(height_cm)

# True population parameters (unknown in real life)
true_mean <- mean(population)
true_sd <- sd(population)

cat("True population mean:", round(true_mean, 2), "cm\n")
#> True population mean: 176.06 cm
cat("True population SD:", round(true_sd, 2), "cm\n")
#> True population SD: 9.17 cm
```

Now let's take a random sample and build a 95% confidence interval:


``` r
set.seed(42)  # For reproducibility
n <- 50  # Sample size

# Take a random sample
sample_heights <- sample(population, n, replace = FALSE)

# Sample statistics
sample_mean <- mean(sample_heights)
sample_sd <- sd(sample_heights)

# Standard error of the mean
SE <- sample_sd / sqrt(n)

# 95% Confidence interval (2 standard errors)
ci_lower <- sample_mean - 2 * SE
ci_upper <- sample_mean + 2 * SE

cat("Sample mean:", round(sample_mean, 2), "cm\n")
#> Sample mean: 176.97 cm
cat("Standard error:", round(SE, 2), "cm\n")
#> Standard error: 1.44 cm
cat("95% CI: [", round(ci_lower, 2), ",", round(ci_upper, 2), "] cm\n")
#> 95% CI: [ 174.09 , 179.84 ] cm
cat("Does CI contain true mean?", ci_lower <= true_mean & true_mean <= ci_upper, "\n")
#> Does CI contain true mean? TRUE
```

Let's visualize this with a Monte Carlo simulation to verify that our confidence intervals work as expected:


``` r
set.seed(123)
n_simulations <- 1000
n <- 50

results <- tibble(
  sim_id = 1:n_simulations
) |>
  mutate(
    sample_data = map(sim_id, ~ sample(population, n, replace = FALSE)),
    sample_mean = map_dbl(sample_data, mean),
    sample_sd = map_dbl(sample_data, sd),
    SE = sample_sd / sqrt(n),
    ci_lower = sample_mean - 2 * SE,
    ci_upper = sample_mean + 2 * SE,
    contains_true = ci_lower <= true_mean & true_mean <= ci_upper
  )

# Proportion of CIs that contain the true mean
cat("Proportion of 95% CIs containing true mean:", 
    round(mean(results$contains_true), 3), "\n")
#> Proportion of 95% CIs containing true mean: 0.956
```

This confirms that approximately 95% of our confidence intervals capture the true population mean—exactly as the theory predicts!




## Exercises

The most common data a Data Scientist manages comes from people, some attribute/characteristic of them. In these exercises we are going to use the heights data frame that we already used for other purposes in previous chapters.


``` r
library(dslabs)
data(heights)
```

82. Create a vector named `x` to extract the height data for all individuals in the dataset. Then, report the population's average and standard deviation, ensuring you convert the heights to meters first.



<details>
  <summary type="button">Solution</summary>

``` r
x <- heights |> 
  filter(sex == "Male") |>
  mutate(height_m = height/39.37) |> 
  pull(height_m)

# Average of the population
mean(x)

# Standard deviation
sd(x)
```
</details>

> Mathematically we use `x` in lowercase to refer to our total population and `X` to refer to a random sample. We will denote the population mean as $\mu$ and the population standard deviation as $\sigma$

> Most of the time we will not have access to the mean and standard deviation of the population because it is very large and highly expensive.

83. Assume we cannot access the entire population and can only obtain a random sample of 100 people. Simulate this by creating a random sample with replacement from `x`, storing the values in a vector called `X`. Using this sample data, construct a 95% confidence interval to estimate the population average.



<details>
  <summary type="button">Solution</summary>

``` r
N <- 100
X <- sample(x, N, replace = TRUE)

# Expected value
mean(X)

# Standard error
se <- sd(X)/sqrt(N)

# 95% confidence interval is approx. 2 se
ic <- c(mean(X) - 2*se, mean(X) + 2*se)

```
</details>

84. Validate your estimation method using a Monte Carlo simulation. Repeat the sampling process 10,000 times and calculate the percentage of expected confidence intervals that successfully capture the true population mean.



<details>
  <summary type="button">Solution</summary>

``` r
true_mean <- mean(x)

N <- 100
n_times <- 10000

set.seed(2025)
simulation <- replicate(n_times, {
  X <- sample(x, N, replace = TRUE)
  se <- sd(X)/sqrt(N)
  lower <- mean(X) - 2*se
  upper <- mean(X) + 2*se
  between(true_mean, lower, upper)
})

mean(simulation)

```
</details>



<!--chapter:end:04-statistics/inference.Rmd-->


# (PART) Data Wrangling {-}

# Introduction {-}

A frequent error in Data Science projects is thinking that they start with analysis. In fact, when a data analyst is asked where they spend most of their time, the answer remains the same: [80% in Data Wrangling](https://www.infoworld.com/article/3228245/the-80-20-data-science-dilemma.html)^[https://www.infoworld.com/article/3228245/the-80-20-data-science-dilemma.html].

Data in its natural form (Raw Data), usually contain registration errors that make exact analysis impossible. Being recorded by different systems and people, it is normal to end up with a file in which the same value is expressed in different ways (for example, a date can be recorded as June 28, or as 28/06), there may be blank records, and of course, grammatical errors.

When analyzing this data, all these records have to be pre-processed. That is, the data must be cleaned, unified, consolidated, and normalized so that it can be used to extract valuable information. Data Wrangling is the process of preparing data to be leveraged.

In the following chapters, we will see several common steps of the Data Wrangling process such as Importing data into R from files, converting data to tidy type, string processing, html processing, date and time formatting, and text mining.

In this section, we will master the essential skills for getting data into R and reshaping it for analysis. We will start by learning how to **import data** from diverse sources, including CSV files, Excel spreadsheets, and web pages. Once loaded, we will explore how to **transform** data between "wide" and "tidy" (long) formats using `pivot_longer()` and `pivot_wider()`, ensuring our data is structured correctly for visualization and modeling. We will also cover how to **combine multiple datasets** using the powerful family of join functions (`left_join()`, `inner_join()`, etc.). Finally, we will delve into specialized processing techniques, including **web scraping**, **string manipulation** with regular expressions, **date conversion** with `lubridate`, and the fundamentals of **text mining** to extract insights from unstructured text.

# Data import and consolidation

## Importing from files
For importing files, whether they are text types or spreadsheets, we need to know where we are going to import the data from.

### Working Directory
By default, when we import files, R will search in the working directory. To find out the path of our working directory we will use the `getwd()` function.


``` r
getwd()
#> [1] "c:/Documents/dparedesi/git-repository/DS"
```

This is the path where we can place our files to load them. If we want to load data from another folder we can change the working directory using `setwd()`.


``` r
setwd("c:/Documents/Projects/R Files")

getwd()
#> [1] "c:/Documents/Projects/R Files"
```

> **Note**: While `setwd()` works, it is generally discouraged in reproducible workflows because it creates absolute paths that break when code is shared or moved. Consider using **RStudio Projects** combined with the `here` package, which provides `here::here()` to construct relative paths that work across different systems.

For practical purposes, we are going to use a file already available in one of the previously installed packages, `dslabs`, when we analyzed the danger level to decide which US state to travel to. To do this, we can use the `system.file()` function and determine the path where the `dslabs` package was installed.


``` r
dslabs_path <- system.file(package="dslabs")
```

Likewise, we can list the files and folders within that path using the `list.files()` function.


``` r
dslabs_path <- system.file(package="dslabs")
list.files(dslabs_path)
#>  [1] "data"        "DESCRIPTION" "extdata"     "help"        "html"       
#>  [6] "INDEX"       "Meta"        "NAMESPACE"   "R"           "script"
```

The folder we will use is **extdata**. We can access the path of this folder if we modify the parameters of the `system.file()` function.


``` r
dslabs_path <- system.file("extdata", package="dslabs")
list.files(dslabs_path)
#>  [1] "2010_bigfive_regents.xls"                               
#>  [2] "calificaciones.csv"                                     
#>  [3] "carbon_emissions.csv"                                   
#>  [4] "fertility-two-countries-example.csv"                    
#>  [5] "HRlist2.txt"                                            
#>  [6] "life-expectancy-and-fertility-two-countries-example.csv"
#>  [7] "murders.csv"                                            
#>  [8] "olive.csv"                                              
#>  [9] "RD-Mortality-Report_2015-18-180531.pdf"                 
#> [10] "ssa-death-probability.csv"
```

The file we will use is **murders.csv**. To build the complete path of this file we can concatenate the strings or we can also directly use the `file.path(path, file_name)` function.


``` r
csv_example_path <- file.path(dslabs_path, "murders.csv")
```

Finally, we will copy the file to our working directory with the `file.copy(source_path, destination_path)` function.


``` r
file.copy(csv_example_path, getwd())
#> [1] TRUE
```

We can validate the copy with the `file.exists(file_name)` function.


``` r
file.exists("murders.csv")
#> [1] TRUE
```

It is recommended to check the documentation of the file manipulation functions.


``` r
?files
```

### readr and readxl packages
Now that we have the file in our working directory, we will use functions within the **readr** and **readxl** packages to import files into R. Both are included in the **tidyverse** package that we previously installed.


``` r
library(tidyverse) # Here readr is included automatically
library(readxl)
```

The functions we will use the most will be `read_csv()` and `read_excel()`. The latter supports .xls and .xlsx extensions.


``` r
data_df <- read_csv("murders.csv", show_col_types = FALSE)

# Once imported we can remove the file if we wish
file.remove("murders.csv")
#> [1] TRUE
```

We see how by default it detects the headers in the first row and assigns them a default data type. Let's now explore our `data_df` object.


``` r
data_df
#> # A tibble: 51 × 5
#>    state                abb   region    population total
#>    <chr>                <chr> <chr>          <dbl> <dbl>
#>  1 Alabama              AL    South        4779736   135
#>  2 Alaska               AK    West          710231    19
#>  3 Arizona              AZ    West         6392017   232
#>  4 Arkansas             AR    South        2915918    93
#>  5 California           CA    West        37253956  1257
#>  6 Colorado             CO    West         5029196    65
#>  7 Connecticut          CT    Northeast    3574097    97
#>  8 Delaware             DE    South         897934    38
#>  9 District of Columbia DC    South         601723    99
#> 10 Florida              FL    South       19687653   669
#> # ℹ 41 more rows
```

The first thing it indicates is that the object is of type **tibble**. This object is very similar to a data frame, but with improved features such as, for example, the number of rows and columns in the console, the data type under the header, the default report of only the first 10 records automatically, among many others that we will discover in this chapter.

The same syntax and logic would apply for importing an excel file. In this case we are importing directly from the package path and not from our working directory.


``` r
excel_example_path <- file.path(dslabs_path, "2010_bigfive_regents.xls")
data_df_from_excel <- read_excel(excel_example_path)
```

**readr** gives us 7 different types of functions for importing flat files:

The `readr` package provides a versatile suite of functions for importing flat files, each tailored to a specific delimiter or format. The most common is **`read_csv()`**, designed for comma-separated values. For tab-separated files, we use **`read_tsv()`**, while **`read_delim()`** offers a general-purpose solution for files with custom delimiters (like semicolons or pipes). Other specialized functions include **`read_fwf()`** for fixed-width files, **`read_table()`** for whitespace-separated columns, and **`read_log()`** for parsing standard web server logs.

> **Tip**: For files that use semicolons as delimiters (common in European locales), use `read_csv2()` or `read_delim()` with `delim = ";"`. Also, if you encounter import issues, use `problems(data_df)` after importing to diagnose parsing errors.

> [!TIP]
> **Clean Column Names**: Interpreted data often has column names with spaces or capital letters (e.g., "Customer ID"). We highly recommend piping your data into `janitor::clean_names()` immediately after reading it to standardize everything to `snake_case` (e.g., "customer_id").

### Importing files from the internet
We have seen how we can enter the full path to load a file directly from another source different from our working directory. In the same way, if we have a file in an internet path we can pass it directly to R since `read_csv()` and the other **readr** import functions support URL input as a parameter.

Here we see the import of grades from students of the Data Science with R course.


``` r
##### Example 1:
# Historical grades data
url <- "https://dparedesi.github.io/DS-with-R-datasets/student-grades.csv"
grades <- read_csv(url, show_col_types = FALSE)

```


``` r
grades <- grades |>
  mutate(total = (P1 + P2 + P3 + P4 + P5 + P6)/30*20)

grades |> 
  select(P1, P2, P3, P4, P5, total) |> 
  summary()
```

From this we could visualize a histogram:


``` r
hist(grades$total)
```

Or we could compare between genders which one has the highest median:


``` r
grades |>
  ggplot() +
  aes(gender, total) +
  geom_boxplot()
  
```

We could also extract updated Covid-19 information.


``` r
##### Example 2:
# Covid-19 Data
url <- "https://covid.ourworldindata.org/data/owid-covid-data.csv"
internet_data <- read_csv(url, show_col_types = FALSE)

internet_data |> 
  arrange(desc(date)) |> 
  head(10)
```

## Tidy data
Ordered data or _tidy data_ are those obtained from a process called _data tidying_. It is one of the important cleaning processes during processing of large data or 'big data' and is a very used step in Data Science. The main characteristics are that each different observation of that variable has to be in a different row and that each variable you measure has to be in a column [@leek2015].

As we may have noticed, we have been using _tidy data_ since the first chapters. However, not all our data comes ordered. Most of it comes in what we call wide data or _wide data_.

For example, we have previously used data from Gapminder. Let's filter the data from Germany and South Korea to remember how we had our data.


``` r
gapminder |> 
  filter(country %in% c("South Korea", "Germany")) |> 
  head(10)
#>        country year infant_mortality life_expectancy fertility population
#> 1      Germany 1960             34.0           69.26      2.41   73179665
#> 2  South Korea 1960             80.2           53.02      6.16   25074028
#> 3      Germany 1961               NA           69.85      2.44   73686490
#> 4  South Korea 1961             76.1           53.75      5.99   25808542
#> 5      Germany 1962               NA           70.01      2.47   74238494
#> 6  South Korea 1962             72.4           54.51      5.79   26495107
#> 7      Germany 1963               NA           70.10      2.49   74820389
#> 8  South Korea 1963             68.8           55.27      5.57   27143075
#> 9      Germany 1964               NA           70.66      2.49   75410766
#> 10 South Korea 1964             65.3           56.04      5.36   27770874
#>            gdp continent         region
#> 1           NA    Europe Western Europe
#> 2  28928298962      Asia   Eastern Asia
#> 3           NA    Europe Western Europe
#> 4  30356298714      Asia   Eastern Asia
#> 5           NA    Europe Western Europe
#> 6  31102566019      Asia   Eastern Asia
#> 7           NA    Europe Western Europe
#> 8  34067175844      Asia   Eastern Asia
#> 9           NA    Europe Western Europe
#> 10 36643076469      Asia   Eastern Asia
```

We notice that each row is an observation and each column represents a variable. It is ordered data, _tidy data_. On the other hand, we can see what the data was like for these two countries if we access the source in the `dslabs` package.


``` r
fertility_path <- file.path(dslabs_path, "fertility-two-countries-example.csv")

wide_data <- read_csv(fertility_path, show_col_types = FALSE)

wide_data
#> # A tibble: 2 × 57
#>   country  `1960` `1961` `1962` `1963` `1964` `1965` `1966` `1967` `1968` `1969`
#>   <chr>     <dbl>  <dbl>  <dbl>  <dbl>  <dbl>  <dbl>  <dbl>  <dbl>  <dbl>  <dbl>
#> 1 Germany    2.41   2.44   2.47   2.49   2.49   2.48   2.44   2.37   2.28   2.17
#> 2 South K…   6.16   5.99   5.79   5.57   5.36   5.16   4.99   4.85   4.73   4.62
#> # ℹ 46 more variables: `1970` <dbl>, `1971` <dbl>, `1972` <dbl>, `1973` <dbl>,
#> #   `1974` <dbl>, `1975` <dbl>, `1976` <dbl>, `1977` <dbl>, `1978` <dbl>,
#> #   `1979` <dbl>, `1980` <dbl>, `1981` <dbl>, `1982` <dbl>, `1983` <dbl>,
#> #   `1984` <dbl>, `1985` <dbl>, `1986` <dbl>, `1987` <dbl>, `1988` <dbl>,
#> #   `1989` <dbl>, `1990` <dbl>, `1991` <dbl>, `1992` <dbl>, `1993` <dbl>,
#> #   `1994` <dbl>, `1995` <dbl>, `1996` <dbl>, `1997` <dbl>, `1998` <dbl>,
#> #   `1999` <dbl>, `2000` <dbl>, `2001` <dbl>, `2002` <dbl>, `2003` <dbl>, …
```

We see that the original data had two rows, one per country and then each column represented a year. This is what we call wide data or _wide data_. Normally we will have _wide data_ that we first have to convert to _tidy data_ to later be able to perform our analyses.

### Transforming to tidy data
The `tidyverse` library provides two functions to reshape data between _wide_ and _long_ (tidy) formats. We use `pivot_longer()` to convert from _wide data_ to _tidy data_ and `pivot_wider()` to convert from _tidy data_ to _wide data_.

#### pivot_longer function
Let's see the utility with the `wide_data` object that we created in the previous section as a result of importing data from the csv. First apply the `pivot_longer()` function to explore the conversion that is performed by default.


``` r
tidy_data <- wide_data |>
  pivot_longer(cols = -country, names_to = "key", values_to = "value")

tidy_data
#> # A tibble: 112 × 3
#>    country key   value
#>    <chr>   <chr> <dbl>
#>  1 Germany 1960   2.41
#>  2 Germany 1961   2.44
#>  3 Germany 1962   2.47
#>  4 Germany 1963   2.49
#>  5 Germany 1964   2.49
#>  6 Germany 1965   2.48
#>  7 Germany 1966   2.44
#>  8 Germany 1967   2.37
#>  9 Germany 1968   2.28
#> 10 Germany 1969   2.17
#> # ℹ 102 more rows
```

We see how the `pivot_longer()` function has collected the columns into two, the names column ("key") and the values column ("value"). We can change the title of these new columns, for example "year" and "fertility".


``` r
tidy_data <- wide_data |>
  pivot_longer(cols = -country, names_to = "year", values_to = "fertility")

tidy_data
#> # A tibble: 112 × 3
#>    country year  fertility
#>    <chr>   <chr>     <dbl>
#>  1 Germany 1960       2.41
#>  2 Germany 1961       2.44
#>  3 Germany 1962       2.47
#>  4 Germany 1963       2.49
#>  5 Germany 1964       2.49
#>  6 Germany 1965       2.48
#>  7 Germany 1966       2.44
#>  8 Germany 1967       2.37
#>  9 Germany 1968       2.28
#> 10 Germany 1969       2.17
#> # ℹ 102 more rows
```

We use `cols = -country` to exclude the country column from being pivoted. By default the column names are collected as text. To convert them to numbers we use the `names_transform` argument.


``` r
tidy_data <- wide_data |>
  pivot_longer(cols = -country, names_to = "year", values_to = "fertility",
               names_transform = list(year = as.integer))

tidy_data
#> # A tibble: 112 × 3
#>    country  year fertility
#>    <chr>   <int>     <dbl>
#>  1 Germany  1960      2.41
#>  2 Germany  1961      2.44
#>  3 Germany  1962      2.47
#>  4 Germany  1963      2.49
#>  5 Germany  1964      2.49
#>  6 Germany  1965      2.48
#>  7 Germany  1966      2.44
#>  8 Germany  1967      2.37
#>  9 Germany  1968      2.28
#> 10 Germany  1969      2.17
#> # ℹ 102 more rows
```

This data would now be ready to create graphs using `ggplot()`.


``` r
tidy_data |>
  ggplot() +
  aes(year, fertility, color = country) +
  geom_point()
```

<img src="Data-Science-with-R_files/figure-html/unnamed-chunk-518-1.png" alt="" width="80%" style="display: block; margin: auto;" />

#### pivot_wider function
Sometimes, as we will see in the following section, it will be useful to go back from rows to columns. For this we will use the `pivot_wider()` function, where we specify `names_from` (the column containing the new column names) and `values_from` (the column containing the values). Additionally, we can use the `:` operator to indicate from which column to which column we want to select.


``` r
tidy_data |> 
  pivot_wider(names_from = year, values_from = fertility) |> 
  select(country, `1965`:`1970`)
#> # A tibble: 2 × 7
#>   country     `1965` `1966` `1967` `1968` `1969` `1970`
#>   <chr>        <dbl>  <dbl>  <dbl>  <dbl>  <dbl>  <dbl>
#> 1 Germany       2.48   2.44   2.37   2.28   2.17   2.04
#> 2 South Korea   5.16   4.99   4.85   4.73   4.62   4.53
```

### separate function
In the cases described above we had a situation with relatively ordered data. We only had to do a collection transformation and converted to _tidy data_. However, the data is not always stored in such an easily interpretable way. Sometimes we have data like this:


``` r
path <- file.path(dslabs_path, "life-expectancy-and-fertility-two-countries-example.csv")

data <- read_csv(path, show_col_types = FALSE)

data |> 
  select(1:5) #Report first 5 columns
#> # A tibble: 2 × 5
#>   country     `1960_fertility` `1960_life_expectancy` `1961_fertility`
#>   <chr>                  <dbl>                  <dbl>            <dbl>
#> 1 Germany                 2.41                   69.3             2.44
#> 2 South Korea             6.16                   53.0             5.99
#> # ℹ 1 more variable: `1961_life_expectancy` <dbl>
```

If we apply `pivot_longer()` directly we would not have our data ordered yet. Let's see:


``` r
data |> 
  pivot_longer(cols = -country, names_to = "key_col", values_to = "value_col")
#> # A tibble: 224 × 3
#>    country key_col              value_col
#>    <chr>   <chr>                    <dbl>
#>  1 Germany 1960_fertility            2.41
#>  2 Germany 1960_life_expectancy     69.3 
#>  3 Germany 1961_fertility            2.44
#>  4 Germany 1961_life_expectancy     69.8 
#>  5 Germany 1962_fertility            2.47
#>  6 Germany 1962_life_expectancy     70.0 
#>  7 Germany 1963_fertility            2.49
#>  8 Germany 1963_life_expectancy     70.1 
#>  9 Germany 1964_fertility            2.49
#> 10 Germany 1964_life_expectancy     70.7 
#> # ℹ 214 more rows
```

We will use the `separate()` function to separate a column into multiple columns using a specific separator. In this case our separator would be the character `_`. Also, we will add the attribute `extra="merge"` to indicate that if there is more than one separator character, do not separate them and keep them joined.


``` r
data |> 
  pivot_longer(cols = -country, names_to = "key_col", values_to = "value_col") |> 
  separate(key_col, c("year", "other_var"), sep="_", extra = "merge")
#> # A tibble: 224 × 4
#>    country year  other_var       value_col
#>    <chr>   <chr> <chr>               <dbl>
#>  1 Germany 1960  fertility            2.41
#>  2 Germany 1960  life_expectancy     69.3 
#>  3 Germany 1961  fertility            2.44
#>  4 Germany 1961  life_expectancy     69.8 
#>  5 Germany 1962  fertility            2.47
#>  6 Germany 1962  life_expectancy     70.0 
#>  7 Germany 1963  fertility            2.49
#>  8 Germany 1963  life_expectancy     70.1 
#>  9 Germany 1964  fertility            2.49
#> 10 Germany 1964  life_expectancy     70.7 
#> # ℹ 214 more rows
```

We already have the year separated, but this data is still not _tidy data_ since there is a row for fertility and a row for life expectancy for each country. We have to pass these values from row to columns. And for that we already learned that we can use the `pivot_wider()` function


``` r
data |> 
  pivot_longer(cols = -country, names_to = "key_col", values_to = "value_col") |> 
  separate(key_col, c("year", "other_var"), sep="_", extra = "merge") |> 
  pivot_wider(names_from = other_var, values_from = value_col)
#> # A tibble: 112 × 4
#>    country year  fertility life_expectancy
#>    <chr>   <chr>     <dbl>           <dbl>
#>  1 Germany 1960       2.41            69.3
#>  2 Germany 1961       2.44            69.8
#>  3 Germany 1962       2.47            70.0
#>  4 Germany 1963       2.49            70.1
#>  5 Germany 1964       2.49            70.7
#>  6 Germany 1965       2.48            70.6
#>  7 Germany 1966       2.44            70.8
#>  8 Germany 1967       2.37            71.0
#>  9 Germany 1968       2.28            70.6
#> 10 Germany 1969       2.17            70.5
#> # ℹ 102 more rows
```

In other cases, instead of separating a column we will want to join them. In future cases we will see how the `unite(column_1, column2)` function can also be useful.



## Exercises

85. Access the **Uber Peru 2010** dataset from [this link](https://dparedesi.github.io/DS-with-R-datasets/uber-peru-2010.csv) and attempt to import it into an object named `uber_peru_2010`. Pay attention to the delimiters used in the file.



<details>
  <summary type="button">Solution</summary>

``` r
url <- "https://dparedesi.github.io/DS-with-R-datasets/uber-peru-2010.csv"

# We will use read_csv since it is separated by commas
uber_peru_2010 <- read_csv(url, show_col_types = FALSE)

# Upon importing it we realize it is separated by ";"
uber_peru_2010 |> 
  head()

# Therefore we import again using read_delim
uber_peru_2010 <- read_delim("external/uber-peru-2010.csv", 
                             delim = ";", 
                             col_types = cols(.default = "c")
                             )

uber_peru_2010 |> 
  head()

```
</details>


86. Import the **SINADEF** deaths registry from [this source](https://www.datosabiertos.gob.pe/sites/default/files/sinadef-deaths.csv) into an object called `deaths`. Ensure you handle the file encoding correctly to avoid character issues.



<details>
  <summary type="button">Solution</summary>

``` r
url <- "https://www.datosabiertos.gob.pe/sites/default/files/sinadef-deaths.csv"
url <- "https://dparedesi.github.io/DS-with-R-datasets/sinadef-deaths.csv"

# We will use read_delim because it is delimited by ";" and not by ","
# Also we change the encoding to avoid error in loading
deaths <- read_delim(url, ";",
                          local = locale(encoding = "latin1"))
```
</details>


87. Download the resource file from [this link](https://dparedesi.github.io/DS-with-R-datasets/resources-other-idd.xlsx) to a temporary location. Validating that the file exists, load the specific sheet named "Deflators" into an object named `data`.



<details>
  <summary type="button">Solution</summary>

``` r
# Store the url
url <- "https://dparedesi.github.io/DS-with-R-datasets/resources-other-idd.xlsx"

# Create a temporary name & path for our file. See: ?tempfile
temp_file <- tempfile()

# Download the file to our temp
download.file(url, temp_file)

# Import the excel
dat <- read_excel(temp_file, sheet = "Deflators")

# Remove the temporary file
file.remove(temp_file)
```
</details>

For the following files run the following code so that you have access to the objects referred to in the problems:


``` r
# GDP by countries
url <- "https://dparedesi.github.io/DS-with-R-datasets/gdp.csv"
gdp <- read_csv(url, show_col_types = FALSE)

# Diseases by years by countries
url <- "https://dparedesi.github.io/DS-with-R-datasets/diseases-evolution.csv"
diseases_wide <- read_csv(url, show_col_types = FALSE)

# Number of female mayors
url <- "https://dparedesi.github.io/DS-with-R-datasets/female-mayors.csv"
female_mayors <- read_csv(url, show_col_types = FALSE)

# Evolution of a university
url <- "https://dparedesi.github.io/DS-with-R-datasets/university.csv"
university <- read_csv(url, show_col_types = FALSE)

```

88. Examine the structure of the `gdp` dataset. Transform it into a *tidy* format suitable for analysis, and then create a line plot visualizing the evolution of GDP over time for each country.



<details>
  <summary type="button">Solution</summary>

``` r
# To tidy data
gdp <- gdp |> 
  pivot_longer(cols = -country, names_to = "year", values_to = "gdp",
               names_transform = list(year = as.integer))

gdp

# Visualization
gdp |> 
  ggplot() +
  aes(year, gdp, color=country) +
  geom_line()

```
</details>

89. The `diseases_wide` object contains disease counts in a wide format. Reshape this dataframe into a *tidy* structure where the specific diseases are consolidated into a single column.



<details>
  <summary type="button">Solution</summary>

``` r
# Solution
diseases_1 <- diseases_wide |> 
  pivot_longer(cols = c(-country, -year, -population), names_to = "disease", values_to = "count")

diseases_1

# Alternative solution. Instead of indicating what to omit, we indicate what to take into account
diseases_2 <- diseases_wide |> 
  pivot_longer(cols = HepatitisA:Rubella, names_to = "disease", values_to = "count")

diseases_2

```
</details>

90. Convert the `female_mayors` dataset, which is currently in a long format, into a *wide* format where the variables are spread across columns.



<details>
  <summary type="button">Solution</summary>

``` r
female_mayors <- female_mayors |> 
  pivot_wider(names_from = variable, values_from = total)

```
</details>

91. The `university` dataset is untidy. Reshape it by first pivoting longer to gather variables, separating the combined variable names, and then pivoting wider to achieve a final tidy structure.



<details>
  <summary type="button">Solution</summary>

``` r
university <- university |> 
  pivot_longer(cols = -semester, names_to = "variable", values_to = "value") |> 
  separate(variable, c("name", "variable2"), sep="_") |> 
  pivot_wider(names_from = variable2, values_from = value)

university
```
</details>



## Joining tables
Regularly we will have data from different sources that we then have to combine to be able to perform our analyses. For this we will learn different groups of functions that will allow us to combine multiple objects.

### Join functions
Join functions are the most used in table crossing. To use them we have to make sure we have the `dplyr` library installed.


``` r
library(dplyr)
```

This library includes a variety of functions to combine tables.

The `dplyr` package offers a family of join functions to combine tables based on common keys. The most frequently used is **`left_join()`**, which preserves all rows from the first (left) table and appends matching data from the second. Conversely, **`right_join()`** keeps all rows from the second table. **`inner_join()`** is more restrictive, retaining only the rows that have matching keys in *both* tables, effectively filtering for the intersection. **`full_join()`** does the opposite, keeping *all* rows from both tables and filling missing values with `NA`. Finally, filtering joins like **`semi_join()`** (keeps rows in the first table that match the second) and **`anti_join()`** (keeps rows in the first table that do *not* match the second) are excellent for data validation and filtering without adding new columns.

To see the join functions with examples we will use the following files:


``` r
url_1 <- "https://dparedesi.github.io/DS-with-R-datasets/join-card.csv"
url_2 <- "https://dparedesi.github.io/DS-with-R-datasets/join-customer.csv"

card_data_1 <- read_csv(url_1, col_types = cols(id = col_character()))
customer_data_2 <- read_csv(url_2, col_types = cols(id = col_character()))

card_data_1
#> # A tibble: 6 × 3
#>   id       customer_type card            
#>   <chr>    <chr>         <chr>           
#> 1 45860518 premium       VISA gold       
#> 2 46534312 bronze        Mastercard Black
#> 3 47564535 silver        VISA platinum   
#> 4 48987654 bronze        American Express
#> 5 78765434 gold          VISA Signature  
#> 6 41346556 premium       Diners Club

customer_data_2
#> # A tibble: 8 × 4
#>   id       first_name last_name mother_last_name
#>   <chr>    <chr>      <chr>     <chr>           
#> 1 49321442 Iver       Castro    Rivera          
#> 2 47564535 Enrique    Gutierrez Rivasplata      
#> 3 48987654 Alexandra  Cupe      Gaspar          
#> 4 47542345 Christiam  Olortegui Roca            
#> 5 41346556 Karen      Jara      Mory            
#> 6 45860518 Hebert     Lopez     Chavez          
#> 7 71234321 Jesus      Valle     Mariños         
#> 8 73231243 Jenny      Sosa      Sosa
```

#### Left join
Given two tables with the same identifier (in our case our identifier consists only of a single column: ID), the left join function maintains the information of the first table and completes it with the data that crosses in the second table


``` r
left_join(card_data_1, customer_data_2, by = c("id"))
#> # A tibble: 6 × 6
#>   id       customer_type card             first_name last_name mother_last_name
#>   <chr>    <chr>         <chr>            <chr>      <chr>     <chr>           
#> 1 45860518 premium       VISA gold        Hebert     Lopez     Chavez          
#> 2 46534312 bronze        Mastercard Black <NA>       <NA>      <NA>            
#> 3 47564535 silver        VISA platinum    Enrique    Gutierrez Rivasplata      
#> 4 48987654 bronze        American Express Alexandra  Cupe      Gaspar          
#> 5 78765434 gold          VISA Signature   <NA>       <NA>      <NA>            
#> 6 41346556 premium       Diners Club      Karen      Jara      Mory
```

As we can see, the first three columns are exactly the same as we initially had and to the right of those columns we see the columns of the other table for the values ​​that did cross the data. In this case we are facing a data inconsistency since all customers of `card_data_1` should be in `customer_data_2`. This inconsistency could lead us to have to map the data loss process, etc.

#### Right join
Given two tables with the same identifier, the right join function maintains the information of the second table and completes it with the data that crosses in the first table


``` r
right_join(card_data_1, customer_data_2, by = "id")
#> # A tibble: 8 × 6
#>   id       customer_type card             first_name last_name mother_last_name
#>   <chr>    <chr>         <chr>            <chr>      <chr>     <chr>           
#> 1 45860518 premium       VISA gold        Hebert     Lopez     Chavez          
#> 2 47564535 silver        VISA platinum    Enrique    Gutierrez Rivasplata      
#> 3 48987654 bronze        American Express Alexandra  Cupe      Gaspar          
#> 4 41346556 premium       Diners Club      Karen      Jara      Mory            
#> 5 49321442 <NA>          <NA>             Iver       Castro    Rivera          
#> 6 47542345 <NA>          <NA>             Christiam  Olortegui Roca            
#> 7 71234321 <NA>          <NA>             Jesus      Valle     Mariños         
#> 8 73231243 <NA>          <NA>             Jenny      Sosa      Sosa
```

The idea is the same as in `left_join`, only this time the `NA` are in the first two columns.

#### Inner join
In this case we will only have the intersection of the tables. Only the result of the data that are in both tables will be shown.


``` r
inner_join(card_data_1, customer_data_2, by = "id")
#> # A tibble: 4 × 6
#>   id       customer_type card             first_name last_name mother_last_name
#>   <chr>    <chr>         <chr>            <chr>      <chr>     <chr>           
#> 1 45860518 premium       VISA gold        Hebert     Lopez     Chavez          
#> 2 47564535 silver        VISA platinum    Enrique    Gutierrez Rivasplata      
#> 3 48987654 bronze        American Express Alexandra  Cupe      Gaspar          
#> 4 41346556 premium       Diners Club      Karen      Jara      Mory
```

#### Full join
Full join is a total crossing of both. It shows us all the data that are in both the first and the second table.


``` r
full_join(card_data_1, customer_data_2, by = "id")
#> # A tibble: 10 × 6
#>    id       customer_type card             first_name last_name mother_last_name
#>    <chr>    <chr>         <chr>            <chr>      <chr>     <chr>           
#>  1 45860518 premium       VISA gold        Hebert     Lopez     Chavez          
#>  2 46534312 bronze        Mastercard Black <NA>       <NA>      <NA>            
#>  3 47564535 silver        VISA platinum    Enrique    Gutierrez Rivasplata      
#>  4 48987654 bronze        American Express Alexandra  Cupe      Gaspar          
#>  5 78765434 gold          VISA Signature   <NA>       <NA>      <NA>            
#>  6 41346556 premium       Diners Club      Karen      Jara      Mory            
#>  7 49321442 <NA>          <NA>             Iver       Castro    Rivera          
#>  8 47542345 <NA>          <NA>             Christiam  Olortegui Roca            
#>  9 71234321 <NA>          <NA>             Jesus      Valle     Mariños         
#> 10 73231243 <NA>          <NA>             Jenny      Sosa      Sosa
```

> **Tip**: To join on multiple columns, use a vector: `by = c("col1", "col2")`. To join on columns with different names, use named vectors: `by = c("left_col" = "right_col")`.

#### Semi join
The case of the semi join is very similar to `left_join` with the difference that it only shows us the columns of the first table and eliminates the data that did not manage to cross (what in `left_join` comes out as NA). Also, none of the columns of table 2 appear. This is like doing a filter requesting the following: show me only the data from table 1 that is also in table 2.


``` r
semi_join(card_data_1, customer_data_2, by = "id")
#> # A tibble: 4 × 3
#>   id       customer_type card            
#>   <chr>    <chr>         <chr>           
#> 1 45860518 premium       VISA gold       
#> 2 47564535 silver        VISA platinum   
#> 3 48987654 bronze        American Express
#> 4 41346556 premium       Diners Club
```

#### Anti join
In the case of `anti_join` we have the opposite of `semi_join` since it shows the data from table 1 that are **not** in table 2.


``` r
anti_join(card_data_1, customer_data_2, by = "id")
#> # A tibble: 2 × 3
#>   id       customer_type card            
#>   <chr>    <chr>         <chr>           
#> 1 46534312 bronze        Mastercard Black
#> 2 78765434 gold          VISA Signature
```

### Joining without a common identifier
Likewise, we will have some moments when we need to combine only two objects, without using any type of intersection. For this we will use the `bind` functions. These functions allow us to put together two vectors or tables either in rows or columns.

#### Union of vectors
If we have two or more vectors of the same size we can create the union of the columns to create a table using the `bind_cols()` function. Let's see with an example:


``` r
vector_1 <- c("hello", "Have you seen", "the")
vector_2 <- c("Julian", "Carla", "Wednesday")

result <- bind_cols(greeting = vector_1, nouns = vector_2)

result
#> # A tibble: 3 × 2
#>   greeting      nouns    
#>   <chr>         <chr>    
#> 1 hello         Julian   
#> 2 Have you seen Carla    
#> 3 the           Wednesday
```

#### Union of tables
In the case of tables the use is the same. Likewise, we can also join the rows of two or more tables. To see its application let's first create some example tables:


``` r
table_1 <- data.frame(
  name = c("Jhasury", "Thomas", "Andres", "Josep"),
  surname = c("Campos", "Gonzales", "Santiago", "Villaverde"),
  address = c("Jr. los campos 471", "Av. Casuarinas 142", NA, "Av. Tupac Amaru 164"),
  phone = c("976567325", "956732587", "961445664", "987786453")
)

table_2 <- data.frame(
  age = c(21, 24, 19, 12),
  sign = c("Aries", "Capricorn", "Sagittarius", "Libra")
)

# Create a table from row 2 to 3 of table_1
table_3 <- table_1[2:3, ]
```

Once we have our tables let's proceed to join them. We see that they do not have a common identifier.


``` r
result <- bind_cols(table_1, table_2)
result
#>      name    surname             address     phone age        sign
#> 1 Jhasury     Campos  Jr. los campos 471 976567325  21       Aries
#> 2  Thomas   Gonzales  Av. Casuarinas 142 956732587  24   Capricorn
#> 3  Andres   Santiago                <NA> 961445664  19 Sagittarius
#> 4   Josep Villaverde Av. Tupac Amaru 164 987786453  12       Libra
```

or joining by rows like this:


``` r
result <- bind_rows(table_1, table_3)
result
#>      name    surname             address     phone
#> 1 Jhasury     Campos  Jr. los campos 471 976567325
#> 2  Thomas   Gonzales  Av. Casuarinas 142 956732587
#> 3  Andres   Santiago                <NA> 961445664
#> 4   Josep Villaverde Av. Tupac Amaru 164 987786453
#> 5  Thomas   Gonzales  Av. Casuarinas 142 956732587
#> 6  Andres   Santiago                <NA> 961445664
```

## Web Scraping
Web Scraping is the process of extracting data from a website. We will use it when we need to extract data directly from tables that are presented on websites. For this we will use the `rvest` library, included in the `tidyverse` library.


``` r
library(tidyverse)
library(rvest)
```

> **Important**: When scraping websites, always respect the site's `robots.txt` file and terms of service. Avoid making excessive requests that could overload servers. For commercial use, consider whether the data is licensed or requires permission.

The function we will use the most will be `read_html()` and as an argument we will place the url of the web from where we want to extract the data. We are not talking about a url that downloads a text file but a web page like this:

<img src="_assets/images/05-wrangling/hispanic-countries.png" alt="Wikipedia table of Hispanic countries by population" width="80%" style="display: block; margin: auto;" />

Thus, we will use `read_html()` to store all the web html and then little by little access the table data in R.


``` r
html_data <- read_html("https://es.wikipedia.org/wiki/Anexo:Pa%C3%ADses_hispanos_por_poblaci%C3%B3n")

html_data
#> {html_document}
#> <html class="client-nojs vector-feature-language-in-header-enabled vector-feature-language-in-main-page-header-disabled vector-feature-page-tools-pinned-disabled vector-feature-toc-pinned-clientpref-1 vector-feature-main-menu-pinned-disabled vector-feature-limited-width-clientpref-1 vector-feature-limited-width-content-enabled vector-feature-custom-font-size-clientpref-1 vector-feature-appearance-pinned-clientpref-1 vector-feature-night-mode-enabled skin-theme-clientpref-day vector-sticky-header-enabled vector-toc-available" lang="es" dir="ltr">
#> [1] <head>\n<meta http-equiv="Content-Type" content="text/html; charset=UTF-8 ...
#> [2] <body class="skin--responsive skin-vector skin-vector-search-vue mediawik ...
```

Now that we have the data stored in the object we have to go looking for the data, doing scraping. For this we will use the `html_nodes("table")` function to access the "table" node.


``` r
web_tables <- html_data |> 
  html_elements("table")

```

Finally, we have to go index by index looking for the table that interests us. To give it table format we will use `html_table`. In this case we will use double brackets because it is a list of lists and the `setNames()` function to change the name of the columns.


``` r
# We format as table and store in raw_table
raw_table <- web_tables[[1]] |> 
  html_table()

# Change header names
raw_table <- raw_table |> 
  setNames(
  c("N", "country", "population", "pop_prop", "avg_change", "link")
  )

# Convert to tibble
raw_table <- raw_table |> 
  as_tibble()

# Report first rows
raw_table |> 
  head(5)
#> # A tibble: 1 × 2
#>   N     country                                                                 
#>   <lgl> <chr>                                                                   
#> 1 NA    Este artículo o sección se encuentra desactualizado.La información sumi…
```

We already have our data imported and we could already start exploring its content in detail.



## Exercises
For the following exercises we will use objects from the **Lahman** library, which contains US baseball player data. Run the following Script before starting to solve the exercises.


``` r
install.packages("Lahman")
library(Lahman)

# Top 10 players of the year 2016
top_players <- Batting |> 
  filter(yearID == 2016) |>
  arrange(desc(HR)) |>    # sorted by number of "Home run"
  slice(1:10)    # Take from row 1 to 10

top_players <- top_players |> as_tibble()

# List of all baseball players from recent years
master <- Master |> as_tibble()

# Awards won by players
awards <- AwardsPlayers |>
  filter(yearID == 2016) |> 
  as_tibble()
```

92. Using the `top_players` and `Master` datasets, join them to retrieve the `playerID`, first name, last name, and home runs (`HR`) for the top 10 players of 2016.



<details>
  <summary type="button">Solution</summary>

``` r
top_10 <- left_join(top_players, master, by = "playerID") |> 
  select(playerID, nameFirst, nameLast, HR)

top_10
```
</details>

93. Identify the **intersection** of top players and award winners. List the ID and names of the top 10 players from 2016 who also won at least one award that year.



<details>
  <summary type="button">Solution</summary>

``` r
semi_join(top_10, awards, by = "playerID")
```
</details>

94. Find the players who won awards in 2016 but did **not** make it into the top 10 list. Report their IDs and names.



<details>
  <summary type="button">Solution</summary>

``` r
# First we calculate all prizes of those who are not top 10:
non_top_award_ids <- anti_join(awards, top_10, by = "playerID") |> 
  select(playerID)

# As a player could have obtained several prizes we obtain unique values
non_top_award_ids <- unique(non_top_award_ids)

# Then we cross with the master to obtain the names
other_names <- left_join(non_top_award_ids, master, by = "playerID") |> 
  select(playerID, nameFirst, nameLast)

other_names

```
</details>

95. Scrape the MLB payroll data from `http://www.stevetheump.com/Payrolls.htm`. Store the entire page html, extract the tables, and specifically isolate the fourth table (`node 4`), formatting it as a data frame.



<details>
  <summary type="button">Solution</summary>

``` r
url <- "http://www.stevetheump.com/Payrolls.htm"
html <- read_html(url)

nodes <- html |> 
  html_elements("table")

nodes[[4]] |> 
  html_table()
```
</details>

96. Using the scraped tables, prepare the 2019 payroll (node 4) and 2018 payroll (node 5) data. Standardize the column names to `team`, `payroll_2019`, and `payroll_2018` respectively. Finally, perform a **full join** to combine these datasets by team name.



<details>
  <summary type="button">Solution</summary>

``` r
payroll_2019 <- nodes[[4]] |> 
  html_table()

payroll_2018 <- nodes[[5]] |> 
  html_table()

####### Payroll 2019: ################
#We eliminate row 15 which is the league average:
payroll_2019 <- payroll_2019[-15, ]

#We filter the requested columns:
payroll_2019 <- payroll_2019 |> 
  select(X2, X4) |> 
  rename(team = X2, payroll_2019 = X4)

# We eliminate row 1 since it is the source header
payroll_2019 <- payroll_2019[-1,]

####### Payroll 2018: ################
# We select the two columns that interest us and 
#change name to headers
payroll_2018 <- payroll_2018 |> 
  select(Team, Payroll) |> 
  rename(team = Team, payroll_2018 = Payroll)

####### Full join: ################
full_join(payroll_2018, payroll_2019, by = "team")
```
</details>



<!--chapter:end:05-wrangling/importing-data.Rmd-->


# (PART) Machine learning {-}

# Introduction {-}

We have seen so far how to work with data: importing, cleaning, and visualizing it. Performing analysis of what has happened allows us to take a determined action to change the course of a business. However, the true power of data science lies in using this data to **predict** the future.

Predictive analysis is a technique that every Data Scientist must master, and _Machine learning_ provides us with robust algorithms to make these predictions.

_Machine learning_ is the study of computer algorithms that improve automatically through experience. It is a subset of artificial intelligence where algorithms create mathematical models based on sample data, known as "training data", to make predictions or decisions without being explicitly programmed to do so. Applications range from recommendation engines (like Netflix or Spotify) to fraud detection and self-driving cars [@mitchell1997].

A good _data scientist_ knows how to build prediction algorithms using _machine learning_. In this book, we will focus on the two main approaches:

We will explore two primary approaches to machine learning. **Supervised Learning** involves training models on labeled data where we know the correct answer, allowing us to predict outcomes for new, unseen data—either as numbers (regression) or categories (classification). In contrast, **Unsupervised Learning** deals with unlabeled data, where the goal is to discover hidden patterns, structures, or groupings (clustering) without a pre-defined answer key.

<img src="_assets/images/06-machine-learning/ML.png" alt="Machine learning diagram showing supervised vs unsupervised learning branches" width="80%" style="display: block; margin: auto;" />

Keep in mind that there are also other approaches, such as semi-supervised learning or **reinforcement learning** where the algorithm learns from a real or synthetic environment. These approaches will not be covered in this book, which focuses on the foundational techniques for starting out as a _data scientist_.

## Learning Objectives

By the end of this chapter, you will be able to:

In this chapter, we will learn to distinguish between **supervised** and **unsupervised** learning approaches. We will implement core algorithms such as **k-Nearest Neighbors (kNN)**, **Logistic Regression**, and **Random Forest** for classification tasks, and build **regression models** to predict continuous variables. Additionally, we will evaluate model performance using essential metrics like **confusion matrices** and **ROC curves**, apply **clustering techniques** to segment data, and select the optimal model using the modern `tidymodels` framework.

## Chapter Structure

We will cover the two main approaches to machine learning:

Our journey covers these two fundamental pillars. We begin with **Supervised Learning**, focusing on models that learn from historical data to predict future outcomes, covering both classification and regression problems. We then move to **Unsupervised Learning**, techniques designed to find structure in unlabeled data, such as grouping similar customers or reducing complex datasets to their essential features.

<img src="_assets/images/06-machine-learning/ML.png" alt="Machine learning diagram showing supervised vs unsupervised learning branches" width="80%" style="display: block; margin: auto;" />

Keep in mind that there are also other approaches, such as semi-supervised learning or **reinforcement learning** where the algorithm learns from a real or synthetic environment. These approaches will not be covered in this book, which focuses on the most commonly used approaches for starting out as a _data scientist_.

<!--chapter:end:06-machine-learning/intro.Rmd-->


# Supervised Learning

To understand supervised learning intuitively, we can compare it to how humans learn from examples. 

Consider a doctor diagnosing patients. The doctor has **trained** for years using textbooks and case studies where the symptoms (inputs) and the correct diagnosis (output) were known. During their residency, they **test** their knowledge under the supervision of experienced mentors. Finally, once licensed, they **apply** this knowledge to diagnose new patients where the outcome is unknown.

This is an example of **supervised learning**.
This process mirrors **supervised learning**. First, the model undergoes a **Training** phase, learning from labeled data (like symptoms and their corresponding diagnoses). Next, during **Testing**, it is evaluated on new, unseen cases where the outcome is already known to verify its accuracy. finally, the model enters the **Prediction** phase, where it applies its learned knowledge to real-world data to generate diagnoses (predictions) for unknown cases.

In machine learning terms:
In machine learning terms, we have **Inputs** (features or predictors) which are the data points used to make a prediction, and **Outputs** (target or response), which are the values we aim to predict. The ultimate **Goal** is to learn the mathematical relationship between these inputs and outputs to accurately forecast outcomes for future data.

> [!TIP]
> **Key Terminology**
> **Key Terminology**
> In supervised learning, the **Input** (or Feature/Independent Variable) refers to the data used to make a prediction, such as patient symptoms or house characteristics. The **Output** (or Target/Dependent Variable) is the value we want to predict, like a medical diagnosis or a house price. We rely on **Labels**, which are the known "answers" in our training data, to teach the model.

Common applications include:
Common applications of these techniques include **Spam Detection** (classifying emails as "Spam" or "Not Spam"), **Credit Scoring** (predicting the likelihood of a customer repaying a loan), and **House Price Prediction** (estimating a property's value based on its location and size).

## Classification and Regression

We divide supervised learning into two main types based on the target variable:

We divide supervised learning into two main types based on the nature of the target variable. **Classification** is used when the target is a discrete category, such as determining if an email is spam (Yes/No) or predicting which product a customer will buy (A, B, or C). **Regression**, on the other hand, is used when the target is a continuous number, like estimating the price of a house or forecasting the number of units to be sold next month.

In the following sections, we will learn algorithms for both tasks.

## kNN: k-Nearest Neighbors
Let's start with a simple but very useful **classification** algorithm, the k-Nearest Neighbors algorithm (_kNN_).

### Two variables as input
Let's start by understanding it visually. Imagine that we have two variables as _input_ and as _output_ it gives us whether it is Red Class or Blue Class. This data is our training data.

> [!NOTE]
> **When to use kNN?**
> kNN is excellent for small datasets with few dimensions (variables) because it is simple and explains non-linear patterns well. However, it becomes very slow and less accurate as the dataset grows in size or number of variables (the "curse of dimensionality").

<img src="_assets/images/06-machine-learning/kNN-train.png" alt="Training data points on a 2D plane with red and blue class labels" width="80%" style="display: block; margin: auto;" />

Now that we have our training data, we will start using the test data. As we want to predict the class, the _output_, we will see how one of these data points would look visually and paint it yellow. Next, we calculate the distance between this point and the other data points.

<img src="_assets/images/06-machine-learning/kNN-test.png" alt="Test point shown in yellow with distance lines to nearby training data points" width="80%" style="display: block; margin: auto;" />

We have traced only some distances, but we could do it with all of them. For this example, we will take the **k = 3** nearest neighbors. Why 3? It is common to pick an odd number to avoid ties (where the vote is 50/50).

<img src="_assets/images/06-machine-learning/kNN-classify.png" alt="k-NN classification showing 3 nearest neighbors (2 red, 1 blue), classifying test point as red" width="80%" style="display: block; margin: auto;" />

We notice that if we focus only on the 3 nearest neighbors, there are more reds than blues, so our prediction will be that this point must be Class R (red).

Calculating the distance on a Cartesian plane is relatively simple, we only have variables as input: on the x-axis and y-axis. However, the same logic can be taken to more variables.

### Multiple variables as input
Let's see how it would be with 4 variables as input. We are going to work again with the `iris` data frame, which, as we will recall, has 4 attributes of a plant and the last column is the species to which it belongs.


``` r
data(iris)

iris |> 
  head(10)
#>    Sepal.Length Sepal.Width Petal.Length Petal.Width Species
#> 1           5.1         3.5          1.4         0.2  setosa
#> 2           4.9         3.0          1.4         0.2  setosa
#> 3           4.7         3.2          1.3         0.2  setosa
#> 4           4.6         3.1          1.5         0.2  setosa
#> 5           5.0         3.6          1.4         0.2  setosa
#> 6           5.4         3.9          1.7         0.4  setosa
#> 7           4.6         3.4          1.4         0.3  setosa
#> 8           5.0         3.4          1.5         0.2  setosa
#> 9           4.4         2.9          1.4         0.2  setosa
#> 10          4.9         3.1          1.5         0.1  setosa
```

The idea is as follows, we will take training data, 50 data points. From this data, we have the 4 input attributes and the last column is the output, the species. We will use the kNN algorithm taking this training data as input to create our model. Then, with testing data, another 50 data points, we will test our model.

Let's start by taking a random sample of 100 records and separate half for training and half for testing. Since we have 150 data points in our data frame, let's take a sample of the indices. In this case, we are going to use the `set.seed(n)` function to force the random sample values to be the same always. Thus, we can all obtain the same results and the explanation in the book in these chapters is consistent with the results that each reader obtains. For a real exercise, we should not include that line. It is recommended to read the documentation `?set.seed()`.


``` r
# 28 is the author's birthday
set.seed(28)

sample_idx <- sample(150, 100)

train_idx <- sample(sample_idx, 50)

test_idx <- sample_idx[!sample_idx %in% train_idx]
```

Now that we have the indices we can build our training data and our test.


``` r
iris_train <- iris[train_idx, ]
iris_test <- iris[test_idx, ]

iris_train_input <- iris_train[, -5]
iris_train_output <- iris_train[, 5]

iris_test_input <- iris_test[, -5]
iris_test_output <- iris_test[, 5]
```

Although we could build the algorithms to calculate the minimum distances for each point, R provides us with libraries that facilitate the creation of these models. To do this, we will load the `class` library, which will allow us to execute kNN quickly.


``` r
install.packages("class")

library(class)
```

This library provides us with the `knn()` function, which will take the training data to create the model and once the model is created it will take the test data to predict the _output_ for our test data.


``` r
iris_test_output_kNN <- knn(train = iris_train_input, 
                       cl = iris_train_output, 
                       test = iris_test_input, 
                       k = 3)

iris_test_output_kNN
#>  [1] versicolor versicolor versicolor versicolor setosa     versicolor
#>  [7] virginica  virginica  virginica  virginica  versicolor versicolor
#> [13] virginica  versicolor versicolor versicolor setosa     versicolor
#> [19] versicolor virginica  virginica  setosa     versicolor versicolor
#> [25] versicolor virginica  setosa     setosa     versicolor versicolor
#> [31] virginica  setosa     setosa     virginica  virginica  setosa    
#> [37] setosa     virginica  setosa     versicolor setosa     virginica 
#> [43] setosa     setosa     setosa     virginica  virginica  versicolor
#> [49] virginica  versicolor
#> Levels: setosa versicolor virginica
```

Thus, the knn function throws us the prediction just by entering the training data as attributes, the test inputs, and how many nearest neighbors it will look for (k). And not only that, we can compare our prediction with the test _output_ to see how **accurate** (_accuracy_) our model is. To do this, we calculate the percentage of correct predictions regarding the test _output_.


``` r
mean(iris_test_output_kNN == iris_test_output)
#> [1] 0.94
```

In addition, we can place a summary in a table, also known as a **confusion matrix**, to see how many predicted values were equal to the real ones using the `table()` function.


``` r
table(iris_test_output_kNN, iris_test_output)
#>                     iris_test_output
#> iris_test_output_kNN setosa versicolor virginica
#>           setosa         14          0         0
#>           versicolor      0         18         2
#>           virginica       0          1        15
```

Let's interpret this result cell by cell:

1. Our kNN model predicted 14 values as species "setosa" and it turns out that in our test the real value, _output_, was also setosa.
2. Our model predicted 20 as species versicolor. However, in the real-test data, of those 20, only 18 are versicolor and 2 are virginica.
3. Our model predicted 16 as species virginica. However, in the real-test data, of those 16, only 15 are virginica.

### Diverse values of k
So far we have only used a single value for k, 3 nearest neighbors. However, we could see the accuracy for different values of k. Since we have 50 values in our training data, we will see the hits taking a maximum of 50 nearest neighbors.


``` r
k <- 1:50
result_df <- data.frame(k, precision = 0)

for(n in k){
  iris_test_output_kNN <- knn(train = iris_train_input, 
                              cl = iris_train_output, 
                              test = iris_test_input, 
                              k = n)
  
  result_df$precision[n] <- mean(iris_test_output_kNN == iris_test_output)
}

result_df |> 
  ggplot() +
  aes(k, precision) +
  geom_line()
```

<img src="Data-Science-with-R_files/figure-html/unnamed-chunk-581-1.png" alt="" width="80%" style="display: block; margin: auto;" />

As we can see, the accuracy (precision) changes with `k`. This illustrates a fundamental concept in Machine Learning:
 
-   **Overfitting (Low k):** When `k` is too low (e.g., `k=1`), the model pays excessive attention to individual data points, including noise. It effectively "memorizes" the training data but fails to generalize to new, unseen examples.
-   **Underfitting (High k):** Conversely, if `k` is too high (e.g., `k=50`), the model becomes overly simple, averaging out the signal and missing the distinct patterns that differentiate the classes.
 
Finding the sweet spot between these two extremes is the goal of **Hyperparameter Tuning**. It will depend on each case to choose the best "k" for our model to balance this trade-off (often called the **Bias-Variance Tradeoff**).

We have thus built our first machine learning model.

## tidymodels Framework
Now that we have created our first machine learning model, we have seen ourselves with many lines of code. For example, to split the sample into training and test, to calculate the optimal "k", etc. To make the work easier, we will use the `tidymodels` framework. [tidymodels](https://www.tidymodels.org/)^[https://www.tidymodels.org/] is a collection of packages for modeling and machine learning using tidyverse principles. It provides a unified, modern interface for:

It provides a unified, modern interface via a suite of specialized packages: **rsample** for data splitting and resampling, **recipes** for feature engineering and preprocessing, **parsnip** for specifying models, **tune** for hyperparameter optimization, **yardstick** for metrics and model evaluation, and **workflows** to bundle everything together.


``` r
install.packages('tidymodels')
```


``` r
library(tidymodels)
#> ── Attaching packages ─────────── tidymodels 1.4.1 ──
#> ✔ broom        1.0.11     ✔ tailor       0.1.0 
#> ✔ dials        1.4.2      ✔ tune         2.0.1 
#> ✔ infer        1.1.0      ✔ workflows    1.3.0 
#> ✔ parsnip      1.4.0      ✔ workflowsets 1.1.1 
#> ✔ recipes      1.3.1      ✔ yardstick    1.3.2 
#> ✔ rsample      1.3.1
#> ── Conflicts ────────────── tidymodels_conflicts() ──
#> ✖ NLP::annotate()         masks ggplot2::annotate()
#> ✖ scales::discard()       masks purrr::discard()
#> ✖ Matrix::expand()        masks tidyr::expand()
#> ✖ dplyr::filter()         masks stats::filter()
#> ✖ recipes::fixed()        masks stringr::fixed()
#> ✖ dplyr::lag()            masks stats::lag()
#> ✖ Matrix::pack()          masks tidyr::pack()
#> ✖ rsample::permutations() masks gtools::permutations()
#> ✖ dials::prune()          masks dendextend::prune()
#> ✖ yardstick::spec()       masks readr::spec()
#> ✖ recipes::step()         masks stats::step()
#> ✖ Matrix::unpack()        masks tidyr::unpack()
#> ✖ recipes::update()       masks Matrix::update(), stats::update()
```

We are going to do another example with k-nearest neighbors, but this time using the functions of the **tidymodels** framework. The data for this example will be obtained from the `ISLR` library, which contains the daily percentage returns for the S&P 500 stock index between 2001 and 2005. This data frame has 8 columns that we will use as _input_ and the last column that has two classes (whether the index goes up or down) that we will use as _output_ (See `?Smarket`).


``` r
install.packages("ISLR")
```


``` r
library(ISLR)
data(Smarket)
# Data frame that we will use
Smarket |> 
  head(10)
#>    Year   Lag1   Lag2   Lag3   Lag4   Lag5 Volume  Today Direction
#> 1  2001  0.381 -0.192 -2.624 -1.055  5.010 1.1913  0.959        Up
#> 2  2001  0.959  0.381 -0.192 -2.624 -1.055 1.2965  1.032        Up
#> 3  2001  1.032  0.959  0.381 -0.192 -2.624 1.4112 -0.623      Down
#> 4  2001 -0.623  1.032  0.959  0.381 -0.192 1.2760  0.614        Up
#> 5  2001  0.614 -0.623  1.032  0.959  0.381 1.2057  0.213        Up
#> 6  2001  0.213  0.614 -0.623  1.032  0.959 1.3491  1.392        Up
#> 7  2001  1.392  0.213  0.614 -0.623  1.032 1.4450 -0.403      Down
#> 8  2001 -0.403  1.392  0.213  0.614 -0.623 1.4078  0.027        Up
#> 9  2001  0.027 -0.403  1.392  0.213  0.614 1.1640  1.303        Up
#> 10 2001  1.303  0.027 -0.403  1.392  0.213 1.2326  0.287        Up

# We make some translations for ease of analysis
Smarket <- Smarket |> 
  rename(Direction = Direction) |> 
  mutate(Direction = ifelse(Direction == "Up", "Up", "Down")) |> 
  mutate(across(c("Direction"), ~as.factor(.)))
```

### Creation of training and test data
From the total of our data frame, we will split a part of the data for training and the other to do the tests. tidymodels provides the `initial_split()` function from the `rsample` package which creates a clean split object. We allocate 75% of the data for training using the `prop` argument, and we can use `strata` to ensure balanced class distribution.


``` r
set.seed(28)
data_split <- initial_split(Smarket, prop = 0.75, strata = Direction)

SP_train <- training(data_split)
SP_test <- testing(data_split)

# Check the split
nrow(SP_train)
#> [1] 937
nrow(SP_test)
#> [1] 313
```

This function makes sampling data much simpler and returns a split object that we can use with `training()` and `testing()` accessor functions.

### Training our prediction algorithm
In tidymodels, we build models in a structured way using three key components:
In `tidymodels`, we build models in a structured way using three key components: **Model Specification** (via `parsnip`) to define the algorithm, **Recipes** (via `recipes`) to define preprocessing steps, and **Workflows** (via `workflows`) to bundle the model and recipe together into a single execution unit.

Let's break down these components:

Let's break down these components. The **Model Specification (`parsnip`)** tells R *what* kind of model we want (e.g., "nearest neighbor") and *which* computational engine to use (e.g., "kknn"), decoupling intent from implementation. The **Recipe (`recipes`)** acts as a blueprint for data processing, handling tasks like normalization (scaling variables) and converting categorical variables. Finally, the **Workflow (`workflows`)** container holds the model and recipe together, ensuring that the exact same preprocessing steps are applied automatically when predicting on new data.

Let's start by specifying our k-nearest neighbors model. We use `tune()` as a placeholder for the `neighbors` parameter to indicate we want to find the optimal value.


``` r
# Model specification
knn_spec <- nearest_neighbor(neighbors = tune()) |>
  set_engine("kknn") |>
  set_mode("classification")

knn_spec
#> K-Nearest Neighbor Model Specification (classification)
#> 
#> Main Arguments:
#>   neighbors = tune()
#> 
#> Computational engine: kknn
```

### Data Pre-processing with Recipes
tidymodels uses `recipes` for preprocessing. The `scale` method (division by standard deviation) and `centering` (subtraction of the mean) are implemented with `step_normalize()`.


``` r
# Define preprocessing recipe
knn_recipe <- recipe(Direction ~ ., data = SP_train) |>
  step_normalize(all_numeric_predictors())

knn_recipe
#> 
#> ── Recipe ───────────────────────────────────────────
#> 
#> ── Inputs
#> Number of variables by role
#> outcome:   1
#> predictor: 8
#> 
#> ── Operations
#> • Centering and scaling for:
#>   all_numeric_predictors()
```

### Creating a Workflow
A workflow bundles the recipe and model specification together for easy training and prediction.


``` r
# Bundle into workflow
knn_workflow <- workflow() |>
  add_recipe(knn_recipe) |>
  add_model(knn_spec)

knn_workflow
#> ══ Workflow ═════════════════════════════════════════
#> Preprocessor: Recipe
#> Model: nearest_neighbor()
#> 
#> ── Preprocessor ─────────────────────────────────────
#> 1 Recipe Step
#> 
#> • step_normalize()
#> 
#> ── Model ────────────────────────────────────────────
#> K-Nearest Neighbor Model Specification (classification)
#> 
#> Main Arguments:
#>   neighbors = tune()
#> 
#> Computational engine: kknn
```

### Parameter Tuning with Cross-Validation
One of the most important parts of training machine learning models is tuning the parameters. We use `vfold_cv()` to create cross-validation folds and `tune_grid()` to search for the best hyperparameters.


``` r
set.seed(28)

# Create 5-fold cross-validation
folds <- vfold_cv(SP_train, v = 5, strata = Direction)

# Create a grid of k values to try
k_grid <- grid_regular(neighbors(range = c(1, 50)), levels = 20)

# Tune the model
knn_tune_results <- tune_grid(
  knn_workflow,
  resamples = folds,
  grid = k_grid
)

knn_tune_results
#> # Tuning results
#> # 5-fold cross-validation using stratification 
#> # A tibble: 5 × 4
#>   splits            id    .metrics          .notes          
#>   <list>            <chr> <list>            <list>          
#> 1 <split [748/189]> Fold1 <tibble [60 × 5]> <tibble [0 × 4]>
#> 2 <split [750/187]> Fold2 <tibble [60 × 5]> <tibble [0 × 4]>
#> 3 <split [750/187]> Fold3 <tibble [60 × 5]> <tibble [0 × 4]>
#> 4 <split [750/187]> Fold4 <tibble [60 × 5]> <tibble [0 × 4]>
#> 5 <split [750/187]> Fold5 <tibble [60 × 5]> <tibble [0 × 4]>
```

We can visualize the tuning results using `autoplot()`:


``` r
autoplot(knn_tune_results)
```

<img src="Data-Science-with-R_files/figure-html/unnamed-chunk-591-1.png" alt="" width="80%" style="display: block; margin: auto;" />

We can see the accuracy for each value of "k". The `show_best()` function shows us the top performing values:


``` r
show_best(knn_tune_results, metric = "accuracy")
#> # A tibble: 5 × 7
#>   neighbors .metric  .estimator  mean     n std_err .config         
#>       <int> <chr>    <chr>      <dbl> <int>   <dbl> <chr>           
#> 1        44 accuracy binary     0.905     5  0.0114 pre0_mod18_post0
#> 2        42 accuracy binary     0.904     5  0.0116 pre0_mod17_post0
#> 3        37 accuracy binary     0.902     5  0.0115 pre0_mod15_post0
#> 4        31 accuracy binary     0.902     5  0.0112 pre0_mod13_post0
#> 5        47 accuracy binary     0.901     5  0.0119 pre0_mod19_post0
```

### Finalizing the Model
Once we've found the best hyperparameters, we finalize our workflow with those values:


``` r
# Select the best k value
best_k <- select_best(knn_tune_results, metric = "accuracy")
best_k
#> # A tibble: 1 × 2
#>   neighbors .config         
#>       <int> <chr>           
#> 1        44 pre0_mod18_post0

# Finalize the workflow with the best parameters
final_knn_workflow <- finalize_workflow(knn_workflow, best_k)

# Fit the final model on the entire training set
SP_knn_trained <- fit(final_knn_workflow, data = SP_train)

SP_knn_trained
#> ══ Workflow [trained] ═══════════════════════════════
#> Preprocessor: Recipe
#> Model: nearest_neighbor()
#> 
#> ── Preprocessor ─────────────────────────────────────
#> 1 Recipe Step
#> 
#> • step_normalize()
#> 
#> ── Model ────────────────────────────────────────────
#> 
#> Call:
#> kknn::train.kknn(formula = ..y ~ ., data = data, ks = min_rows(44L,     data, 5))
#> 
#> Type of response variable: nominal
#> Minimal misclassification: 0.0864461
#> Best kernel: optimal
#> Best k: 44
```

We see the substantial improvement now that we have adjusted some parameters and made it reprocess first. Note that each time we adjust parameters, the value of "k" can change until the most optimal one is found. In this case, it changed to k = 29. This does not mean that the lower the "k", the better the algorithm, only that it is the most optimal for this particular case with these adjustments made.

### Testing the prediction model
We already have our model trained and ready to test it. tidymodels makes it easy to make predictions using the `augment()` function which adds predictions directly to our test data.


``` r
# Make predictions on test data
SP_predictions <- augment(SP_knn_trained, new_data = SP_test)

# View predictions
SP_predictions |> 
  select(Direction, .pred_class, .pred_Down, .pred_Up) |>
  head(10)
#> # A tibble: 10 × 4
#>    Direction .pred_class .pred_Down .pred_Up
#>    <fct>     <fct>            <dbl>    <dbl>
#>  1 Up        Up              0.243    0.757 
#>  2 Up        Up              0.404    0.596 
#>  3 Down      Down            0.611    0.389 
#>  4 Down      Down            0.977    0.0231
#>  5 Up        Up              0.230    0.770 
#>  6 Down      Up              0.472    0.528 
#>  7 Down      Down            0.955    0.0447
#>  8 Up        Up              0.0361   0.964 
#>  9 Down      Down            0.522    0.478 
#> 10 Down      Down            1        0
```

The `augment()` function adds three columns: `.pred_class` (the predicted class), and probability columns for each class (`.pred_Down` and `.pred_Up`). This makes it very easy to compare predictions with actual values.

As we can see, for each test value the model calculates the estimated probability for each class. The algorithm assigns the class with the highest probability.

### Model Evaluation with yardstick
To evaluate our model, we use the `yardstick` package. The `conf_mat()` function creates a confusion matrix, and we can calculate various metrics like accuracy, sensitivity, and specificity.


``` r
# Confusion matrix
SP_predictions |>
  conf_mat(truth = Direction, estimate = .pred_class)
#>           Truth
#> Prediction Down  Up
#>       Down  132   4
#>       Up     19 158

# Calculate accuracy
SP_predictions |>
  accuracy(truth = Direction, estimate = .pred_class)
#> # A tibble: 1 × 3
#>   .metric  .estimator .estimate
#>   <chr>    <chr>          <dbl>
#> 1 accuracy binary         0.927

# Calculate multiple metrics at once
SP_predictions |>
  metrics(truth = Direction, estimate = .pred_class)
#> # A tibble: 2 × 3
#>   .metric  .estimator .estimate
#>   <chr>    <chr>          <dbl>
#> 1 accuracy binary         0.927
#> 2 kap      binary         0.852
```

We obtain the accuracy as well as other metrics. The yardstick package provides many evaluation functions including `sens()` (sensitivity), `spec()` (specificity), `precision()`, `recall()`, and more.

## Confusion Matrix
We have already used confusion matrices in our two previous examples. Now it is our turn to properly understand its definition as well as some of the evaluation metrics of this matrix.

A confusion matrix, also known as an error matrix, allows us to visualize the performance of an algorithm, generally a supervised learning one (in unsupervised learning it is generally called a matching matrix). Each row of the matrix represents the instances in a predicted class, while each column represents the instances in a real class (or vice versa). The name derives from the fact that it makes it easy to see if the system confuses two classes (i.e., commonly mislabeling one as another).

Binary classifications, when the _outcome_ can take only two classes, yield this following confusion matrix.

<img src="_assets/images/06-machine-learning/confusion-matrix.png" alt="2x2 confusion matrix with True Positive, False Positive, True Negative, False Negative cells" width="80%" style="display: block; margin: auto;" />

### Accuracy
We have already been using this term in our examples. The accuracy of the model can be calculated from the confusion matrix:

$Accuracy=\frac{TP+TN}{TP+TN+FP+FN}$

The _accuracy_ of the model is the proportion of times the algorithm predicted correctly, regarding the total data evaluated.

### Sensitivity
Sensitivity (also called true positive rate, recall, or probability of detection in some fields) measures the proportion of real positives that are correctly identified as such (for example, the percentage of sick people who are correctly identified as having the condition).

$Sensitivity=\frac{TP}{TP+FN}$

### Specificity
Specificity (also called true negative rate) measures the proportion of real negatives that are correctly identified as such (for example, the percentage of healthy people who are correctly identified as not having the condition).

$Specificity=\frac{TN}{TN+FP}$



## Exercises

97. Using the tidymodels library, partition the `iris` data frame in such a way as to have 70% training data and 30% test data.



<details>
  <summary type="button">Solution</summary>

``` r
iris_split <- initial_split(iris, prop = 0.7, strata = Species)

iris_train <- training(iris_split)
iris_test <- testing(iris_split)

```
</details>

98. Using tidymodels and the training data obtained in the previous exercise, create a k-nearest neighbor model with tuning. Plot the result.



<details>
  <summary type="button">Solution</summary>

``` r
# Model specification
iris_knn_spec <- nearest_neighbor(neighbors = tune()) |>
  set_engine("kknn") |>
  set_mode("classification")

# Recipe with preprocessing
iris_recipe <- recipe(Species ~ ., data = iris_train) |>
  step_normalize(all_numeric_predictors())

# Workflow
iris_workflow <- workflow() |>
  add_recipe(iris_recipe) |>
  add_model(iris_knn_spec)

# Cross-validation and tuning
iris_folds <- vfold_cv(iris_train, v = 5)
iris_tune <- tune_grid(iris_workflow, resamples = iris_folds, grid = 20)

autoplot(iris_tune)

```
</details>

99. Use the model created in the previous exercise to predict the _outputs_ of the `test` object. Report the confusion matrix.



<details>
  <summary type="button">Solution</summary>

``` r
# Finalize model with best k
best_k <- select_best(iris_tune, metric = "accuracy")
final_iris_wf <- finalize_workflow(iris_workflow, best_k)
iris_fit <- fit(final_iris_wf, data = iris_train)

# Predict and evaluate
iris_predictions <- augment(iris_fit, new_data = iris_test)
iris_predictions |> conf_mat(truth = Species, estimate = .pred_class)

```
</details>



## Simple Linear Regression
Now we have to predict on continuous variables, the supervision algorithms for these cases are called **regression**.

To understand linear regression we are going to start with an example with a single variable as _input_, this is known as Simple Linear Regression. To do this we are going to use data from the `HistData` library where we will find a dataset that enumerates the individual observations of 934 children in 205 families stored in the object `GaltonFamilies`.


``` r
install.packages("HistData")
```


``` r
library(HistData)
data(GaltonFamilies)

# We make some filters to have one dad and one son per family
heights_df <- GaltonFamilies |>
  filter(gender == "male") |>
  group_by(family) |>
  slice_sample(n = 1) |> # random sample of 1 son per family
  ungroup() |>
  select(father, childHeight) |>
  rename(son = childHeight) |> 
  mutate(father = father/39.37) |> # From inches to meters
  mutate(son = son/39.37) # From inches to meters
```

Visually we could see if there is a relationship between the heights of dad and son:


``` r
heights_df |> 
  ggplot() +
  aes(father, son) +
  geom_point() +
  geom_abline(lty = 2)
```

<img src="Data-Science-with-R_files/figure-html/unnamed-chunk-605-1.png" alt="" width="80%" style="display: block; margin: auto;" />

As we can see, there is a positive correlation, such that the taller the father, the son grows to be taller as an adult. This line, however, is nothing more than a default line. The challenge lies in finding which line minimizes the distance of the points to this line, known as error minimization.

We could try to predict the height the son will have from the father's height using the equation of this line:

$Y = \beta_0+\beta_1X$

Where $X$ is an independent, explanatory variable, in this case the dad's height. $\beta_1$ is a parameter that measures the influence that the explanatory variable has on the dependent variable $Y$ and $\beta_0$ is the intercept or constant term. In our case, the son's height.

In statistics, **linear regression** or linear adjustment is a mathematical model used to approximate the dependency relationship between a dependent variable $Y$ and the independent variables $X_i$.

Thus, our problem boils down to training our model to find the values of the intercept, $\beta_0$, and the value of the parameter accompanying $X_1$, $\beta_1$, to then use these data as prediction in our test data.


``` r
heights_split <- initial_split(heights_df, prop = 0.5)

heights_train <- training(heights_split)
heights_test <- testing(heights_split)
```

Now that we have our data we can train our model using tidymodels. We specify a linear regression model with `linear_reg()`.


``` r
# Model specification
lm_spec <- linear_reg() |>
  set_engine("lm") |>
  set_mode("regression")

# Recipe
lm_recipe <- recipe(son ~ father, data = heights_train)

# Workflow
lm_workflow <- workflow() |>
  add_recipe(lm_recipe) |>
  add_model(lm_spec)

# Cross-validation
heights_folds <- vfold_cv(heights_train, v = 10)
lm_results <- fit_resamples(lm_workflow, resamples = heights_folds)

# View results
collect_metrics(lm_results)
#> # A tibble: 2 × 6
#>   .metric .estimator   mean     n std_err .config        
#>   <chr>   <chr>       <dbl> <int>   <dbl> <chr>          
#> 1 rmse    standard   0.0584    10 0.00362 pre0_mod0_post0
#> 2 rsq     standard   0.362     10 0.0821  pre0_mod0_post0
```

We see as main results the RMSE, which stands for root mean square error, and is the value that linear regression seeks to minimize. In addition, we have the R squared or $R^2$, which is the coefficient of determination which determines the quality of the model to replicate the results. The higher and closer to 1, the better the quality of the model.

> [!WARNING]
> **Correlation implies association, not causation**: A high $R^2$ or strong correlation means the variables move together, but it does **not** prove that one causes the other. There could be confounding variables at play.

Now let's fit the final model and make predictions:


``` r
# Fit final model
heights_fit <- fit(lm_workflow, data = heights_train)

# Make predictions
heights_predictions <- augment(heights_fit, new_data = heights_test)

# Calculate RMSE
heights_predictions |>
  rmse(truth = son, estimate = .pred)
#> # A tibble: 1 × 3
#>   .metric .estimator .estimate
#>   <chr>   <chr>          <dbl>
#> 1 rmse    standard      0.0642
```

> [!TIP]
> **Model Diagnostics**: In a rigorous analysis, you should also inspect the **residuals** (the difference between predicted and actual values). The `augment()` function includes a `.resid` column for this purpose. Plotting residuals helps verify that your model isn't missing non-linear patterns.

If we wish we can also report the coefficients of the equation and visualize them:

$Y = \beta_0+\beta_1X$


``` r
# Extract model coefficients
heights_fit |> extract_fit_parsnip() |> tidy()
#> # A tibble: 2 × 5
#>   term        estimate std.error statistic      p.value
#>   <chr>          <dbl>     <dbl>     <dbl>        <dbl>
#> 1 (Intercept)    0.644     0.183      3.51 0.000708    
#> 2 father         0.631     0.104      6.05 0.0000000361

model_coefs <- heights_fit |> extract_fit_parsnip() |> tidy()
intercept_val <- model_coefs$estimate[1]
slope_val <- model_coefs$estimate[2]

#Visualization
heights_df |> 
  ggplot() +
  aes(father, son) +
  geom_point() +
  geom_abline(lty = 2, intercept = intercept_val, slope = slope_val, color = "red")

```

<img src="Data-Science-with-R_files/figure-html/unnamed-chunk-609-1.png" alt="" width="80%" style="display: block; margin: auto;" />

## Multiple Linear Regression
Now that we know linear regression we can execute a multiple linear regression model, which involves more than 1 variable as _input_. To do this, we will use the `diamonds` dataset containing the prices and other attributes of almost 54,000 diamonds.


``` r
library(ggplot2)
data("diamonds")

diamonds <- diamonds |> 
  rename(price = price)

diamonds |> 
  head(10)
#> # A tibble: 10 × 10
#>    carat cut       color clarity depth table price     x     y     z
#>    <dbl> <ord>     <ord> <ord>   <dbl> <dbl> <int> <dbl> <dbl> <dbl>
#>  1  0.23 Ideal     E     SI2      61.5    55   326  3.95  3.98  2.43
#>  2  0.21 Premium   E     SI1      59.8    61   326  3.89  3.84  2.31
#>  3  0.23 Good      E     VS1      56.9    65   327  4.05  4.07  2.31
#>  4  0.29 Premium   I     VS2      62.4    58   334  4.2   4.23  2.63
#>  5  0.31 Good      J     SI2      63.3    58   335  4.34  4.35  2.75
#>  6  0.24 Very Good J     VVS2     62.8    57   336  3.94  3.96  2.48
#>  7  0.24 Very Good I     VVS1     62.3    57   336  3.95  3.98  2.47
#>  8  0.26 Very Good H     SI1      61.9    55   337  4.07  4.11  2.53
#>  9  0.22 Fair      E     VS2      65.1    61   337  3.87  3.78  2.49
#> 10  0.23 Very Good H     VS1      59.4    61   338  4     4.05  2.39
```

We split the data in two taking 70% of data for training:


``` r
set.seed(28)
diamonds_split <- initial_split(diamonds, prop = 0.7, strata = price)

diamonds_train <- training(diamonds_split)
diamonds_test <- testing(diamonds_split)
```

We now create our multiple linear regression model and report both the error results and the coefficients of the linear equation using a tidymodels workflow.


``` r
# Model specification
diamonds_spec <- linear_reg() |>
  set_engine("lm") |>
  set_mode("regression")

# Recipe
diamonds_recipe <- recipe(price ~ ., data = diamonds_train)

# Workflow
diamonds_workflow <- workflow() |>
  add_recipe(diamonds_recipe) |>
  add_model(diamonds_spec)

# Cross-validation
diamonds_folds <- vfold_cv(diamonds_train, v = 10)
diamonds_results <- fit_resamples(diamonds_workflow, resamples = diamonds_folds)

collect_metrics(diamonds_results)
#> # A tibble: 2 × 6
#>   .metric .estimator     mean     n  std_err .config        
#>   <chr>   <chr>         <dbl> <int>    <dbl> <chr>          
#> 1 rmse    standard   1136.       10 19.7     pre0_mod0_post0
#> 2 rsq     standard      0.919    10  0.00256 pre0_mod0_post0
```

We see that it gives us the RMSE and an R squared quite closer to 1, which denotes a high quality of the model to replicate the results.

Let's use our model to predict the prices of the test data.


``` r
# Fit final model
diamonds_fit <- fit(diamonds_workflow, data = diamonds_train)

# Extract coefficients
diamonds_fit |> extract_fit_parsnip() |> tidy()
#> # A tibble: 24 × 5
#>    term        estimate std.error statistic   p.value
#>    <chr>          <dbl>     <dbl>     <dbl>     <dbl>
#>  1 (Intercept)   6975.      473.      14.7  5.45e- 49
#>  2 carat        11437.       60.7    188.   0        
#>  3 cut.L          571.       27.1     21.1  7.51e- 98
#>  4 cut.Q         -305.       21.7    -14.0  1.07e- 44
#>  5 cut.C          139.       18.6      7.48 7.72e- 14
#>  6 cut^4          -23.2      14.8     -1.56 1.18e-  1
#>  7 color.L      -1980.       20.8    -95.1  0        
#>  8 color.Q       -685.       19.0    -36.1  6.69e-281
#>  9 color.C       -186.       17.7    -10.5  6.23e- 26
#> 10 color^4         36.8      16.2      2.27 2.33e-  2
#> # ℹ 14 more rows

# Prediction and Error calculation
diamonds_predictions <- augment(diamonds_fit, new_data = diamonds_test)

# Mean Squared Error Calculation RMSE:
diamonds_predictions |>
  rmse(truth = price, estimate = .pred)
#> # A tibble: 1 × 3
#>   .metric .estimator .estimate
#>   <chr>   <chr>          <dbl>
#> 1 rmse    standard       1119.
```

Thus, we have learned to perform one more machine learning model: linear regression, both simple and multiple.

## Standard Method for Evaluating Accuracy
Now that we know how to build models we will apply metrics that allow us better accuracy in classification models for **two classes**.

To do this let's recall the results of the model we created using the k-nearest neighbors algorithm to predict if the S&P index goes up or down.


``` r
SP_knn_trained
#> ══ Workflow [trained] ═══════════════════════════════
#> Preprocessor: Recipe
#> Model: nearest_neighbor()
#> 
#> ── Preprocessor ─────────────────────────────────────
#> 1 Recipe Step
#> 
#> • step_normalize()
#> 
#> ── Model ────────────────────────────────────────────
#> 
#> Call:
#> kknn::train.kknn(formula = ..y ~ ., data = data, ks = min_rows(44L,     data, 5))
#> 
#> Type of response variable: nominal
#> Minimal misclassification: 0.0864461
#> Best kernel: optimal
#> Best k: 44
```

In the penultimate line it can be read that **accuracy** (`accuracy`) was used to select the most optimal model using the largest value. However, this is not the only way to determine which is the most optimal model.

Let's remember how accuracy (_accuracy_) is calculated by default, we have used the simple rule that if the probability of it being of a certain class is more than 50% then that class is assigned and then we calculate the proportion of hits among the total cases.

However, it doesn't have to be 50%, we could be more demanding and indicate that if the probability is greater than 60% or 80% then a certain class is assigned. We see that there are different probabilities and that would give us different `accuracy`.

This is how the area under the Receiver Operating Characteristic curve indicator arises, _ROC_ [@Fawcett2005]. This indicator measures how well a model can distinguish between two classes and is considered the standard method for evaluating the accuracy of predictive distribution models [@Lobo2007] and calculates accuracies not only for when we discriminate starting from 50%, but for more probability values.

To use this metric we will modify our control parameters adding three attributes that will allow calculating the ROC.



``` r
SP2_ctrl <- metric_set(roc_auc, accuracy)

# We define folds
set.seed(28)
SP2_folds <- vfold_cv(SP_train, v = 5, strata = Direction)
```

With these modified parameters we will proceed to re-train our model selecting by ROC AUC.


``` r
set.seed(28)

# Tune grid specifying ROC as the metric to optimize
SP2_knn_res <- tune_grid(
  knn_workflow,
  resamples = SP2_folds,
  grid = 20,
  metrics = SP2_ctrl
)

show_best(SP2_knn_res, metric = "roc_auc")
#> # A tibble: 5 × 7
#>   neighbors .metric .estimator  mean     n std_err .config         
#>       <int> <chr>   <chr>      <dbl> <int>   <dbl> <chr>           
#> 1        15 roc_auc binary     0.965     5 0.00586 pre0_mod13_post0
#> 2        13 roc_auc binary     0.962     5 0.00632 pre0_mod12_post0
#> 3        12 roc_auc binary     0.960     5 0.00667 pre0_mod11_post0
#> 4        11 roc_auc binary     0.957     5 0.00717 pre0_mod10_post0
#> 5        10 roc_auc binary     0.955     5 0.00739 pre0_mod09_post0
```

We see that now ROC was used to select the most optimal model. The closer the ROC value is to 1 the better our model will be. With this model we can predict values from the test data.


``` r
# Select best k based on ROC
best_k_roc <- select_best(SP2_knn_res, metric = "roc_auc")

# Finalize workflow
final_knn_roc <- finalize_workflow(knn_workflow, best_k_roc)

# Fit and predict
SP2_knn_fit <- fit(final_knn_roc, data = SP_train)
SP2_predictions <- augment(SP2_knn_fit, new_data = SP_test)

# Evaluate
SP2_predictions |>
  conf_mat(truth = Direction, estimate = .pred_class)
#>           Truth
#> Prediction Down  Up
#>       Down  135  15
#>       Up     16 147

SP2_predictions |>
  accuracy(truth = Direction, estimate = .pred_class)
#> # A tibble: 1 × 3
#>   .metric  .estimator .estimate
#>   <chr>    <chr>          <dbl>
#> 1 accuracy binary         0.901
```

We see how our accuracy (_accuracy_) has increased from 91.99% to **93.27%**. This metric is highly recommended to improve the accuracy of our model, in addition to allowing us to more easily use it as a comparator between different models we can create.

## Selection of the Most Optimal Model
We have learned how to create some machine learning models. As we must have noticed, with **tidymodels** we follow the same pattern for partitioning, training, and prediction. The variation lies in how to pre-process the data and the parameter tuning. We could thus create multiple models, but finally we have to verify one which will serve us to make our predictions.

In this section, we are going to compare different predictive models accepting their default values and choose the best one using the tools presented in previous sections.

To do this, we are going to use a new case. This time we are evaluating the behavior of our 5,000 clients, some of whom have unsubscribed from our services. We have 19 predictors, most of them numeric, in the `mlc_churn` dataset. To access the data we have to load the `modeldata` library.


``` r
install.packages("modeldata")
library(modeldata)
```


``` r
data(mlc_churn)

str(mlc_churn)
#> tibble [5,000 × 20] (S3: tbl_df/tbl/data.frame)
#>  $ state                        : Factor w/ 51 levels "AK","AL","AR",..: 17 36 32 36 37 2 20 25 19 50 ...
#>  $ account_length               : int [1:5000] 128 107 137 84 75 118 121 147 117 141 ...
#>  $ area_code                    : Factor w/ 3 levels "area_code_408",..: 2 2 2 1 2 3 3 2 1 2 ...
#>  $ international_plan           : Factor w/ 2 levels "no","yes": 1 1 1 2 2 2 1 2 1 2 ...
#>  $ voice_mail_plan              : Factor w/ 2 levels "no","yes": 2 2 1 1 1 1 2 1 1 2 ...
#>  $ number_vmail_messages        : int [1:5000] 25 26 0 0 0 0 24 0 0 37 ...
#>  $ total_day_minutes            : num [1:5000] 265 162 243 299 167 ...
#>  $ total_day_calls              : int [1:5000] 110 123 114 71 113 98 88 79 97 84 ...
#>  $ total_day_charge             : num [1:5000] 45.1 27.5 41.4 50.9 28.3 ...
#>  $ total_eve_minutes            : num [1:5000] 197.4 195.5 121.2 61.9 148.3 ...
#>  $ total_eve_calls              : int [1:5000] 99 103 110 88 122 101 108 94 80 111 ...
#>  $ total_eve_charge             : num [1:5000] 16.78 16.62 10.3 5.26 12.61 ...
#>  $ total_night_minutes          : num [1:5000] 245 254 163 197 187 ...
#>  $ total_night_calls            : int [1:5000] 91 103 104 89 121 118 118 96 90 97 ...
#>  $ total_night_charge           : num [1:5000] 11.01 11.45 7.32 8.86 8.41 ...
#>  $ total_intl_minutes           : num [1:5000] 10 13.7 12.2 6.6 10.1 6.3 7.5 7.1 8.7 11.2 ...
#>  $ total_intl_calls             : int [1:5000] 3 3 5 7 3 6 7 6 4 5 ...
#>  $ total_intl_charge            : num [1:5000] 2.7 3.7 3.29 1.78 2.73 1.7 2.03 1.92 2.35 3.02 ...
#>  $ number_customer_service_calls: int [1:5000] 1 1 0 2 3 0 3 0 1 0 ...
#>  $ churn                        : Factor w/ 2 levels "yes","no": 2 2 2 2 2 2 2 2 2 2 ...

# We translate outputs
mlc_churn <- mlc_churn |> 
  rename(churn_status = churn) |> 
  mutate(churn_status = ifelse(churn_status == "yes", "Yes", "No")) |> 
  mutate(churn_status = as.factor(churn_status))
  
# Proportion of "Yes" and "No"s:
prop.table(table(mlc_churn$churn_status))
#> 
#>     No    Yes 
#> 0.8586 0.1414
```

We create now sample of training and test, 70% training.


``` r
set.seed(28)
churn_split <- initial_split(mlc_churn, prop = 0.7, strata = churn_status)

churn_train <- training(churn_split)
churn_test <- testing(churn_split)
```

Up to here we have done exactly the same step as in previous models. However, previously we have specified the _cross-validation_ method within our control parameters. Now we will create a shared validation set to compare all models fairly.

We will create a list of 5 _folds_ using the function `vfold_cv()` from `rsample`.


``` r
set.seed(28)
churn_folds <- vfold_cv(churn_train, v = 5, strata = churn_status)
churn_folds
#> #  5-fold cross-validation using stratification 
#> # A tibble: 5 × 2
#>   splits             id   
#>   <list>             <chr>
#> 1 <split [2799/700]> Fold1
#> 2 <split [2799/700]> Fold2
#> 3 <split [2799/700]> Fold3
#> 4 <split [2799/700]> Fold4
#> 5 <split [2800/699]> Fold5
```

We will use the **ROC** metric for all models. In tidymodels, we define the metrics we want to calculate using a `metric_set()`.


``` r
churn_metrics <- metric_set(roc_auc, accuracy, sensitivity, specificity)
```

The next step would be to choose the machine learning algorithms we want to use to create our models. `parsnip` provides a consistent interface for different models. We can check available engines for a model type, for example:


``` r
show_engines("nearest_neighbor")
#> # A tibble: 2 × 2
#>   engine mode          
#>   <chr>  <chr>         
#> 1 kknn   classification
#> 2 kknn   regression
```

We will create a series of models and compare them using ROC AUC. First, let's define a common recipe for preprocessing.


``` r
churn_recipe <- recipe(churn_status ~ ., data = churn_train) |>
  step_dummy(all_nominal_predictors(), -churn_status) |>
  step_normalize(all_numeric_predictors())
```

### k-Nearest Neighbors Model
Although it is a very simple model, it is also very useful. Let's start with this model that we already learned to create during this chapter.


``` r
# Spec
knn_spec <- nearest_neighbor(neighbors = tune()) |>
  set_engine("kknn") |>
  set_mode("classification")

# Workflow
knn_workflow <- workflow() |>
  add_recipe(churn_recipe) |>
  add_model(knn_spec)

# Tune
knn_res <- tune_grid(
  knn_workflow,
  resamples = churn_folds,
  grid = 10,
  metrics = churn_metrics
)

show_best(knn_res, metric = "roc_auc")
#> # A tibble: 5 × 7
#>   neighbors .metric .estimator  mean     n std_err .config         
#>       <int> <chr>   <chr>      <dbl> <int>   <dbl> <chr>           
#> 1        15 roc_auc binary     0.684     5 0.0101  pre0_mod10_post0
#> 2        13 roc_auc binary     0.679     5 0.00972 pre0_mod09_post0
#> 3        11 roc_auc binary     0.676     5 0.0110  pre0_mod08_post0
#> 4        10 roc_auc binary     0.674     5 0.0119  pre0_mod07_post0
#> 5         8 roc_auc binary     0.665     5 0.0145  pre0_mod06_post0
```

### Generalized Linear Model - GLM
The [generalized linear model](https://towardsdatascience.com/generalized-linear-models-9cbf848bb8ab) (GLM) is a flexible generalization of ordinary linear regression.

To do this we need to install the `glmnet` library before creating our model via tidymodels.


``` r
install.packages("glmnet")
```


``` r
# Spec
glm_spec <- logistic_reg(penalty = tune(), mixture = tune()) |>
  set_engine("glmnet") |>
  set_mode("classification")

# Workflow
glm_workflow <- workflow() |>
  add_recipe(churn_recipe) |>
  add_model(glm_spec)

# Tune
glm_res <- tune_grid(
  glm_workflow,
  resamples = churn_folds,
  grid = 10,
  metrics = churn_metrics
)

show_best(glm_res, metric = "roc_auc")
#> # A tibble: 5 × 8
#>         penalty mixture .metric .estimator  mean     n std_err .config         
#>           <dbl>   <dbl> <chr>   <chr>      <dbl> <int>   <dbl> <chr>           
#> 1 0.00599         1     roc_auc binary     0.819     5 0.00937 pre0_mod08_post0
#> 2 0.0774          0.261 roc_auc binary     0.813     5 0.00862 pre0_mod09_post0
#> 3 0.000464        0.578 roc_auc binary     0.808     5 0.0102  pre0_mod07_post0
#> 4 0.00000278      0.894 roc_auc binary     0.807     5 0.0104  pre0_mod05_post0
#> 5 0.00000000129   0.789 roc_auc binary     0.807     5 0.0104  pre0_mod02_post0
```

### Random Forest Model
Random Forest is a supervised machine learning technique based on decision trees. We will use the [random forest model](https://dialnet.unirioja.es/descarga/articulo/6230447.pdf) (RF).

To do this we will first install the `ranger` library and then create the model via tidymodels.


``` r
install.packages("ranger")
```


``` r
# Spec
rf_spec <- rand_forest(mtry = tune(), trees = 1000, min_n = tune()) |>
  set_engine("ranger") |>
  set_mode("classification")

# Workflow
rf_workflow <- workflow() |>
  add_recipe(churn_recipe) |>
  add_model(rf_spec)

# Tune
rf_res <- tune_grid(
  rf_workflow,
  resamples = churn_folds,
  grid = 10,
  metrics = churn_metrics
)
#> i Creating pre-processing data to finalize 1 unknown parameter: "mtry"

show_best(rf_res, metric = "roc_auc")
#> # A tibble: 5 × 8
#>    mtry min_n .metric .estimator  mean     n std_err .config         
#>   <int> <int> <chr>   <chr>      <dbl> <int>   <dbl> <chr>           
#> 1     8    31 roc_auc binary     0.914     5 0.00998 pre0_mod02_post0
#> 2    16     2 roc_auc binary     0.912     5 0.0104  pre0_mod03_post0
#> 3    23    18 roc_auc binary     0.911     5 0.00975 pre0_mod04_post0
#> 4    31    35 roc_auc binary     0.909     5 0.0101  pre0_mod05_post0
#> 5    53    40 roc_auc binary     0.906     5 0.00890 pre0_mod08_post0
```

### Support Vector Machine Model - SVM
[Support vector machines](http://numerentur.org/svm/) or support vector machines are a set of supervised learning algorithms.

To create this model we will use the `kernlab` engine.


``` r
install.packages("kernlab")
```


``` r
# Spec
svm_spec <- svm_rbf(cost = tune(), rbf_sigma = tune()) |>
  set_engine("kernlab") |>
  set_mode("classification")

# Workflow
svm_workflow <- workflow() |>
  add_recipe(churn_recipe) |>
  add_model(svm_spec)

# Tune
svm_res <- tune_grid(
  svm_workflow,
  resamples = churn_folds,
  grid = 10,
  metrics = churn_metrics
)
#> maximum number of iterations reached 2.273272e-05 2.273273e-05maximum number of iterations reached 0.001260726 0.001226596maximum number of iterations reached 0.008990742 0.0089403maximum number of iterations reached 4.01911e-05 4.01911e-05maximum number of iterations reached 0.0004458751 0.0004390186maximum number of iterations reached 0.01426775 0.01386837maximum number of iterations reached 2.311619e-05 2.311619e-05maximum number of iterations reached 0.0004666225 0.0004600749maximum number of iterations reached 0.009561785 0.009488703maximum number of iterations reached 4.18965e-05 4.189651e-05maximum number of iterations reached 0.01467671 0.01418266maximum number of iterations reached 2.221129e-05 2.22113e-05maximum number of iterations reached 0.0009695224 0.0009465917maximum number of iterations reached 0.009269646 0.009208682maximum number of iterations reached 3.924845e-05 3.924845e-05maximum number of iterations reached 0.0002350936 0.0002328733maximum number of iterations reached 0.01304753 0.01272522maximum number of iterations reached 2.357812e-05 2.357812e-05maximum number of iterations reached 0.0003822001 0.000377737maximum number of iterations reached 0.009766638 0.009695014maximum number of iterations reached 4.284351e-05 4.284352e-05maximum number of iterations reached 0.01553881 0.01501075maximum number of iterations reached 2.310753e-05 2.310753e-05maximum number of iterations reached 0.0004798964 0.0004730654maximum number of iterations reached 0.009636723 0.009566509maximum number of iterations reached 4.147277e-05 4.147278e-05maximum number of iterations reached 0.0002249601 0.0002227933maximum number of iterations reached 0.01498293 0.01448009

show_best(svm_res, metric = "roc_auc")
#> # A tibble: 5 × 8
#>        cost   rbf_sigma .metric .estimator  mean     n std_err .config         
#>       <dbl>       <dbl> <chr>   <chr>      <dbl> <int>   <dbl> <chr>           
#> 1  0.00310  0.00599     roc_auc binary     0.864     5 0.00811 pre0_mod02_post0
#> 2 32        0.000464    roc_auc binary     0.862     5 0.00900 pre0_mod10_post0
#> 3  1        0.0000359   roc_auc binary     0.794     5 0.0103  pre0_mod07_post0
#> 4  0.0312   0.00000278  roc_auc binary     0.793     5 0.0114  pre0_mod04_post0
#> 5  0.000977 0.000000215 roc_auc binary     0.793     5 0.0114  pre0_mod01_post0
```

### Naive Bayes Model
Naïve Bayes (NB) is one of the simplest, yet powerful, algorithms for classification. It is based on **Bayes' Theorem**, which describes the probability of an event, based on prior knowledge of conditions that might be related to the event. For example, if cancer is related to age, then, using Bayes' theorem, a person's age can be used to more accurately assess the probability that they have cancer.

To use this model we will use the `naivebayes` library within tidymodels.


``` r
install.packages(c("naivebayes", "discrim"))
library(naivebayes) 
library(discrim) # Required for parsnip integration
```


``` r
# Spec
library(discrim)
#> 
#> Attaching package: 'discrim'
#> The following object is masked from 'package:dials':
#> 
#>     smoothness
nb_spec <- naive_Bayes() |>
  set_engine("naivebayes") |>
  set_mode("classification")

# Workflow
nb_workflow <- workflow() |>
  add_recipe(churn_recipe) |>
  add_model(nb_spec)

# Tune
nb_res <- fit_resamples(
  nb_workflow,
  resamples = churn_folds,
  metrics = churn_metrics
)

collect_metrics(nb_res)
#> # A tibble: 4 × 6
#>   .metric     .estimator  mean     n  std_err .config        
#>   <chr>       <chr>      <dbl> <int>    <dbl> <chr>          
#> 1 accuracy    binary     0.859     5 0.000246 pre0_mod0_post0
#> 2 roc_auc     binary     0.840     5 0.00983  pre0_mod0_post0
#> 3 sensitivity binary     1         5 0        pre0_mod0_post0
#> 4 specificity binary     0         5 0        pre0_mod0_post0
```

### Model Comparison
To compare the models, we can extract the metrics from each tuning result and visualize them.


``` r
# Collect metrics
knn_metrics <- collect_metrics(knn_res) |> mutate(model = "kNN")
glm_metrics <- collect_metrics(glm_res) |> mutate(model = "GLM")
rf_metrics <- collect_metrics(rf_res) |> mutate(model = "RF")
svm_metrics <- collect_metrics(svm_res) |> mutate(model = "SVM")
nb_metrics <- collect_metrics(nb_res) |> mutate(model = "Naive Bayes")

# Combine
all_metrics <- bind_rows(knn_metrics, glm_metrics, rf_metrics, svm_metrics, nb_metrics)

# Visualize ROC AUC
all_metrics |>
  filter(.metric == "roc_auc") |>
  ggplot(aes(x = model, y = mean, fill = model)) +
  geom_col() +
  labs(y = "ROC AUC", title = "Model Comparison") +
  theme(legend.position = "none")

```

<img src="Data-Science-with-R_files/figure-html/unnamed-chunk-634-1.png" alt="" width="80%" style="display: block; margin: auto;" />

For this case the random forest model (_RF_) seems to be the best. This is not surprising given that this algorithm is related to its ability to cope with different input types and require little preprocessing. We can make our models better by pre-processing data and changing the ad-hoc parameters of each model.

### Predicting using the best model
Now that we have our best model (Random Forest), we proceed to perform the prediction on the test set. We need to finalize the workflow with the best hyperparameters from the tuning step first.


``` r
# Select best parameters for RF
best_rf <- select_best(rf_res, metric = "roc_auc")

# Finalize workflow
final_rf_workflow <- finalize_workflow(rf_workflow, best_rf)

# Fit on training data
optimal_model <- fit(final_rf_workflow, data = churn_train)

# Predict on test data
churn_predictions <- augment(optimal_model, new_data = churn_test)

# Evaluate results
churn_predictions |>
  conf_mat(truth = churn_status, estimate = .pred_class)
#>           Truth
#> Prediction   No  Yes
#>        No  1285   66
#>        Yes    3  147

churn_predictions |>
  accuracy(truth = churn_status, estimate = .pred_class)
#> # A tibble: 1 × 3
#>   .metric  .estimator .estimate
#>   <chr>    <chr>          <dbl>
#> 1 accuracy binary         0.954
```

Thus, we have found how to create a customer churn prediction model given 19 prediction variables with an accuracy of 96%.



## Exercises

100. The `attrition` data frame from the `modeldata` library shows data from a list of almost 1,500 employees of a company. Create a copy of this data frame and store it in the `workers` object. Then, build an RF model with this data to predict the `Attrition` field (job desertion). Where the class "Yes" means they resigned and "No" means they still work.



<details>
  <summary type="button">Solution</summary>

``` r
data(attrition)
str(attrition)

workers <- attrition

workers <- workers |> 
  rename(attrition_status = Attrition)

# 70% for the training data
set.seed(28)
workers_split <- initial_split(workers, prop = 0.7, strata = attrition_status)

workers_train <- training(workers_split)
workers_test <- testing(workers_split)

# Recipe
workers_recipe <- recipe(attrition_status ~ ., data = workers_train) |>
  step_dummy(all_nominal_predictors(), -attrition_status) |>
  step_normalize(all_numeric_predictors())

# We create CV folds
workers_folds <- vfold_cv(workers_train, v = 5, strata = attrition_status)
workers_metrics <- metric_set(roc_auc, accuracy)

# We create the model
rf_spec <- rand_forest(trees = 1000) |>
  set_engine("ranger") |>
  set_mode("classification")

rf_wf <- workflow() |>
  add_recipe(workers_recipe) |>
  add_model(rf_spec)

workers_rf_res <- fit_resamples(
  rf_wf,
  resamples = workers_folds,
  metrics = workers_metrics
)

collect_metrics(workers_rf_res)

```
</details>


101. Using the training data from the previous exercise, build the GLM model using tidymodels.



<details>
  <summary type="button">Solution</summary>

``` r
# Spec
glm_spec <- logistic_reg(penalty = tune(), mixture = tune()) |>
  set_engine("glmnet") |>
  set_mode("classification")

# Workflow
glm_wf <- workflow() |>
  add_recipe(workers_recipe) |>
  add_model(glm_spec)

# Tune
workers_glm_res <- tune_grid(
  glm_wf,
  resamples = workers_folds,
  grid = 10,
  metrics = workers_metrics
)

show_best(workers_glm_res, metric = "roc_auc")
```
</details>


102. Using the training data, build the SVM model.



<details>
  <summary type="button">Solution</summary>

``` r
# Spec
svm_spec <- svm_rbf(cost = tune(), rbf_sigma = tune()) |>
  set_engine("kernlab") |>
  set_mode("classification")

# Workflow
svm_wf <- workflow() |>
  add_recipe(workers_recipe) |>
  add_model(svm_spec)

# Tune
workers_svm_res <- tune_grid(
  svm_wf,
  resamples = workers_folds,
  grid = 10,
  metrics = workers_metrics
)

show_best(workers_svm_res, metric = "roc_auc")

```
</details>

103. From the created models, which is the most optimal?



<details>
  <summary type="button">Solution</summary>

``` r
# Collect best metrics from each model
rf_best <- show_best(workers_rf_res, metric = "roc_auc", n = 1)
glm_best <- show_best(workers_glm_res, metric = "roc_auc", n = 1)
svm_best <- show_best(workers_svm_res, metric = "roc_auc", n = 1)

# Create comparison tibble
model_comparison <- bind_rows(
  rf_best |> mutate(model = "Random Forest"),
  glm_best |> mutate(model = "GLM"),
  svm_best |> mutate(model = "SVM")
)

# Visualize
model_comparison |>
  ggplot(aes(x = reorder(model, mean), y = mean, fill = model)) +
  geom_col() +
  geom_errorbar(aes(ymin = mean - std_err, ymax = mean + std_err), width = 0.2) +
  labs(y = "ROC AUC", x = "Model", title = "Model Comparison by ROC AUC") +
  theme(legend.position = "none") +
  coord_flip()

```

We see how the results overlap, so we could opt for the two that have the highest mean ROC and among them choose the one that gives us a smaller range of values.

</details>


104. Create the confusion matrices for the three models created.



<details>
  <summary type="button">Solution</summary>

``` r
# Finalize and fit each model
best_rf <- select_best(workers_rf_res, metric = "roc_auc")
final_rf_wf <- finalize_workflow(rf_wf, best_rf)
rf_fit <- fit(final_rf_wf, data = workers_train)

best_glm <- select_best(workers_glm_res, metric = "roc_auc")
final_glm_wf <- finalize_workflow(glm_wf, best_glm)
glm_fit <- fit(final_glm_wf, data = workers_train)

best_svm <- select_best(workers_svm_res, metric = "roc_auc")
final_svm_wf <- finalize_workflow(svm_wf, best_svm)
svm_fit <- fit(final_svm_wf, data = workers_train)

# Predictions and confusion matrices
rf_preds <- augment(rf_fit, new_data = workers_test)
rf_preds |> conf_mat(truth = attrition_status, estimate = .pred_class)

glm_preds <- augment(glm_fit, new_data = workers_test)
glm_preds |> conf_mat(truth = attrition_status, estimate = .pred_class)

svm_preds <- augment(svm_fit, new_data = workers_test)
svm_preds |> conf_mat(truth = attrition_status, estimate = .pred_class)
```

Keep in mind that the model with the highest `ROC` value will not necessarily have the highest `accuracy`. Therefore the choice of the model was performed in a previous step. The ROC better balances sensitivity with the [false positive rate](https://en.wikipedia.org/wiki/False_positive_rate).

</details>


</details>



## Ethics: Bias in Algorithmic Decision Making

In the previous exercise, we built models to predict employee attrition using variables like `Gender`, `Age`, and `MaritalStatus`. While mathematically sound, obtaining a high accuracy score does not mean the model is "good" or "fair" to use in the real world.

### The Risk of Proxy Variables
Even if we remove explicit sensitive attributes (like Gender or Ethnicity), other variables can act as **proxies**.
*   **Zip Code:** Often correlates with race or socioeconomic status.
*   **Years of Experience:** Strongly correlated with Age.

### Feedback Loops
If a company uses an algorithm to decide who to hire or fire based on historical data, they may perpetuate historical biases.
*   **Scenario:** If a company historically didn't hire women for leadership roles, the training data will show that women are "less likely to succeed" in those roles.
*   **Result:** The model creates a feedback loop, rejecting qualified female candidates because they don't match the historical pattern of "success".

> [!IMPORTANT]
> **What can we do?**
>
> 1.  **Audit your Data:** checking for representation balance (e.g., is one group significantly smaller?).
> 2.  **Model Explainability:** Use tools like `DALEX` or `vip` (variable importance) to understand *why* the model is making a decision. If `MaritalStatus` is the top predictor for firing someone, is that ethical?
> 3.  **Human in the Loop:** These models should support human decision-making, not replace it entirely.

As Data Scientists, our responsibility extends beyond the AUC score. We must ensure our models do not harm individuals or groups.



<!--chapter:end:06-machine-learning/sml.Rmd-->

---
output: html_document
editor_options: 
  chunk_output_type: console
---

# Unsupervised Learning

Now that we know how to create supervised learning algorithms, understanding unsupervised learning becomes an intuitive exercise.

While in **supervised** learning we have a set of variables that we use to predict a certain output class (up/down, resign/not resign), in **unsupervised** learning we do not have expected output classes. In supervised learning we had training data and testing data that allowed us to validate the effectiveness of the model by its closeness to the known class. In unsupervised learning we do not have a default _output_. This in turn generates a great challenge because it is very difficult to know if we have already finished the work or if we can still generate another model with which we feel more satisfied.

The simplest example to understand this type of learning is when we have our customer base and we want to segment them for the first time. In that case, we look for customers who behave in the same way, but being the first time, we don't know how many segments we can have. The challenge lies in determining the cut-off: how many segments do we seek to create?

## Learning Objectives

By the end of this section, you will be able to:

By the end of this section, you will be able to clearly differentiate between supervised and unsupervised learning, understanding the distinct challenges of working with unlabeled data. We will apply the **k-means** clustering algorithm to segment data into optimal groups and use **hierarchical clustering** to visualize relationships through dendrograms. Furthermore, you will learn to evaluate the quality of these clusters using the **elbow** and **silhouette** methods, and perform basic **dimensionality reduction** to simplify complex datasets.

## Applications of Unsupervised Learning

The main applications of unsupervised learning are related to data **_clustering_**. Here, the goal is to find homogeneous subgroups within the data. These algorithms are based on the distance between observations. The customer segmentation example would be an example of _clustering_.

The most commonly used clustering algorithms are: k-means clustering and hierarchical clustering.

<!-- and probabilistic clustering. -->

<!--
2. **Dimensionality reduction**, when the goal is to identify patterns from the base data. It is often used to facilitate data visualization, as well as a preprocessing method before supervised learning. The most widely used algorithms are Principal Component Analysis (PCA) and Singular Value Decomposition (SVD).

3. **Generative models**
-->

## K-Means Clustering

To understand this method we will use examples first with a minimal amount of variables and then little by little we will create a more generic model.

### Clustering with k = 2
Suppose we have a list of players on a soccer field and we take a photo from above to have their coordinates (variable 1 would be the x-axis and variable 2 would be the y-axis). We cannot see which team each player belongs to so we will paint everyone as black dots.


``` r
players <- tibble(x = c(-1, -2, 8, 7, -12, -15, -13, 15, 21, 12, -25, 26),
                    y = c(1, -3, 6, -8, 8, 0, -10, 16, 2, -15, 1, 0)
                    )

players |> 
  ggplot() +
  aes(x, y) +
  geom_point(size = 5)

```

<img src="Data-Science-with-R_files/figure-html/unnamed-chunk-647-1.png" alt="" width="80%" style="display: block; margin: auto;" />

This method allows us to group based on the definition of centroids. We will define as many centroids as groups we want to obtain. Since for this case we know that there must be two teams, we will use 2 centroids (k = 2).

The k-means algorithm then places these 2 points (centroids) randomly on the plane in a first iteration. Then, it calculates the distance between each center and the other data points. If it is closer to a centroid then it assigns it to centroid 1, otherwise to centroid 2.

<img src="_assets/images/06-machine-learning/kmeans-distance.png" alt="K-means iteration showing data points and distance calculations to two centroids" width="80%" style="display: block; margin: auto;" />

A first grouping has already been performed. Now each centroid within each group is located at the mean of the other points in its group and another iteration occurs to reassign all points. This iteration is done over and over again until the centroids are fixed.

To create this model in R we will use the function `kmeans(data, centers = k)`.


``` r
kmeans_model <- kmeans(players, centers = 2)

# We print the coordinates of the centers
kmeans_model$centers
#>           x          y
#> 1 -11.33333 -0.5000000
#> 2  14.83333  0.1666667
```

This means that for these two centers the average distance to the other points is the minimum, therefore the algorithm assigns them to one group or another. Let's see approximately where these centers are located if we marked them with an **x**.

<img src="_assets/images/06-machine-learning/kmeans-centers.png" alt="K-means result with two clusters and centroids marked with X" width="80%" style="display: block; margin: auto;" />

Thus, once the model is created we can obtain the clustering results, team 1 or team 2.


``` r
team <- kmeans_model$cluster
```

We can add this team assignment as one more column of our `players` data set to be able to visualize them in R.


``` r
# We add the cluster column
players_grouped <- players |> 
                         mutate(cluster = team)

# We visualize the players according to the grouping
players_grouped |> 
  ggplot() +
  aes(x, y, fill = factor(cluster)) +
  geom_point(size = 5, pch = 21) +
  scale_fill_manual(values=c("#EE220D", "#01A2FF")) +
  theme(legend.position = "none")
  
```

<img src="Data-Science-with-R_files/figure-html/unnamed-chunk-652-1.png" alt="" width="80%" style="display: block; margin: auto;" />

We have found two centroids until minimizing the sum of the squared differences between each centroid and the other points in the cluster. We can access and see how much this value is, given that it is part of the model results.


``` r
# Sum of squares within each cluster
kmeans_model$withinss
#> [1] 570.8333 863.6667

# Total
kmeans_model$tot.withinss
#> [1] 1434.5
```

`Tot.withinss` comes from _Total within-cluster sum of squares_.

### Clustering with k >= 3
When we have 3 or more centers the idea is the same, we only change the `centers` parameter.


``` r
kmeans_model <- kmeans(players, centers = 3)

team <- kmeans_model$cluster

players_grouped <- players |> 
                         mutate(cluster = team)

players_grouped |> 
  ggplot() +
  aes(x, y, color = factor(cluster)) +
  geom_point(size = 5) +
  theme(legend.position = "none")

kmeans_model$tot.withinss
#> [1] 881.25
```

<img src="Data-Science-with-R_files/figure-html/unnamed-chunk-654-1.png" alt="" width="80%" style="display: block; margin: auto;" />

In this case we have found that the sum of squares within the clusters is smaller, so we could indicate that this grouping is more optimal than the grouping into two groups. However, the sum of squares is not necessarily the best indicator for choosing how many clusters to create.

### Determination of Optimal Clusters
We can mainly use two methods to determine how many clusters we should build, `k`. The sum of squares method (_wss_) and the average silhouette method (_silhouette_).

To avoid having to calculate models for different values of `k` we will use the `factoextra` library, which was created especially to perform easy multivariate data analysis and elegant visualization, very useful for clustering.


``` r
install.packages("factoextra")
library(factoextra)
```

#### Sum of Squares Method
To find the optimal "k" under this method, we will use the **elbow plot**, where we first calculate the total within-cluster sum of squares for different values of "k". Then, visually we will identify a point where there seems to be a very strong drop followed by a more gradual drop in the slope. To do this, we will use the function `fviz_nbclust(data, type, method)` and enter our data, the type of algorithm that will be used to group and the measurement method.


``` r
fviz_nbclust(players, FUN = kmeans, method = "wss")
```

<img src="Data-Science-with-R_files/figure-html/unnamed-chunk-656-1.png" alt="" width="80%" style="display: block; margin: auto;" />

In this case the "elbow" is found at the value k = 2, from there the sum of squares reduces but at a slower rate.

#### Average Silhouette Method
The method described above is a visual aid that makes recognition difficult when the data points are closer. Therefore, it is much more frequent to perform a silhouette analysis [@Rousseeuw1987]. This approach measures the quality of a clustering. That is, it determines how well each object lies within its group. A high average silhouette width indicates a good clustering. The average silhouette method calculates the average silhouette of observations for different values of "k". The optimal number of groups "k" is the one that maximizes the average silhouette over a range of possible values for "k".

To do this, we change the `method` parameter in the function and obtain the silhouette analysis.


``` r
fviz_nbclust(players, FUN = kmeans, method = "silhouette")
```

<img src="Data-Science-with-R_files/figure-html/unnamed-chunk-657-1.png" alt="" width="80%" style="display: block; margin: auto;" />

Here it is clearly seen that for a value of `k=2` we have the best average, making this our optimal number of groups.

> [!TIP]
> **Interpreting Silhouette Scores**
Interpreting these scores is straightforward: a score close to **1** indicates that the data point is well-matched to its own cluster and distinct from neighbors, representing a strong grouping. A score near **0** suggests the point lies on the boundary between clusters, while a **negative** score implies the point may have been assigned to the wrong group. Generally, an average silhouette width above **0.5** signals a solid clustering structure.

### k-means for more than 2 variables
The method we have learned can be easily extended to more variables. Only in this case it would no longer be possible to visualize it like the soccer team and we would only visualize the results of the grouping and the learned metrics.

To do this, we will use the following customer dataset, where we will find a dataset of customers of a wholesale distributor. It includes the annual spending in monetary units on various product categories.


``` r
url <- "http://archive.ics.uci.edu/ml/machine-learning-databases/00292/Wholesale%20customers%20data.csv"
customers <- read_csv(url)
#> Rows: 440 Columns: 8
#> ── Column specification ────────────────────────────────
#> Delimiter: ","
#> dbl (8): Channel, Region, Fresh, Milk, Grocery, Frozen, Detergents_Paper, De...
#> 
#> ℹ Use `spec()` to retrieve the full column specification for this data.
#> ℹ Specify the column types or set `show_col_types = FALSE` to quiet this message.
```

We are going to perform a grouping only considering the spending made on frozen foods, groceries and dairy products.


``` r
customers_filtered <- customers |> 
  select(Milk, Grocery, Frozen)

# We scale the data to ensure equal weight for all variables
customers_scaled <- as.data.frame(scale(customers_filtered))
```

Once we have our data we would create a silhouette analysis to determine the best value of "k".


``` r
fviz_nbclust(customers_scaled, FUN = kmeans, method = "silhouette")
```

<img src="Data-Science-with-R_files/figure-html/unnamed-chunk-660-1.png" alt="" width="80%" style="display: block; margin: auto;" />

Again, we get that the recommended number of clusters is 2. Let's create the model for k = 2 and store the resulting cluster.


``` r
model <- kmeans(customers_scaled, centers = 2)

customers_grouped <- customers_filtered |> 
                        mutate(cluster = model$cluster)

customers_grouped
#> # A tibble: 440 × 4
#>     Milk Grocery Frozen cluster
#>    <dbl>   <dbl>  <dbl>   <int>
#>  1  9656    7561    214       1
#>  2  9810    9568   1762       1
#>  3  8808    7684   2405       1
#>  4  1196    4221   6404       1
#>  5  5410    7198   3915       1
#>  6  8259    5126    666       1
#>  7  3199    6975    480       1
#>  8  4956    9426   1669       1
#>  9  3648    6192    425       1
#> 10 11093   18881   1159       1
#> # ℹ 430 more rows
```

Once we have grouped our data we can calculate the amount of data in each cluster and the mean of the values for each group and thus identify differences between these two potential customer segments.


``` r
customers_grouped |> 
  group_by(cluster) |> 
  summarise(total = n(), 
            mean_Milk = mean(Milk), 
            mean_Grocery = mean(Grocery),
            mean_Frozen = mean(Frozen))
#> # A tibble: 2 × 5
#>   cluster total mean_Milk mean_Grocery mean_Frozen
#>     <int> <int>     <dbl>        <dbl>       <dbl>
#> 1       1   395     4056.        5628.       2864.
#> 2       2    45    21070.       28341.       4898.
```

Thus, we have learned to segment customers using machine learning.

## Hierarchical Clustering
Hierarchical clustering is another method for grouping data. The word hierarchical comes from the hierarchies that this algorithm creates to determine the clusters. Unlike k-means, we do not start by indicating how many clusters we want to create, but rather the algorithm shows us a list of possible combinations according to the hierarchy of distances between points. Let's see it with an example.

### Clustering with two variables
To do this we will use the same soccer team example that we used previously. With the difference that this time we number each player to make visualization easier.


``` r
num <- 1:12

players <- tibble(x = c(-1, -2, 8, 7, -12, -15, -13, 15, 21, 12, -25, 26),
                    y = c(1, -3, 6, -8, 8, 0, -10, 16, 2, -15, 1, 0))

players |> 
  ggplot() +
  aes(x, y, label = num) +
  geom_point(size = 5) +
  geom_text(nudge_x = 1.3, nudge_y = 1.3)
```

<img src="Data-Science-with-R_files/figure-html/unnamed-chunk-663-1.png" alt="" width="80%" style="display: block; margin: auto;" />

This algorithm searches for the two points with the shortest distance, the closest ones, and groups them. Then it searches for another two points with the smallest distance and asks: is the distance between these two new points less than the distance of these points to the previously created group? If the answer is yes, it groups them, otherwise it groups the closest point to the first created group.

Let's understand the algorithm graphically. Points 1 and 2 have the lowest hierarchy since they have the shortest distance. Then the algorithm searches for the next two closest points (point 9 and 12) and when comparing with the midpoint of 1 and 2 it opts to create a new group with a slightly higher hierarchy and so on.

<img src="_assets/images/06-machine-learning/hclust-one.png" alt="Initial hierarchical clustering step linking two closest points" width="80%" style="display: block; margin: auto;" />

However, now that we have point 7 and 11 and we calculate the distance, it turns out that that distance is not the smallest compared to the distances with the other existing groups. For example, 7 is closer to the midpoint of 1 and 2, and 11 is closer to the midpoint of 5 and 6.

<img src="_assets/images/06-machine-learning/hclust-two.png" alt="Hierarchical clustering merging additional nearby points into groups" width="80%" style="display: block; margin: auto;" />

Thus, the algorithm creates a higher hierarchy for this grouping.

<img src="_assets/images/06-machine-learning/hclust-three.png" alt="Dendrogram showing hierarchical clustering tree structure with higher groupings" width="80%" style="display: block; margin: auto;" />

The algorithm continues until it finally creates a group that includes everyone as the highest hierarchy. In the following graph we can not only appreciate this but also on the y-axis the distance between each point or group of points.

<img src="Data-Science-with-R_files/figure-html/unnamed-chunk-667-1.png" alt="" width="80%" style="display: block; margin: auto;" />

Up to here we haven't done more than generate hierarchies from the distances which will serve us later to determine how many clusters to generate. Let's create in R what has been advanced so far. The first thing we will do is calculate the distances between all points. To do this we will use the `dist()` function.


``` r
player_distances <- dist(players)

```

With the calculated distances we can create the hierarchical model using the `hclust(distance_matrix)` function.


``` r
hierarchical_model <- hclust(player_distances)
```

Once our model is created we can visualize it using the `dendextend` library.


``` r
install.packages("dendextend")
library(dendextend)
```

The visualization we saw is called a dendrogram. To do this we just have to convert our model to dendrogram format.


``` r
dend_model <- as.dendrogram(hierarchical_model)
plot(dend_model)
```

<img src="Data-Science-with-R_files/figure-html/unnamed-chunk-671-1.png" alt="" width="80%" style="display: block; margin: auto;" />

So far we have only seen the hierarchy, but what interests us is the grouping. The grouping is done by the calculated distance (`h` parameter). Let's try with a distance of 60. We will use the `color_branches` and `color_labels` functions to make the changes visible.


``` r
cut_height <- 60

dend_model |> 
  color_branches(h = cut_height, col = c("red", "green", "blue", "orange")) |> 
  color_labels(h = cut_height, col = c("red", "green", "blue", "orange")) |> 
  plot()
#> Warning in get_col(col, k): Length of color vector was longer than the number
#> of clusters - first k elements are used
```

<img src="Data-Science-with-R_files/figure-html/unnamed-chunk-672-1.png" alt="" width="80%" style="display: block; margin: auto;" />

Since the highest hierarchy distance is approximately 50, then in this case it groups everyone into one large cluster. Let's try with a lower number, for example 40.


``` r
cut_height <- 40

dend_model |> 
  color_branches(h = cut_height, col = c("red", "green", "blue")) |> 
  color_labels(h = cut_height, col = c("red", "green", "blue")) |> 
  plot() |> 
  abline(h = cut_height, lty = 2)
#> Warning in get_col(col, k): Length of color vector was longer than the number
#> of clusters - first k elements are used
```

<img src="Data-Science-with-R_files/figure-html/unnamed-chunk-673-1.png" alt="" width="80%" style="display: block; margin: auto;" />

By making a cut at 40 we now have two clusters, in this case the red color and the green color. Let's try with a lower number, 28.


``` r
cut_height <- 28

dend_model |> 
  color_branches(h = cut_height) |> 
  color_labels(h = cut_height) |> 
  plot() |> 
  abline(h = cut_height, lty = 2)
#> Loading required namespace: colorspace
```

<img src="Data-Science-with-R_files/figure-html/unnamed-chunk-674-1.png" alt="" width="80%" style="display: block; margin: auto;" />

Now we have three clusters and so we could continue until obtaining the clusters we need.

We must have noticed how impractical it is to use the distances of the hierarchical model because they vary according to the data we have. This model allows us to make cuts not only by distances but also by indicating how many clusters we want, parameter `k`.


``` r
desired_clusters <- 3

dend_model |> 
  color_branches(k = desired_clusters) |> 
  color_labels(k = desired_clusters) |> 
  plot()
```

<img src="Data-Science-with-R_files/figure-html/unnamed-chunk-675-1.png" alt="" width="80%" style="display: block; margin: auto;" />

We see that it gives us the same grouping whether we use distances or number of desired clusters.

### Determination of Optimal Clusters
To calculate how many clusters are optimal to create we will use the silhouette analysis again, but this time with the argument `FUN = hcut` to determine that it be evaluated based on a hierarchical model.


``` r
fviz_nbclust(players, FUN = hcut, method = "silhouette")
```

<img src="Data-Science-with-R_files/figure-html/unnamed-chunk-676-1.png" alt="" width="80%" style="display: block; margin: auto;" />

It is not surprising that the value of `k` is also 2, which coincides with the number obtained in the k-means model.

### Obtain the grouping
Now that we have validated that the recommended number of clusters is 2, we calculate the grouping from the previously created model.


``` r
players_grouped <- players |> 
                        mutate(cluster = cutree(hierarchical_model, k = 2)
                               )

players_grouped
#> # A tibble: 12 × 3
#>        x     y cluster
#>    <dbl> <dbl>   <int>
#>  1    -1     1       1
#>  2    -2    -3       1
#>  3     8     6       2
#>  4     7    -8       2
#>  5   -12     8       1
#>  6   -15     0       1
#>  7   -13   -10       1
#>  8    15    16       2
#>  9    21     2       2
#> 10    12   -15       2
#> 11   -25     1       1
#> 12    26     0       2
```

Finally, let's visualize the grouping performed with this method.


``` r
players_grouped |> 
  ggplot() +
  aes(x, y, color = factor(cluster)) +
  geom_point(size = 5) +
  theme(legend.position = "none")
```

<img src="Data-Science-with-R_files/figure-html/unnamed-chunk-678-1.png" alt="" width="80%" style="display: block; margin: auto;" />

We see that the grouping is the same as with the previous method, basically because we are talking about two variables and two clusters.

Both methods learned are very flexible, so the creation of models for more variables follows the same logic learned in these sections.

## Dimensionality Reduction
We have created clusters with a controlled number of variables. However, we are going to encounter in many cases many more variables that make interpretation difficult and it is important to identify if two variables have the same behavior to be able to take only one of them.

For this case we are going to take as an example a credit card customer dataset, adaptation of the [public dataset in Kaggle](https://www.kaggle.com/arjunbhasin2013/ccdata), from the following route.


``` r
url <- "https://dparedesi.github.io/DS-with-R-datasets/credit-cards.csv"

cards_df <- read_csv(url)
```

We have more than 8 thousand customers with 13 attributes. We will analyze if there are strongly correlated variables. To do this we will use the `corrplot` library.


``` r
library(corrplot)
```

Next, we will enter the dataset to visualize correlations between the variables,


``` r
corrplot(cor(cards_df), type="upper", method="ellipse", tl.cex=0.9)
```

There is a strong correlation between the total purchases variable and the purchases made in the first 3 months. We can visualize these two variables to validate.


``` r
cards_df |> 
  ggplot() +
  aes(x=purchases, y=purchases_first_3_months) +
  geom_point() +
  labs(title="Customer Attributes",
       subtitle="Relationship between total purchases and first 3 months")
```

Given this, we could include within our analysis only one of these two variables.

We could also validate the distribution of these variables.


``` r
# We remove the purchases first 3 months variable
cards_df <- cards_df[, !names(cards_df) == "purchases_first_3_months"]

cards_df |>
  pivot_longer(cols = everything(), names_to = "attributes", values_to = "values") |>
  ggplot() +
  aes(x=values, fill=attributes) +
  geom_histogram(colour="black", show.legend=FALSE) +
  facet_wrap(~attributes, scales="free_x") +
  labs(x="Values", y="Frequency",
       title="Customer Attributes - Histogram")
```

We see data concentrations in some variables such as tenure (time our customer has been with us). We can validate it by zooming into that variable.


``` r
boxplot(cards_df$tenure)

prop.table(table(cards_df$tenure))

```

85% of our data are from customers who have been with us for 12 months. We could choose to filter the data to analyze customers who have 1 year and thus remove this variable from the grouping.


``` r
cards_df <- cards_df |> 
  filter(tenure == 12)

cards_df <- cards_df[, !names(cards_df) == "tenure"]

# We will do the same with the balance_freq variable
prop.table(table(cards_df$balance_freq))

cards_df <- cards_df |> 
  filter(balance_freq == 1)

cards_df <- cards_df[, !names(cards_df) == "balance_freq"]

```

If we also analyze the distributions of each variable we find the following:


``` r
summary(cards_df)
```

We see that there are variables that have maximums of 1, as there are others that have a maximum of 30 thousand or 50 thousand. We had already seen previously the importance of normalizing data. Here we will also do it with the `scale()` function.


``` r
cards_df_norm <- as.data.frame(scale(cards_df))
```

We can verify that the distribution does not change, only the scale.


``` r
cards_df_norm |>
  pivot_longer(cols = everything(), names_to = "attributes", values_to = "values") |>
  ggplot() +
  aes(x=values, fill=attributes) +
  geom_histogram(colour="black", show.legend=FALSE) +
  facet_wrap(~attributes, scales="free_x") +
  labs(x="Values", y="Frequency",
       title="Customer Attributes - Histogram")

```

Data preparation and variable reduction is a necessary step when we create machine learning models. However, we must do it carefully, given that in this exercise when preparing the data, although we have fewer variables (10), we also have fewer rows.


``` r
str(cards_df_norm)
```

More advanced techniques such as [Principal Component Analysis](https://www.stat.cmu.edu/~cshalizi/uADA/12/lectures/ch18.pdf) (PCA) and [Singular Value Decomposition](https://math.mit.edu/classes/18.095/2016IAP/lec2/SVD_Notes.pdf) (SVD) are used to perform dimensionality reduction more rigorously so as not to lose so much data in our analysis. These techniques are widely used in practice and well-documented, though they require a solid understanding of linear algebra for proper interpretation.



## Exercises

In the following exercises we will work on post data from 10 fashion companies that have their pages on Facebook and the reactions of their followers. To do this, we will work with the data in the following repository:


``` r
url <- "http://archive.ics.uci.edu/ml/machine-learning-databases/00488/Live.csv"
posts <- read_csv(url)

# We remove columns not relevant to the analysis
irrelevant_columns <- c("status_type","status_id", "status_published", "Column1",
                            "Column2", "Column3", "Column4")

data_posts <- posts[, !names(posts) %in% irrelevant_columns]

```

105. With the `data_posts` object normalized (use `scale()` function) and create the `data_posts_norm` object. Build a silhouette plot to determine how many cluster groups are recommended using the **k-means** algorithm.



<details>
  <summary type="button">Solution</summary>

``` r
data_posts_norm <- as.data.frame(scale(data_posts))

fviz_nbclust(data_posts_norm, FUN = kmeans, method = "silhouette")
```
</details>

106. With the `data_posts` object build a silhouette plot to determine how many cluster groups are recommended using the **hierarchical** algorithm.



<details>
  <summary type="button">Solution</summary>

``` r
fviz_nbclust(data_posts, FUN = hcut, method = "silhouette")
```
</details>

107. If you had to remove a variable from the analysis, which variable would it be?



<details>
  <summary type="button">Solution</summary>

``` r
# We perform a visualization of the correlation of variables
corrplot(cor(data_posts), type="upper", method="ellipse", tl.cex=0.9)

# We can check it by plotting these two variables:
data_posts |> 
  ggplot() +
  aes(x=num_reactions, y=num_likes) +
  geom_point()
```
</details>

108. Remove the `num_reactions` variable from the `data_posts_norm` object and the `data_posts` object and perform a silhouette analysis again using `data_posts_norm`. Does the number of clusters change?



<details>
  <summary type="button">Solution</summary>

``` r
data_posts <- data_posts[, -1]
data_posts_norm <- data_posts_norm[, -1]

fviz_nbclust(data_posts_norm, FUN = kmeans, method = "silhouette")
```

The number of clusters does not change because there exists another variable with the same behavior as this one.
</details>

109. Create the k-means model to group using the recommended number of clusters found. Use the `data_posts_norm` object for the creation of the model. Create the `data_posts_grouped` object where the original data of `data_posts` is with the additional column `cluster_kmeans` indicating the cluster result of this model.



<details>
  <summary type="button">Solution</summary>

``` r
kmeans_model <- kmeans(data_posts_norm, centers = 2)

data_posts_grouped <- data_posts |> 
                        mutate(cluster_kmeans = kmeans_model$cluster)
```
</details>

110. Create the hierarchical model to group using the recommended number of clusters found. Use the `data_posts_norm` object for the creation of the model. Add to the `data_posts_grouped` object the column `cluster_hier` to store the result of the grouping.



<details>
  <summary type="button">Solution</summary>

``` r
distances <- dist(data_posts_norm)
hier_model <- hclust(distances)

data_posts_grouped <- data_posts_grouped |> 
                        mutate(cluster_hier = cutree(hier_model, k = 2)
                               )
```
</details>

111. Calculate the average of each value of the variables for each group of the k-means model.



<details>
  <summary type="button">Solution</summary>

``` r
data_posts_grouped |> 
  select(-cluster_hier) |> 
  group_by(cluster_kmeans) |> 
  summarise_all(list(mean))
```
</details>

112. Calculate the average of each value of the variables for each group of the hierarchical model.



<details>
  <summary type="button">Solution</summary>

``` r
data_posts_grouped |> 
  select(-cluster_kmeans) |> 
  group_by(cluster_hier) |> 
  summarise_all(list(mean))
```
</details>




<!--chapter:end:06-machine-learning/uml.Rmd-->


# String processing and text mining

## Basic functions
We have already learned how to import data and consolidate it. However, we cannot yet work with this data. We have to validate through string processing and ensure a minimum quality to be able to perform our analyses.

For example, in the previous chapter we imported data from Wikipedia, however we did not focus on whether we could already perform operations or visualizations with our data.


``` r
library(rvest)
url <- "https://es.wikipedia.org/wiki/Anexo:Pa%C3%ADses_hispanos_por_poblaci%C3%B3n"
#url <- "https://es.wikipedia.org/wiki/Distribuci%C3%B3n_geogr%C3%A1fica_del_idioma_espa%C3%B1ol" #as a back up URL
html_data <- read_html(url)

web_tables <- html_data |>
  html_nodes("body") |>
  html_nodes("table")

raw_table <- web_tables[[2]] |>
  html_table()

raw_table <- raw_table |> 
  setNames(c("N", "country", "population", "prop_population", "avg_change", "link")) 

raw_table <- raw_table |>
  as_tibble()

raw_table |> head(5)

```

We may not have noticed, but we can observe columns with spaces or commas where there should be numbers. We can validate this not only by analyzing the class of the column, but also if we try to calculate the average of that variable.


``` r
class(raw_table$population)

mean(raw_table$population)
```

We cannot do a direct conversion to number either because white spaces and commas are characters.


``` r
as.numeric(raw_table$population)
```

There are so frequent and so many possible use cases that there are already multiple functions for processing strings included in the tidyverse library. Likewise, there is more than one way to process strings. It will always depend on how the raw data is found.

### Replacing characters
One of the basic functions that we will use the most will be replacing characters. We apply this function when we are sure that this change will not compromise the rest of the data. We have spaces and we have commas. So we could start by replacing one of the two to normalize them using the `str_replace_all(string, pattern, replacement)` function. In the pattern attribute we will use `\\s`, which comes from `space`. We are going to learn first to modify the data stored in a vector and then we will replicate it to our entire table.


``` r
library(tidyverse)
library(stringr)

population_vector <- raw_table$population

population_vector <- str_replace_all(population_vector, "\\s", ",")

population_vector
```

We have purposely taken all the values to be separated by commas because now we can easily use the `parse_number(vector)` function which not only replaces the commas with empty strings, but also removes any non-numeric value before the first number, which facilitates us if we had monetary values, and also converts the value from character type to numeric type.


``` r
population_vector <- parse_number(population_vector)

# Additional example in case we had a monetary value:
parse_number("$345,153")
```

This vector now allows us to perform mathematical operations or visualization of the distribution.

``` r
# Convert to millions
population_vector <- population_vector/10^6

# We remove the last value which is the world population:
length_val <- length(population_vector)
population_vector <- population_vector[-length_val]

# Visualization
boxplot(population_vector)
```

We already know which functions to use to transform the fields of our case. However, we have applied them to vectors. To mutate the columns of our table in raw form we will use the function `mutate(across(columns, function))` using the pipeline operator `|>`. Let's apply the first change of spaces by commas and not only to column 3, population, but also to column 5, average change.


``` r
raw_table |> 
  mutate(across(c(3,5), ~str_replace_all(., "\\s", ",")))

```

We have removed from the `str_replace_all` function the `string` attribute and replaced it with a dot `.`. And that dot `.` indicates that it will evaluate for each column `c(3,5)` of our table.

Now, let's apply the parse_number function that we applied previously.


``` r
raw_table |> 
  mutate(across(c(3,5), ~str_replace_all(., "\\s", ","))) |> 
  mutate(across(c(3,5), ~parse_number(.)))
```

## Regular expressions
A [regular expression](https://stringr.tidyverse.org/articles/regular-expressions.html)^[https://stringr.tidyverse.org/articles/regular-expressions.html] (or regex as it is known in English) is a pattern that describes a set of strings. We have already used regex in the previous section using only the pattern `\\s`. However, usually we will have many more use cases that will require a pattern that can convert a wider range of cases.

Although we could analyze all possible use cases available in the documentation, we learn faster by use cases. Let's analyze a case that will allow us to learn some patterns little by little.

In the `dslabs` library we found and used previously the height data, `heights`, of students from a university expressed in inches.


``` r
library(dslabs)
library(tidyverse)
data(heights)

heights |> 
  head(10)
#>       sex height
#> 1    Male     75
#> 2    Male     70
#> 3    Male     68
#> 4    Male     74
#> 5    Male     61
#> 6  Female     65
#> 7  Female     66
#> 8  Female     62
#> 9  Female     66
#> 10   Male     67
```

These data were ready to be analyzed. However, that was not how it came from the source. The students had to fill out a survey and even when they were asked for their height in inches, they completed their height in inches, feet, centimeters, writing numbers, letters, etc. We can see the initial data from the form in the `reported_heights` data frame.


``` r
reported_heights |> 
  head(10)
#>             time_stamp    sex height
#> 1  2014-09-02 13:40:36   Male     75
#> 2  2014-09-02 13:46:59   Male     70
#> 3  2014-09-02 13:59:20   Male     68
#> 4  2014-09-02 14:51:53   Male     74
#> 5  2014-09-02 15:16:15   Male     61
#> 6  2014-09-02 15:16:16 Female     65
#> 7  2014-09-02 15:16:19 Female     66
#> 8  2014-09-02 15:16:21 Female     62
#> 9  2014-09-02 15:16:21 Female     66
#> 10 2014-09-02 15:16:22   Male     67
```

Although we might think that they entered the data correctly, we do not have to trust and it is always better to validate the quality of our data. There are multiple ways to validate, as we can see below:


``` r
heights <- reported_heights$height

# Validation option 1: Random sample
sample(heights, 100)
#>   [1] "71"       "67"       "66"       "64"       "70"       "70"      
#>   [7] "76"       "1"        "59"       "67.2"     "69"       "67"      
#>  [13] "67"       "6"        "62"       "69"       "74"       "69"      
#>  [19] "178"      "69"       "74"       "169"      "67"       "68.5"    
#>  [25] "68.5"     "71"       "68"       "158"      "6.1"      "708,661" 
#>  [31] "6.2"      "69"       "75"       "5'6"      "67"       "68.4"    
#>  [37] "75"       "5.7"      "72"       "77"       "75"       "68"      
#>  [43] "69"       "72"       "62"       "65"       "73"       "67"      
#>  [49] "67"       "5.2"      "67.71"    "67"       "5'3"      "66"      
#>  [55] "5'7.5''"  "69"       "65"       "150"      "69"       "5'11''"  
#>  [61] "68.11024" "175"      "152"      "5' 10"    "65"       "74.5"    
#>  [67] "70"       "72"       "73.22"    "63"       "5'9''"    "68.5"    
#>  [73] "74"       "74"       "5'7\""    "6'3\""    "67"       "73.22"   
#>  [79] "74"       "72.8346"  "67.72"    "175"      "5.69"     "69.3"    
#>  [85] "5'10''"   "72"       "60"       "68"       "69"       "73"      
#>  [91] "75"       "70"       "64"       "170"      "649,606"  "73"      
#>  [97] "58"       "60"       "174"      "64.173"

# Validation option 2: convert to numbers and count if there are NAs
x <- as.numeric(heights)
#> Warning: NAs introduced by coercion
sum(is.na(x))
#> [1] 81

# Validation option 3: add column of those that cannot be converted to number:
reported_heights |> 
  mutate(numeric_height = as.numeric(height)) |> 
  filter(is.na(numeric_height)) |> 
  head(10)
#> Warning: There was 1 warning in `mutate()`.
#> ℹ In argument: `numeric_height = as.numeric(height)`.
#> Caused by warning:
#> ! NAs introduced by coercion
#>             time_stamp    sex                 height numeric_height
#> 1  2014-09-02 15:16:28   Male                  5' 4"             NA
#> 2  2014-09-02 15:16:37 Female                  165cm             NA
#> 3  2014-09-02 15:16:52   Male                    5'7             NA
#> 4  2014-09-02 15:16:56   Male                  >9000             NA
#> 5  2014-09-02 15:16:56   Male                   5'7"             NA
#> 6  2014-09-02 15:17:09 Female                   5'3"             NA
#> 7  2014-09-02 15:18:00   Male 5 feet and 8.11 inches             NA
#> 8  2014-09-02 15:19:48   Male                   5'11             NA
#> 9  2014-09-04 00:46:45   Male                  5'9''             NA
#> 10 2014-09-04 10:29:44   Male                 5'10''             NA
```

We might want to choose to eliminate these NA data as they are not significant with respect to the total of 1,095 data points. However, there are several of these data points that follow a determined pattern and instead of being discarded could be converted to the scale we have in the rest of the data. For example, there are people who entered their height as 5'7", which, for those who remember the conversion, can be converted because 1 foot is 12 inches. So $5*12+7=67$. And so, like that case, we can detect patterns, but we have, again, to be careful in detecting the exact pattern and not a very generic one that can change other use cases. If everyone followed the same pattern $x'y''$ or $x'y$ it would be much easier to convert it to inches by calculating $x*12+y$.

Let's start by extracting our column to a single character vector with all the values that do not convert automatically to number or were entered in inches. We detect this if they measure more than 5 and up to 7 feet (from 1.5m to 2.1 meters). After that we will create the transformations little by little.


``` r
problematic_heights <- reported_heights |> 
  filter(is.na(as.numeric(height)) | # Does not convert to number
         (!is.na(as.numeric(height)) & as.numeric(height) >= 5 &
            as.numeric(height) <= 7 ) # or entered in feet and not inches
        ) |> 
  pull(height)

length(problematic_heights)
#> [1] 168
```

Adding the condition of having entered in feet we have 168 errors. We cannot ignore 15.3% of errors.

We will use `str_view()` to visualize matches. This function is extremely helpful when debugging regular expressions as it highlights exactly what is matching your pattern.


``` r
# Let's visualize entries containing "feet"
str_view(problematic_heights, "feet", match=TRUE)
#>  [10] │ 5 <feet> and 8.11 inches
#>  [82] │ 5 <feet> 7inches
#> [140] │ 5 <feet> 6 inches
```

We can also use `str_detect(string, pattern)` to get a logical value (`TRUE`/`FALSE`) to filter our vector.


``` r
index <- str_detect(problematic_heights, "feet")

problematic_heights[index] # Match the pattern
#> [1] "5 feet and 8.11 inches" "5 feet 7inches"         "5 feet 6 inches"
problematic_heights[!index] |> # Do not match the pattern
  head(40) 
#>  [1] "6"                      "5' 4\""                 "5.3"                   
#>  [4] "165cm"                  "6"                      "5'7"                   
#>  [7] ">9000"                  "5'7\""                  "5'3\""                 
#> [10] "5.25"                   "5'11"                   "5.5"                   
#> [13] "5'9''"                  "6"                      "6.5"                   
#> [16] "5'10''"                 "5.8"                    "5"                     
#> [19] "5.6"                    "5,3"                    "6'"                    
#> [22] "6"                      "5.9"                    "6,8"                   
#> [25] "5' 10"                  "5.5"                    "6.2"                   
#> [28] "Five foot eight inches" "6.2"                    "5.8"                   
#> [31] "5.1"                    "5.11"                   "5'5\""                 
#> [34] "5'2\""                  "5.75"                   "5,4"                   
#> [37] "7"                      "5.4"                    "6.1"                   
#> [40] "5'3"
```

### Alternation
`|` is the alternation operator that will choose between one or more possible values. In our case, we have indicated to detect if there is the word "feet", but we also have "ft" and "foot" to refer to the same thing in our data. Thus, we can create the pattern "feet" or "ft" or "foot".


``` r
# Visualize the matches
str_view(problematic_heights, "feet|ft|foot", match=TRUE)
#>  [10] │ 5 <feet> and 8.11 inches
#>  [29] │ Five <foot> eight inches
#>  [82] │ 5 <feet> 7inches
#> [124] │ 5<ft> 9 inches
#> [125] │ 5 <ft> 9 inches
#> [140] │ 5 <feet> 6 inches
```


``` r
index <- str_detect(problematic_heights, "feet|ft|foot")
problematic_heights[index] # Match
#> [1] "5 feet and 8.11 inches" "Five foot eight inches" "5 feet 7inches"        
#> [4] "5ft 9 inches"           "5 ft 9 inches"          "5 feet 6 inches"
```

In the same way we can find the variations for inches and other symbols that we can remove:


``` r
index <- str_detect(problematic_heights, "inches|in|''|\"|cm|and")
problematic_heights[index] # Match
#>  [1] "5' 4\""                 "165cm"                  "5'7\""                 
#>  [4] "5'3\""                  "5 feet and 8.11 inches" "5'9''"                 
#>  [7] "5'10''"                 "Five foot eight inches" "5'5\""                 
#> [10] "5'2\""                  "5'10''"                 "5'3''"                 
#> [13] "5'7''"                  "5'3\""                  "5'6''"                 
#> [16] "5'7.5''"                "5'7.5''"                "5'2\""                 
#> [19] "5' 7.78\""              "5 feet 7inches"         "5'8\""                 
#> [22] "5'11\""                 "5'7\""                  "5' 11\""               
#> [25] "6'1\""                  "69\""                   "5' 7\""                
#> [28] "5'10''"                 "5ft 9 inches"           "5 ft 9 inches"         
#> [31] "5'11''"                 "5'8\""                  "5 feet 6 inches"       
#> [34] "5'10''"                 "6'3\""                  "5'5''"                 
#> [37] "5'7\""                  "6'4\""                  "170 cm"
```

In this case we have entered `''` to detect those who entered that symbol to denote inches and `\"` in case they used double quotes. In this latter case we have used `\` so that it does not generate an error when interpreting as closing the string.

We could already start replacing based on the detected patterns:


``` r
problematic_heights <- str_replace_all(problematic_heights, "feet|ft|foot", "'")
problematic_heights <- str_replace_all(problematic_heights, "inches|in|''|\"|cm|and", "")

problematic_heights |> 
  head(30)
#>  [1] "6"             "5' 4"          "5.3"           "165"          
#>  [5] "6"             "5'7"           ">9000"         "5'7"          
#>  [9] "5'3"           "5 '  8.11 "    "5.25"          "5'11"         
#> [13] "5.5"           "5'9"           "6"             "6.5"          
#> [17] "5'10"          "5.8"           "5"             "5.6"          
#> [21] "5,3"           "6'"            "6"             "5.9"          
#> [25] "6,8"           "5' 10"         "5.5"           "6.2"          
#> [29] "Five ' eight " "6.2"
```

As an additional effort, we could also look to solve that some people have written words instead of numbers. For this we create a function that replaces each word with a number and apply it to the vector:


``` r
words_to_number <- function(s){
  str_to_lower(s) |>  
    str_replace_all("zero", "0") |>
    str_replace_all("one", "1") |>
    str_replace_all("two", "2") |>
    str_replace_all("three", "3") |>
    str_replace_all("four", "4") |>
    str_replace_all("five", "5") |>
    str_replace_all("six", "6") |>
    str_replace_all("seven", "7") |>
    str_replace_all("eight", "8") |>
    str_replace_all("nine", "9") |>
    str_replace_all("ten", "10") |>
    str_replace_all("eleven", "11")
}

problematic_heights <- words_to_number(problematic_heights)
problematic_heights |> 
  head(30)
#>  [1] "6"          "5' 4"       "5.3"        "165"        "6"         
#>  [6] "5'7"        ">9000"      "5'7"        "5'3"        "5 '  8.11 "
#> [11] "5.25"       "5'11"       "5.5"        "5'9"        "6"         
#> [16] "6.5"        "5'10"       "5.8"        "5"          "5.6"       
#> [21] "5,3"        "6'"         "6"          "5.9"        "6,8"       
#> [26] "5' 10"      "5.5"        "6.2"        "5 ' 8 "     "6.2"
```

### Anchoring
Now that it is more standardized we can start with regex with more generic characteristics. For example, there is a person who has entered `6'`. It would be convenient to have everything in the form feet plus inches. With which we should have `6'0`. To achieve this we have to create a regex according to this generic situation. We will use the symbol `^` to anchor our validation to "start with" and the symbol `$` to match with the end of the string. Before replacing, let's first see who matches.


``` r
str_view(problematic_heights, "^6'$", match=TRUE)
#> [22] │ <6'>
```

This regex indicates that it starts with `6'` and that the expression ends there. We could still make it more generic to address those who, in the future, write 5 inches (1.52m) or 6 inches (1.82m). For this we will use brackets and inside them we will put all the values that we will accept.


``` r
index <- str_detect(problematic_heights, "^[56]'$")
problematic_heights[index] # Match
#> [1] "6'"
```

There is still only one result, but our regex is more generic now and we can already use it to replace. Before replacing in our vector we are going to do a test to learn how to create what we need from a pattern.


``` r
test_vec <- c("5'", "6'")

str_replace_all(test_vec, "^([56])'$", "\\1'0")
#> [1] "5'0" "6'0"
```

We have placed between parentheses to indicate that what is inside is our first value and we use `\\1` to refer to that first value. So we are indicating to write the first value, then a quote `'`, and then a zero `0`.

Now we are ready to apply to our entire vector. We are going to make the change to consider not only 5 and 6, but up to the value of 7 inches (2.1m). Likewise, we are going to take the cases in which there is only a number without the foot symbol `'`.


``` r
problematic_heights <- str_replace_all(problematic_heights, "^([5-7])'$", "\\1'0")
problematic_heights <- str_replace_all(problematic_heights, "^([5-7])$", "\\1'0")

problematic_heights |> 
  head(30)
#>  [1] "6'0"        "5' 4"       "5.3"        "165"        "6'0"       
#>  [6] "5'7"        ">9000"      "5'7"        "5'3"        "5 '  8.11 "
#> [11] "5.25"       "5'11"       "5.5"        "5'9"        "6'0"       
#> [16] "6.5"        "5'10"       "5.8"        "5'0"        "5.6"       
#> [21] "5,3"        "6'0"        "6'0"        "5.9"        "6,8"       
#> [26] "5' 10"      "5.5"        "6.2"        "5 ' 8 "     "6.2"
```

### Repetitions
We can control how many times a pattern matches using repetition operators:

We can control how many times a pattern matches using repetition operators. The question mark **`?`** indicates that the preceding element matches **0 or 1** time (making it optional). The plus sign **`+`** requires **1 or more** matches, ensuring the element is present at least once. The asterisk **`*`** allows for **0 or more** matches, meaning the element can be absent or repeated indefinitely.

For example, to find all cases where instead of using the foot symbol `'` they entered a comma, a period, or a space we will use the following pattern:


``` r
pattern <- "^([4-7])\\s*[,\\.]\\s*(\\d*)$"
```

Let's read the pattern:

1. The string starts with a digit ranging from 4 to 7.
2. `\\s` means that it is followed by a white space, but we use `*` to indicate that this character appears 0 or more times.
3. After that space we will look for any of the following characters: `,`, a period `\\.` (to which we put double backslash because the period alone in a pattern means "any value").
4. We use `\\s*` again to look for zero or more white spaces.
5. Finally we indicate that the string ends there with a digit, to denote that look for any digit we use `\\d`, d for digit. And we add asterisk so that it keeps one or more digits that it finds.

In summary: it starts with a number, then symbols and then a digit. Between the symbols there could be white spaces. That is our pattern.


``` r
str_view(problematic_heights, pattern, match=TRUE)
#>  [3] │ <5.3>
#> [11] │ <5.25>
#> [13] │ <5.5>
#> [16] │ <6.5>
#> [18] │ <5.8>
#> [20] │ <5.6>
#> [21] │ <5,3>
#> [24] │ <5.9>
#> [25] │ <6,8>
#> [27] │ <5.5>
#> [28] │ <6.2>
#> [30] │ <6.2>
#> [31] │ <5.8>
#> [32] │ <5.1>
#> [33] │ <5.11>
#> [36] │ <5.75>
#> [37] │ <5,4>
#> [39] │ <5.4>
#> [40] │ <6.1>
#> [42] │ <5.6>
#> ... and 48 more
```

We already found the values that match the pattern, so we are ready to replace.


``` r
problematic_heights <- str_replace_all(
                        problematic_heights, 
                        "^([4-7])\\s*[,\\.]\\s*(\\d*)$", "\\1.\\2'0"
                   )

problematic_heights |> 
  head(30)
#>  [1] "6'0"        "5' 4"       "5.3'0"      "165"        "6'0"       
#>  [6] "5'7"        ">9000"      "5'7"        "5'3"        "5 '  8.11 "
#> [11] "5.25'0"     "5'11"       "5.5'0"      "5'9"        "6'0"       
#> [16] "6.5'0"      "5'10"       "5.8'0"      "5'0"        "5.6'0"     
#> [21] "5.3'0"      "6'0"        "6'0"        "5.9'0"      "6.8'0"     
#> [26] "5' 10"      "5.5'0"      "6.2'0"      "5 ' 8 "     "6.2'0"
```

Another pattern we see now is when before or after the foot symbol `'` there is a white space. Let's make the change with what we learned and include cases where there are decimals:


``` r
index <- str_detect(problematic_heights, 
                     "^([4-7]\\.?\\d*)\\s*'\\s*(\\d+\\.?\\d*)\\s*$")

problematic_heights[index] |> # Match
  head(30)
#>  [1] "6'0"        "5' 4"       "5.3'0"      "6'0"        "5'7"       
#>  [6] "5'7"        "5'3"        "5 '  8.11 " "5.25'0"     "5'11"      
#> [11] "5.5'0"      "5'9"        "6'0"        "6.5'0"      "5'10"      
#> [16] "5.8'0"      "5'0"        "5.6'0"      "5.3'0"      "6'0"       
#> [21] "6'0"        "5.9'0"      "6.8'0"      "5' 10"      "5.5'0"     
#> [26] "6.2'0"      "5 ' 8 "     "6.2'0"      "5.8'0"      "5.1'0"

problematic_heights <- str_replace_all(
                      problematic_heights, 
                      "^([4-7]\\.?\\d*)\\s*'\\s*(\\d+\\.?\\d*)\\s*$",
                      "\\1'\\2"
                   )

problematic_heights |> 
  head(30)
#>  [1] "6'0"    "5'4"    "5.3'0"  "165"    "6'0"    "5'7"    ">9000"  "5'7"   
#>  [9] "5'3"    "5'8.11" "5.25'0" "5'11"   "5.5'0"  "5'9"    "6'0"    "6.5'0" 
#> [17] "5'10"   "5.8'0"  "5'0"    "5.6'0"  "5.3'0"  "6'0"    "6'0"    "5.9'0" 
#> [25] "6.8'0"  "5'10"   "5.5'0"  "6.2'0"  "5'8"    "6.2'0"
```

Likewise, we have the pattern in which they entered: feet + space + inches without any symbol. Let's make the change with what we learned.


``` r
index <- str_detect(problematic_heights, "^([4-7])\\s+(\\d*)\\s*$")

problematic_heights[index] # Match
#> [1] "5 11" "6 04"

problematic_heights <- str_replace_all(
                      problematic_heights, 
                      "^([4-7])\\s+(\\d*)\\s*$", "\\1'\\2"
                   )

problematic_heights |> 
  head(30)
#>  [1] "6'0"    "5'4"    "5.3'0"  "165"    "6'0"    "5'7"    ">9000"  "5'7"   
#>  [9] "5'3"    "5'8.11" "5.25'0" "5'11"   "5.5'0"  "5'9"    "6'0"    "6.5'0" 
#> [17] "5'10"   "5.8'0"  "5'0"    "5.6'0"  "5.3'0"  "6'0"    "6'0"    "5.9'0" 
#> [25] "6.8'0"  "5'10"   "5.5'0"  "6.2'0"  "5'8"    "6.2'0"
```

We are ready to put all the patterns together and the power of patterns is that they can serve us for future exercises. Thus, we will create a function where we will place each change that we can verify to a string.


``` r
format_errors <- function(string){
  string |> 
    str_replace_all("feet|ft|foot", "'") |> # Change feet for '
    str_replace_all("inches|in|''|\"|cm|and", "") |> # Remove symbols
    str_replace_all("^([5-7])'$", "\\1'0") |> # Adds 0 to 5', 6' or 7'
    str_replace_all("^([5-7])$", "\\1'0") |> # Adds 0 to 5, 6 or 7
    str_replace_all("^([4-7])\\s*[,\\.]\\s*(\\d*)$", "\\1.\\2'0") |> # Change 5.3' to 5.3'0
    str_replace_all("^([4-7]\\.?\\d*)\\s*'\\s*(\\d+\\.?\\d*)\\s*$", "\\1'\\2") |> #Removes spaces in middle
    str_replace_all("^([4-7])\\s+(\\d*)\\s*$", "\\1'\\2") |> # Adds '
    str_replace("^([12])\\s*,\\s*(\\d*)$", "\\1.\\2") |> # Changes decimals from commas to dots
    str_trim() #Removes spaces at start and end
}

```

Thus, we have created two functions that could be useful to us if we were to work with surveys of the same type again.

Before applying it to our entire table let's extract the values to a vector again to apply the created functions.


``` r
problematic_heights <- reported_heights |> 
  filter(is.na(as.numeric(height)) | # Does not convert to number
         (!is.na(as.numeric(height)) & as.numeric(height) >= 5 &
            as.numeric(height) <= 7 ) # or entered in feet and not inches
        ) |> 
  pull(height)
```

Now let's apply the created functions:


``` r
formatted_heights <- problematic_heights |> 
  words_to_number() |> 
  format_errors()

pattern <- "^([4-7]\\.?\\d*)\\s*'\\s*(\\d+\\.?\\d*)\\s*$"
index <- str_detect(formatted_heights, pattern)
formatted_heights[!index] # Do not match the pattern
#>  [1] "165"       ">9000"     "2'33"      "1.70"      "yyy"       "6*12"     
#>  [7] "69"        "708,661"   "649,606"   "728,346"   "170"       "7,283,465"
```

We have managed to reduce from 168 errors of 1095 records, 15.3% of errors, to 12 errors of 1095, 1% of errors. We can now apply to our initial table.


``` r
# Apply created formulas
heights <- reported_heights |> 
  mutate(height) |> 
  mutate(height = words_to_number(height) |> format_errors())

# Get random samples to validate quality
random_indices <- sample(1:nrow(heights)) 
heights[random_indices, ] |> 
  head(15)
#>               time_stamp    sex height
#> 155  2014-09-02 15:17:12 Female     63
#> 426  2015-01-06 22:58:54   Male   5'12
#> 1029 2016-07-26 13:02:34   Male     67
#> 326  2014-10-14 05:18:11   Male     71
#> 789  2016-01-25 08:15:45 Female    5'5
#> 985  2016-04-23 17:15:26   Male   67.5
#> 39   2014-09-02 15:16:31   Male     72
#> 822  2016-01-25 21:18:33   Male     68
#> 986  2016-04-25 06:11:45   Male    180
#> 137  2014-09-02 15:17:02   Male     68
#> 455  2015-01-28 03:59:44   Male  5.5'0
#> 589  2015-05-25 16:19:20   Male     69
#> 1089 2017-09-04 07:28:40   Male     69
#> 196  2014-09-02 15:18:30 Female  64.57
#> 680  2015-09-01 22:45:11   Male     68
```

We still have to do some conversions. However, since they follow a determined pattern we can use the `extract(source_column, new_columns, pattern, remove_source)` function to confirm creating new columns for each value of our pattern.


``` r
pattern <- "^([4-7]\\.?\\d*)\\s*'\\s*(\\d+\\.?\\d*)\\s*$"

heights |> 
  extract(height, c("feet", "inches"), regex = pattern, remove = FALSE) |> 
  head(15)
#>             time_stamp    sex height feet inches
#> 1  2014-09-02 13:40:36   Male     75 <NA>   <NA>
#> 2  2014-09-02 13:46:59   Male     70 <NA>   <NA>
#> 3  2014-09-02 13:59:20   Male     68 <NA>   <NA>
#> 4  2014-09-02 14:51:53   Male     74 <NA>   <NA>
#> 5  2014-09-02 15:16:15   Male     61 <NA>   <NA>
#> 6  2014-09-02 15:16:16 Female     65 <NA>   <NA>
#> 7  2014-09-02 15:16:19 Female     66 <NA>   <NA>
#> 8  2014-09-02 15:16:21 Female     62 <NA>   <NA>
#> 9  2014-09-02 15:16:21 Female     66 <NA>   <NA>
#> 10 2014-09-02 15:16:22   Male     67 <NA>   <NA>
#> 11 2014-09-02 15:16:22   Male     72 <NA>   <NA>
#> 12 2014-09-02 15:16:23   Male    6'0    6      0
#> 13 2014-09-02 15:16:23   Male     69 <NA>   <NA>
#> 14 2014-09-02 15:16:26   Male     68 <NA>   <NA>
#> 15 2014-09-02 15:16:26   Male     69 <NA>   <NA>
```

Now that we have the data that matches the pattern in two other columns, and we know they are numbers, we can convert everything to number.


``` r
heights |> 
  extract(height, c("feet", "inches"), regex = pattern, remove = FALSE) |> 
  mutate(across(c("height", "feet", "inches"), ~as.numeric(.))) |> 
  head(15)
#> Warning: There was 1 warning in `mutate()`.
#> ℹ In argument: `across(c("height", "feet", "inches"),
#>   ~as.numeric(.))`.
#> Caused by warning:
#> ! NAs introduced by coercion
#>             time_stamp    sex height feet inches
#> 1  2014-09-02 13:40:36   Male     75   NA     NA
#> 2  2014-09-02 13:46:59   Male     70   NA     NA
#> 3  2014-09-02 13:59:20   Male     68   NA     NA
#> 4  2014-09-02 14:51:53   Male     74   NA     NA
#> 5  2014-09-02 15:16:15   Male     61   NA     NA
#> 6  2014-09-02 15:16:16 Female     65   NA     NA
#> 7  2014-09-02 15:16:19 Female     66   NA     NA
#> 8  2014-09-02 15:16:21 Female     62   NA     NA
#> 9  2014-09-02 15:16:21 Female     66   NA     NA
#> 10 2014-09-02 15:16:22   Male     67   NA     NA
#> 11 2014-09-02 15:16:22   Male     72   NA     NA
#> 12 2014-09-02 15:16:23   Male     NA    6      0
#> 13 2014-09-02 15:16:23   Male     69   NA     NA
#> 14 2014-09-02 15:16:26   Male     68   NA     NA
#> 15 2014-09-02 15:16:26   Male     69   NA     NA
```

Now that our columns are numeric we can perform operations to calculate height.


``` r
heights |> 
  extract(height, c("feet", "inches"), regex = pattern, remove = FALSE) |> 
  mutate(across(c("height", "feet", "inches"), ~as.numeric(.))) |> 
  mutate(fixed_heights = feet*12 + inches) |> 
  head(15)
#> Warning: There was 1 warning in `mutate()`.
#> ℹ In argument: `across(c("height", "feet", "inches"),
#>   ~as.numeric(.))`.
#> Caused by warning:
#> ! NAs introduced by coercion
#>             time_stamp    sex height feet inches fixed_heights
#> 1  2014-09-02 13:40:36   Male     75   NA     NA            NA
#> 2  2014-09-02 13:46:59   Male     70   NA     NA            NA
#> 3  2014-09-02 13:59:20   Male     68   NA     NA            NA
#> 4  2014-09-02 14:51:53   Male     74   NA     NA            NA
#> 5  2014-09-02 15:16:15   Male     61   NA     NA            NA
#> 6  2014-09-02 15:16:16 Female     65   NA     NA            NA
#> 7  2014-09-02 15:16:19 Female     66   NA     NA            NA
#> 8  2014-09-02 15:16:21 Female     62   NA     NA            NA
#> 9  2014-09-02 15:16:21 Female     66   NA     NA            NA
#> 10 2014-09-02 15:16:22   Male     67   NA     NA            NA
#> 11 2014-09-02 15:16:22   Male     72   NA     NA            NA
#> 12 2014-09-02 15:16:23   Male     NA    6      0            72
#> 13 2014-09-02 15:16:23   Male     69   NA     NA            NA
#> 14 2014-09-02 15:16:26   Male     68   NA     NA            NA
#> 15 2014-09-02 15:16:26   Male     69   NA     NA            NA
```

Finally, we will do a validation of whether the height is in an interval and/or if it was expressed in centimeters or meters.


``` r
# We assume for a person a minimum 50" (1.2m) and max 84" (2.1m)
min <- 50
max <- 84

heights <- heights |> 
  extract(height, c("feet", "inches"), regex = pattern, remove = FALSE) |> 
  mutate(across(c("height", "feet", "inches"), ~as.numeric(.))) |> 
  mutate(fixed_heights = feet*12 + inches) |> 
  mutate(final_height = case_when(
    !is.na(height) & between(height, min, max) ~ height, #inches 
    !is.na(height) & between(height/2.54, min, max) ~ height/2.54, #cm
    !is.na(height) & between(height*100/2.54, min, max) ~ height*100/2.54, #meters
    !is.na(fixed_heights) & inches < 12 & 
      between(fixed_heights, min, max) ~ fixed_heights, #feet'inches
    TRUE ~ as.numeric(NA)))
#> Warning: There was 1 warning in `mutate()`.
#> ℹ In argument: `across(c("height", "feet", "inches"),
#>   ~as.numeric(.))`.
#> Caused by warning:
#> ! NAs introduced by coercion

# Random Sample:
random_indices <- sample(1:nrow(heights)) 
heights[random_indices, ] |> 
  select(-time_stamp) |> # Shows all columns except time_stamp
  head(10)
#>         sex   height feet inches fixed_heights final_height
#> 201  Female 67.00000   NA     NA            NA     67.00000
#> 1006   Male 68.11024   NA     NA            NA     68.11024
#> 651    Male 70.00000   NA     NA            NA     70.00000
#> 545    Male 68.00000   NA     NA            NA     68.00000
#> 617    Male 69.00000   NA     NA            NA     69.00000
#> 17     Male 75.00000   NA     NA            NA     75.00000
#> 102  Female 71.00000   NA     NA            NA     71.00000
#> 71     Male 73.00000   NA     NA            NA     73.00000
#> 80   Female 72.00000   NA     NA            NA     72.00000
#> 643    Male 72.00000   NA     NA            NA     72.00000
```

We already have our sample validated, we would only have to take the columns we need and start using the object for the analyses we need.


``` r
final_heights <- heights |> 
  select(gender = sex, heights = final_height)

final_heights |> 
  head(10)
#>    gender heights
#> 1    Male      75
#> 2    Male      70
#> 3    Male      68
#> 4    Male      74
#> 5    Male      61
#> 6  Female      65
#> 7  Female      66
#> 8  Female      62
#> 9  Female      66
#> 10   Male      67
```

## From strings to dates
Regularly when we import data, we are not only going to want to transform numeric data. We will also have multiple cases where we need to transform our string to a date in some particular format. For this, we will use the `lubridate` library, included in `tidyverse`, which provides us with diverse functions to make date treatment more accessible.


``` r
library(lubridate)
```

When the text string is in the ISO 8601 date format (YYYY-MM-DD), we can directly use the `month()`, `day()`, `year()` function.


``` r
dates_char <- c("2010-05-19", "2020-05-06", "2010-02-03")

str(dates_char)
#>  chr [1:3] "2010-05-19" "2020-05-06" "2010-02-03"

month(dates_char)
#> [1] 5 5 2
```

However, we do not always have the date in that format and `lubridate()` gives other functions that are more flexible when coercing data. Look at this example:


``` r
dates <- c(20090101, "2009-01-02", "2009 01 03", "2009-1-4",
       "2009-1, 5", "Created on 2009 1 6", "200901 !!! 07")

str(dates)
#>  chr [1:7] "20090101" "2009-01-02" "2009 01 03" "2009-1-4" "2009-1, 5" ...

ymd(dates)
#> [1] "2009-01-01" "2009-01-02" "2009-01-03" "2009-01-04" "2009-01-05"
#> [6] "2009-01-06" "2009-01-07"
```

The first data entered was a number, but we already know that it coerces it to text. Then, we have different values entered, but all follow the same pattern. First is the year, then the month and then the day. When we know that first is the year, then month and then day we will use the `ymd()` function to convert all dates to ISO 8601 format.

In the same way, we will have the following functions that we can use depending on the form in which we have the date from our source. In all cases it will be convenient for us to convert to ISO 8601 format. For example here we can see when it correctly recognizes the format and when the formatting fails.


``` r
x <- "28/03/89"
ymd(x)
#> [1] NA
mdy(x)
#> [1] NA
ydm(x)
#> [1] NA
myd(x)
#> [1] NA
dmy(x)
#> [1] "1989-03-28"
dym(x)
#> [1] NA
```

Finally, in the same way that we can use these functions of days, months and years, we can also use to refer to hours, minutes and seconds.


``` r
# Format with hours, minutes and seconds
date_val <- "Feb/2/2012 12:34:56"
mdy_hms(date_val)
#> [1] "2012-02-02 12:34:56 UTC"

# Additional data: Showing system date:
now()
#> [1] "2025-12-25 01:33:58 GMT"
```



## Exercises

Before solving the following exercise run this Script:


``` r
sales <- tibble(
  month = c("April", "May", "June"),
  revenue = c("s/32,124", "s/35,465", "S/38,332"),
  profit = c("s/8,120", "s/9,432", "s/10,543")
)
```

113. Convert the `revenue` and `profit` columns in the `sales` object to numeric values, removing any currency symbols or formatting characters.



<details>
  <summary type="button">Solution</summary>

``` r
# Solution 1
sales |> 
  mutate(across(c(2,3), ~parse_number(.)))

# Alternative solution, longer
sales |>
  mutate(across(c(2,3), ~str_replace_all(., "\\S/|,", ""))) |> 
  mutate(across(c(2,3), ~as.numeric(.)))
```
</details>


114. Clean the `universities` vector so that all university names are standardized. Specifically, replace abbreviations like "Univ." or "U." at the beginning of the string with the full word "University ".




<details>
  <summary type="button">Solution</summary>

``` r
universities |> 
    str_replace("^Univ\\.?\\s|^U\\.?\\s", "University ")
```
</details>

For the following exercises, we are going to work on the survey data conducted prior to Brexit in the UK. Run the Script first:


``` r
library(rvest)
library(tidyverse)
url <- "https://en.wikipedia.org/w/index.php?title=Opinion_polling_for_the_United_Kingdom_European_Union_membership_referendum&oldid=896735054"
table_html <- read_html(url) |> html_nodes("table")
polls <- table_html[[5]] |> html_table(fill = TRUE)
```

115. Update the `polls` object by renaming columns to `c("date", "remain", "leave", "undecided", "spread", "sample", "pollster", "type", "notes")`. Then, filter the dataset to retain only rows where the `remain` column contains a percentage symbol ("%").



<details>
  <summary type="button">Solution</summary>

``` r
names(polls) <- c("date", "remain", "leave", "undecided", "spread",
                  "sample", "pollster", "type", "notes")
polls <- polls[str_detect(polls$remain, "%"), ]
polls 

# If we want to validate the number of polls:
nrow(polls)
```
</details>


116. Extract the `remain` column into a vector and convert the text percentages into proper numeric probabilities (e.g., convert "50%" to 0.5).



<details>
  <summary type="button">Solution</summary>

``` r
remain <- polls$remain

# Solution 1:
percentages <- parse_number(remain)/100

# Solution 1:
temp <- str_replace(remain, "%", "")
percentages <- as.numeric(temp)/100

# Solution 2:
temp <- str_remove(remain, "%")
percentages <- as.numeric(temp)/100

```
</details>


117. In the `undecided` column, the value "N/A" appears when the sum of `remain` and `leave` equals 100%. Create a vector for `undecided` where these "N/A" values are replaced with "0%".



<details>
  <summary type="button">Solution</summary>

``` r
undecided <- polls$undecided

str_replace(undecided, "N/A", "0%")

```
</details>


118. encapsulate your cleaning logic into a single function named `format_percentage(string)`. Test this function with the vector `c("13.5%", "N/A", "10%")` to verify it handles both percentages and "N/A" values correctly.



<details>
  <summary type="button">Solution</summary>

``` r

format_percentage <- function(string){
  string |> 
    str_replace("N/A", "0%") |> 
    parse_number()/100
}

# Function test:
test_vec <- c("13.5%", "N/A", "10%")

format_percentage(test_vec)

```
</details>


119. Apply `format_percentage` to the `remain`, `leave`, `undecided`, and `spread` columns in the `polls` dataset. Also, ensure the `sample` column is converted to a numeric type.



<details>
  <summary type="button">Solution</summary>

``` r
polls <- polls |> 
  mutate(across(c("remain", "leave", "undecided", "spread"), ~format_percentage(.))) |> 
  mutate(across(c("sample"), ~parse_number(.)))
```
</details>


120. Import the Peruvian COVID-19 dataset from [this URL](https://www.datosabiertos.gob.pe/sites/default/files/DATOSABIERTOS_SISCOVID.csv) into an object named `covid_peru`. Convert the birth date column (`FECHA_NACIMIENTO`) to a proper Date format and calculate the age distribution of the infected individuals using a histogram.



<details>
  <summary type="button">Solution</summary>

``` r
url <- "https://www.datosabiertos.gob.pe/sites/default/files/DATOSABIERTOS_SISCOVID.csv"
covid_peru <- read_csv(url)

# We look for those that do not follow the ISO 8601 standard:
index <- str_detect(covid_peru$FECHA_NACIMIENTO, "\\d{4}-\\d{2}-\\d{2}")
covid_peru$FECHA_NACIMIENTO[!index]

# We see dates in DD/MM/YYYY format
# We replace to ISO 8601 format:
covid_peru <- covid_peru |> 
  mutate(across("FECHA_NACIMIENTO", 
            ~str_replace(., "(\\d{2})/(\\d{2})/(\\d{4})", "\\3-\\2-\\1")
            ))

# We search again for those that do not follow ISO 8601 standard:
index <- str_detect(covid_peru$FECHA_NACIMIENTO, "\\d{4}-\\d{2}-\\d{2}")
covid_peru$FECHA_NACIMIENTO[!index]

# Convert column to date:
covid_peru <- covid_peru |> 
  mutate(across("FECHA_NACIMIENTO", ~ymd(.)))

# Now that it is date format we create histogram:
covid_peru |> 
  mutate(age = year(now()) - year(FECHA_NACIMIENTO)) |> 
  pull(age) |> 
  hist()
```
</details>



## Text Mining using Tidy Data

Text mining is the discovery by computer of new information, previously unknown, by automatically extracting information from different written resources. Written resources can be websites, books, chats, comments, emails, reviews, articles, etc.

To perform text mining efficiently in R, we will use the `tidytext` package. The "tidy" text format is defined as a table with one token per row. A token can be a word, a sentence, or a paragraph, but usually, it is single words. This structure allows us to use all the standard tools we've learned (`dplyr`, `ggplot2`) to analyze text.


``` r
# Install packages if you haven't yet
# install.packages("tidytext")

library(tidytext)
library(tidyverse)
library(stringr)
library(syuzhet) # For sentiment analysis
library(wordcloud) 
```

### Importing data and Tokenization
Word maps or word clouds allow us to quickly identify which are the words that are repeated most in a text.

We are going to analyze the work "Pride and Prejudice" written by the author Jane Austen. We will obtain the text from the [Project Gutenberg](www.gutenberg.org)^[www.gutenberg.org] website. We will use the `get_text_as_string()` function from `syuzhet` to import properly.


``` r
url <- "https://www.gutenberg.org/cache/epub/1342/pg1342.txt"

# Import text as a single string
pride_book <- get_text_as_string(url)

# Convert to a data frame with sentences or just lines
# Here we will split by newline to create a rudimentary structure
text_df <- tibble(
  text = str_split(pride_book, "\n")[[1]]
)

# Remove empty lines
text_df <- text_df |> 
  filter(text != "")

head(text_df)
#> # A tibble: 1 × 1
#>   text                                                                          
#>   <chr>                                                                         
#> 1 "The Project Gutenberg eBook of Pride and Prejudice      This ebook is for th…
```

### Text cleaning and Tokenization

Now we will clean the text and convert it to specific tokens (words). The `unnest_tokens()` function automatically:
1. Splits text into tokens (words by default).
2. Removes punctuation.
3. Converts to lowercase.

> **Note on AI:** This process of breaking text into "tokens" is exactly how Large Language Models like GPT-4 work. In **Chapter 14 (Data Science in the Age of AI)**, we will see that LLMs are essentially probabilistic engines that predict the next token in a sequence. Understanding how to handle tokens here is the foundation for understanding Generative AI.


``` r
# We eliminate first rows of notes/prologue if needed, though unnest_tokens handles a lot.
# Let's clean some metadata lines roughly
start_line <- 115
text_df <- text_df[start_line:nrow(text_df), ]

# Tokenize
tidy_pride <- text_df |>
  unnest_tokens(word, text)

# See the result
head(tidy_pride)
#> # A tibble: 6 × 1
#>   word 
#>   <chr>
#> 1 <NA> 
#> 2 <NA> 
#> 3 <NA> 
#> 4 <NA> 
#> 5 <NA> 
#> 6 <NA>
```

Now we have a table where each row is a word. This is the "tidy" format.

However, we clearly have words that do not add meaning (stop words), such as "the", "and", "of". We can remove them using a list of stop words. The `tm` package provides a good list for English.


``` r
library(tm)
english_stop_words <- tibble(word = stopwords("english"))

# Remove stop words using anti_join
tidy_pride_clean <- tidy_pride |>
  anti_join(english_stop_words, by = "word")

head(tidy_pride_clean)
#> # A tibble: 6 × 1
#>   word 
#>   <chr>
#> 1 <NA> 
#> 2 <NA> 
#> 3 <NA> 
#> 4 <NA> 
#> 5 <NA> 
#> 6 <NA>
```

We might also want to remove custom words or numbers that appeared in the extraction.


``` r
custom_stop_words <- tibble(word = c("mr", "mrs", "miss", "said", "will", 
                                     "one", "much", "may", "can", "now", "sir", "lady"))

tidy_pride_clean <- tidy_pride_clean |>
  anti_join(custom_stop_words, by = "word") |>
  filter(!str_detect(word, "^\\d+$")) # Remove pure numbers

```

### Word Cloud
Now that we have our clean data, calculating word frequency is as simple as using `count()`.


``` r
word_counts <- tidy_pride_clean |>
  count(word, sort = TRUE)

head(word_counts)
#> # A tibble: 6 × 2
#>   word          n
#>   <chr>     <int>
#> 1 elizabeth   605
#> 2 darcy       383
#> 3 must        322
#> 4 bennet      309
#> 5 jane        274
#> 6 bingley     262
```

We can create the word cloud directly from this data frame.


``` r
wordcloud(words = word_counts$word, 
          freq = word_counts$n,
          min.freq = 5,
          max.words = 80, 
          random.order = FALSE, 
          colors = brewer.pal(name = "Dark2", n = 8))
```

<img src="Data-Science-with-R_files/figure-html/unnamed-chunk-774-1.png" alt="" width="80%" style="display: block; margin: auto;" />

### Word Frequency Plot
Since we have the data in a tidy format, plotting a bar chart of the most frequent words is straightforward with `ggplot2`.


``` r
word_counts |>
  head(20) |>
  ggplot(aes(n, reorder(word, n))) +
  geom_col(fill = "blue") +
  labs(y = NULL, x = "Frequency", title = "Most common words in Pride and Prejudice")
```

<img src="Data-Science-with-R_files/figure-html/unnamed-chunk-775-1.png" alt="" width="80%" style="display: block; margin: auto;" />

## Sentiment Analysis
Sentiment analysis allows us to know the tone of the messages. We will use the `syuzhet` package combined with our tidy data skills.

Let's use the same example of tweets.


``` r
library(readxl)

# Download tweets
url <- "https://dparedesi.github.io/DS-with-R-datasets/rmapalacios-tweets.xlsx"
temp_file <- tempfile()
download.file(url, temp_file)
posts <- read_excel(temp_file)
file.remove(temp_file)
#> [1] TRUE

# Filter for tweets only and create a tidy dataframe
tweets_df <- posts |> 
  filter(`Tweet Type` == "Tweet") |> 
  select(text = Text) |>
  mutate(tweet_id = row_number()) 

head(tweets_df)
#> # A tibble: 6 × 2
#>   text                                                                  tweet_id
#>   <chr>                                                                    <int>
#> 1 "Le agradezco mucho regidor.\nUna visita al niño y a su madre pueden…        1
#> 2 "Esto esta prohibido en tantas normas que no se por donde empezar.\n…        2
#> 3 "Nadie lo sabe y a los ministros sectoriales parece importarles poco…        3
#> 4 "Ahora se llama \"trabajo remoto\" con el auspicio del Estado peruan…        4
#> 5 "¿Y usted esta muy seguro que va a salir a trabajar el lunes 25? Vay…        5
#> 6 "No saben como abundan. https://t.co/r1qMGOhGcR"                             6
```

Now we clean the tweets. `unnest_tokens` handles most of it, but for tweets, we might want to remove URL links first.


``` r
# Custom cleaning function for tweets before tokenization
clean_tweets <- tweets_df |>
  mutate(text = str_replace_all(text, "http\\S+", "")) |> # remove URLs
  mutate(text = str_replace_all(text, "@\\S+", "")) # remove mentions

# Get Sentiment scores for each tweet
# syuzhet works well with the full text vector for scoring
tweet_sentiments <- get_nrc_sentiment(clean_tweets$text, language = "spanish")

# Combine with original data
tweets_with_sentiment <- bind_cols(clean_tweets, tweet_sentiments)

head(tweets_with_sentiment)
#> # A tibble: 6 × 12
#>   text    tweet_id anger anticipation disgust  fear   joy sadness surprise trust
#>   <chr>      <int> <dbl>        <dbl>   <dbl> <dbl> <dbl>   <dbl>    <dbl> <dbl>
#> 1 "Le ag…        1     0            1       0     2     1       3        0     3
#> 2 "Esto …        2     4            0       3     5     0       3        0     0
#> 3 "Nadie…        3     0            0       0     0     0       0        0     0
#> 4 "Ahora…        4     0            1       0     0     1       0        1     1
#> 5 "¿Y us…        5     0            2       0     1     3       2        0     4
#> 6 "No sa…        6     0            0       0     0     0       0        0     0
#> # ℹ 2 more variables: negative <dbl>, positive <dbl>
```

We can now reshape this data to visualize emotions using `pivot_longer`, just like we do with any tidy dataset.


``` r
translate_emotions <- function(string){
  case_when(
    string == "anger" ~ "Anger",
    string == "anticipation" ~ "Anticipation",
    string == "disgust" ~ "Disgust",
    string == "fear" ~ "Fear",
    string == "joy" ~ "Joy",
    string == "sadness" ~ "Sadness",
    string == "surprise" ~ "Surprise",
    string == "trust" ~ "Trust",
    string == "negative" ~ "Negative",
    string == "positive" ~ "Positive",
    TRUE ~ string
  )
}

# Summarize totals
sentiment_totals <- tweets_with_sentiment |> 
  summarise(across(anger:positive, sum)) |>
  pivot_longer(cols = everything(), names_to = "sentiment", values_to = "total") |>
  mutate(sentiment = translate_emotions(sentiment))

sentiment_totals
#> # A tibble: 10 × 2
#>    sentiment    total
#>    <chr>        <dbl>
#>  1 Anger          805
#>  2 Anticipation   905
#>  3 Disgust        807
#>  4 Fear          1344
#>  5 Joy            549
#>  6 Sadness       1378
#>  7 Surprise       421
#>  8 Trust         1373
#>  9 Negative      2535
#> 10 Positive      2314
```

Visualizing:


``` r
# Separate positive/negative from specific emotions
general_sentiments <- c("Positive", "Negative")

sentiment_totals |>
  filter(!sentiment %in% general_sentiments) |>
  ggplot(aes(reorder(sentiment, total), total, fill = sentiment)) +
  geom_col() +
  coord_flip() +
  labs(x = NULL, y = "Total Score", title = "Emotions in Tweets") +
  theme(legend.position = "none")

sentiment_totals |>
  filter(sentiment %in% general_sentiments) |>
  ggplot(aes(sentiment, total, fill = sentiment)) +
  geom_col() +
  labs(x = NULL, y = "Total Score", title = "Positive vs Negative Sentiment")
```

<img src="Data-Science-with-R_files/figure-html/unnamed-chunk-779-1.png" alt="" width="80%" style="display: block; margin: auto;" /><img src="Data-Science-with-R_files/figure-html/unnamed-chunk-779-2.png" alt="" width="80%" style="display: block; margin: auto;" />

This tidy approach makes it much easier to inspect the data at every step and integrate valid data science workflows (filtering, joining, plotting) without learning a separate system just for text.



## Exercises

For these exercises we will use more books from Project Gutenberg using the `gutenbergr` library.


``` r
# install.packages("gutenbergr")
library(gutenbergr)

# Tibble: list of books in Gutenberg.org
gutenberg_metadata

# List of books in Spanish
gutenberg_works(languages = "es")
```

121. Use `gutenberg_download(2000)` to download the text of "El ingenioso hidalgo don Quijote de la Mancha" and store the result in an object named `download`.



<details>
  <summary type="button">Solution</summary>

``` r
download <- gutenberg_download(2000)
quijote_text <- download$text
head(quijote_text)
```
</details>


122. Extract a random sample of 1,000 lines from the text. Clean this sample by tokenizing into words and removing standard Spanish stop words.



<details>
  <summary type="button">Solution</summary>

``` r
set.seed(123)
sample_lines <- tibble(text = sample(quijote_text, 1000))

tidy_quijote <- sample_lines |>
  unnest_tokens(word, text) |>
  anti_join(spanish_stop_words, by = "word") |>
  # Remove extra stop words if needed
  filter(!word %in% c("don", "quijote", "sancho")) 

```
</details>


123. Visualize the most frequent words in your cleaned Quijote sample using a word cloud.



<details>
  <summary type="button">Solution</summary>

``` r
quijote_counts <- tidy_quijote |>
  count(word, sort = TRUE)

wordcloud(words = quijote_counts$word, 
          freq = quijote_counts$n,
          min.freq = 2,
          max.words = 80, 
          colors = brewer.pal(8, "Dark2"))
```
</details>

124. Analyze the sentiments present in your text sample to determine the overall emotional tone.



<details>
  <summary type="button">Solution</summary>

``` r
# Reconstruct text for syuzhet or do word-by-word sentiment if using tidytext lexicon
# Using syuzhet on the original sample lines is often better for context, 
# but let's try token-based simply for the exercise or just use the lines:

# Extract sentiments from the lines
quijote_sentiments <- get_nrc_sentiment(sample_lines$text, language = "spanish")

# Summarize/Plot
quijote_sentiments |>
  summarise(across(everything(), sum)) |>
  pivot_longer(everything(), names_to = "sentiment", values_to = "count") |>
  ggplot(aes(reorder(sentiment, count), count)) +
  geom_col(fill = "steelblue") +
  coord_flip() +
  labs(title = "Sentiments in Don Quijote Sample")
```
</details>



<!--chapter:end:05-wrangling/text-mining.Rmd-->


# (PART) Generative AI {-}

# Data Science in the Age of AI {#genai-intro}

The field of Data Science is in a state of constant evolution. We started by learning how to handle vectors and lists in Base R, we moved to the elegance of the **tidyverse** for data manipulation, and we explored the robustness of **tidymodels** for machine learning. Now, we are facing a new paradigm shift: **Generative AI**.

Just as the calculator did not replace the mathematician, Large Language Models (LLMs) will not replace the Data Scientist. However, a Data Scientist using AI will likely replace one who does not.

In this part of the book, we will demystify these "magic black boxes". We will learn what they are, how to control them programmatically from R, and how to use them to unlock unstructured data that was previously inaccessible.

## What is a Large Language Model?

To work effectively with LLMs, we must stop treating them as "people" and start treating them as **probabilistic engines**.

### It's all about Probability

At its most fundamental level, an LLM like GPT-4, Claude, or Llama is a "next token prediction machine". It has been trained on a massive corpus of text (books, websites, code repositories) to answer a simple statistical question:

> *Given the sequence of text "The capital of France is...", what is the most likely next piece of text?*

The model does not "know" geography. It knows that, statistically, the token "Paris" appears more frequently after that sequence than "London" or "Potato".

### Tokens vs. Words

We often think models read words, but they actually process **tokens**, which can be whole words, fragments, or even spaces. For instance, "apple" might be a single token, while a complex word like "antidisestablishmentarianism" could be split into four or five. A useful rule of thumb is that **1,000 tokens are roughly equivalent to 750 words**. This distinction is critical for two reasons: **Cost**, as you are billed by the token for both input and output; and **Context Window**, which serves as the model's short-term memory. A model with a 128k context window can effectively "remember" about 96,000 words of conversation before it begins to lose track of the beginning.

### Temperature: Controlling Creativity

One of the most important parameters you can control is **Temperature**, which dictates the randomness of the output. A temperature of **0** makes the model deterministic, always selecting the most probable next token—ideal for tasks requiring precision like data extraction, coding, or math. Conversely, raising the temperature to **1** or higher encourages the model to take risks and choose less likely tokens, making it suitable for creative writing, brainstorming, and poetry.

> [!TIP]
> **For Data Science, start at 0.** When writing code or extracting data, we want reliability, not creativity.

## Setting Up Your AI Environment

Before we write code, we must secure our environment. Accessing high-quality models usually requires an API Key (from OpenAI, Anthropic, Google, etc.).

> [!DANGER]
> **NEVER** paste your API key directly into your R script. If you push that script to GitHub, bots will steal your key in seconds and drain your bank account.
*   **Anonymize:** If you must use a public tool, rename columns (`Client_A`, `Revenue_X`) and inject fake values before prompting.

### The Solution: Local LLMs

For sensitive data, the best solution is running a **Local LLM** on your own machine using tools like **Ollama** or **LM Studio**. This approach ensures 100% privacy and offline access, though it does come with trade-offs: it requires a capable computer (such as a Mac M-series or NVIDIA GPU), and local models are typically smaller and less capable than massive cloud models like GPT-4.

### The `.Renviron` File

The standard way to handle secrets in R is the `.Renviron` file. This file lives in your project's root or your home directory and is not tracked by Git (ensure it is in your `.gitignore`).

1.  Open or create the file using R:
    ```r
    usethis::edit_r_environ()
    ```
2.  Add your keys in the following format:
    ```bash
    OPENAI_API_KEY="sk-proj-12345..."
    ANTHROPIC_API_KEY="sk-ant-12345..."
    GITHUB_PAT="ghp_12345..."
    ```
3.  Restart your R session.
4.  Access them in R:
    ```r
    Sys.getenv("OPENAI_API_KEY")
    ```

## AI as the "Pair Programmer"

The most immediate value of AI is not replacing your analysis, but accelerating the code you write to perform it.

### The Great Refactorer

We all have old code: nested `for` loops, variable names like `x1`, `x2`, and manual indexing. AI excels at modernizing legacy code.

**Scenario:** You have this Base R code to filter and clean data:

```r
# Old Code
data <- read.csv("sales.csv")
clean_data <- data[data$amount > 100, ]
clean_data$date <- as.Date(clean_data$date)
final <- clean_data[order(clean_data$date), ]
```

**Prompt to AI:**
> "Refactor this R code to use the `tidyverse` and the pipe (`|>`) operator. Ensure variable names are snake_case."

**AI Output:**
```r
library(tidyverse)

sales_data <- read_csv("sales.csv") |> 
  filter(amount > 100) |> 
  mutate(date = as.Date(date)) |> 
  arrange(date)
```

### The Translator

One of the hardest parts of learning R is knowing *which* package does what you want. You can describe your intent in plain English (or Spanish!) and get the function.

**Example Prompt:**
> "I have this R code using `purrr::map`. Can you explain what it does in simple terms and suggest if there is a more modern way to write it?"

### Pro Tip: Prompt Engineering 101


Getting good code from an LLM isn't magic; it's engineering. A high-quality prompt typically combines four key components. First, establish a **Role** ("You are an expert R programmer...") to frame the model's perspective. Second, clearly define the **Task** ("Write a function to..."). Third, set explicit **Constraints** ("Use `dplyr`, not base R; do not assume clean data"). Finally, specify the desired **Format** ("Return the code in a single block with comments") to ensure the output matches your needs.

> [!TIP]
> **Iterate.** Your first prompt uses vague terms. Your second prompt clarifies them. Your third prompt gets the perfect answer.
> "I have a date column '2023-12-25'. I want to extract the week number of the year. Which `lubridate` function should I use?"

**AI Output:**
> "You should use `lubridate::isoweek()` or `lubridate::week()`."

### The Regex Master

Regular Expressions (Regex) are powerful but notoriously difficult to write. This is arguably the *best* use case for LLMs.

**Scenario:** You have a column with messy Peru phone numbers: `(51) 999-999-999`, `+51 999 999 999`.

**Prompt:**
> "I have inconsistent phone numbers. Write a regex compatible with `stringr` to extract only the 9 digits of the mobile number, ignoring country code."

**AI Output:**


``` r
library(stringr)
phones <- c("(51) 987-654-321", "+51 987654321", "987 654 321")
# The Pattern: Simple extraction of 9 consecutive digits
clean_phones <- str_extract(phones, "\\d{9}") 
print(clean_phones)
#> [1] NA          "987654321" NA
```


### The Error Decoder

R error messages can be cryptic.
*   *"Error in result[[1]] : subscript out of bounds"*
*   *"Error: aesthetics must be either length 1 or the same as the data"*

Instead of staring at the screen, paste the error **and** the code chunk into the AI. It will usually pinpoint the exact mismatch in list lengths or ggplot layers.

## The Risks: Hallucinations

We cannot finish this introduction without a warning. LLMs are **people pleasers**. They want to give you an answer, even if they have to invent it.

### The "Package" Hallucination
It is common for an LLM to invent an R function that *should* exist but doesn't.

> **User:** "How do I calculate the Gini coefficient in `dplyr`?"
> **AI:** "Just use `summarize(gini = gini_coeff(income))`!"

There is no `gini_coeff` function in `dplyr` default exports. It sounded plausible, but running it will crash your script. **Always verify functions in the Help tab (`?function_name`).**

In the next chapter, we will stop chatting and start coding. We will build an engine to send data to the AI and get structured insights back.

<!--chapter:end:08-genai/intro_llm.Rmd-->


```
# LLMs as an Analysis Engine {#genai-api}

In the previous chapter, we treated AI as a chatbot that helps us write code. Now, we are going to flip the script. We will treat the Large Language Model as a **function** within our R code—a function that accepts unstructured text as input and returns structured data as output. This approach turns unstructured text into structured data with minimal code.

This is the transition from "Chatting with AI" to "Building with AI".

## The API Economy

To interact with models programmatically, we use **APIs** (Application Programming Interfaces). Instead of a web interface, we send HTTP requests.

While there are R packages like `openai`, `ellmer` or `chattr` that wrap these APIs, as a Data Scientist it is critical to understand how to build the connection yourself using `httr2`. This gives you full control over error handling, retries, and costs.

### Prerequisite: The Setup

Ensure you have your API key stored in the `.Renviron` file as discussed in the previous chapter.


``` r
library(tidyverse)
library(httr2)
library(jsonlite)

# Reload environment if needed
readRenviron(".Renviron")
```

## Building a Robust Request

A production-quality API request needs more than just a URL. It needs **Authentication**, **Retry Logic**, and **Error Handling**.

Let's build a wrapper function to query OpenAI's GPT-4o-mini (a cost-effective model).


``` r
query_openai <- function(prompt, system_prompt = "You are a helpful assistant.") {
  
  api_key <- Sys.getenv("OPENAI_API_KEY")
  
  if (api_key == "") stop("Error: OPENAI_API_KEY not found in environment.")
  
  # 1. Construct the Request
  req <- request("https://api.openai.com/v1/chat/completions") |> 
    req_headers(Authorization = paste("Bearer", api_key)) |> 
    req_body_json(list(
      model = "gpt-4o-mini",
      messages = list(
        list(role = "system", content = system_prompt),
        list(role = "user", content = prompt)
      ),
      temperature = 0 # Deterministic for data tasks
    )) |> 
    # 2. Add Robustness: Retry 3 times if server fails (500) or rate limited (429)
    req_retry(max_tries = 3, backoff = ~ 2) |> # Exponential backoff
    req_throttle(rate = 100/60) # 100 requests per minute
  
  # 3. Perform Request & Handle Errors
  response <- req_perform(req)
  
  # 4. Parse the content
  result <- response |> resp_body_json()
  return(result$choices[[1]]$message$content)
}
```

Now we have a function `query_openai()` that we can use like any other R function.


``` r
query_openai("What is the capital of Peru?")
# [1] "The capital of Peru is Lima."
```

## The Holy Grail: Structured Data extraction

The biggest problem with LLMs is that they love to talk. If you ask for a sentiment score, they might say: *"Here is the sentiment score you requested based on my analysis: Positive."*

We don't want that. We want `"Positive"`. Or even better, we want a JSON object.

### Forcing JSON Output

Most modern models support "JSON Mode". This guarantees the output is machine-readable valid JSON.

Let's say we have a dataset of raw customer reviews and want to extract specific insights. We need to capture the **Sentiment** (Positive or Negative), a list of mentioned **Topics**, and the **Urgency** level—flagging it as 'High' if the user is angry or at risk of churning, and 'Low' otherwise.


``` r
extract_review_data <- function(review_text) {
  
  system_instructions <- "
  You are a data extraction engine. 
  Extract the following fields from the user review and return ONLY a JSON object:
  - sentiment: 'Positive', 'Neutral', or 'Negative'
  - topics: a list of strings (e.g., ['Price', 'UX'])
  - urgency: 'High' if the user is angry/churning, else 'Low'
  "
  
  # Note: To enforce strict JSON, we often need to tell the model in the prompt
  # AND set response_format = { type: 'json_object' } if supported.
  
  response_json <- query_openai(review_text, system_label = system_instructions)
  
  # Parse JSON string to R list
  return(fromJSON(response_json))
}
```

## Batch Processing: The `purrr` Workflow

Now, let's apply this to a Data Frame. When processing hundreds of rows, we **must** be careful.

Now, let's apply this to a Data Frame. When processing hundreds of rows, we must be careful. First, we need to respect **Rate Limits**, as APIs will block you if you send too many requests too quickly (e.g., 1000 in a second). Second, consider **Cost** by always testing on a small sample like `head(df, 5)` before running the full job. Finally, ensure **Error Safety**: if row 99 fails, we want to capture that error gracefully so the entire loop doesn't crash.

We use `purrr::map` with `possibly()` (or `safely()`) generally, but for API calls, adding a small `Sys.sleep()` is wise.


``` r
# Sample Data
reviews_df <- tibble(
  id = 1:3,
  text = c(
    "I love this product! Best purchase ever.",
    "The delivery was late and the item is broken. I want a refund.",
    "It's okay, but a bit expensive for what it is."
  )
)

# 1. Create a Safe Function (returns NULL instead of crashing)
safe_extract <- possibly(extract_review_data, otherwise = NULL)

# 2. Iterate
results_df <- reviews_df |> 
  mutate(ai_data = map(text, function(t) {
    Sys.sleep(0.5) # Be polite to the API
    safe_extract(t)
  })) |> 
  # 3. Unnest the JSON structure
  unnest_wider(ai_data)

print(results_df)
```

**Resulting Data Frame:**

| id | text | sentiment | topics | urgency |
|:---|:-----|:----------|:-------|:--------|
| 1 | I love... | Positive | ["Product"] | Low |
| 2 | The delivery... | Negative | ["Shipping", "Product"] | High |
| 3 | It's okay... | Neutral | ["Price"] | Low |

## Summary

We have turned an unstructured text column into usable columns for filtering and plotting. This is the true power of "LLMs as Data Engines".

*   We use `httr2` for robust connections.
*   We use System Prompts to force JSON structure.
*   We use `purrr` and `unnest_wider` to flatten that AI insight back into our Tidyverse workflow.

In the next chapter, we will discuss Ethics. But before that, there is one more superpower we need to unlock: **Embeddings**.

## Beyond Generation: Embeddings

So far, we have used LLMs to *generate* text. But they can also *understand* text by converting it into numbers. This is called an **Embedding**.

An embedding is a list of numbers (a vector, e.g., 1536 numbers long) that represents the semantic meaning of a text.

Consider the difference between a "Dog" and a "Puppy"; their corresponding vectors will be mathematically very close because they share similar semantic meanings. In contrast, "Dog" and "Sandwich" will be far apart. This capability powers **Semantic Search**. Unlike a standard keyword search that looks for exact matches like "Climate" or "Change"—and potentially misses relevant documents—a semantic search converts your query into a vector. It then finds documents with the closest vectors, allowing you to retrieve a report on "Global warming effect on maize" even if it doesn't contain the exact words from your query "Climate change impact on corn."

### R Implementation

Getting an embedding is just another API call:

```r
get_embedding <- function(text) {
  req <- request("https://api.openai.com/v1/embeddings") |> 
    req_headers(Authorization = paste("Bearer", Sys.getenv("OPENAI_API_KEY"))) |> 
    req_body_json(list(
      model = "text-embedding-3-small",
      input = text
    ))
  
  resp <- req_perform(req)
  # Extract the vector
  resp |> resp_body_json() |> pluck("data", 1, "embedding") |> unlist()
}

v1 <- get_embedding("The dog barked")
v2 <- get_embedding("The canine made noise")
# cosine_sim <- sum(v1 * v2) / (sqrt(sum(v1^2)) * sqrt(sum(v2^2)))
# The result will be very high (close to 1).
```

This vectorization is the foundation of **RAG (Retrieval Augmented Generation)**, which allows you to chat with your own PDFs.


<!--chapter:end:08-genai/llm_api.Rmd-->


# Text Analysis with Embeddings {#genai-embeddings}

In the previous chapters, we learned how to generate text and how to extract data from it. But what if we want to *understand* the relationship between thousands of documents without reading them?

This is where **Embeddings** come in. They are arguably the most powerful yet underutilized tool in the AI toolkit for Data Scientists.

## Beyond Bag-of-Words

Traditional text mining techniques, such as word clouds or TF-IDF, treat text as a simple "bag of words," ignoring context. For example, the sentence "I sat on the **bank** of the river" and "I went to the **bank** to deposit money" are treated as identical because they both contain the word "bank," even though the meaning offers a completely different context. To a human—and to an Embedding model—these distinctions are clear.

## What is an Embedding?

An embedding is a translation of text into a **vector of numbers**.

Imagine plotting words on a hypothetical 2D graph based on their meaning. In this space, **King** might sit at coordinates `(5, 5)`, with **Queen** located nearby at `(5, 7)` due to their semantic similarity. **Apple**, unrelated to royalty, would be positioned far away at `(10, 2)`. Modern embedding models like OpenAI's `text-embedding-3-small` scale this concept up massively, placing words not in two dimensions, but in **1,536 dimensions**. This high-dimensional space allows them to capture subtle nuances of meaning, tone, and context that simple coordinates cannot.

## Getting Embeddings in R

We can request embeddings using the same `httr2` workflow we built in the previous chapter, but hitting the `/embeddings` endpoint.


``` r
get_embedding <- function(text_input) {
  
  api_key <- Sys.getenv("OPENAI_API_KEY")
  
  req <- request("https://api.openai.com/v1/embeddings") |> 
    req_headers(Authorization = paste("Bearer", api_key)) |> 
    req_body_json(list(
      model = "text-embedding-3-small",
      input = text_input
    ))
  
  resp <- req_perform(req)
  result <- resp |> resp_body_json()
  
  # The embedding is a list of numbers
  return(unlist(result$data[[1]]$embedding))
}

# Example
vector_dog <- get_embedding("The dog barked")
length(vector_dog) 
# [1] 1536
```

## Visualizing Meaning (Dimensionality Reduction)

We cannot visualize 1,536 dimensions. But we can use mathematical techniques like **PCA** (Principal Component Analysis) or **UMAP** to squash those dimensions down to 2, preserving relative distances.

Let's assume we have a dataframe `news_df` with headlines and their calculated embeddings.


``` r
library(tidymodels)

# Assume 'embeddings_mat' is a matrix where each row is an embedding vector
pca_rec <- recipe(~., data = as.data.frame(embeddings_mat)) |> 
  step_pca(all_predictors(), num_comp = 2)

pca_prep <- prep(pca_rec)
pca_data <- bake(pca_prep, new_data = NULL)

# Add back the text labels
plot_data <- pca_data |> 
  bind_cols(news_df |> select(headline, category))

# Plot
plot_data |> 
  ggplot(aes(x = PC1, y = PC2, color = category)) +
  geom_point(alpha = 0.8) +
  theme_minimal() +
  labs(title = "Map of News Headlines")
```

If we did this correctly, we would see distinct "clusters". Sports news would cluster in one corner, politics in another, and technology in a third—even if they never share the exact same keywords!

## Building a Semantic Search Engine

The "Hello World" of Embeddings is **Semantic Search**, which fundamentally differs from traditional approaches. While a **Keyword Search** for "cheap phone" rigidly looks for the exact words "cheap" AND "phone," a **Semantic Search** for "budget friendly mobile" understands the underlying intent—that "budget" relates to "cheap" and "mobile" to "phone."

Mathematically, this is calculated using **Cosine Similarity**. The closer the angle between two vectors, the more similar their meaning.


``` r
# Function to calculate Cosine Similarity
cosine_sim <- function(a, b) {
  sum(a * b) / (sqrt(sum(a^2)) * sqrt(sum(b^2)))
}

search_news <- function(query, data_vectors, data_text) {
  
  # 1. Embed the query
  query_vec <- get_embedding(query)
  
  # 2. Compare against all document vectors
  similarities <- apply(data_vectors, 1, function(doc_vec) {
    cosine_sim(query_vec, doc_vec)
  })
  
  # 3. Return top 3 matches
  results <- tibble(
    text = data_text,
    score = similarities
  ) |> 
    arrange(desc(score)) |> 
    head(3)
  
  return(results)
}
```

Now you can search for concepts, not just keywords!

## Summary: The AI Workflow

We have completed our journey through Generative AI in R.

We have completed our journey through Generative AI in R, covering three foundational pillars. We started by understanding that **Foundations** of models are probabilistic engines predicting tokens, not reasoning beings. Then, we moved to **APIs**, building robust pipelines to extract structured JSON data from unstructured text. Finally, we explored **Embeddings**, learning to represent text as numerical vectors to enable powerful search and clustering by meaning.

The future of Data Science is hybrid. It combines the statistical rigor of tools like `tidymodels` with the semantic understanding of Large Language Models. You are now equipped to build that future.

<!--chapter:end:08-genai/embeddings.Rmd-->


# (PART) Real Cases {-}

# Introduction {-}

Having mastered the fundamentals of R programming, data transformation, and visualization, it's time to put these skills into practice with real-world scenarios. The following case studies demonstrate end-to-end data science workflows that you might encounter in professional settings.

**In this chapter, you will:**

-   Connect R to external APIs (Google Analytics) for automated data retrieval.
-   Apply cleaning, transformation, and visualization to real estate market data.
-   Practice the full workflow: problem definition → data access → analysis → insights.

Each case introduces complementary libraries such as `googleAnalyticsR` for API access and `lubridate` for date manipulation, reinforcing patterns from earlier chapters while adding new practical tools.

<!--chapter:end:07-real-cases/introduction.Rmd-->


# Case Study: Real Estate Market Analysis

In this case study, we will apply our data transformation and visualization skills to analyzing the real estate market. We will use the `txhousing` dataset provided by the `ggplot2` package, which contains information about housing sales in Texas.

This dataset allows us to explore concepts like tracking value over time, comparing categories, and analyzing transaction volume—skills that transfer directly to financial analysis, sales reporting, and business intelligence.

## Objectives

1.  **Data Cleaning**: Handle missing values and format dates.
2.  **Transformation**: Aggregate data by city and year to find trends.
3.  **Visualization**: Create time-series plots to analyze market health.
4.  **Analysis**: Identify cities with the highest growth and stability.

## Loading Libraries

We will use the core `tidyverse` libraries.


``` r
library(tidyverse)
library(lubridate)
library(scales)
library(ggthemes)
```

## Exploring the Data

First, let's load and inspect the data.


``` r
data("txhousing")
glimpse(txhousing)
#> Rows: 8,602
#> Columns: 9
#> $ city      <chr> "Abilene", "Abilene", "Abilene", "Abilene", "Abilene", "Abil…
#> $ year      <int> 2000, 2000, 2000, 2000, 2000, 2000, 2000, 2000, 2000, 2000, …
#> $ month     <int> 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 1, 2, 3, 4, 5, 6, 7, …
#> $ sales     <dbl> 72, 98, 130, 98, 141, 156, 152, 131, 104, 101, 100, 92, 75, …
#> $ volume    <dbl> 5380000, 6505000, 9285000, 9730000, 10590000, 13910000, 1263…
#> $ median    <dbl> 71400, 58700, 58100, 68600, 67300, 66900, 73500, 75000, 6450…
#> $ listings  <dbl> 701, 746, 784, 785, 794, 780, 742, 765, 771, 764, 721, 658, …
#> $ inventory <dbl> 6.3, 6.6, 6.8, 6.9, 6.8, 6.6, 6.2, 6.4, 6.5, 6.6, 6.2, 5.7, …
#> $ date      <dbl> 2000.000, 2000.083, 2000.167, 2000.250, 2000.333, 2000.417, …
```

The dataset contains:
-   `city`: Name of the city.
-   `year`, `month`: Date components.
-   `sales`: Number of sales.
-   `volume`: Total value of sales.
-   `median`: Median sale price.
-   `listings`: Total active listings.
-   `inventory`: "Months inventory": amount of time it would take to sell all current listings at current sales pace.
-   `date`: Date in decimal format (e.g., 2000.08).

## Data Cleaning

Real-world data often has missing values (`NA`). Let's check how many missing values we have in the `sales` column.


``` r
sum(is.na(txhousing$sales))
#> [1] 568
```

We see there are records with no sales data. For our analysis of market volume, we should remove these incomplete records. We will creating a clean dataset `housing_clean`.

We will also create a proper `date` column using `lubridate::make_date()`, which is easier to work with than the decimal date.


``` r
housing_clean <- txhousing |> 
  filter(!is.na(sales)) |> 
  mutate(date_proper = make_date(year, month, 1)) |> 
  select(-date) # Remove the decimal date
```

## Exploratory Analysis

### Market Volume Over Time

Let's look at the total sales volume across all of Texas over time. This gives us a "macro" view of the market, similar to how we might look at total portfolio value in a financial context.


``` r
# Aggregate by date
total_market <- housing_clean |> 
  group_by(date_proper) |> 
  summarise(
    total_sales = sum(sales),
    total_volume = sum(volume, na.rm = TRUE)
  )

# Plot Volume
total_market |> 
  ggplot(aes(x = date_proper, y = total_volume)) +
  geom_line(color = "steelblue") +
  scale_y_continuous(labels = label_dollar(scale = 1e-9, suffix = "B")) +
  theme_minimal() +
  labs(
    title = "Total Texas Housing Market Volume",
    subtitle = "Monthly Total Sales Volume (Billions)",
    x = "Year",
    y = "Volume ($)"
  )
```

<img src="Data-Science-with-R_files/figure-html/unnamed-chunk-806-1.png" alt="" width="80%" style="display: block; margin: auto;" />

We can clearly see the seasonality (peaks in summer) and the impact of the 2008 financial crisis (dip around 2008-2010), followed by a strong recovery.

### Comparing Cities

Just as we might compare different companies or portfolios, let's compare the median housing prices in the major cities. We'll focus on the "Big 4" Texas cities: Austin, Dallas, Houston, and San Antonio.


``` r
major_cities <- c("Austin", "Dallas", "Houston", "San Antonio")

city_trends <- housing_clean |> 
  filter(city %in% major_cities)

city_trends |> 
  ggplot(aes(x = date_proper, y = median, color = city)) +
  geom_line(alpha = 0.7) +
  theme_minimal() +
  scale_y_continuous(labels = label_dollar()) +
  labs(
    title = "Median Housing Prices in Major Cities",
    x = "Year",
    y = "Median Price",
    color = "City"
  )
```

<img src="Data-Science-with-R_files/figure-html/unnamed-chunk-807-1.png" alt="" width="80%" style="display: block; margin: auto;" />

Austin (green) clearly shows the steepest growth curve, especially post-2012.

## Creating Indicators

In financial analysis, we often create ratios. Here, let's look at **Inventory**, which is a measure of supply vs. demand.
-   **High Inventory**: Buyer's market (prices might drop).
-   **Low Inventory**: Seller's market (prices might rise).

Let's look at the average inventory per year for these cities.


``` r
city_inventory <- city_trends |> 
  group_by(city, year) |> 
  summarise(avg_inventory = mean(inventory, na.rm = TRUE), .groups = "drop")

city_inventory |> 
  ggplot(aes(x = year, y = avg_inventory, color = city)) +
  geom_line(linewidth = 1) +
  theme_fivethirtyeight() +
  labs(
    title = "Market Health: Months of Inventory",
    subtitle = "Lower means easier to sell (Seller's Market)",
    color = "City"
  )
```

<img src="Data-Science-with-R_files/figure-html/unnamed-chunk-808-1.png" alt="" width="80%" style="display: block; margin: auto;" />

We see a convergence around 2014-2015 where inventory became very tight across all major cities.

## Try It Yourself

1.  **Expand the Analysis**: Add "Fort Worth" to `major_cities` and re-run the median price comparison. How does it compare to the Big 4?

2.  **Calculate Growth**: Compute the year-over-year percentage change in median price for Austin. Which year had the highest growth?

3.  **Seasonality Deep Dive**: Which month typically has the highest sales volume? Create a boxplot of sales by month to visualize seasonal patterns.

## Conclusions

Through this case study, we performed essential Data Science tasks on a real dataset:

1.  **Cleaning**: Handling `NA` values and formatting dates with `lubridate`.
2.  **Aggregation**: Summarizing billions of dollars of volume into clear trend lines.
3.  **Comparison**: Benchmarking cities against each other to identify leaders.
4.  **Indicators**: Creating business-relevant metrics like months of inventory.

> [!TIP]
> This exact workflow applies to countless domains: stock prices, customer churn, inventory management, or any time-series business data. Master the pattern here, and you can adapt it anywhere.

<!--chapter:end:07-real-cases/real-estate-analysis.Rmd-->


# Google Analytics from R

Understanding the audience that enters our website helps us make better decisions, whether these are commercial or content release decisions. We can, thus, insert a visit counter or use Google Analytics to start collecting much more than the total visits.

## Problem
We have a website to which we already placed the Google Analytics code to understand visit statistics to my website, but I want reports that today the web does not provide us. We need to access the raw data to represent our own reports and access them even without having to enter the Google Analytics website.

> [!IMPORTANT]
> Google sunsetted Universal Analytics in July 2023. The `googleAnalyticsR` package now supports GA4. The concepts here remain valid, but the specific function parameters may differ. See the [package documentation](https://code.markedmondson.me/googleAnalyticsR/) for GA4-specific usage.

## Access to data
We are going to assume for this case that we already have a google analytics account and we are already tracking data from our website through some view. For this case I am going to use the statistics to the website that you are currently reading.

To access the Google Analytics data we will use the [`googleAnalyticsR`](http://code.markedmondson.me/googleAnalyticsR/articles/v4.html) library. In addition, to quickly manipulate dates from or to we will use the `lubridate` library.


``` r
install.packages("googleAnalyticsR")
library(googleAnalyticsR)
library(lubridate)
library(tidyverse)
```

Then, we have to authenticate. To do this we will use the `ga_auth()` function, which will open a web page to log in with the account in which we have access to Google Analytics.


``` r
ga_auth()
```

Now that we are authenticated we can bring all our accounts using the `ga_account_list()` function.




``` r
account_list <- ga_account_list()
```

From here we will search for the row of the website that interests us and from there we will obtain the `propertyId` column. The Property ID in Google Analytics 4 for this website is the following:


``` r
property_id <- 123456789 # Replace with your GA4 Property ID
```

Finally, we need two variables of the date from when to when we want the data.


``` r
from_date <- "2024-01-01"
to_date <- "2024-03-31"
```

Or if we wish we can only calculate the information of the last two months, or two days, etc.


``` r
# Two months ago until now
# Two months ago until now
from_date <- (today() - months(2)) |> as.character()
to_date <- today() |> as.character()

from_date
to_date
```

Thus, we can already make a call to obtain the data we need using the `ga_data()` function (the standard for GA4).


``` r
history <- ga_data(property_id,
                 date_range = c(from_date, to_date),
                 metrics = "activeUsers",
                 dimensions = "date")
```

With this data frame we could filter it or visualize it, depending on what we need.

## Visualization
Now with access to the data we can use the multiple [metrics and dimensions available](https://ga-dev-tools.appspot.com/dimensions-metrics-explorer/). For this case we are going to exemplify visualizing the city from where they visit this website in the last 90 days, which is related to the information in the paragraph of the main page, the preface, of this website (however, for that other calculation it is performed for another period of time).


``` r
# Last 90 days to date
from_date <- seq(now(), length = 2, by = "-90 days")[2] |> as_date() |> as.character()
to_date <- now() |> as_date() |> as.character()

# We add the city as a dimension
history <- ga_data(property_id,
                 date_range = c(from_date, to_date),
                 metrics = "activeUsers",
                 dimensions = "city")
```

As we see, the dimension also allows a vector as input. We will create a **bar chart** with the top 5 cities that visited this website in the last 90 days.


``` r
history |> 
  filter(city != "(not set)") |>
  group_by(city) |> 
  summarise(total = sum(activeUsers)) |> 
  mutate(proportion = total / sum(total)) |> 
  top_n(5, wt = proportion) |> 
  mutate(city = reorder(city, proportion, sum)) |> 
  ggplot() +
  aes(proportion, city) +
  geom_col() +
  labs(
    x = "Proportion of visits",
    title = "Proportion of visits by city",
    y = ""
  )
```

Keep in mind that in this case there is an issue of recognition of IPs coming from Lima, Peru, and that is why they do not appear as the first visitor. At the time of performing this analysis they all appeared as "(not set)". However, if the same analysis is done by country and not by city, Peru is recognized and appears as one of the top visiting the web.

## Conclusion

Accessing Google Analytics data programmatically opens powerful possibilities:

-   **Automated Reporting**: Schedule R scripts to generate weekly/monthly reports.
-   **Custom Metrics**: Combine GA data with internal business data for richer analysis.
-   **Interactive Dashboards**: Use Shiny to create real-time analytics dashboards.

With the `googleAnalyticsR` package, you can query any metric or dimension available in your GA account, transforming raw clickstream data into actionable business insights—all without leaving your R environment.

<!--chapter:end:07-real-cases/google-analytics-case.Rmd-->


# Appendix A: Responsible AI Checklist {#ethics-checklist}

As we conclude this book, it is crucial to remember that technical skills are only half of the equation. Data science has real-world consequences. Before deploying any model, analysis, or reliable pipeline to production, use this checklist to ensure your work is robust, fair, and transparent.

This checklist is designed to be actionable for R users, pointing to specific packages and practices where applicable.

## Data Quality & Lineage

* "Garbage in, garbage out" applies to ethics as well as accuracy.*

- [ ] **Provenance:** Do I know exactly where this data came from? Is the source trustworthy?
- [ ] **Consent & Privacy:** Was the data collected with consent? Does it contain Personally Identifiable Information (PII)?
    - *Tip:* Use packages like `introdat` or custom scripts to scan for patterns resembling PII (emails, SSNs) before data leaves your secure environment.
- [ ] **Representation:** Does the training data match the real-world population it will be applied to?
    - *Action:* Check distribution of key demographics in your train vs. production sets.
- [ ] **Validation:** Have I validated the data schema and constraints?
    - *Tool:* Use the **`pointblank`** or **`validator`** packages to define and enforce data quality rules (e.g., `col_vals_between(age, 0, 120)`).

## Fairness & Bias

*Algorithms can reinforce existing inequalities.*

- [ ] **Protected Classes:** Have I checked performance across different groups (Gender, Age, Ethnicity)?
- [ ] **Bias Detection:** Have I quantified the bias in my model?
    - *Tool:* Use **`fairness`**, **`fairmodels`**, or **`dalex`** to calculate metrics like Disparate Impact or Equal Opportunity difference.
    - *Example Code:* `fairness_check(explainer, protected = data$gender, privileged = "Male")`
- [ ] **Proxy Variables:** Are there variables (like Zip Code) acting as proxies for protected classes?
- [ ] **Impact:** Who could be harmed if this model makes a mistake? (e.g., Denying a loan vs. Recommending a bad movie).

## Transparency & Explainability

*Black boxes should not make high-stakes decisions.*

- [ ] **Documentation:** Is the model card created? (Inputs, Outputs, Limitations, Intended Use).
- [ ] **Explainability:** Can I explain to a non-technical stakeholder *why* the model made a specific prediction?
    - *Tool:* Use **`dalex`**, **`lime`**, or **`iml`** to create feature contribution plots or breakdown plots.
- [ ] **Feedback Loop:** Is there a mechanism for users to report errors or contest decisions?

## Reproducibility & Integrity

*Science must be reproducible.*

- [ ] **Environment Sealing:** Is the R environment reproducible?
    - *Tool:* Use **`renv`** to capture package versions in a `renv.lock` file.
- [ ] **Randomness Control:** Are random seeds set (`set.seed()`) for key steps like splitting data or initializing weights?
- [ ] **Code Versioning:** Is the code committed to version control (Git) with clear messages?

## GenAI Specifics

*If using Large Language Models (LLMs).*

- [ ] **Fact-Checking:** Have I verified AI-generated code/facts against reliable sources? Hallucinations are common.
- [ ] **Security:** Have I ensured no sensitive data is being sent to public APIs?
- [ ] **Attribution:** Am I transparent about which parts of the work were AI-generated?

> "With great power comes great responsibility." — *Stan Lee (and every Data Scientist)*

<!--chapter:end:09-appendix/ethics_checklist.Rmd-->


# Appendix B: Object Oriented Programming with R6 {#r6-intro}

In R, Object-Oriented Programming (OOP) can be implemented in several ways. Traditionally, R has used systems called S3 and S4 for OOP.

**S3** is an informal and flexible system. It is based on the idea of generic functions, which can have different methods depending on the class of the object they apply to. For example, the `print()` function is a generic function having different methods for printing different types of objects, such as vectors, lists, or data frames.


``` r
# Example of generic function in S3
print(c(1, 2, 3))  # Prints a numeric vector
#> [1] 1 2 3
print(list(a = 1, b = 2))  # Prints a list
#> $a
#> [1] 1
#> 
#> $b
#> [1] 2
```

**S4** is a more formal and structured system than S3. It defines classes and methods more explicitly, using special syntax. S4 is often used in packages requiring a more rigorous object structure, like Bioconductor.


``` r
# Example of class definition in S4
setClass("Person", slots = c(name = "character", age = "numeric"))

# Example of object creation in S4
my_person <- new("Person", name = "John", age = 30)

my_person
#> An object of class "Person"
#> Slot "name":
#> [1] "John"
#> 
#> Slot "age":
#> [1] 30
```

However, both S3 and S4 can be somewhat confusing and limited, especially for more complex projects. Luckily, there is a more modern and robust alternative: the R6 package. This package offers a more intuitive and efficient way to implement OOP in R, with features facilitating code organization, reuse, and maintenance. If you are new to OOP, don't worry about S3 and S4 details for now. With R6, you can learn basic OOP concepts more easily and apply them to your data analysis projects.

## The R6 package: Classes, methods, encapsulation, and inheritance

The R6 package implements a class and object system similar to other object-oriented programming languages like Python or Java. It provides a robust and efficient way to create objects with attributes and methods, allowing encapsulation and inheritance.


``` r
install.packages("R6")
```


``` r
library(R6)
```

**Classes:**

A class is like a blueprint or template for creating objects. It defines the attributes (data) and methods (functions) that objects of that class will have. In R6, classes are created with the `R6Class()` function.


``` r

# Define a "Person" class
Person <- R6Class("Person",
  public = list(
    name = NULL,
    age = NULL,
    
    # Constructor
    initialize = function(name, age) {
      self$name <- name
      self$age <- age
    },
    
    # Method to greet
    greet = function() {
      cat("Hello, my name is", self$name, "and I am", self$age, "years old.\n")
    }
  )
)

```

In this example, a `Person` class is defined with `name` and `age` attributes, and `greet()` method. The `public` list defines public members of the class, i.e., attributes and methods accessible from outside the object.

**Objects:**

An object is an instance of a class. It is a concrete entity having attributes and methods defined by the class. In R6, objects are created with the `$new()` method.


``` r
# Create an object of class "Person"
juan <- Person$new(name = "Juan", age = 30)

juan
#> <Person>
#>   Public:
#>     age: 30
#>     clone: function (deep = FALSE) 
#>     greet: function () 
#>     initialize: function (name, age) 
#>     name: Juan
```

**Methods:**

Methods are functions operating on an object's attributes. They allow accessing and modifying object data, as well as performing other actions. In R6, methods are defined within the `public` list of the class.


``` r
# Call greet() method of object "juan"
juan$greet()
#> Hello, my name is Juan and I am 30 years old.
```

**Encapsulation:**

Encapsulation is a mechanism allowing hiding internal details of an object and controlling access to its attributes. This protects object data and facilitates usage. In R6, encapsulation is achieved by distinguishing between public and private members.

Public members are defined in `public` list and can be accessed from outside the object. Private members are defined in `private` list and can only be accessed from within the object, through methods.


``` r
# Define a "BankAccount" class with encapsulation
BankAccount <- R6Class("BankAccount",
  public = list(
    holder = NULL,
    
    # Constructor
    initialize = function(holder) {
      self$holder <- holder
      private$balance <- 0
    },
    
    # Method to deposit money
    deposit = function(amount) {
      private$balance <- private$balance + amount
    },
    
    # Method to withdraw money
    withdraw = function(amount) {
      if (amount <= private$balance) {
        private$balance <- private$balance - amount
      } else {
        stop("Insufficient funds.")
      }
    },
    
    # Method to check balance
    check_balance = function() {
      return(private$balance)
    }
  ),
  private = list(
    balance = NULL
  )
)
```

**Inheritance:**

Inheritance is a mechanism allowing creating new classes from existing classes, inheriting their attributes and methods. This facilitates code reuse and creation of class hierarchies. In R6, inheritance is specified with `inherit` argument of `R6Class()` function.


``` r
# Define a "Student" class inheriting from "Person"
Student <- R6Class("Student",
  inherit = Person,
  public = list(
    major = NULL,
    
    # Constructor
    initialize = function(name, age, major) {
      super$initialize(name, age)
      self$major <- major
    },
    
    # Method to show student info
    show_info = function() {
      super$greet()
      cat("Major:", self$major, "\n")
    }
  )
)

# Create an object of class "Student"
maria <- Student$new(name = "Maria", age = 20, major = "Engineering")

# Call method show_info()
maria$show_info()
#> Hello, my name is Maria and I am 20 years old.
#> Major: Engineering
```

In this example, `Student` class inherits from `Person` class. `Student` constructor calls parent class constructor (`super$initialize()`) to initialize inherited attributes. `show_info()` method calls parent class `greet()` method (`super$greet()`) and then shows student-specific information.

With R6, you can create classes and objects with a high degree of flexibility and control, allowing you to apply OOP effectively in your data analysis projects.

## Exercises

125. Create a class called `Pet` with attributes `name`, `species` and `age`, and methods `introduce()` (showing name, species and age of pet) and `have_birthday()` (incrementing pet age by 1).



<details>
  <summary type="button">Solution</summary>

``` r
library(R6)

Pet <- R6Class("Pet",
  public = list(
    name = NULL,
    species = NULL,
    age = NULL,
    
    initialize = function(name, species, age) {
      self$name <- name
      self$species <- species
      self$age <- age
    },
    
    introduce = function() {
      cat("Hello, I am", self$name, ", a", self$species, "of", self$age, "years old.\n")
    },
    
    have_birthday = function() {
      self$age <- self$age + 1
    }
  )
)
```
</details>

126. Create a class called `Dog` inheriting from `Pet` class (from previous exercises). `Dog` class should have an additional attribute called `breed` and a method called `bark()`.



<details>
  <summary type="button">Solution</summary>

``` r
Dog <- R6Class("Dog",
  inherit = Pet,
  public = list(
    breed = NULL,
    
    initialize = function(name, age, breed) {
      super$initialize(name, "dog", age)
      self$breed <- breed
    },
    
    bark = function() {
      cat("Woof! Woof!\n")
    }
  )
)
```
</details>

<!--chapter:end:09-appendix/R6_intro.Rmd-->

---
output: html_document
editor_options: 
  chunk_output_type: console
---

# References{-}


<!--chapter:end:references.Rmd-->

