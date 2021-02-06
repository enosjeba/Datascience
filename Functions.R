#Ex 1
ex1<- function(df, v){
  if(nrow(df) == length(v)){
    return(cbind(df,v))
  }
  else{
    return(NULL)
  }
}
studid<-c(1:10)
name<-c("name01","name02","name03","name04","name05","name06","name07","name08","name09","name10")
df <- data.frame(studid,name)

v<-c(50:41)
ex1(df,v)

#ex2
Id<-c(1:10)
Age=c(14,12,15,10,23,21,41,56,78,12)
Sex=c('F','M','M','F','M','F','M','M','F','M')
Code<-letters[1:10]
df<-data.frame(Id, Age, Sex, Code)
ex2<-function(df,p2,p3){
  temporary_variable <- df[p2,"Code"]
  df[p2,"Code"]<-df[p3,"Code"]
  df[p3,"Code"]<-temporary_variable
  return(df)
}
df1<-ex2(df,3,8)
df1

#ex3
A=c(1:10)
B=seq(100,10,-10)
H=seq(-200,-50,along.with = B)
data1=data.frame(A,B,H)
data1
f3=function(df,x,y){
  for(i in seq_len(nrow(df))){
    df[i,4]=sum(x*df[1:i,1])+sum(y*df[1:i,2])
  }
  names(df)[4]=paste("Sum",x,y,sep = "_")
  df
}
f3(data1,2,3)
ex3(df2,2,3)

#ex4
EmpName<-c("Rohit","Vijay","Dhruvi","Amit","Mohit")
EmpGender<-c("M","M","F","M","M")
EmpAge<-c(25,24,25,27,27)
EmpDesig<-c("Manager","Clerk","Clerk","Manager","Clerk")
EmpDept<-c("Sales","Dispatch","Accounts","Store","Reception")
EmpSSN<-c(1001,1002,1003,1004,1005)
ex4<-function(name,gen,age,des,dep,ssn){
  empdata<-data.frame(name,gen,age,des,dep,ssn)
  return(empdata[,c(TRUE,FALSE,TRUE,TRUE,FALSE,FALSE)])
}
D4<-ex4(EmpName,EmpGender,EmpAge,EmpDesig,EmpDept,EmpSSN)
D4

#ex5
data3 = data.frame(nums=c(1:5,NA,6,7,NA,8,9,10))
data3
f5=function(df){
  for(j in seq_len(ncol(df))){
    if(is.numeric(df[,j])){
      df[,j]=ifelse(is.na(df[,j]),mean(df[,j],na.rm = T),df[,j])
    }
  }
  df
}

ex5(data3)
ex5