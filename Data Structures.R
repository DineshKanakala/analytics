#Data Structures in R

#vectors----
v1=10
v1
print(v1)
v2=1:100
v2
(v3=c(1,6,4,10)) #create and print
v4=seq(1,100,5)
v4
v5=c('A','Dhiraj','Lamdike','Dn43')
v5
class(v5)
v6=1:100000
v6
(v7=rnorm(100,mean=60,sd=10))
mean(v7)
sd(v7)
v7
v7[1:10]
v7[seq(1,100,2)]
v7[seq(1,100,5)]
v7[v7>50]
v7[v7<70 | v7>50]
mean(v7)
quantile(v7)
hist(v7,breaks = 10)
summary(v7)
quantile(v7,seq(0.1, .1))
quantile(v7,seq(0.1, .01))
sort(v7,decreasing = TRUE)
hist(v7)

plot(v7)
#matrix----
(data=24:1)
v12=c(1.3,'A')
V12 + 1
v13=1:30
v13 ^ 2
v13 / sum(v13)
data
m1 = matrix(data)
m1
m2=matrix(data,nrow = 4)
m2
m3=matrix(data,nrow = 4,byrow = T)
m3
m2[1,]
m2[,1]
m2[,c(1,3)]
m2
m2[c(2,4),c(2,4,5)]
rowSums(m2)
colSums(m2)
m2

?matrix
#Table----
mtcars
table(mtcars$cyl)
table(mtcars$gear)
t1 = table(mtcars$cyl,mtcars$gear, dnn=c('cyl','gear'))
t1
addmargins(t1)
addmargins(t1)
margin.table(t1)
margin.table(t1, margin = 1)
margin.table(t1, margin = 2)
addmargins(t1)
addmargins(t1, FUN = mean)
addmargins(t1, FUN = list(list(mean,sum,sd,var),list(mean,sum)))
m2
sweep(m2,MARGIN = 1, STATS = c(1,2,3,4), FUN = '*')
sweep(m2,MARGIN = 2, STATS = c(1,2,3,4,5,6),FUN = '*')
m2

#dataframe----
mtcars
data()
AirPassengers
class(mtcars)
class(AirPassengers)
head(AirPassengers,n=3)
dim(mtcars)
nrow(mtcars)
ncol(mtcars)
rownames(mtcars)
colnames(mtcars)
names(mtcars)
summary(mtcars)
mtcars[mtcars$gear == 4 & mtcars$mpg > 25, c('mpg','gear','cyl')]
mtcars
head(mtcars[order(mtcars$mpg),],n=20)
mtcars
mtcars[c(1,3,4),c(1,3)]

# export to csv----
mtcars
write.csv(mtcars,'Kanakala.csv')
df1=read.csv('Kanakala.csv')
df1
names(df1)
length(names(df1))
write.csv(mtcars,'kanakala1.csv',row.names = F)
df2=read.csv('kanakala1.csv')
head(df2)
(carnames = paste('car',1:32,sep=':'))
df2$cars = carnames
head(df2)

# dataframe----
#rollno, name, gender, marks, grade
(rollno = 1:30)
(name = paste('student',1:30))
rep('M',3)
rep(c('M','F'),c(4,3))
(gender=sample(c('M','F'),size = 30, replace = T))
set.seed(123)
(gender=sample(c('M','F'),size = 30, replace = T, prob = c(.6,.4)))
table(gender)
prop.table(table(gender))
(marks=runif(30,min=50,max=100))
x = c(-14.45,-14.67,14.45,14.67)
x
trunc(x)
round(x)
floor(x)
ceiling(x)
(grades=sample(c('A','B','C'),size = 30, replace = T, prob = c (0.3,0.45,0.25)))
table(grades)

rollno ; name ; gender ; marks ; grades
students = data.frame(rollno,name,gender,marks,grades)
head(students)
str(students)
summary(students)
students$name=as.character(students$name)
str(students)
summary(students)
(students$grades=factor(students$grades,ordered = T))
(students$grades=factor(students$grades,ordered = T, levels = c('C','B','A')))
table(students$grades)
barplot(table(students$grades), col = 1 : 3)
hist(students$marks)
range(students$marks)
hist(students$marks, breaks = c(0,70,90,100))
students[students$gender=='M' & students$marks > 70, ]
library(dplyr)

students %>% filter(gender == 'M' & marks > 70) %>% arrange(marks)
%>

#Deployer