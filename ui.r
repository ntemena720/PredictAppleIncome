library(shiny)
shinyUI(fluidPage(
    titlePanel("Predict Apple Net Income (demo)"),
    sidebarLayout(
        sidebarPanel(
            sliderInput("slideriPhone", "Enter number of Iphone sold", 10000, 300000, value = 10000),
            sliderInput("sliderMacs", "Enter number of Macs sold", 10000, 20000, value = 10000),
            submitButton("Submit")
        ),
        mainPanel(
            h3("Predicted Apple Net Income:"),
            h3(textOutput("pred1")),
            plotOutput("plot1"),
            plotOutput("plot2")
        )
    )
))

