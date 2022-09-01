# collecting data 

data = read.csv("FAO.csv", header = T)

food_items = c("Milk", "Egg", "Fish", "Animal Fat", "Bovine Meat",
               "Pig Meat", "Poultry Meat", "Goat Meat")
country = c("China","India","USA", "Russia", "Brazil" )

year = seq(1961, 2013 , 1)

# Milk Data
milk = data[data$Item == "Milk - Excluding Butter" & data$Item.Code == "2848", ]
milk_2013_food = data[data$Item.Code == "2848" & data$Element=="Food" , 
                      c(1, 63) ]
top_consumer_milk_food = head(milk_2013_food[order(milk_2013_food$Y2013, 
                                                   decreasing = T), ],20)

# Egg data
eggs = data[data$Item == "Eggs" & data$Item.Code == "2744", ]
eggs_2013_food = eggs[eggs$Element == "Food", c(1, 63)]
top_consumer_eggs_food = head(eggs_2013_food[order(eggs_2013_food$Y2013, 
                                                   decreasing = T), ],20)


# Fish Data

Fish_Seafood= data[data$Item == "Fish, Seafood" & data$Item.Code == "2960", ]

Fish_Seafood_2013_food = Fish_Seafood[Fish_Seafood$Element == "Food", c(1, 63)]

top_consumer_Fish_Seafood_food = head(Fish_Seafood_2013_food[order(
    Fish_Seafood_2013_food$Y2013, decreasing = T), ],20)

# Animal Fat

Animal_Fat = data[data$Item == "Animal fats" & data$Item.Code == "2946", ]

Animal_Fat_2013_food = Animal_Fat[Animal_Fat$Element == "Food", c(1, 63)]

top_consumer_Animal_Fat_food = head(Animal_Fat_2013_food
                                    [order(Animal_Fat_2013_food$Y2013, 
                                           decreasing = T), ],20)

# Bovine Meat

Bovine_Meat = data[data$Item == "Bovine Meat" & data$Item.Code == "2731", ]

Bovine_Meat_2013_food = Bovine_Meat[Bovine_Meat$Element == "Food", c(1, 63)]

top_consumer_Bovine_Meat_food = head(Bovine_Meat_2013_food
                                     [order(Bovine_Meat_2013_food$Y2013, 
                                            decreasing = T), ],20)

# Pig Meat

Pig_Meat = data[data$Item == "Pigmeat" & data$Item.Code == "2733", ]

Pig_Meat_2013_food = Pig_Meat[Pig_Meat$Element == "Food", c(1, 63)]

top_consumer_Pig_Meat_food = head(Pig_Meat_2013_food
                                  [order(Pig_Meat_2013_food$Y2013, decreasing = T), ],20)

# Poultry Meat

Poultry_Meat = data[data$Item == "Poultry Meat" & data$Item.Code == "2734", ]

Poultry_Meat_2013_food = Poultry_Meat[Poultry_Meat$Element == "Food", c(1, 63)]

top_consumer_Poultry_Meat_food = head(Poultry_Meat_2013_food
                                      [order(Poultry_Meat_2013_food$Y2013, decreasing = T), ],20)

# Goat Meat

Goat_Meat = data[data$Item == "Mutton & Goat Meat" & data$Item.Code == "2732", ]

Goat_Meat_2013_food = Goat_Meat[Goat_Meat$Element == "Food", 
                                c(1, 63)]

top_consumer_Goat_Meat_food =head(Goat_Meat_2013_food
                                  [order(Goat_Meat_2013_food$Y2013, 
                                         decreasing = T), ],20)


# China data
milk_food_CHN = milk[milk$Area.Abbreviation == "CHN" 
                     & milk$Element == "Food" & milk$Area.Code == 41 ,c(11:63) ]
egg_food_CHN = eggs[eggs$Area.Abbreviation == "CHN" & eggs$Element == "Food" 
                    & eggs$Area.Code == 41 , c(11:63) ]
Fish_Seafood_food_CHN = Fish_Seafood[Fish_Seafood$Area.Abbreviation == "CHN" & 
                                         Fish_Seafood$Element == "Food" & 
                                         Fish_Seafood$Area.Code == 41 , c(11:63) ]
Animal_Fat_food_CHN = Animal_Fat[Animal_Fat$Area.Abbreviation == "CHN" & 
                                     Animal_Fat$Element == "Food" &
                                     Animal_Fat$Area.Code == 41 , c(11:63) ]
Bovine_Meat_food_CHN = Bovine_Meat[Bovine_Meat$Area.Abbreviation == "CHN" 
                                   & Bovine_Meat$Element == "Food" 
                                   & Bovine_Meat$Area.Code == 41 , c(11:63) ]
Pig_Meat_food_CHN = Pig_Meat[Pig_Meat$Area.Abbreviation == "CHN"
                             & Pig_Meat$Element == "Food" 
                             & Pig_Meat$Area.Code == 41 , c(11:63) ]
Poultry_Meat_food_CHN = Poultry_Meat[Poultry_Meat$Area.Abbreviation == "CHN" 
                                     & Poultry_Meat$Element == "Food" 
                                     & Poultry_Meat$Area.Code == 41 , c(11:63) ]
Goat_Meat_food_CHN = 
    Goat_Meat[Goat_Meat$Area.Abbreviation == "CHN" 
              & Goat_Meat$Element == "Food" 
              & Goat_Meat$Area.Code == 41 , 
              c(11:63) ]


# India data

milk_food_IND = milk[milk$Area.Abbreviation == "IND" 
                     & milk$Element == "Food",c(11:63) ]
egg_food_IND = eggs[eggs$Area.Abbreviation == "IND" & eggs$Element == "Food" 
                    , c(11:63) ]
Fish_Seafood_food_IND = Fish_Seafood[Fish_Seafood$Area.Abbreviation == "IND" & 
                                         Fish_Seafood$Element == "Food", 
                                     c(11:63) ]
Animal_Fat_food_IND = Animal_Fat[Animal_Fat$Area.Abbreviation == "IND" & 
                                     Animal_Fat$Element == "Food",
                                 c(11:63) ]
Bovine_Meat_food_IND = Bovine_Meat[Bovine_Meat$Area.Abbreviation == "IND" 
                                   & Bovine_Meat$Element == "Food", 
                                   c(11:63) ]
Pig_Meat_food_IND = Pig_Meat[Pig_Meat$Area.Abbreviation == "IND"
                             & Pig_Meat$Element == "Food" ,
                             c(11:63) ]
Poultry_Meat_food_IND = Poultry_Meat[Poultry_Meat$Area.Abbreviation == "IND" 
                                     & Poultry_Meat$Element == "Food", 
                                     c(11:63) ]
Goat_Meat_food_IND = 
    Goat_Meat[Goat_Meat$Area.Abbreviation == "IND" 
              & Goat_Meat$Element == "Food", 
              c(11:63) ]


# USA data

milk_food_USA = milk[milk$Area.Abbreviation == "USA" 
                     & milk$Element == "Food",c(11:63) ]
egg_food_USA = eggs[eggs$Area.Abbreviation == "USA" & eggs$Element == "Food" 
                    , c(11:63) ]
Fish_Seafood_food_USA = Fish_Seafood[Fish_Seafood$Area.Abbreviation == "USA" & 
                                         Fish_Seafood$Element == "Food", 
                                     c(11:63) ]
Animal_Fat_food_USA = Animal_Fat[Animal_Fat$Area.Abbreviation == "USA" & 
                                     Animal_Fat$Element == "Food",
                                 c(11:63) ]
Bovine_Meat_food_USA = Bovine_Meat[Bovine_Meat$Area.Abbreviation == "USA" 
                                   & Bovine_Meat$Element == "Food", 
                                   c(11:63) ]
Pig_Meat_food_USA = Pig_Meat[Pig_Meat$Area.Abbreviation == "USA"
                             & Pig_Meat$Element == "Food" ,
                             c(11:63) ]
Poultry_Meat_food_USA = Poultry_Meat[Poultry_Meat$Area.Abbreviation == "USA" 
                                     & Poultry_Meat$Element == "Food", 
                                     c(11:63) ]
Goat_Meat_food_USA = 
    Goat_Meat[Goat_Meat$Area.Abbreviation == "USA" 
              & Goat_Meat$Element == "Food", 
              c(11:63) ]


# Russia data

milk_food_RUS = milk[milk$Area.Abbreviation == "RUS" 
                     & milk$Element == "Food",c(11:63) ]
egg_food_RUS = eggs[eggs$Area.Abbreviation == "RUS" & eggs$Element == "Food" 
                    , c(11:63) ]
Fish_Seafood_food_RUS = Fish_Seafood[Fish_Seafood$Area.Abbreviation == "RUS" & 
                                         Fish_Seafood$Element == "Food", 
                                     c(11:63) ]
Animal_Fat_food_RUS = Animal_Fat[Animal_Fat$Area.Abbreviation == "RUS" & 
                                     Animal_Fat$Element == "Food",
                                 c(11:63) ]
Bovine_Meat_food_RUS = Bovine_Meat[Bovine_Meat$Area.Abbreviation == "RUS" 
                                   & Bovine_Meat$Element == "Food", 
                                   c(11:63) ]
Pig_Meat_food_RUS = Pig_Meat[Pig_Meat$Area.Abbreviation == "RUS"
                             & Pig_Meat$Element == "Food" ,
                             c(11:63) ]
Poultry_Meat_food_RUS = Poultry_Meat[Poultry_Meat$Area.Abbreviation == "RUS" 
                                     & Poultry_Meat$Element == "Food", 
                                     c(11:63) ]
Goat_Meat_food_RUS = 
    Goat_Meat[Goat_Meat$Area.Abbreviation == "RUS" 
              & Goat_Meat$Element == "Food", 
              c(11:63) ]

# Brazil Data

milk_food_BRA = milk[milk$Area.Abbreviation == "BRA" 
                     & milk$Element == "Food",c(11:63) ]
egg_food_BRA = eggs[eggs$Area.Abbreviation == "BRA" & eggs$Element == "Food" 
                    , c(11:63) ]
Fish_Seafood_food_BRA = Fish_Seafood[Fish_Seafood$Area.Abbreviation == "BRA" & 
                                         Fish_Seafood$Element == "Food", 
                                     c(11:63) ]
Animal_Fat_food_BRA = Animal_Fat[Animal_Fat$Area.Abbreviation == "BRA" & 
                                     Animal_Fat$Element == "Food",
                                 c(11:63) ]
Bovine_Meat_food_BRA = Bovine_Meat[Bovine_Meat$Area.Abbreviation == "BRA" 
                                   & Bovine_Meat$Element == "Food", 
                                   c(11:63) ]
Pig_Meat_food_BRA = Pig_Meat[Pig_Meat$Area.Abbreviation == "BRA"
                             & Pig_Meat$Element == "Food" ,
                             c(11:63) ]
Poultry_Meat_food_BRA = Poultry_Meat[Poultry_Meat$Area.Abbreviation == "BRA" 
                                     & Poultry_Meat$Element == "Food", 
                                     c(11:63) ]
Goat_Meat_food_BRA = 
    Goat_Meat[Goat_Meat$Area.Abbreviation == "BRA" 
              & Goat_Meat$Element == "Food", 
              c(11:63) ]

library(shiny)
library(shinydashboard)
library(ggplot2)

# Define UI for application that draws a histogram
ui <- dashboardPage(
    dashboardHeader(title="Who eats the food we grow?"),
    dashboardSidebar(
        sidebarMenu(
            menuItem("Abstract",tabName = "t1"),
            menuItem("Graphs and Plots",tabName = "t2")
        )
    ),
    dashboardBody(
        tabItems(
            
            #UI for tab 1
            
            tabItem("t1", h2(" Abstract"),"The project aims to find solution for 
            feeding the growing population of the world. The world population is expected to grow 
            from 7.3 billion today to 9.7 billion in the year 2050 and one of the greatest 
            challenge for food and agriculture organisations is to feed such a huge population. 
            These solutions range from changing the way we grow our food to changing the way we eat. 
            To make things harder, the world’s climate is changing and it is both affecting and 
            affected by the way we grow our food – agriculture. For instance, Cow is well know 
            methane gas giant. Methane, the 2nd most warming gas after CO2, and a particularly 
            potent greenhouse gas contributing to global warming. As per CBS news article on 
            “How much methane cows releases when burping and passing gas” released on Oct 20, 2021, 
            cows are responsible for about 40% of global methane emission which is passed or belched 
            by the world’s 1.4 billion cattle. However, the bovine meat(beef) is a major red meat 
            source around the glove. As per the data since 1961 to 2013 an average of 44,408,870 tonnes
            of beef is consumed each year around the globe. Considering average weight of a cow as 
            1000 kilograms leads us to production and slaughtering of 44,408,870 livestock per year. 
            This dataset was meticulously gathered, organized and published by the Food and 
            Agriculture Organization of the United Nations. This chunk of the dataset is focused on 
            two utilization of each food item available: Food - refers to the total amount of the food 
            item available as human food Feed - refers to the quantity of the food item available for 
            feeding to the livestock and poultry during the reference period.
                    ", 
                    tabsetPanel(
                        # UI of Panel 1
                
                    )
            ),
            
            # UI for 2nd tab
            tabItem("t2",
                    tabsetPanel(
                        
                        # UI for part 1
                        
                        tabPanel("Consumer",h2("Top 20 Consumers"),
                                 "In this section we will find the top 20 consumer of food items.
                                 Please select the food item from the dropdown that you desire to
                                 observe.\n"
                                 ,
                                 selectInput("choice" ,
                                             label = "Select the food item",
                                             choices = food_items),
                                 actionButton("go_food", label = "Show"),
                                 plotOutput("bar")),
                        
                        # UI for part 2
                        
                        tabPanel("Consumption",h2("Consumption Trend"), 
                                "In this section one can find the
                                 trend of consumtion of any particular country and the food items.",
                                 selectInput("choice_food" ,
                                             label = "Select Food Item", choices = food_items),
                                 selectInput("choice_country",label = "Select Country", 
                                             choices = country),
                                 actionButton("go_2" , label = "Show"),
                                 plotOutput("line")
                        )
                    ))
)))

# Define server logic required to draw a histogram
server <- function(input, output) {

    # Server Part for consumer 
    data <- reactive({ 
        if (input$choice == "Milk"){
            top_consumer_milk_food
        }
        else if (input$choice =="Egg") {
            top_consumer_eggs_food
        }
        else if (input$choice =="Fish"){
            top_consumer_Fish_Seafood_food
        }
        else if (input$choice == "Animal Fat"){
            top_consumer_Animal_Fat_food
        }
        else if (input$choice =="Bovine Meat"){
            top_consumer_Bovine_Meat_food
        }
        else if (input$choice == "Pig Meat"){
            top_consumer_Pig_Meat_food
        }
        else if (input$choice =="Poultry Meat"){
            top_consumer_Poultry_Meat_food
        }
        else if(input$choice =="Goat Meat"){
            top_consumer_Goat_Meat_food
        }
    })
    
    observeEvent(input$go_food, output$bar <- renderPlot({
        ggplot(data = isolate(data()), 
               aes(x = reorder(isolate(data()[,1]), isolate(-data()[,2])),
                   (isolate(data()[,2])))) + 
            geom_bar(stat = "identity" , orientation = T, fill = "skyblue") +  
            ggtitle(paste("Top 20" , isolate(input$choice), "Consumer around the world"))+
            labs(y = "Amount (1000 tonnes)" , x = "Country")
    }))
    
  
    # Server part for consumption trend 
    
    x <- reactive({
        if (input$choice_country == "China"){
            if (input$choice_food =="Milk"){
                milk_food_CHN
            }
            else if (input$choice_food== "Egg"){
                egg_food_CHN
            }
            else if (input$choice_food== "Fish"){
                Fish_Seafood_food_CHN
            }
            else if (input$choice_food== "Animal Fat"){
                Animal_Fat_food_CHN
            }
            else if (input$choice_food== "Bovine Meat"){
                Bovine_Meat_food_CHN
            }
            else if (input$choice_food== "Pig Meat"){
                Pig_Meat_food_CHN
            }
            else if (input$choice_food== "Poultry Meat"){
                Poultry_Meat_food_CHN
            }
            else if (input$choice_food== "Goat Meat"){
                Goat_Meat_food_CHN
            }
        }
        else if (input$choice_country == "India"){
            if (input$choice_food =="Milk"){
                milk_food_IND
            }
            else if (input$choice_food== "Egg"){
                egg_food_IND
            }
            else if (input$choice_food== "Fish"){
                Fish_Seafood_food_IND
            }
            else if (input$choice_food== "Animal Fat"){
                Animal_Fat_food_IND
            }
            else if (input$choice_food== "Bovine Meat"){
                Bovine_Meat_food_IND
            }
            else if (input$choice_food== "Pig Meat"){
                Pig_Meat_food_IND
            }
            else if (input$choice_food== "Poultry Meat"){
                Poultry_Meat_food_IND
            }
            else if (input$choice_food== "Goat Meat"){
                Goat_Meat_food_IND
            }
        }
        else if (input$choice_country == "USA"){
            if (input$choice_food =="Milk"){
                milk_food_USA
            }
            else if (input$choice_food== "Egg"){
                egg_food_USA
            }
            else if (input$choice_food== "Fish"){
                Fish_Seafood_food_USA
            }
            else if (input$choice_food== "Animal Fat"){
                Animal_Fat_food_USA
            }
            else if (input$choice_food== "Bovine Meat"){
                Bovine_Meat_food_USA
            }
            else if (input$choice_food== "Pig Meat"){
                Pig_Meat_food_USA
            }
            else if (input$choice_food== "Poultry Meat"){
                Poultry_Meat_food_USA
            }
            else if (input$choice_food== "Goat Meat"){
                Goat_Meat_food_USA
            }
        }
        else if (input$choice_country == "Russia"){
            if (input$choice_food =="Milk"){
                milk_food_RUS
            }
            else if (input$choice_food== "Egg"){
                egg_food_RUS
            }
            else if (input$choice_food== "Fish"){
                Fish_Seafood_food_RUS
            }
            else if (input$choice_food== "Animal Fat"){
                Animal_Fat_food_RUS
            }
            else if (input$choice_food== "Bovine Meat"){
                Bovine_Meat_food_RUS
            }
            else if (input$choice_food== "Pig Meat"){
                Pig_Meat_food_RUS
            }
            else if (input$choice_food== "Poultry Meat"){
                Poultry_Meat_food_RUS
            }
            else if (input$choice_food== "Goat Meat"){
                Goat_Meat_food_RUS
            }
        }
        else if (input$choice_country == "Brazil"){
            if (input$choice_food =="Milk"){
                milk_food_BRA
            }
            else if (input$choice_food== "Egg"){
                egg_food_BRA
            }
            else if (input$choice_food== "Fish"){
                Fish_Seafood_food_BRA
            }
            else if (input$choice_food== "Animal Fat"){
                Animal_Fat_food_BRA
            }
            else if (input$choice_food== "Bovine Meat"){
                Bovine_Meat_food_BRA
            }
            else if (input$choice_food== "Pig Meat"){
                Pig_Meat_food_BRA
            }
            else if (input$choice_food== "Poultry Meat"){
                Poultry_Meat_food_BRA
            }
            else if (input$choice_food== "Goat Meat"){
                Goat_Meat_food_BRA
            }
        }
        
    })
    
    
    observeEvent(input$go_2, output$line <- renderPlot({
        plot(year, isolate(x()), typ = "l" , col="coral", 
             main = paste(isolate(input$choice_food)," consumption trend: ", 
                          isolate(input$choice_country)),
             xlab = "Year", ylab = "Amount(1000 tonnes)")
    }) )
    
}

# Run the application 
shinyApp(ui = ui, server = server)
