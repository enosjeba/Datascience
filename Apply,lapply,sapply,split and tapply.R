#ex1
#built in "state.x77
x<-state.x77
x
#MIn value
apply(x,2,min)
#max value
apply(x,2,max)
#which_max
apply(x,2,which.max)
#summary
apply(x,2,summary)

#alternative
x<-matrix(rnorm(9),3,3)
x
#row sum
rowSums(x)
#column sum
colSums(x)
#row mean
rowMeans(x)
#column mean
colMeans(x)
#max position at each row
max.col(x)

#ex2
list1<-list(observationA<-c(1:5,7:3), observationB<-matrix(1:6, nrow = 2))
list1
#to find length
length(list1)
lapply(list1,length)
#sum up
sum(list1$observationA)
sum(list1$observationB)
lapply(list1,sum)
#find unique value
unique(list1)
lapply(list1, unique)
#quantile
quantile(list1$observationA)
lapply(list1,quantile)


#ex3
ex3<-function(x,threshold)
{
  if(is.na(x) || x<threshold){
    return(FALSE)
  }else{
    return(TRUE)
  }
}
data_air<-airquality
disp<-sapply(data_air$Ozone, ex3,threshold<-23)
disp
sum(disp)

#ex4
#split
splitdata=data.frame(state.x77)
View(splitdata)
a=split(splitdata,state.region)
a
#print 3 value
region=lapply(a,head,3)
region

#ex5
x<-state.x77
x
#convert to dataframe
df<-data.frame(state.x77)
df
#to find mean
tapply(state.x77[,"Frost"],INDEX = state.region, mean)
#to find standard deviation
tapply(state.x77[,"Frost"],INDEX = state.region, sd)
#split
a<-split(df,f<-state.region)
a
