# Predicting Apple Net Income

This shiny application predicts Apple's net income based from the number of sold iPhone and Macs. Prediction were derieved from Apple's SEC 10K data from 2005 to 2016.

![AppleIncome](https://github.com/ntemena720/PredictAppleIncome/blob/master/apple.PNG)

ui.R: Shiny/R code for the input and output   

server.R: Shiny/R code to process input and small financial data   

apple.csv : Compiled data taken from Apple's 10K form. link: http://investor.apple.com/sec.cfm    

![AppleIncomeData](https://github.com/ntemena720/PredictAppleIncome/blob/master/apple.csv)   

I have intentionally excluded other Apple revenue stream ( i.e. itunes, ipads, icloud ) to show only positive trendlines.

To view this app in action: https://noeltemena.shinyapps.io/predicting_apple_income_ii/
To view the manual for using the application: https://rpubs.com/noeltemena/appleincome
