#Generated random numbers in specific ranges and created a csv file
#then created a test data
#then created a training data
#plotted the two data
#analyzed the difference






sales<- read.csv("Sales.csv")
head(sales)
summary(sales)
plot(sales)
#Splitting the data into training and test data

set.seed(2)
install.packages("caTools")
library(caTools)
split<- sample.split(sales,SplitRatio=0.7)
split
train<- subset(sales, split="TRUE")
train
test<-subset(sales, split="FLASE")
test
#create a model
Model<-lm(Revenue~.,data=train)
Model
summary(Model)
#Prediction
pred<- predict(Model,test)
pred
#Comparing Predicted Vs Actual Values
plot(test$Revenue, type="l", lty=1.8, col="blue")
lines(pred, type="l",col="red")
#Accuracy
rmse<-sqrt(mean(pred-sales$Revenue)^2)
rmse


#Since the graphs are very different in amplitude and there is a huge difference
#the genralization is not similar
#we conclude that the test data chosen is not apt. 
