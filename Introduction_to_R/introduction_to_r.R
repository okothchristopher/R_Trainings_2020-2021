# # load some data first 
# library(tidyverse)
# library(readxl)
# customers <- read_xlsx(file.choose())
# 
# 
# 
# customers <- customers %>% janitor::clean_names()
# customers %>% count(married)
# customers

options(scipen = 999)

# 1. The basics -----------------------------------------------------------
# variable assignment 
a <- 4
b=7

# arithmetic 
b/a
b*a

7**4
7^4

# neq 
5!=10

# equals to 
10==10

7%%4
7%/%4
8%/%4
8%%4

ceiling(5.678)
floor(4.2345)

c <- 12.67363
d <- 2456777
args(round)
round(c,0)

trunc(d,2)

# sequecnces 
f <- 3:79
g <- seq(100,4)
h <- seq(1,100,by=5)


# 2. Data structures  -----------------------------------------------------

# scalar <- vector <- matrix <- dataframe/tibble  <- list 
sh <- 456
my_vector <- c(a,b,c,d,sh)
my_vector %>% typeof()
typeof(my_vector)

second_vector <- round(runif(n=10,min = 10,max = 100),0)
second_vector

second_vector+10
second_vector^2


# matrix 
e <- 1:20

second_matrix <- matrix(e,nrow = 4)

second_matrix <- matrix(e,nrow = 4,byrow = TRUE)

second_matrix[,2]
second_matrix[1,]

second_matrix[3,4]

second_matrix[,4]**
  
  

## add column and rows to a matrix
rbind(second_matrix,c(100,200,300,400,500))->third_matrix
cbind(second_matrix,c(100,200,300,NA))


# data frame 
MASS::Boston %>% names()

first_df <- data.frame(third_matrix)
names(first_df) <- c('id','age','height','weight','location')

first_df[,1]

first_df$height <- first_df$height*10

first_df[1,]

first_df %>% View()


sort(first_df$age,decreasing = F)


 # list 
first_list <- c(first_df,second_vector,second_matrix)

fist_list %>% dim()

first_list[[5]]

# Basic Data types --------------------------------------------------------
# integers # doubles/float  # complex # strings/characters #factors/categorical 



my_vector %>% typeof()


as.integer(256.2367)

my_vector %>% as.integer() *-1 %>% as.integer()


sqrt(as.complex(my_vector*-1)) %>% typeof()

# factors 

colors() %>%
  as_tibble() %>%  
  sample_n(100,replace = T) %>% View()


colors <- c('white','blue','red','white','red','green')
length(colors)
colors %>% parse_factor()
n_distinct(colors)

## GET EVEN NUMBERS BETWEEN 1-10
for(i in  1:10){
  if(i%%2!=0){
    print(i)
  }
}



###################################################################################################################
# TASKS 

Tasks 
## VECTORS 
------------------------------------------------------------------------------------------------------------------------------------
  # Poker and roulette winnings from Monday to Friday:
  poker_vector <- c(140, -50, 20, -120, 240)
roulette_vector <- c(-24, -50, 100, -350, 10)
days_vector <- c("Monday", "Tuesday", "Wednesday", "Thursday", "Friday")
names(poker_vector) <- days_vector
names(roulette_vector) <- days_vector

# 1. The total daily profit is the sum of the profit/loss you realized on poker per day, and the profit/loss you realized on roulette per day. Negaive represents loss and positive profit  

#(i) Assign to total_daily how much you won/lost on each day
total_daily <- 
  

#(ii) Calculate total gains for poker and roulette
total_poker <-
total_roulette <-

# (iii) Check if you realized higher total gains in poker than in roulette 

  
# Selection vector  Practice -------------------------------------------------------------------
# Poker and roulette winnings from Monday to Friday:
poker_vector <- c(140, -50, 20, -120, 240)
roulette_vector <- c(-24, -50, 100, -350, 10)
days_vector <- c("Monday", "Tuesday", "Wednesday", "Thursday", "Friday")
names(poker_vector) <- days_vector
names(roulette_vector) <- days_vector

# Which days did you make money on poker?
selection_vector <- poker_vector > 0

# Select from poker_vector these days
poker_winning_days <- poker_vector[selection_vector]
### practice ended --------------------------------------------------------------------------------------------------------

#(iv) Which days did you make money on roulette?
selection_vector <-

#(v) Select from roulette_vector these days
roulette_winning_days <- 

  
  
 ##  2 MATRICES 
-----------------------------------------------------------------------------------------------------------------------------------
  #(i) Construct a matrix with 3 rows that contain the numbers 1 up to 9
  
  
  # Construct star_wars_matrix
box_office <- c(460.998, 314.4, 290.475, 247.900, 309.306, 165.8)
region <- c("US", "non-US")
titles <- c("A New Hope", 
            "The Empire Strikes Back", 
            "Return of the Jedi")
new_titles <- c('Home alone',"a new day",'chris_n_sharon')

star_wars_matrix <- matrix(box_office, 
                           nrow = 3, byrow = TRUE,
                           dimnames = list(titles, region))

star_wars_matrix

star_wars_matrix2<- matrix(box_office^3, 
                           nrow = 3, byrow = TRUE,
                           dimnames = list(new_titles, region))
star_wars_matrix2

# The worldwide box office figures
worldwide_vector <- rowSums(star_wars_matrix)

# (ii) Bind the new variable worldwide_vector as a column to star_wars_matrix (use cbind)
all_wars_matrix <- 
  
  
 # star_wars_matrix and star_wars_matrix2 are available in your workspace
star_wars_matrix  
star_wars_matrix2 

# (iii) Combine both Star Wars trilogies in one matrix (hint -use rbind)
all_wars_matrix <-
  
  
  
  
  
  ## DATA FRAMES 
  ----------------------------------------------------------------------------------------------------------------------------
  #(i) Investigate the structure of mtcars (hint - use str() function)
  
  
  # Definition of vectors
  name <- c("Mercury", "Venus", "Earth", 
            "Mars", "Jupiter", "Saturn", 
            "Uranus", "Neptune")
type <- c("Terrestrial planet", 
          "Terrestrial planet", 
          "Terrestrial planet", 
          "Terrestrial planet", "Gas giant", 
          "Gas giant", "Gas giant", "Gas giant")
diameter <- c(0.382, 0.949, 1, 0.532, 
              11.209, 9.449, 4.007, 3.883)
rotation <- c(58.64, -243.02, 1, 1.03, 
              0.41, 0.43, -0.72, 0.67)
rings <- c(FALSE, FALSE, FALSE, FALSE, TRUE, TRUE, TRUE, TRUE)

# (ii) Create a data frame from the vectors
planets_df <- 
  
