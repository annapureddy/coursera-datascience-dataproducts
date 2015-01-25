shinyUI(
  fluidPage(
    # Title for the application
    titlePanel('Predict your car\'s mpg'),
    p('This app helps you predict your car\'s mpg. In the sidebar 
      to the left, select the weight of your car (in units of lbs/1000),
      the number of cylinders, and the gross horsepower, and 
      watch the app show you a prediction for your mpg on the main panel
      to the right. The prediction is based on the model described',
      a('here.', href = 'https://github.com/annapureddy/coursera-datascience-regression-models/blob/master/mpg-vs-transmission.pdf'),
      'Try it now!',
      br()
    ),
    
    # Accept input parameters: weight, number of cylinders, horsepower
    sidebarLayout(
      sidebarPanel(
        sliderInput('weight', 'Weight (lb/1000)', value = 2.5, min = 1.5, max = 5.5, step = 0.1),
        selectInput('cylinders', 'Number of Cylinders', choices = c(4, 6, 8)), 
        sliderInput('horsepower', 'Horsepower', 200, min = 50, max = 350, step = 1)
        ),
      
      # Display the predicted mpg
      mainPanel(        
        h4('Your predicted mpg is'),      
        verbatimTextOutput('mpg')
      )
    )
  )
)