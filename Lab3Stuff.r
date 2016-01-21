#practice utilizing R functions, learn to read in data
#create data and write files
#lab three

setwd("/Users/iguest/L2_R_Skills")

#using the function sample make a function that returns the sums 
#of rolling two dice x amount of times
sum_of_dice <- function(size) {
  first <- sample(6, size, replace = TRUE, prob = NULL)
  second <- sample(6, size, replace = TRUE, prob = NULL)
  total <- (first+second)
  return (total)
}

#practice plotting a vector 
#create a vector with 10 numbers
ten_numbers <- c(1,2,3,4,5,6,7,8,9,10)


#using plot, plot the vector
#read in the provided "yahooS.csv", it is a file of the stock price of yahoo at the 
#beginning of each month in 2015 plotting it will display the information from the 
#csv
plot_vector <- read.csv('/Users/iguest/L2_R_Skills/yahoos.csv')
plot(plot_vector)


# Call the diceroll function utilized earlier to simualte 10,000 rolls
# and plot it in a histogram
sum_of_dice(10000)

#explain the differences of a histogram and a plot to your neighbor

# write your dice roll results into a csv, append = true allows you to append to the file
# as you run, turning it to false will overwrite the file
#make a file of titled myRollsFifty where you append the file, 5 times with 
#each addition being 10,000 rolls, then write another file of just 10,000 files
#then will be overwritten with each run
#write.csv(students, file="data/students.csv")
write.csv(sum_of_dice(10000), file = "myRollsFifty.csv", append = TRUE)

#view your file
help("View")
test <- read.csv()
View(data/myRollsFifty.csv)
