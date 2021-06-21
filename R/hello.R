#Import the data from your system from directory
setwd("D:/")
`GRIPdsda#1`<- read.csv("GRIPdsda#1.csv")
print(`GRIPdsda#1`) #This command will show your data in Console.

#Data Exploration
head(`GRIPdsda#1`) #This will give you the initital entries of data
tail(`GRIPdsda#1`) #This will give you last entries of data
summary(`GRIPdsda#1`)
cor(`GRIPdsda#1`)
#This shows higher correlation between hours and scores

#Data Visualization
attach(`GRIPdsda#1`)
regression<- lm(Scores ~ ï..Hours)
summary(regression)
plot(ï..Hours,Scores, main= "Hours vs Scores", xlab="Hours", ylab="Scores" )
abline(regression, col= "red")
lm(`GRIPdsda#1`)

#Prediction
predictscore<-data.frame(ï..Hours=9.25)
predict(regression,predictscore)
#This shows the predicted score of a student who studies 9.25 hour/day is 92.90)
