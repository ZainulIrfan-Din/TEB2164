library (shiny)

ui <- fluidPage(
  
  titlePanel("Interactive Shiny UI"),
  
  sidebarLayout(
    sidebarPanel(
      helpText("Create Demographic Maps"),
      selectInput("var",
                  label = "Choose a variable to display",
                  choices = c("Percent White", "Percent Black", "Percent Hispanice", "Percent Asian"),
                  selected = "Percent White"),
      sliderInput("range", 
                  label = "Range of Interest:", 
                  min = 0, 
                  max = 100, 
                    value = c(0,100))
    ),
    mainPanel(
      textOutput("selected_var"),
      textOutput("selected_range")
    )
  )
)

server <- function(input, output) {
  output$selected_var <- renderText ({
    paste("You have selected", input$var)
  })
  output$selected_range <- renderText ({
    paste("You have selected", input$range[1], "to", input$range[2])
  })
}

shinyApp(ui = ui, server = server)