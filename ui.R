library(shiny)

shinyUI(pageWithSidebar(
    
    headerPanel("Limit Theorem"),
    
    sidebarPanel(
        sliderInput("n", 
                    "Number of samples:", 
                    min = 1,
                    max = 2500, 
                    value = 100),
        sliderInput("bins", 
                    "Number of bins:", 
                    min = 1,
                    max = 100, 
                    value = 20),
        withMathJax(),
        uiOutput('population_mean'),
        uiOutput('sample_means_mean'),
        uiOutput('population_sd'),
        uiOutput('sample_means_mean_sd'),
    ),
    
    mainPanel(
        plotOutput("distPlot", height = "300px", width="80%"),
        plotOutput("sampleDistPlot", height = "300px", width="80%")
    )
))