
#load library dplyr
library(dplyr)
#select dataset iris
data("iris")
#view dataset iris
View(iris)

#Exercise 1
select(iris,1:3)
iris %>% select(Sepal.Length:Petal.Length)
iris

#exercise 2
#colums except petal width
iris %>% select(-Petal.Width)

#exercise 3
iris %>% select(starts_with("p"))

#exercise 4
iris %>% filter(Sepal.Length>=4.5 & Petal.Width>=0.5)

#exercise 5
iris %>% select(1:3) %>% arrange(Sepal.Length, desc(Sepal.Width))

#exercise 6
iris %>% mutate(proportion=Sepal.Length/Sepal.Width)

#exercise 7
iris %>% summarise(avg_sepallength=mean(Sepal.Length))

#exercise 8
iris %>% group_by(Sepal.Length) %>% summarise(total = n())

#babynames
#exercise 9
bdata <- data.frame(babynames)
View(bdata)

#to see the start of the list
head(bdata)

#to see the end of the list
tail(bdata)

#change column names
names(bdata)<-c("Year","Sex","Name","Count","Propotion")
View(bdata)

#sortthing
sorted_babydata<-bdata %>% group_by(Name,Sex) %>% summarise(Total=sum(Count)) %>% arrange(desc(Total))
#to show first 6 row
head(sorted_babydata)
#to view first 20 row
top20<-sorted_babydata[1:20,]
top20

#visualize
library(ggplot2)
ggplot(top20,aes(x=Name,y=Total/1000000,fill=Sex)) +
  geom_bar(stat="identity") + coord_flip() +
  labs(x="Name \n", y="Count(Millions) \n", title="Top20 BabyNames \n") +
  theme_bw()

#sortFemale
sorted_babydata<-bdata %>% group_by(Name,Sex="F") %>% summarise(Total=sum(Count)) %>% arrange(desc(Total))
#to show first 6 row
head(sorted_babydata)
#to view first 20 row
top20Female<-sorted_babydata[1:20,]
top20Female

#visualize
library(ggplot2)
ggplot(top20Female,aes(x=Name,y=Total/1000000,fill=Sex)) +
  geom_bar(stat="identity",fill="Red") + coord_flip() +
  labs(x="Name \n", y="Count(Millions) \n", title="Top20 Female BabyNames \n") +
  theme_bw()

#sortmale
sorted_babydata<-bdata %>% group_by(Name,Sex="M") %>% summarise(Total=sum(Count)) %>% arrange(desc(Total))
#to show first 6 row
head(sorted_babydata)
#to view first 20 row
top20male<-sorted_babydata[1:20,]
top20male

#visualize
library(ggplot2)
ggplot(top20male,aes(x=Name,y=Total/1000000,fill=Sex)) +
  geom_bar(stat="identity",fill="BLACK") + coord_flip() +
  labs(x="Name \n", y="Count(Millions) \n", title="Top20 Male BabyNames \n") +
  theme_bw()

