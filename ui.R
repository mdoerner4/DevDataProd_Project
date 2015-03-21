library(shiny)
shinyUI(
  pageWithSidebar(
    # Application title
    headerPanel("Women Weight Prediction"),    
    sidebarPanel(
      p('This application predicts the average weight in lbs of women for a given height in inches.'),
      h5('Please enter a height from 58 to 72 inches'),
      numericInput('height', 'Height in inches', 58, min = 58, max = 72, step = 1),
      submitButton('Submit')
    ),
    mainPanel(
      h3('Results of prediction'),
      h4('You entered a height in inches of:'),
      verbatimTextOutput("inputValue"),
      h4('Which resulted in a prediction of weight in lbs of:'),
      verbatimTextOutput("prediction")
    )
  )
)
