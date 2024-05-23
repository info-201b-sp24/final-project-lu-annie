library(shiny)
library(ggplot2)
library(plotly)

amazon_all <- read.csv("amazon_all.csv")

server <- function(input, output) {
  output$chart1 <- renderPlotly({
    filter_by_rating <- subset(amazon_all, stars >= input$ratings[1] & stars <= input$ratings[2])
    p <- plot_ly(filter_by_rating, x = ~stars, y = ~price, type = 'scatter', mode = 'markers') %>%
      layout(title = "Rating v. Price of Product on Amazon",
             xaxis = list(title = "Rating"),
             yaxis = list(title = "Price"))
    
    p
  })
  output$chart2 <- renderPlotly({
    p <- plot_ly(x = 1:10, y = rnorm(10), type = 'scatter', mode = 'markers') %>%
      layout(title = "Title", xaxis = list(title = "X-axis"), yaxis = list(title = "Y-axis"))
    
    p
  })
  output$chart3 <- renderPlotly({
    p <- plot_ly(x = 1:10, y = rnorm(10), type = 'scatter', mode = 'markers') %>%
      layout(title = "Title", xaxis = list(title = "X-axis"), yaxis = list(title = "Y-axis"))
    
    p
  })
}