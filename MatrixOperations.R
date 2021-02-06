#ex1
x=read.csv("mtcars.csv")
head(x)
m=x[,2]

#create subset vector greater than 15.0
xt1=subset(m,m>15.0)
xt1

#equal to 21 miles per gallon
m2=x[,2]
xt2=subset(x,x[,2]>=21)
xt2[,2]

#cyl less than 6
xt3=subset(x,cyl&gear == 4)
xt3

#row greater than equal to 
xt4<-subset(x,mpg>=21,select = mpg:hp)
head(xt4)

#ex5 
airdata<-read.csv("airquality.csv")
# OR operator used
xt5<-subset(airdata,Ozone>28|Temp>70)
head(xt5,5)

#ex6 
#and logical operator
xt6<-subset(airdata,Ozone>28&Temp>70,select=c("Ozone","Temp"))
head(xt6,5)

#ex7
#not operator
xt7=subset(airdata,Ozone != is.na(Ozone))
head(xt7)

#ex8
xt8<-subset(airdata,Ozone>100,select=c("Ozone","Temp","Month","Day"))
xt8

#lIST
Roll_no=c(601,602,603,604,605)
Name=c("Andrews","Alex","Amy","Bob","Chris")
Marks=c(450,399,304,489,255)
#create list with vectors
listdata<-list("Roll_no"=Roll_no,"Name"=Name,"Marks"=Marks)
listdata
#1 only names
listdata[2]

#2 GET THIRD VALUE IN MARKS
listdata[[3]][3]

#3 Using $ operator
listdata$Roll_no

#4 display only roll no and marks
listdata[c(1,3)]

#matrix
#creating matrix
matrixdata<-matrix(c(1:15),nrow=3, ncol=5, byrow=TRUE)
matrixdata

#subset all elemets of second row
matrixdata[2,]

#4th element of 3rd row
matrixdata[3,4]

#all element of 5th column
matrixdata[,5]

#select first and third column
matrixdata[,c(1,3)]

#select first and third row
matrixdata[c(1,3),]

