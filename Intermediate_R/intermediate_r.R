
# CONDITIONALS AND CONTROL FLOW  ------------------------------------------
# if statements 
# else 
# ifelse 
# for 
# while 
 
# & and | relational operators 
T&T
T&F
F|T
'NAIROBI'=='NAIROBI'
'KENYA'!='MY_HOME'

# if(condition){
# expression 
#}
x <- -34

if(x<0){
  print('x i s a negative number ')
}

y <- 101
if(y%%2==0){
  print('y is an even number ')
}else{
  print('y is an odd number')
}

home <- c('home is so sweet','I like homes','I went away ')
if(length(home)>10){
  print('x is not a home')
}else{
  print('I am done with this life')
}
# if else /else if 

x <- 27
if(x>5&x<10){
  print('x is a small boy')
}else if(x>=10&x<20){
  print('x is a young adult')
}else if(x>=20&x<35){
  print('x is a suffering adult')
}else if(x>=35&x<60){
  print('ameomoka')
}else{
  print('x will die of okimi')
}


# loops 
x <- 1
while(x<=10){
  print(paste('I AM IN NUMBER',x))
  x <- x+1
}

y <- 1
while(y<20){
  if(y>10){
    break
  }
  print(paste0('WE ARE DOING GOOD IN NUMBER',y,sep='_'))
  y <- y+1
}

##  for loop 
# for(elemenet in a sequence){
#   do this 
# }

my_sequence <- 1:10

for(sharon in my_sequence){
  print(paste('ALELUHYA',sharon))
}

Cities <- c("New York", "Paris", "London", "Tokyo","Rio de Janeiro", "Cape Town")
for(city in Cities){
  print(paste('I went to',city))
}

ages <- c(10,100,34,24,156,15,18,47,28)
for(x in ages){
  if(x>5&x<10){
    print('x is a small boy')
  }else if(x>=10&x<20){
    print('x is a young adult')
  }else if(x>=20&x<35){
    print('x is a suffering adult')
  }else if(x>=35&x<60){
    print('ameomoka')
  }else{
    print('x will die of okimi')
  }
}

# FUCNTIONS  --------------------------------------------------------------
sqrt(456)

# function_name <- function(arg_1, arg_2, ...) {
#   Function body 
# }
# a function to print squares of numbers in a sequence 
y <- 1:14

sharon_chris_squares <- function(y){
  for(x in y){
    print(x**2)
  }
}
sharon_chris_squares(y)

sharon_chris_squares_modified <- function(){
  for(x in y){
    print(x**2)
  }
}
sharon_chris_squares_modified()

# function with arguments not specified 

yof_birth_functions <- function(age_today,year_current){
  year_of_birth <- year_current-age_today
  print(year_of_birth)
}

current <- Sys.Date() %>%
  str_extract(pattern = '\\d{4}') %>%
  as.integer()

yof_birth_functions(36,current)

yof_birth_functions(22,2020
                )

str_count(string = 'my name is obuolo and I live in Nairobi I went to dala and got some onyasa',
          pattern = ' ')

base::abs(-46)
base::anyNA(c(575,25,25,25,26,NA))


# UTILITY  ----------------------------------------------------------------



# installing some packages at once 
my_packages=c(
  "rvest",
  "scales", #as the name suggstys - scales ie dollar formating and currency conversions 
  "shiny",
  "shinydashboard",
  "shinythemes",
  "stringi",
  "stringr", # string manipulation
  "tidyr", # text mining 
  "twitteR" # to scrape tweets 
)

to_install= function(packages){
  not_yet_installed <- packages[!(packages %in% installed.packages()[, "Package"])]
  
  if (length(to_install)>0){
    install.packages(not_yet_installed, repos='http://cran.us.r-project.org',dependencies = TRUE)
  }
}


to_install(my_packages)

# installing multiple packages at once 
packages_to_install <- c('ggplot2','tidyr','dplyr','stringr','rvest')
install.packages(packages_to_install)



# EXCERCISES  -------------------------------------------------------------
#------------------------- conditional execution 
#1. Write and r statement  that calculates the square root of a given integer vector x of length greater than 1, 
# if the value contained in x is negative it should return NA
#2. Create an R script that returns the maximum value out of the elements of a numeric vector x of length 20


#-------------------------- loops 
mesage <- c("Hello there , help me with that ")
i <- 1

#1. Write a repeat{} loop that breaks off the incrementation of, “i“, after 5 loops, and prints the “mesage" at every increment.
#2. write a for() loop that uses next to print all values except “3” and "5" in the following variable: i <- 1:13


#-------------------------- functions 
# 1. Create a function to print class of an argument
# 2. Create a function to calculate the ages of people born in||||| birth_years <- c(1998,1997,1935,1933,1945,1967)
