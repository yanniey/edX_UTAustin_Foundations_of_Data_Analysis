
<<<<<<< HEAD
library(SDSFoundations)
film<-FilmData

# Q1
table(film$Studio)

# Q2 
sony<-film[film$Studio=="Sony",]
mean(sony$Days)

fox<-film[film$Studio=="Fox",]
mean(fox$Days)


# Visualize the group means and variability
boxplot(film$Budget~film$Rating, main= "Film Budgets by Rating",
        ylab= "Budget", xlab= "MPAA Rating")

# Run ANOVA
modelbud <- aov(film$Budget~film$Rating)
summary(modelbud)

# Run post-hoc test if F statistic is significant
TukeyHSD(modelbud)

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
=======
film["Budget_Category"]<-NA

if(film$Budget< 100) {
  film$Budget_Category =="low-budget"
} else if (film$Budget < 150) {
  film$Budget_Category =="medium-budget"
}
  else {
  film$Budget_Category =="high-budget"
}
>>>>>>> ef88968556b1a9adb4c5fe0dcbb1098b98872901
