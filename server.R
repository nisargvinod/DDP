library(shiny)

shinyServer(
  function(input,output){
    operationInput <- reactive({
      switch(input$operation,
             "Addition" = "+",
             "Subtraction" = "-",
             "Multiplication" = "*",
             "Division" = "/")
    })
    
    output$result <- renderPrint({
      operation <- operationInput()
      
      if(operation=="+")
        result <- input$input_1 + input$input_2
      else
        if(operation=="-")
          result <- input$input_1 - input$input_2
        else
          if(operation=="*")
            result <- input$input_1 * input$input_2
          else
            if(input$input_2 !=0)
              result <- input$input_1 / input$input_2
            else
              result <- "Not Defined"
      result
    })
    
    output$message <- renderPrint({
      operation <- operationInput()
      
      if(operation=="+")
        message <- "Addition Successful!"
      else
        if(operation=="-")
          message <- "Subtraction Successful!"
        else
          if(operation=="*")
            message <- "Multiplication Successful!"
          else
            if(input$input_2 !=0)
              message <- "Division Successful!"
            else
              message <- "Number can not be divided by zero!!! :@"
            message
    })
  }
)