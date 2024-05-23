library(shiny)
library(ggplot2)
library(plotly)

server <- function(input, output) {
  output$chart1 <- renderPlotly({
    p <- plot_ly(x = 1:10, y = rnorm(10), type = 'scatter', mode = 'markers') %>%
      layout(title = "Title", xaxis = list(title = "X-axis"), yaxis = list(title = "Y-axis"))
    
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