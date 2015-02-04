
film["Budget_Category"]<-NA

if(film$Budget< 100) {
  film$Budget_Category =="low-budget"
} else if (film$Budget < 150) {
  film$Budget_Category =="medium-budget"
}
  else {
  film$Budget_Category =="high-budget"
}
