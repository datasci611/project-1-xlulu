library(tidyverse)

## USArrests
ggplot(data = USArrests, mapping = aes(x=Murder, y=Assault)) + 
  geom_point() +
  xlab('Murder Rate') +
  ylab('Assault Rate') 

murder_low = filter(USArrests, Murder < 4.0)
murder_low$Murder


## PlantGrowth
data("PlantGrowth")
summary(PlantGrowth)
tp2 = as.tibble(PlantGrowth)
tp2$names = names(PlantGrowth)

ggplot(data = tp2, mapping = aes(x=group, y=weight)) + 
  geom_boxplot()

ctr1_low = filter(PlantGrowth, weight < 4.00)
ctr1_low


## ToothGrowth
data("ToothGrowth")
tp3 = as.tibble(ToothGrowth)
tp3$names = names(ToothGrowth)

ggplot(data = tp3, mapping = aes(x=supp, y=len)) + 
  geom_boxplot()

len_low = filter(ToothGrowth, len < 5.00)
len_low


## iris
data("iris")
tp4 = as.tibble(iris)
tp4$names = names(iris)

ggplot(data = tp4) + 
  geom_point(mapping = aes(x=Sepal.Length, y=Sepal.Width, color=Species))

Sepal_low = filter(iris, Sepal.Length < 4.5)
Sepal_low