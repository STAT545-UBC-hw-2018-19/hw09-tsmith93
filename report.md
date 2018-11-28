---
title: "Rober De Niro film ratings"
author: "Thomas Smith"
date: "`r format(Sys.time(), '%d %B, %Y')`"
output: 
  html_document:
    keep_md: yes 
---

```{r load deniro_dat}
deniro_table <- read.delim("deniro.tsv")
```

Robert De Niro is a great actor. But how have his movies rated over time? To investigate this question, we will look at his Rotten Tomato scores over the years. 

Results were calculated based on data online summarizing the scores each one of his films and their year of release.

The film with the highest score (100) was received in 1987, and the lowest score (4) was in 2003.

Here is a figure showing how his film scores have wavered over time:

![*Fig. 1* A scatter plot of Robert De Niro's film ratings](deniro.png)
