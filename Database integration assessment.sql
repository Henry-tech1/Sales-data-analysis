SELECT * FROM ecommerce_db.products;

-- Retrieve top 10 most reviewed products
SELECT product_name, rating_count
FROM ecommerce_db.products
ORDER BY rating_count DESC
LIMIT 10;

-- Find the category with the highest average rating
SELECT category, AVG(rating_count) AS avg_rating
FROM ecommerce_db.products
GROUP BY category
ORDER BY avg_rating DESC
LIMIT 1;

-- Identify products with a discount greater than 50%
SELECT product_name, discount_percentage
FROM ecommerce_db.products
WHERE discount_percentage > 50;

-- Find the user who has written the most reviews
SELECT user_id, COUNT(*) AS review_count
FROM ecommerce_db.products
GROUP BY user_id
ORDER BY review_count DESC
LIMIT 1;

-- List the top 5 best-selling categories (based on the number of reviews)
SELECT category, COUNT(*) AS review_count
FROM ecommerce_db.products
GROUP BY category
ORDER BY review_count DESC
LIMIT 5;
