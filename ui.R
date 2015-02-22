
library(shiny)

shinyUI(fluidPage(
  
  titlePanel("The Iris Dataset", windowTitle = "The Iris Dataset Shiny App" ),   
  
  sidebarLayout(
    sidebarPanel(
      selectInput(inputId = "species", label = "Choose a species of iris:", 
                  choices = c("setosa" , "virginica" , "versicolor" ) ) ,
      selectInput(inputId = "part" , "Choose petal or sepal:", 
                  choices = c("Petal" , "Sepal") )
    ),
    
    mainPanel(
      p("Course Project of Developing Data Products."),
      p("\n"),
      p("The Iris Dataset is a multivariate dataset composed by 150 measuerments of widths and lengths of both sepal and petal of three species of Iris: I. setosa, I. virginica and I. versicolor."),
      p("\n"),
      p("The purpose of this app is to do some exploratory analysis of petals and sepals of the three species of Iris."),
      plotOutput("distPlot")
    )
  )
))