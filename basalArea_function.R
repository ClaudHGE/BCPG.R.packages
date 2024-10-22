list.files()
setwd("BCPG")
tree <- read.csv( "TreeStructure.csv" )
diameters <- tree$DBH
BA <- pi*(diameters/2)^2

basalArea <- function(dbh) {
  ba = pi*(dbh/2)^2
  print(ba)
  return(ba)
}



tree$BA <- basalArea(tree$DBH)

head(tree)

plot(tree$DBH, tree$HT)
