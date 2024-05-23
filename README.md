# Analysis of Amazon Marketplace Products
## INFO 201 "Foundational Skills for Data Science"

Authors: Annie Lu

**Link: https://skkmf6-annie-l.shinyapps.io/final-project-lu-annie/**

# Introduction

This study aims to investigate relationships between the categories, prices, ratings, and bestsellers on the popular online e-commerce platform Amazon. The results from this study will be used to drive design decisions for what types of products businesses on Amazon should release in order to leave consumers satisfied with both price and condition/usefulness/durability of a product.

1. How are ratings of a product on Amazon related to the price of the product?
- This question is asked as our main research question. This question is important because we want to investigate the products where the price of an item where it is cheap enough to satisfy consumers, yet also good enough to encourage the customer to leave a good review, in order to give insights for businesses on Amazon on how they should design their products to reach this balance point between price and satisfaction.

2. Which categories have the best selling Amazon products?
- This question is asked in order to find out which categories have the highest number of sales and best-selling products (denoted by a boolean).This question is important because we want to find out which categories have a lot of sales first, so we can compare ratings and their prices within each category to narrow our research scope.

3. Are number of purchases in the last month and number of reviews correlated?
- This question is asked in order to see if there is any correlation between the number of people who purchase an item and the number of reviews a product gets. We would assume a greater number of purchases would bring about a higher number of reviews, but if this is not the case, this could be an area of research for Amazon businesses to research how to encourage buyers to leave more reviews.

## Dataset

The dataset can be found at https://www.kaggle.com/datasets/asaniczka/amazon-products-dataset-2023-1-4m-products/data?select=amazon_products.csv.

The person that collected the data was a user named ASANICZKA.

The data from the csv files were scraped from Amazon.com.

The data was collected in order to get an in-depth idea of what products sell best, which SEO titles generate the most sales, the best price range for a product in a given category, and much more. The dataset used for this project is a smaller subset with 110443 observations instead of the original 1.4 million. The data was filtered to remove nulls and product names along with other trivial information for easier loading and analysis.

Rows: 1426337

Columns: 11 in amazon-products.csv

## Implications

The implications of this project will be that business owners on Amazon can use these guidelines in order to determine what products to sell and if they are currently selling items, they can use the results of this project to determine how to improve the designs of their products to make customers satisfied. Designers of these products can take into account how the ratings and price points of the products relate in order to meet business needs. These business needs may involve changing the features of a product, lowering cost, etc., all which industrial designers play a part in. Companies will have to consider how to create balance between cost and functionality in order to not only keep their existing customers, but encourage new ones to buy their product. The findings from this project may help drive that. Overall, the results of this project mainly aim to improve business on Amazon for sellers and their products. 

## Limitations

The limitations/problems with this dataset are that first, it does not have the reviews of a product given, only the rating. The reviews would be very useful for this project as they have key words that, when analyzed, could discover issues and satisfactory parts of the product that the customer bought, depending on if they left a good or bad review. Second, the rating appears to be averaged, as there is only one rating for each product, and not a distribution of 1-5 star ratings, so this has to be accounted for because the average may not account for, a 1-star rating when majority are 5-stars for example.

While this project aims to discover the relationship between ratings and the price of a product, it cannot cover the full scope of customers of these products and their feelings about these products. This dataset has over 1 million Amazon products and the more popular products will likely have a lot of reviews. 1 month is simply not enough time to cover all of the reviews for all products. In fact, the data analyzed may not be able to include all 12 million products - perhaps only the top 5-10 bestseller categories will be analyzed for a relationship between price and ratings of the products in said categories. This project will be a really simplified version and the final report will include the simplications and address the limited timeline of work done. Also, because only correlations will be analyzed, we won't be able to make any 100% certain conclusions regarding how products will do for sellers, but the correlations can be a good guideline for businesses to improve their products. More in depth analysis of this area would be something interesting to come from this.

# Conclusion / Summary Takeaways

Insight #1: There appears to be no specific relationship between the rating and price of products on Amazon. As seen in Chart 1, the categories are not the same and don't have many commonalities when switching between average prices for categories and average ratings for categories. If they were related, we would probably see higher priced products having either lower or higher ratings, or lower priced products having higher or lower ratings.

Insight #2: The top 3 categories that contain the best selling Amazon products are (1) Automotive Tools and Equipment with 139 bestselling products in the dataset, (2) Home Decor Product with 125 bestselling products, and (3) Toys & Games with 92 bestselling products. The rest of the bestselling categories (up to top 10) can be viewing via the Chart 2 tab.

Insight #3: The number of purchases in the last month for an Amazon product is weakly positively correlated with the number of reviews for that product. The limitation is that the variables being plotted are purchases in the last month compared to total reviews, which can change depending on how much people are buying in a month. It would be more accurate to analyze total purchases overall, but from the correlation, a 0.269 correlation coefficient suggests a weakly positive relationship between increase in purchases in the last month and the number of reviews for the product. 1000 data points were plotted for this correlation in Chart 3 (though more may have produced a more accurate result).

The most important insight learned is that there are specific categories on Amazon that have products that on average, contain more bestsellers than other categories. The broader implications of this insight mean that for people on Amazon looking to sell items, or for current Amazon businesses in the competition, they should look at the trends of what people buy a lot of (aka bestsellers) in order to beat their competitors or break into the Amazon marketplace.

