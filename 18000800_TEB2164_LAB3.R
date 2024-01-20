library(shiny)

ui <- fluidPage (
    titlePanel("Shiny Text"),
    h3("Movie Explorer"),
    fluidRow(
    sidebarLayout(position ="left",
        sidebarPanel(
            
            sliderInput("integer", "Minimum number of reviews on Rotten Tomatoes",
                        min = 10, max = 300,
                        value = 80,  step = 30),
        
            sliderInput("range", "Year released", sep = "",
                        min = 1940, max = 2014,
                        value = c(1970,2014)),
            
            sliderInput("integer", "Minimum number of Oscar wins (all categories)",
                        min = 0, max = 4,
                        value = 0, step = 1),
    
            sliderInput("range", "Dollars at Box Office (millions)",
                        min = 0, max = 800,
                        value = c(0,800), step = 80),
            
            selectInput("select", h6("Genre (a movie can have a multiple genres)"), choices = list ("All" = 1, "Choice 2" = 2, "Choice 3" = 3, selected = 1)),
            textInput("text", h6("Director name contains (e.g., Miyazaki)"), value = " "),
            textInput("text", h6("Cast name contains (e.g., Tom Hanks)"), value = " "),
            
        ),
    mainPanel(
        h4("Name: Zainul Irfan"),
        h4("ID: 18000800")
    )
    )
    )
    )

server <- function(input,output) {}

shinyApp(ui = ui, server = server)