# Predicting Apple Net Income

This shiny application predicts Apple's net income based from the number of sold iPhone and Macs. Prediction were derieved from Apple's SEC 10K data from 2005 to 2016.

![AppleIncome](https://github.com/ntemena720/PredictAppleIncome/blob/master/apple.PNG)


 ui.R: Shiny/R code for the input and output

 server.R: Shiny/R code to process input and small financial data

AppleIncome-rpubs.html: Manual for using the app and displaying codes behind the prediction. This is a 5 page slider using R presentation

apple.csv : Compiled data taken from Apple's 10K form. link: http://investor.apple.com/sec.cfm 

I have intentionally excluded other Apple revenue stream ( i.e. itunes, ipads, icloud ) to simplify prediction inputs.

To view this app in action: https://noeltemena.shinyapps.io/predicting_apple_income_ii/
