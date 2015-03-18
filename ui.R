library(shiny)
library(shinyapps)

shinyUI(     
    fluidPage(
      titlePanel("Relantionship of Miles per gallon (MPG) and all other variables"),
      helpText("The data was extracted from the 1974 Motor Trend US magazine,",
               " and comprises fuel consumption and 10 aspects of automobile design and performance",
               " for 32 automobiles (1973–74 models)."),
      
      sidebarLayout(
        sidebarPanel(
          selectInput("variable", "Variable:",
                      c("Number of cylinders" = "cyl",
                        "Displacement (cu.in.)" = "disp",
                        "Gross horsepower" = "hp",
                        "Rear axle ratio" = "drat",
                        "Weight (lb/1000)" = "wt",
                        "1/4 mile time" = "qsec",
                        "V/S" = "vs",
                        "Transmission" = "am",
                        "Number of forward gears" = "gear",
                        "Number of carburetors" = "carb"
                      ))
        ),
        mainPanel(
          tabPanel("BoxPlot", plotOutput("mpgBoxPlot"))
        )
      )
    )
)