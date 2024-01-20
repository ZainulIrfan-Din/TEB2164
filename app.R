  library(shiny)
  
  ui <- fluidPage (
    titlePanel("UTP - IDS"),
    sidebarLayout(
      sidebarPanel(
        img(src = "utp logo.png", height = 140, width = 90, style="display: block; margin-left: auto; margin-right: auto;")
      ),
      mainPanel(
      h1("Introduction To Data Science", align = "center"),
      h2("TEB 2164", align = "center"),
      h3("Lab 3", align = "center"),
      p("Name: Zainul Irfan, ID:18000800", align = "center")
      )
    ),
    fluidRow(
      column(3, h3("Buttons"), actionButton("action", "Action"), br()),
      br(),br(),br(),
      submitButton("Submit"),
      
      column(3, h3("Single Checkbox"),
             checkboxInput("Checkbox", "Choice A", value = TRUE)
             ),
      
      column(6, checkboxGroupInput("CheckGroup", h3("Checkbox Group"), choices = list("Choice 1" = 1, "Choice 2" = 2, "Choice 3" = 3), selected = 1)),
      
      column(3, textInput("text", h3("Text Input"), value = "Enter Text...")),
      
      column(3, textOutput('txtOutput'))
      
      )
  )
  
  server <- function(input,output) {
    output$txtOutput <- renderText({
      paste(input$text)
    })
  }
  shinyApp(ui = ui, server = server)