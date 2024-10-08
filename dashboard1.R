---
title: "My Report"
output: 
  flexdashboard::flex_dashboard:
    orientation: columns
    vertical_layout: fill
---

```{r setup, include=FALSE}
library(flexdashboard)
df<-data.frame(rollno=c(1:5),name=c('a','b','c','d','e'),marks=c(78,45,23,44,35))
View(df)
library(sqldf)
s1<-sqldf('select * from df order by marks')
View(s1)
Column {data-width=650}
```
-----------------------------------------------------------------------

### Chart A

```{r}
library(graphics)
barplot(s1$marks,names.arg=s1$name,xlab='Students',ylab='Marks',main='Student progress',color='brown')
```

Column {data-width=350}
-----------------------------------------------------------------------

### Chart B

```{r}

```

### Chart C

```{r}

```

