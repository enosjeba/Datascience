
#readtable
df<-read.table("Table0.txt")
#adding column names
names(df)<-c("Name","Age","Height","Weight","Sex")
#View Data Frame
df
#View Name data only
df$Name
#View Height data only
df$Height
#View Age data only
df$Age
#View Weight Data Only
df$Weight
#View Sex data only
df$Sex
#Assigning Row names
row.names(df)<-df$Name
#View Dataframe
df
#Delete Column
df[,-1]

#Read table
df1<-read.table("Table1.txt", row.names="Name",header = TRUE, stringsAsFactors = FALSE)
#View columns and rows of the table
dim(df1)

#Read Table Skipping line 1
df2=read.table("Table2.txt",row.names = "Name", header = TRUE, stringsAsFactors = FALSE, skip = 1)
#View Dataframe
df2

#read Table and fix not available values
df3<-read.table("Table3.txt",row.names = "Name",header = TRUE, stringsAsFactors = FALSE, skip = 1,na.strings = c("*","**","--"))
#read
df3

#Read Csv and change row name
df4<-read.csv("states1.csv",header = TRUE,row.names = 1)
#View DataFrame
df4
#readr
library("readr")
read_csv("states1.csv")

#used for multiple object
#use of Dump() and Source()
v=c("Weather","100")
d<-data.frame(a=c(10),b<-v)
View(d)
#dumping the file
dump(c("v","d"),file="datadump.R")
#remove the variable
rm(v)
rm(d)
#retrieve from source
source("datadump.R")

#used for one single object
#use of Dget and Dput
student<-data.frame("Rollno","Name","Total")
dput(student,file="dputdata.R")
rm(student)
new_df=dget("dputdata.R")
new_df

#file connection
con<-file("Employee.txt")
open(con,"r")
data1<-read.csv(con)
data1
close(con)

#connect using url
con = url("http://www.stats.ox.ac.uk/pub/datasets/csb/ch11b.dat")
a=readLines(con,25)
a

#reading gz file
con<-gzfile("Sample1.gz")
#open connection
open(con,"r")
#to read 10 line
readLines(con,10)

          

