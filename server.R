library(datasets)
fit <- lm(mpg ~ wt + factor(cyl) + hp, data = mtcars)
predictMpg <- function(input) {
  mpg <- predict(fit, data.frame(wt = input$weight, cyl = input$cylinders, hp = input$horsepower))
  as.numeric(mpg[1])
}

shinyServer(
  function(input, output) {
    output$mpg <- renderPrint({predictMpg(input)})
  }
  )