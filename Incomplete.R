#missing values

v1 = c(1,2,3,5)
is.na(v1)

v2 = c(1, NA, 3, NA)
is.na(v2)

library(VIM)
library(reshape2)


(rollno = 1:30)
(sub1 = rnorm(30, mean=50,sd=10))
(sub2=runif(30, min = 50, max = 90))



v4 = c(1, 5, NA, 6, NA)
is.na(v4)
v4[is.na(v4)]
mean(v4, na.rm = T)
v4[is.na(v4)] = mean(v4,na.rm=T)
v4


v4 = c(1, 5, NA, 6, NA)
is.na(v4)
v4[is.na(v4)]
mean(v4, na.rm = T)
v4[is.na(v4)] = min(v4, na.rm = T)
v4

dim(sleep)



sleep

complete.cases(sleep)
sleep[complete.cases(sleep), ]
sum(complete.cases(sleep))
dim(sleep[complete.cases(sleep), ])
(sleep[!complete.cases(sleep), ])
(!complete.cases(sleep))
(complete.cases(sleep))
