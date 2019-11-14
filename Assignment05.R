###################################################################
#   Luke Domanico - Assignment 05: READ THE INSTRUCTIONS BELOW!   #
###################################################################

## If the .csv is not read by the fread() function, try these instructions:

# Before running the fread() function on "real_gdp_1947-Q32019.csv",
# Go to the "Session" panel, hit the "set Working Directory" Button,
# and set the working directory "to the "To Source File Location".
# This will allow the CSV to be read with the fread() function.

getwd()

## Reading in our csv file using fread() from package data.table 
# Installing data.table (if required) and loading it into memory
if (!require("data.table")) install.packages("data.table")
library("data.table")

#Checking and setting number of cpu threads 
getDTthreads()
getDTthreads(verbose=TRUE)
setDTthreads(0)
getDTthreads()

# Reading the csv file "real_gdp_1947-Q32019.csv" with fread()
### Run as a block of text to time #########
ptm <- proc.time()
DF <- fread("real_gdp_1947-Q32019.csv", header="auto", 
            data.table=FALSE)
FREAD_READ_TIME <- (proc.time() - ptm)
FREAD_READ_TIME
############################################

# Examining what we got
class(DF)
typeof(DF)
str(DF)
names(DF)

# Looking at our data on a table
View(DF)