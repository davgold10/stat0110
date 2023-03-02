#####################################################################################################################
###### For use with the data file BPdata.txt, Lecture 3 of the course notes and the Introduction to R document ######
#####################################################################################################################

# Anything typed after a # sign is a comment. Humans can read the comments but R does not.

# You will need to USE R code for completing assessments, however you will NOT be assessed on the details of the R commands in this R script file. The list of assessed R commands will be made available on the resources page once they are covered in the lecture material.

###### 1. Start up RStudio. Tick :)

###### 2. Download the data file, BPdata.txt, from the resources page (see the introductory lecture for how to find the resources page). Save the data file to a folder, this folder is called your "working folder". BPdata.txt is a text file (it has file extension .txt) so make sure you are saving it as the correct file type. You may need to update your settings to be able to see the file extensions. Notice that this file that you are reading, BPdata.R, has the file extension .R to indicate it is an R script file.

# rm(list=rm()) 
# Uncomment (remove the hash) and run the above line of code to "clear the workspace". Not vital but useful if you want to start again.

###### 3. Set the working directory.

setwd(...) 
# The above line of code will not work (notice the red error message in the console) until you replace the dots with the filepath to your working folder (the folder where you saved the data file, BPdata.txt). There are various ways to do this. You will not be assessed on which method you choose but you will need to read in .txt files for each assignment so choose a method that works for you. See the Introduction to R document on the resources page (has another example for practice) and re-watch Lecture 3 (recommended). 

getwd() 
# Use the above line of code to check that your working directory is correct. Not vital but useful for error checking.

###### 4. Read the data into R.

mydata <- read.table("BPdata.txt") 
# In the above line of code the read.table command "reads" .txt files into R. There are different commands for data that are formatted differently (e.g. .csv files or .xlsx files). All the data files you will be using on this course will be .txt files. In this case the name of the dataset once it has been read into R is mydata. You can decide what to call your dataset but there can't be any spaces in the name. 

mydata <- read.table("miscData/BPdata.txt",header=TRUE) 

# The header=TRUE argument is needed because the name of the collected diastolic readings is stored in a variable called 'Pressure' (in the data set called 'mydata'). The names of any variables in the data file are not data, rather they are there to let the humans know what the variables are  (see below).

head(mydata) 

# The above line of code allows you to view the first 6 rows of your dataset. Note: This dataset has only one variable, Pressure. 
      #    Pressure
      # 1       82
      # 2       91
      # 3      100
      # 4       97
      # 5       94
      # 6       84

length(mydata) 
# The length command above returns how many variables there are in your dataset mydata, in this case 1.

length(mydata$Pressure) 
# By contrast the length command here returns how many observations there are of the variable Pressure in your dataset called mydata, in this case 56. Notice the $ operator. 

###### 5. Create a histogram of the variable Pressure.

hist(Mydata$Pressure) 
# The above line of code produces an error (red text in console). This is because R is case sensitive. 

hist(mydata$Pressure)
# The above line of code creates the default histogram for the Pressure variable. 

?hist
# The above line of code opens the RStudio help window for the command hist. This allows you to see what arguments are available to customise the look of your histogram.

hist(mydata$Pressure,breaks=c(59.5,69.5,79.5,84.5,89.5,94.5,99.5,109.5,119.5),main="Histogram of Blood Pressure Data",xlab="Diastolic Blood Pressure (mmHg)",col="darkgrey",freq=TRUE) 
# The above line of code has customised the bin widths (breaks) to match the summary table of the data. A title (main), x-axis label (xlab) and colour (col) have also been added. This corresponds to the second histogram image in your slides. Remember you will NOT be assessed on any of the details of this code.(Ignore the red warning message here - beyond the scope of the course).  

myhist <- hist(mydata$Pressure)
# The above line of code creates a "named object". This allows you to access various attributes of the default histogram.

names(myhist)
# The above line of code allows to see what attributes of the histogram are available.

myhist$counts 
# The above line of code extracts the counts in each break of the histogram, myhist. Notice the $ operator at work again. 

myhist$counts[2] 
# The above line of code extracts the second element from the list of counts. Note the square brackets.


###### The following commands will be useful for assessments but you will NOT be assessed on the details. 
# A reminder: The list of assessed R commands will be made available on the resources page once they are covered in the lecture material.

mean(mydata$Pressure)

median(mydata$Pressure)

summary(mydata$Pressure) 
# Notice that the output from the summary command is only to 2DP so this command is NOT recommended for assignments as the solution required is often to 3DP.

var(mydata$Pressure)

sd(mydata$Pressure)



