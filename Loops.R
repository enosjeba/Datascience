#read
data1<-read.csv("mtcars.csv")
row.names(data1)=data1[,1]
View(data1)
data1=data1[,-1]
mean_data=vector("double",ncol(data1))
names(mean_data)=names(data1)
mean_data
for (i in names(data1) ){
  mean_data[i]=mean(data1[,i])
}
mean_data

#read
flight<-read.csv("flights.csv")
datatype<-vector("list", ncol(flight))
names(datatype)=names(flight)
datatype
for (i in names(flight) ){
  datatype[i]=class(flight[,i])
}
datatype

#read
library(datasets)
data("iris")
uniquevalue<-vector("list",ncol(iris))
names(uniquevalue)<-names(iris)
for (i in names(iris) ){
  uniquevalue[i]<-length(unique(iris[,1]))
}
uniquevalue

#random number mean
n=10
mv=c(-10,0,10,100)
normalv<-vector("list",length(mv))
for ( i in seq_along(mv)){
  normalv[[i]]=rnorm(n,mv[i])
}
normalv