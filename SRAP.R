# basics.R
# R version 3.3.3 (2017-03-06)
# Jan 19, 2017. Mallory B. Lai.
# Reviewed by: Rachel
# Introduction to the basics of R. 

#-----------------------------------------------------------------------
# libraries go here; we won't be using a library today. 
#-----------------------------------------------------------------------

### Initializing vectors, investigating data structures, subsetting,and 
# creating matrices and dataframes.

# Create a vector, 'name.' Note: characters must have quotation marks.
name <- c("Lucy", "Thea", "June", "Kristin", 
          "Sophie", "Jordana", "Camila")

# Check the structure of the data using str(). 
str(name)
# chr means 'character'

# What is the fifth item in the 'name' vector? 
# We use square brackets to subset. 
name[5]

# Create a vector, 'height.' 
height <- c(72, 65, 85, 80, 63, 77, 70)

# Create another vector, 'weight,' my multiplying height
# by 1.15
weight <- height * 1.15

# Check the 'structure' of height. 
str(height)
# num means 'number'

# Check the 'structure' of weight. 
str(weight)

# Combine height and weight into a matrix, 'size,' using matrix(). 
size <- matrix(height, weight, nrow = 7, ncol = 2)

# Look at the documentation for matrix using '?.'
?matrix

# Check the structure of 'size.'
str(size)

# Check to see if size is a matrix using the function is.matrix(). 
is.matrix(size)

# What's in the first column, second row?
# Again, we use square brackets to subset. However, unlike 
# vector, a matrix is not 1-dimensional. Therefore, we subset
# by matrix[row, column].
size[2, 1]

# What's in the first and second row, second column?
# Note: we can use ':' to select numbers in sequential order.
# e.g. 1:4 translates to 1, 2, 3, 4.
size[1:2, 2]

# What's in the first and third row, second column?
# Note: we can use c() to select numbers not in sequential order.
# e.g. c(1, 4) translates to 1 and 4.
size[c(1, 3), 2]

# Now, let's add 'name' to the size matrix using 
# cbind() (column bind).
size <- cbind(size, name)

# View the updated matrix and check out its structure.
str(size)

# Now, let's create a dataframe much like the matrix size. 
sizeDF <- data.frame(Name = name, Height = height, Weight = weight)

# Check the structure of 'sizeDF.'
str(sizeDF)

# What are the values of the first column?
sizeDF[, 1] 
# Since the 'row' entry is empty, this means we're
# not limiting our return. In other words, 'grab all.'

# With dataframes, you can also use the column name to retrieve columns. 
sizeDF$Name

# Return all column names of the sizeDF dataframe. 
colnames(sizeDF)

# What's the difference between a matrix and a dataframe? 
# You'll need to do a little research to answer this question.





### Now your turn: 
# First, let's clear our workspace. 
rm(list = ls()) 


# Read in .csv file. 
plantData <- read.csv(file.choose())


# Check the structure of the data. 


# Return column names of plantData.


# Show two different ways to return the 3rd column.


# What's the entry for the 1st row, 2nd column?


# What's the entry for the 3rd column, 2nd row?


# Combine DayOfYear with RH_1 in a new dataframe, rh1.

rh1 <- data.frame(plantData$DayOfYear, plantData$RH_1)



