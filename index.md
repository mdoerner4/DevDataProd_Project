---
title       : Shiny Application Project
subtitle    : Women Weight Prediction
author      : Mike Doerner
job         : Coursera  - Developing Data Products
framework   : io2012        # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : tomorrow      # 
widgets     : []            # {mathjax, quiz, bootstrap}
mode        : selfcontained # {standalone, draft}
knit        : slidify::knit2slides
---

## Women Weight Prediction

* Predicts weight (lbs) for a given height (in)
* Data from R dataset 'women' 
* (https://stat.ethz.ch/R-manual/R-devel/library/datasets/html/women.html)
* Provides average weights of women from 58 to 72 inches tall

```r
data(women)
head(women)
```

```
##   height weight
## 1     58    115
## 2     59    117
## 3     60    120
## 4     61    123
## 5     62    126
## 6     63    129
```

--- .class #id 

## Function

* Input 'height' from 58 to 72 inches
* Prediction of average 'weight' in lbs from women dataset

```r
womenweight <- function(height){
  wrow <- which(women[,1] == height)
  weight <- women[wrow,2]
  weight
}
```

---

## Function Example
* Input height of 60 inches

```r
height <- 60
```


* App predicts weight in lbs

```r
womenweight(height)
```

```
## [1] 120
```

---

## Women Weight Prediction

* To predict the weight of women for a given height, follow the link to the Shiny App
* https://mdoerner4.shinyapps.io/Project/
* Thanks!

