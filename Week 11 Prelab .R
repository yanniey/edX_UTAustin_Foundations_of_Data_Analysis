Here is the code you will use:

library(SDSFoundations)
film<-FilmData
# Show how many films are in each group
table(film$Studio)

#Question 1

sony <- subset(film,film$Studio =="Sony")
fox <-subset(film, film$Studio =="Fox")


mean(sony$Days)
mean(fox$Days)

days<-aov(Days ~ Studio, data=film)
summary(days)

TukeyHSD(days)
plot(TukeyHSD(days))


Question 2

# Calculate avg IMDB score of each group
dom<-aggregate(Gross.Dom~Studio,film,mean)
all<-aggregate(Gross~Studio,film,mean)
sd<-aggregate(Gross~Studio,film,sd)

percentage<-all
percentage[,2]<-dom[,2]/all[,2]

percentage

# Run ANOVA
q2 <- aov((film$Gross.Dom/film$Gross)~film$Studio)
summary(q2)

# Run post-hod text if F statistic is significant
TukeyHSD(q2)
