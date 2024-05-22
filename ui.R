library(shiny)
library(ggplot2)

dataset <- diamonds

ui <- navbarPage(
  "Analysis of Amazon Marketplace Products",
  tabPanel(
    "Introduction",
    fluidPage(
      titlePanel("Introduction"),
      sidebarLayout(
        sidebarPanel(
          tags$h3("This study aims to investigate the relationship between the price of a product sold on Amazon, and its rating. The results from this study will be used to drive design decisions for what types of products businesses on Amazon should release in order to leave consumers satisfied with both price and condition, usefulness, and durability of a product.",style = "font-size: 20px; font-weight: normal; line-height: 1.5;"),
          img(src = "https://www.hatchwise.com/wp-content/uploads/2022/08/Amazon-Logo-2000-present-1024x576.jpeg", height=150, width=250)
        ),
        mainPanel(
          h3("Which categories have the best selling Amazon products?"),
          h3("Which Amazon product(s) have the most sales?"),
          h3("How are ratings of a product on Amazon correlated with the price of the product?"),
          tags$h3("The dataset can be found at https://www.kaggle.com/datasets/asaniczka/amazon-products-dataset-2023-1-4m-products/data?select=amazon_products.csv.

              The person that collected the data was a user named ASANICZKA.
             
             The data from the csv files were scraped from Amazon.com.
             
             The data was collected in order to get an in-depth idea of what products sell best, which SEO titles generate the most sales, the best price range for a product in a given category, and much more." ,style = "font-size: 14px; font-weight: normal; line-height: 1.5;"),
             
          tags$h3("Rows: 1426337",style = "font-size: 14px; font-weight: normal; line-height: 1.5;"),
             
          tags$h3("Columns: 11 in amazon-products.csv",style = "font-size: 14px; font-weight: normal; line-height: 1.5;"),

          tags$h3("The implications of this project will be that business owners on Amazon can use these guidelines in order to determine what products to sell and if they are currently selling items, they can use the results of this project to determine how to improve the designs of their products to make customers satisfied. Designers of these products can take into account how the ratings and price points of the products relate in order to meet business needs. These business needs may involve changing the features of a product, lowering cost, etc., all which industrial designers play a part in. Companies will have to consider how to create balance between cost and functionality in order to not only keep their existing customers, but encourage new ones to buy their product. The findings from this project may help drive that. Overall, the results of this project mainly aim to improve business on Amazon for sellers and their products.",style = "font-size: 14px; font-weight: normal; line-height: 1.5;"),
             
          tags$h3("The limitations/problems with this dataset are that first, it does not have the reviews of a product given, only the rating. The reviews would be very useful for this project as they have key words that, when analyzed, could discover issues and satisfactory parts of the product that the customer bought, depending on if they left a good or bad review. Second, the rating appears to be averaged, as there is only one rating for each product, and not a distribution of 1-5 star ratings, so this has to be accounted for because the average may not account for, a 1-star rating when majority are 5-stars for example.",style = "font-size: 14px; font-weight: normal; line-height: 1.5;"),
             
          tags$h3("While this project aims to discover the relationship between ratings and the price of a product, it cannot cover the full scope of customers of these products and their feelings about these products. This dataset has over 1 million Amazon products and the more popular products will likely have a lot of reviews. 1 month is simply not enough time to cover all of the reviews for all products. In fact, the data analyzed may not be able to include all 12 million products - perhaps only the top 5-10 bestseller categories will be analyzed for a relationship between price and ratings of the products in said categories. This project will be a really simplified version and the final report will include the simplications and address the limited timeline of work done. Also, because only correlations will be analyzed, we won't be able to make any 100% certain conclusions regarding how products will do for sellers, but the correlations can be a good guideline for businesses to improve their products. More in depth analysis of this area would be something interesting to come from this.",style = "font-size: 14px; font-weight: normal; line-height: 1.5;")
        )
      )
    )
  ),
  tabPanel(
    "Chart 1",
    fluidPage(
      titlePanel("Chart 1"),
      sidebarLayout(
        sidebarPanel(
          h3("Sidebar content for Page 2")
        ),
        mainPanel(
          h3("Main content for Page 2")
        )
      )
    )
  ),
  tabPanel(
    "Chart 2",
    fluidPage(
      titlePanel("Chart 2"),
      sidebarLayout(
        sidebarPanel(
          h3("Sidebar content for Page 3")
        ),
        mainPanel(
          h3("Main content for Page 3")
        )
      )
    )
  ),
  tabPanel(
    "Chart 3",
    fluidPage(
      titlePanel("Chart 3"),
      sidebarLayout(
        sidebarPanel(
          h3("Sidebar content for Page 4")
        ),
        mainPanel(
          h3("Main content for Page 4")
        )
      )
    )
  ),
  tabPanel(
    "Conclusion",
    fluidPage(
      titlePanel("Conclusion"),
      sidebarLayout(
        sidebarPanel(
          h3("Sidebar content for Page 5")
        ),
        mainPanel(
          h3("Main content for Page 5")
        )
      )
    )
  )
)