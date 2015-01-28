# Create a table for 2012 & 2013 as "Recent"
acl$Year[acl$Year == 2012 | acl$Year == 2013] <- 1
acl$Year[acl$Year != 2012 & acl$Year != 2013 & acl$Year !=1] <- 0
names(acl)[2]<-"Recent"

# Create two-way table "Gender" & "Recent"
gender_recent <-table(acl$Gender, acl$Recent)
gender_recent

# Test to see if any is <5
chisq.test(gender_recent)$expected

chisq.test(gender_recent,correct=FALSE)
