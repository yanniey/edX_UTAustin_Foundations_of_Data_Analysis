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
aggregate(IMDB~Rating,film,mean)

#Calculate sd of IMDB scores within each group
aggregate(IMDB~Rating,film,sd)

# Visualize the group means and variability
boxplot(film$IMDB~film$Rating, main= "IMDB Scores by Rating",
        ylab= "IMDB Score", xlab= "MPAA Rating")

# Run ANOVA
modelscore <- aov(film$IMDB~film$Rating)
summary(modelscore)

# Run post-hod text if F statistic is significant
TukeyHSD(modelscore)