#---------------------------------------------------
#----- Homework 02 Template
#---------------------------------------------------

#---------------
#-- Question 1.1
#---------------
  # Define your fizz(n) function below:
  fizz <- function(n) {
    if(class(n)=='integer'){
      if(n%%3==0){
        return('Fizz')
      }else{
        " "
      }
      
    }else{
      print('error non-integer')
    }
  
  }
  
################################################### Making fizz work with vectors as inputs 
  fizz <- function(n){
    result <- numeric(length = length(n))
    for (i in seq_along(n)) {
      result[i] <- ifelse(class(n[i])=='integer',ifelse(n[i]%%3==0,'Fizz'," "), 'error non-integer')
      
    }
    return(result)
  }

  # Use commands below to test your function:
  fizz(5L)  # integer input
  fizz(6L)  # integer input
  fizz(5)   # non-integer input
  fizz(6.3) # non-integer input

#---------------
#-- Question 1.2
#---------------
  # Define your buzz(n) function below:
  buzz <- function(n) {
    if(class(n)=='integer'){ # this expression checks if the supplied argument is an integer
      if(n%%5==0){           # if the input is divisible by 5 the remainder will be zero 
        return('Buzz')
      }else{
        " "
      }
      
    }else{
      return('error non-integer')
    }
  }
  
 ############################################### ##### Making buzz work with vectors as inputs 
  buzz <- function(n){
    result <- numeric(length = length(n))
    for (i in seq_along(n)) {
      result[i] <- ifelse(class(n[i])=='integer',ifelse(n[i]%%5==0,'Buzz'," "), 'error non-integer')
      
    }
    return(result)
  }
  
  # Use commands below to test your function:
  buzz(5L)  # integer input
  buzz(6L)  # integer input
  buzz(5)   # non-integer input
  buzz(6.3) # non-integer input

#---------------
#-- Question 1.3
#---------------
  
  fizzbuzz <- function(n) {
    if (fizz(n)=='Fizz'&buzz(n)=='Buzz'){
      return(paste(fizz(n),buzz(n),sep= ""))
    }else if(fizz(n)=='Fizz'){
      return(fizz(n))
    }else{
      return(buzz(n))
    }
    
    
  }
  
  
  ##### Making fizzbuzz work with vectors as inputs 
  fizzbuzz <- function(n){
    result <- numeric(length = length(n))
    for (i in seq_along(n)) {
      result[i] <- ifelse(fizz(n[i])=='Fizz'&buzz(n[i])=='Buzz','FizzBuzz',
                          ifelse(fizz(n[i])=='Fizz',fizz(n[i]),buzz(n[i])))
      
    }
    return(result)
  }
  

  
  # Use commands below to test your function:
  fizzbuzz(4L)  # integer input
  fizzbuzz(6L)  # integer input
  fizzbuzz(15L) # integer input
  fizzbuzz(4)   # non-integer input
  fizzbuzz(6.3) # non-integer input
  fizzbuzz(15)  # non-integer input

#---------------
#-- Question 1.4
#---------------
  # Define your fbr(n,m) function below:
  fbr <- function(n,m) {
    final <- c() ## create an empty vector 
    for (i in n:m){
      if(fizzbuzz(i)==" "){  ## evaluate the function for all the elements of the sequence and if the number is not divisible
        result <- i
      }else{
        result <- fizzbuzz(i)
        
      }
      final[i] <- result
    }
    return(final[!is.na(final)]) ## remove the na's from the created vector 

  }
  
  
  fbr(10,15)
  # Use commands below to test your function:
  fbr(10L,15L)  # integer inputs
  fbr(10,15)    # non-integer inputs
  fbr(15L, 10L) # n is larger than m

#---------------
#-- Question 2.1
#---------------
  set.seed(1000)
  
  x <- sample(1:100,size = 20,replace = FALSE)
  
#---------------
#-- Question 2.2
#---------------
  
  x_1 <- c(rep(NA,20))
  x_2 <- c(rep(NA,20))
  x_3 <- c(rep(NA,20))
  
  y <- matrix(c(x_1,x_2,x_3),nrow = 20)
  n <- 15L
  
  
  y[,1] <- fizz(x)
  y[,2] <- buzz(x)
  y[,3] <- fizzbuzz(x)
#---------------
#-- Question 2.3
#---------x------
input <- rep(NA,20)
  data <- data.frame(input)
  




#---------------
#-- Question 2.4
#---------------
data$input <- x

#---------------
#-- Question 2.5
#---------------
########### Create a data frame from the results of the y matrix
y_data <- data.frame(y)
########### assign names to the columns of the created data frame 
names(y_data) <- c('fizz','buzz','fizzbuzz')

############ combine the two resultant datasets into one 
data <- cbind(data,y_data)



#---------------
#-- Question 2.6
#---------------

############### create a vectorized function 




fbrr <- function(){
  res <- numeric(length = length(x))
  for (i in seq_along(x)){
    res[i] <- fbr(x[i]-1,x[i])
  }
  return(res)
}

 

data$fbr_input_less_1 <- fbrr()

# test --------------------------------------------------------------------
data 


