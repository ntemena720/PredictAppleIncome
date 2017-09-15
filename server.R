library(shiny)
shinyServer(function(input, output) {
    library(caret)
    library(ggplot2)
    library(randomForest)
    library(readr)
    allData <- read_csv('apple.csv',col_names = TRUE)
    allData$total <- rowSums(allData[, -5])
    set.seed(333)
    fit <- train(netIncome ~iPhone + Ipod + Macs,  data= allData)# default method is RF
   
    ######
   pred_ <- reactive({
        iphoneInput <- input$slideriPhone
        MacsInput <- input$sliderMacs
        IpodInput <- 1000 # constant since product generated negative coefficient
        test_data <- data.frame(iPhone = iphoneInput, Macs = MacsInput, Ipod = IpodInput)
        answer <- predict(fit, test_data)
        answer <- round((answer * 1000000), digits = 0)
        answer <- prettyNum(answer,big.mark=",")
        paste0("$ ", answer)
    })
    
   
    
    output$plot1 <- renderPlot({
        ggplot() + geom_line(aes(year, iPhone, colour= "red"), allData, size=1) +  
            geom_line(aes(year, Macs, colour= "blue"), allData, size=1) +
            geom_line(aes(year, Ipod, colour= "green"), allData, size=1) +
            geom_line(aes(year, total, colour= "yellow"), allData, size=1)+
            labs(y = "Products Sold in Thousands", x = "Year",caption = "(taken from Apple 10K form)")+
            scale_color_manual(labels = c("Macs", "Ipod", "Iphone","Total"), values = c("red", "blue","green", "yellow")) +
            theme(legend.position="top")
    })
    
    output$plot2 <- renderPlot({
        ggplot() + geom_line(aes(year, netIncome, colour= "green"), allData, size=2)+ 
            labs(y = "Income in Millions", x = "Year",caption = "(taken from Apple 10K form)")+
            theme(legend.position="none")
    })
    
    output$pred1 <- renderText({
        pred_()
    })
})