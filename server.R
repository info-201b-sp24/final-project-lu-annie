library(shiny)
library(ggplot2)
library(plotly)
library(dplyr)
library(stringr)

amazon_all <- read.csv("amazon_all.csv")

server <- function(input, output) {
  output$chart1 <- renderPlotly({
    avg_price_and_ratings <- amazon_all %>%
      group_by(category_name) %>%
      summarize(
        avg_value = ifelse(input$chart_type == "price", mean(price), mean(stars))
      ) %>%
      arrange(desc(avg_value)) %>%
      slice_head(n = 15)
    
    avg_price_and_ratings$category_name <- str_wrap(avg_price_and_ratings$category_name, width = 30)
    
    p <- plot_ly(avg_price_and_ratings, x = ~avg_value, y = ~category_name, type = 'bar', marker = list(color = '#FF9900')) %>%
      layout(
        title = ifelse(input$chart_type == "price", "Average Price by Category", "Average Ratings by Category"),
        yaxis = list(title = "Category Name", tickfont = list(size = 8)),
        xaxis = list(title = ifelse(input$chart_type == "price", "Average Price", "Average Ratings"))
      )
    
    p
  })
  output$chart2 <- renderPlotly({
    category_price_summaries <- amazon_all %>%
      group_by(category_name) %>%
      summarize(sum_bestsellers = sum(isBestSeller == 'True')) %>%
      arrange(desc(sum_bestsellers)) %>%
      slice_head(n = input$num_categories)
    
    category_price_summaries$category_name <- str_wrap(category_price_summaries$category_name, width = 10)
    
    
    
    p <- plot_ly(category_price_summaries, x = ~category_name, y = ~sum_bestsellers, type = 'bar', marker = list(color = '#FF9900')) %>%
      layout(
        title = "Total Number of Bestsellers on Amazon by Category",
        xaxis = list(title = "Category Name", tickfont = list(size = 8)),
        yaxis = list(title = "Number of Bestselling Products")
      )
    
    p
  })
  
  output$chart3 <- renderPlotly({
    small_sample_data <- amazon_all %>%
      slice_head(n = 1000)
    
    p <- plot_ly(small_sample_data, x = ~boughtInLastMonth, y = ~reviews, type = 'scatter', marker = list(color = '#FF9900')) %>%
      layout(
        title = "Number of Buyers vs Number of Reviews",
        xaxis = list(title = "Number of Buyers Last Month"),
        yaxis = list(title = "Number of Reviews")
      )
    
    if (input$show_line) {
      correlation <- cor(small_sample_data$boughtInLastMonth, small_sample_data$reviews)
      p <- p %>% add_trace(x = c(min(small_sample_data$boughtInLastMonth), max(small_sample_data$boughtInLastMonth)),
                           y = c(min(small_sample_data$boughtInLastMonth), max(small_sample_data$boughtInLastMonth)) * correlation,
                           mode = "lines",
                           line = list(color = "red"),
                           name = paste("Correlation Coefficient:", round(correlation, 3)))
    }
    
    
    p
    
  })
}