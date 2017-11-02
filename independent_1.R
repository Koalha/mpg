### Modelling in Physical Geography
### Independent assignment 1
### Complete the script according to instructions
### and return on Wednesday

## Create a new directory called "indie_1" and change your working
## directory to it.


## Today we work with data on traffic accidents in Sweden. Check the
## help page of the dataset
help(Traffic)
?MASS::Traffic

## Turn off factor conversion
options(stringsASFactors = FALSE)

## Read in the data
traffic <- MASS::Traffic

## Check data types using str().
str(traffic)

## List the names and data types of all columns in the data frame in a
## comment below.


## Print a summary of the data frame with the summary()
## -function. What is the mean number of daily traffic accidents per
## day during this study? List your answer in a comment below
summary(traffic)


## Complete the commands below to create two boxplots in the same
## plotting frame. The one on the left should display the distribution
## of accident counts when speed limits were not enforced, while the
## one on the right should do the same for when speed limits were
## enforced. Give the plots informative titles and labels. Save the
## plot as pdf.
par(mfrow = c(1,2))
boxplot(traffic[traffic$limit == "no", "y"], ylim = c(0,50))
boxplot()


## Reset the plotting area
par(mfrow = c(1,1))

## The column y is a count of traffic accidents per day. Calculate the
## accident rate per hour and assign it to a new column called
## "accidents_per_hour"


## Remove the column "limit" from the data frame.

## Create a new function that takes a vector as an argument, samples
## one value from it and returns it

new_function <- function(x){
    return(sample(x, size=1))
}


## Apply this new function to all the columns of your data frame using
## lapply or sapply


## Create a for-loop that goes through all the rows of the data frame,
## and prints the sentence: "It is x, day y.", where x is the year in
## that row and y is the corresponding day. Use the cat() function to
## print the sentence.

for(i in 1:NROW(traffic)){
    sentence <- paste0("\n") # the \n in the end signals a newline.
    cat(sentence)
}
