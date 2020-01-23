#Problem 1
forestfires.df<- read.csv("forestfires.csv")

#Task-a
par(mfrow=c(2,2))
plot(forestfires.df$area~forestfires.df$temp, xlab="Area", ylab="Temp")
plot(forestfires.df$area~forestfires.df$month, xlab="Area", ylab="Month")
plot(forestfires.df$area~forestfires.df$DC, xlab="Area", ylab="DC")
plot(forestfires.df$area~forestfires.df$RH, xlab="Area", ylab="RH")

#Task b
hist(forestfires.df$wind,main="Histogram for Wind", xlab="Wind")
mean(forestfires.df$wind)
median(forestfires.df$wind)
min(forestfires.df$wind)
max(forestfires.df$wind)
range(forestfires.df$wind)
quantile(forestfires.df$wind)

#task c $d
hist(forestfires.df$wind,main="Histogram for Wind", xlab="Wind", border="black", prob="TRUE")
lines(density(forestfires.df$wind), lwd=2, col="Red")

#task e





#task f
par(mfrow=c(2,2))
plot(forestfires.df$temp, xlab="x", ylab="Temp", main="Scatterplot of Temp")
plot(forestfires.df$RH, xlab="x", ylab="RH", main="Scatterplot of RH")
plot(forestfires.df$DC, xlab="x", ylab="DC", main="Scatterplot of DC")
plot(forestfires.df$DMC, xlab="x", ylab="DMC", main="Scatterplot of DMC")
pairs(~forestfires.df$temp,forestfires.df$RH, forestfires.df$DC, forestfires.df$DMC)

#task g
?boxplot

boxplot(housing.df$wing ~ housing.df$ISI~housing.df$wing, xlab = "xlab", ylab = "NOX")
boxplot(forestfires.df$wind,
        main = "Wind",
        xlab = "X",
        ylab = "WInd",
        col = "orange",
        border = "brown",
        horizontal = TRUE,
        notch = TRUE
)
boxplot(forestfires.df$ISI,
        main = "ISI",
        xlab = "X",
        ylab = "WInd",
        col = "orange",
        border = "brown",
        horizontal = TRUE,
        notch = TRUE
)

boxplot(forestfires.df$DC,
        main = "DC",
        xlab = "X",
        ylab = "WInd",
        col = "orange",
        border = "brown",
        horizontal = TRUE,
        notch = TRUE
)


#task h
par(mfrow=c(1,2))
hist(forestfires.df$DMC, xlab="X", ylab="DMC", Main="Histogram of DMC")
hist(log(forestfires.df$DMC), xlab="log(DMC)", ylab="DMC", main=" Histogram of log(DMC)")


#########################################################################################################################

#Problem2
twitter.df<- read.csv("M01_quasi_twitter.csv")

#task a

plot(twitter.df$screen_name,twitter.df$friends_count, xlab="Screen Name", ylab="Friend Count")

#taskb

mean(twitter.df$friends_count)
median(twitter.df$friends_count)
min(twitter.df$friends_count)
max(twitter.df$friends_count)
quantile(twitter.df$friends_count)

#task c



#task d
install.packages("scatterplot3d")
library("scatterplot3d")

scatterplot3d(twitter.df$created_at_year, twitter.df$education, twitter.df$age, color="#999999")

#task e 

values<-c(650,1000,900,300,14900)
labels<-c("UK","Canada","India","Australia","US")
pct<- round(values/sum(values)*100)
labels<-paste(labels,pct)
labels<-paste(labels,"%", sep="")
pie(values,labels=labels, main="Pie Chart")

library(plotrix)
install.packages("plotrix")
library("plotrix")
values<-c(650,1000,900,300,14900)
labels<-c("UK","Canada","India","Australia","US")
pie3D(values, labels=labels, explode=0.1, main="3D Pie Chart")


#task f

d<-density(twitter.df$created_at_year)
plot(d, main="Kernel Density of Created_By_Year")
polygon(d,col="#999999", border="black")


#Problem 3
data.df<- read.csv("raw_data.csv")

#task a



