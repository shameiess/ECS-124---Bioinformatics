install.packages('cluster')
library(cluster)

mydata = read.table("Deluc_Grapes_DataSet1.txt", sep = "\t", header = FALSE)
mydata <-na.omit(mydata)
day21 = clara(as.numeric(mydata$V2), 5)

day42 = clara(mydata$V3,5)
day42$clusinfo
plot(day42)
day42 = clara(mydata$V3,10)
day42$clusinfo
plot(day42)
day42 = clara(mydata$V3,20)
day42$clusinfo
plot(day42)


day49 = clara(mydata$V4,5)
day49$clusinfo
plot(day49)
day49 = clara(mydata$V4,10)
day49$clusinfo
plot(day49)
day49 = clara(mydata$V4,20)
day49$clusinfo
plot(day49)

day56 = clara(mydata$V5,5)
day56$clusinfo
plot(day56)
day56 = clara(mydata$V5,10)
day56$clusinfo
plot(day56)
day56 = clara(mydata$V5,20)
day56$clusinfo
plot(day56)

day63 = clara(mydata$V6,5)
day63$clusinfo
plot(day63)
day63 = clara(mydata$V6,10)
day63$clusinfo
plot(day63)
day63 = clara(mydata$V6,20)
day63$clusinfo
plot(day63)

day84 = clara(mydata$V7,5)
day84$clusinfo
plot(day84)
day84 = clara(mydata$V7,10)
day84$clusinfo
plot(day84)
day84 = clara(mydata$V7,20)
day84$clusinfo
plot(day84)

day112 = clara(mydata$V8,5)
day112$clusinfo
plot(day112)
day112 = clara(mydata$V8,10)
day112$clusinfo
plot(day112)
day112 = clara(mydata$V8,20)
day112$clusinfo
plot(day112)

