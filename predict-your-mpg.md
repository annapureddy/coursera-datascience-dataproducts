Predict your car's mpg!
========================================================
author: Sid Reddy
date: 25 Jan 2015

What does the app do?
========================================================
- Predicts your car's mpg (miles per gallon)
- Based on what? 
  * Weight of your car (in lbs/1000)
  * Number of cylinders
  * Horsepower
- Use a linear regression model to predict
- Model trained with the mtcars dataset

Show me an example!
========================================================
- Example prediction (weight = 2500lb, cyl = 4, hp = 200)

```r
# Build a linear model
library(datasets)
fit <- lm(mpg ~ wt + factor(cyl) + hp, data = mtcars) 

# Make a prediction
mpg <- predict(fit, data.frame(wt = 2.5, cyl = 4, hp = 200)) 
as.numeric(mpg)
```

```
[1] 23.26852
```

Why only these variables?
========================================================
- Several other variables in the mtcars dataset
- Why use only these variables to predict?
  * Model variance close to optimal
  * Overfitting with too many variables avoided
  * Only these variables have significant p-values

How does the app work?
========================================================
- [App](https://annapureddy.shinyapps.io/coursera-datascience-dataproducts/) designed with shiny from RStudio
- Choose the variables for your car on the sidebar to the left
  * Weight: Uses a sliderInput
  * Number of cylinders: Uses a selectInput
  * Horsepower: Uses a sliderInput
- Triggers a reactive function in the app with given input
  * Linear model already stored in the app
  * Uses the predict function to compute mpg
- Predicted mpg rendered on the main panel to the right
- [Try it now!](https://annapureddy.shinyapps.io/coursera-datascience-dataproducts/)
