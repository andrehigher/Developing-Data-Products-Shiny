
library(shiny)
data(iris)

shinyServer(function(input, output) {
  
  output$distPlot <- renderPlot({
    
    # subset the iris dataset according to the selections from ui.R
    x    <- iris[ iris$Species == input$species ,]
    if( input$part == "Petal"){
      x <- x[,3:4]
    }else{
      x <- x[,1:2]
    }
    
    # draw the histogram with the specified number of bins
    plot(x)
    
  })
  
})