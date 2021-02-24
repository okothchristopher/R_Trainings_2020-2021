for (number in 1:100) {
  if (number%%2==0){
    print(number)
  }
}



# introduction to tidyverse ' ---------------------------------------------

  
# data wrangling  ---------------------------------------------------------

# filter , mutate - add or change columns # arrange data or sort 
install.packages('terry')
library(gapminder)

gapminder %>% view()



# filter 

gapminder %>% filter(continent=='Africa')


gapminder %>% filter(country=='Kenya')


gapminder %>% filter(country=='Kenya',
                     year==max(year))


gapminder %>% 
  filter(country=='Kenya') %>% 
  arrange(desc(lifeExp))


gapminder %>% 
  filter(country=='Kenya') %>% 
  arrange(desc(pop)) %>% 
  ggplot(aes(year,gdpPercap))+
  geom_line(show.legend = F,
            size=2,
            color='navy')+
  ggthemes::theme_economist()+
  ggtitle("kENYA'S GDP PER CAPITA OVER THE YEARS")




gapminder %>% 
  filter(country=='Kenya'|country=='Uganda') %>% view()




### data for all continents apart from asia 
gapminder %>% 
  filter(continent!='Asia') %>% 
  count(continent)


# mutate 

gapminder %>% 
  filter(continent!='Asia') %>% 
  count(continent) %>% 
  mutate(count_percentage=n/100)


gapminder %>% 
  filter(country=='Kenya') %>% 
  mutate(overall_gdp=gdpPercap*pop,
         overall_gdp=scales::dollar(overall_gdp,prefix = 'Ksh '))


# Data visualization -------------------------------------------------------







