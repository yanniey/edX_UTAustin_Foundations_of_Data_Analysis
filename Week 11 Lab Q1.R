
<<<<<<< HEAD
library(SDSFoundations)
film<-FilmData

# Q1a
library("dplyr", lib.loc="/Library/Frameworks/R.framework/Versions/3.1/Resources/library")
film$Budget_cat<-NA
film$Budget_cat <-ifelse(film$Budget<100,"low-budget",ifelse(film$Budget<150,"medium-budget","high-budget"))
low_budget<-filter(film, film$Budget<100)
medium_budget<-filter(film,film$Budget>=100,film$Budget<150)
high_budget<-filter(film,film$Budget>=150)


# Q1b
low_mean<-mean(low_budget$Pct.Dom)
medium_mean<-mean(medium_budget$Pct.Dom)
high_mean<-mean(high_budget$Pct.Dom)

low_mean
medium_mean
high_mean

# Q1c~f Run ANOVA
budget_pct <- aov(film$Pct.Dom~film$Budget_cat)
summary(budget_pct)

# Q1g 
TukeyHSD(budget_pct)


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
