# Customer_id 2 has moved to a new address and purchased a dashpass
UPDATE customer
SET dashpass = 'YES', address = 'Newpet Rd'
WHERE customer_id = 2;

# Find how many people have dashpass
SELECT dashpass, count(dashpass) as count
FROM customer
GROUP BY dashpass;

# Find the average rating of customers who has dashpass and who don'table
SELECT dashpass, round(AVG(rating),2) as avg_rating
FROM doordash_pos.customer
GROUP BY dashpass;

# Return the ratings of all stores that is above average and list them in desc order
SELECT store_menu.store_name, store_menu.rating
FROM store_menu
WHERE rating > (SELECT AVG(rating) FROM store_menu)
ORDER BY rating DESC;

# Return the ratings of all stores and label them either above or below average and list them in asc order
SELECT DISTINCT(store_name), rating,
CASE WHEN rating > (SELECT AVG(rating) FROM store_menu) THEN 'above average'
	 ELSE 'below average'
END AS avg_rating
FROM store_menu
ORDER BY rating;

# Return customer name and state where their rating is above 4 and does not have a dashpass
SELECT customer.customer_id, customer.first_name, customer.last_name, customer.rating, customer.dashpass, customer_city.state
FROM customer
JOIN customer_city
ON customer.customer_city_id = customer_city.customer_city_id
WHERE (rating > 4) and (dashpass = 'NO') ;

# Return customer name who has spent more than $15 in a single order
SELECT orders.order_id, orders.customer_id, orders.order_total, customer.first_name, customer.last_name
FROM orders
JOIN customer
ON orders.customer_id = customer.customer_id
WHERE orders.order_total > 15;

# Find the name and address of the customer who has ordered more than 1 menu item
SELECT customer.customer_id, customer.first_name, customer.last_name, customer.address, ordered_amount.*
FROM(
	SELECT orders.order_id, orders.customer_id, count(orders.order_id) as ordered_item_amount, orders.order_total
	FROM orders
	GROUP BY order_id
	HAVING ordered_item_amount > 1
) as ordered_amount
JOIN customer
ON ordered_amount.customer_id = customer.customer_id;

#Return dasher name who has delivered after june
SELECT dasher.dasher_id, dasher.first_name, dasher.last_name, order_date.*
FROM (
	SELECT orders.order_id, orders.dasher_id, month_name.month_number, month_name.month_name, month_name.date
	FROM (SELECT date.date_id, date.date, month.month_number, month.month_name
		  FROM date
		  JOIN month
		  ON date.month_id = month.month_id
          ) as month_name # This table joins month and date table
	JOIN orders
	ON orders.date_id = month_name.date_id
	WHERE month_number > 6
) as order_date # This table joins orders and combined date table
JOIN dasher
ON dasher.dasher_id = order_date.dasher_id;

# List the customer name and the percentage tip of their total price before fees and tips in desc order
SELECT customer.first_name, customer.last_name, order_tip.*
FROM(
	SELECT DISTINCT(orders.order_id), orders.customer_id, orders.dasher_tip, price.raw_price, orders.fees, orders.order_total, round(((orders.dasher_tip / price.raw_price) * 100),2) as percentage_tip
	FROM(
		SELECT DISTINCT(order_id), round((order_total - (dasher_tip + fees)), 2) as raw_price
		FROM orders
        ) as price # Finding out the raw order price
	JOIN orders
	ON orders.order_id = price.order_id
    ) as order_tip
JOIN customer
ON customer.customer_id = order_tip.customer_id
ORDER BY percentage_tip desc

