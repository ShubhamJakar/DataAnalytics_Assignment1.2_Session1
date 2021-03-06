#Assignment1.2_Session 1

#1. What should be the output of the following Script?
#Answer 1
v <- c( 2,5.5,6)
t <- c(8, 3, 4)
print(v%/%t)

#2. You have 25 excel files with names as xx_1.xlsx, xx_2.xlsx,........xx_25.xlsx 
#   in a dir.
#   Write a program to extract the contents of each excel sheet and make it 
#   one df.

#Answer 2


df1 <- read.xlsx("xx_1.xlsx")
df2 <- read.xlsx("xx_2.xlsx")
d <- merge(x=df1,y=df2)

#use for loop for iteration
for (i in 3:25) {
  name=paste("xx_",i,sep="")
  name=paste(name,".xlsx",sep ="")
  df<- read.xlsx(name)
  d<- merge(x=d,y=df) 
}


#3. If the above 25 files were csv files, what would be your script to read?

#Answer 3

df1 <- read.csv("xx_1.csv")
df2 <- read.csv("xx_2.csv")
d <- merge(x=df1,y=df2)
d

#use for loop
for (i in 3:25) {
     name=paste("xx_",i,sep="")
     name=paste(name,".csv",sep ="")
   df<- read.csv(name)
    d<- merge(x=d,y=df) 
    }


