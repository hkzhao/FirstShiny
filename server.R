library(shiny)

conversion <- function(inval, type) {
    if (type == "ctof")
        result <- (inval * 9 / 5) + 32
    else 
        result <- (inval - 32) * 5 / 9
    
    return(result)
}
    
shinyServer(
  function(input, output) {
    output$inputValue <- renderPrint({input$temperature})
    output$convertedValue <- renderPrint({conversion(input$temperature, input$convType)})
    
  }
)
