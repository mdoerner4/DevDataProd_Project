data(women)
womenweight <- function(height){
  wrow <- which(women[,1] == height)
  weight <- women[wrow,2]
  weight
}

shinyServer(
  function(input, output) {
    output$inputValue <- renderPrint({input$height})
    output$prediction <- renderPrint({womenweight(input$height)})
  }
)