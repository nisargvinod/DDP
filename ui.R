library(shiny)

shinyUI(pageWithSidebar(
  headerPanel("A Basic Calculator"),
  sidebarPanel(
    numericInput("input_1", "Enter First Number:", 1),
    numericInput("input_2", "Enter Second Number:", 1),
    selectInput("operation", "Select operation to be performed:",
                choices = c("Addition","Subtraction","Multiplication","Division")),
    submitButton("Calculate"),
    
    a(href="", "Click here for Github Repository")
    
    ),
  mainPanel(
    h3("Result Summary"),
    verbatimTextOutput("result"),
    
    h4("Message"),
    verbatimTextOutput("message")
    )
)
)