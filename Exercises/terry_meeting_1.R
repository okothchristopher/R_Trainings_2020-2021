
# data structutres --------------------------------------------------------
# 1. Scala 2. Vector- has the attributes logical, character , numeric ,complex or integer 
# 3. Matrix 4. Dataframe/Tibble  6. List 7. Factor 

# scalars 
w <- 5
x <- 67


# vectors 
my_vector <- c(w,x)
second_vector <- rep('terry',10)
third_vector <- round(runif(10,min = 0,max = 10),digits = 2)
fouuth_vector <- rep(c(T,F),5)


typeof(my_vector)
class(my_vector)

# matrix 
our_matrix <- matrix(data = 1:10,nrow = 5,ncol = 2)
our_matrix[2,2]
our_matrix[5,1] %>% typeof()
our_matrix[,2]


# dataframe 
our_first_data_frame <- data.frame(second_vector,third_vector,fouuth_vector)
names(our_first_data_frame) <- c('Name','weight','went_to_school')

our_first_data_frame[3]

# list 

# data types in r ---------------------------------------------------------
# 1. logical 2. Character-categorical/strings  3. numeric- doubles and integers 4. complex 5. Factors 
my_scalar <- 'scalar'
my_logic <- T
my_numeric <- 6457.5767

my_numeric %>% as.integer() 
my_numeric%>% ceiling()
my_numeric %>% floor()

complex(67)

# factors 

colors()[1:10] %>% str_extract_all(".{13}")

colors()[1:10] %>% parse_factor()

other_colors <- c('White',"red",colors()[1:10])

other_colors %>% str_to_lower() %>% parse_factor()

other_list <- c('Mat','Nat','Greg','Hom','Mat')

some_other_list <- c(1,3,5,67,2,4,15,15,1,3,2,5,2,4)
some_other_list %>% length()
some_other_list %>% as.factor()

some_other_list %>% unique()
# packages in r -----------------------------------------------------------

# what are they 

# how to install packages 
install.packages('glue')


# loading packages 
library(dplyr)
require(tidyr)


# functions  --------------------------------------------------------------



