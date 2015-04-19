# This is a ............... 2nd day 3rd session
#


#install dplyr package and dependencies
install.packages("dplyr", dependencies = TRUE)

#run library ecery time you use R
library("dplyr")



# read in the data as tab-delimited
gap.in <- read.table("output/combined_gapMinder.tsv", sep= "\t", header=TRUE)

for (row.number in 1:10) {
  for (col.number in 1:5){
    print(gap.in[row.number,col.number])
  }
}
 gap.in[1:10,1:5]                     
add.me <- function(x,y){
  (x+y)*8
}


gap.in %>%
  filter(country == "China") %>%
  select(country,year,pop) %>%
  group_by(country) %>%
  summarize(min = min(pop))


# Challenge
gap.in %>%
  filter (year < 1990) %>%
  group_by(continent, year) %>%
  
  select (continent,year,pop) %>%
  
  summarize(mean = mean(pop))

attach(iris)


# install.packages("tidyr", dependencies = TRUE)

#making library

library("tidyr")
# turn iris dataset from wide into long format
iris.long <- gather(iris, "Measurement", "Value", 1:4)
view(iris.long)

