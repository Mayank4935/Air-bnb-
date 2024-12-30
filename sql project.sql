CREATE TABLE mayank. listing_details (
    id INT PRIMARY KEY,
    name VARCHAR(255),
    host_id INT,
    host_name VARCHAR(255),
    neighbourhood_group VARCHAR(255),
    neighbourhood VARCHAR(255),
    room_type VARCHAR(255)
);
-- Q2 Write a query to show names from Listings table
SELECT name FROM listing_details;

-- Q3 Write a query to fetch total listings from the listings table
SELECT COUNT(*) FROM listing_details;

-- 4.Write a query to fetch total listing_id from the booking_details table
SELECT COUNT(listing_id) FROM `sql airbnb hospitality project 2 new17075530020`;

-- 5.Write a query to fetch host ids from listings table
SELECT host_id FROM listing_details;

-- 6.Write a query to fetch all unique host name from listings table
SELECT distinct (host_id) FROM listing_details;

-- 7.Write a query to show all unique neighbourhood_group from listings table
SELECT distinct(neighbourhood_group) FROM listing_details;

-- 8.Write a query to show all unique neighbourhood from listings table
SELECT distinct(neighbourhood) FROM listing_details;

-- 9.Write a query to fetch unique room_type from listings tables
SELECT distinct(room_type) FROM listing_details;

-- 10.Write a query to show all values of Brooklyn & Manhattan from listings tables
SELECT * 
FROM listing_details
WHERE neighbourhood_group IN ('Brooklyn', 'Manhattan');

-- 11.Write a query to show maximum price from booking_details table
SELECT MAX(price) FROM `sql airbnb hospitality project 2 new17075530020`;

-- 12.Write a query to show minimum price fronbooking_details table
SELECT min(price) FROM `sql airbnb hospitality project 2 new17075530020`;

-- 13.Write a query to show average price from booking_details table
SELECT avg(price) FROM `sql airbnb hospitality project 2 new17075530020`;

-- 14.Write a query to show minimum value of minimum_nights from booking_details table
SELECT MIN(minimum_nights) FROM `sql airbnb hospitality project 2 new17075530020`;

-- 15.Write a query to show maximum value of minimum_nights from booking_details table
SELECT MAX(minimum_nights) FROM `sql airbnb hospitality project 2 new17075530020`;

-- 16.Write a query to show average availability_365
SELECT AVG(availability_365) FROM `sql airbnb hospitality project 2 new17075530020`;

-- 17.Write a query to show id , availability_365 and all availability_365 values greater than 300
SELECT listing_details.id, `sql airbnb hospitality project 2 new17075530020`.availability_365
FROM listing_details
inner JOIN `sql airbnb hospitality project 2 new17075530020`
ON listing_details.id = `sql airbnb hospitality project 2 new17075530020`.listing_id
WHERE availability_365 > 300;

-- 18.Write a query to show count of id where price is in between 300 to 400
SELECT COUNT(listing_details.id)
FROM listing_details
inner join `sql airbnb hospitality project 2 new17075530020`
ON listing_details.id = `sql airbnb hospitality project 2 new17075530020`.listing_id
WHERE price between 300 AND 400 ;

-- 19.Write a query to show count where minimum_nights spend is greater than 100
SELECT COUNT(minimum_nights)
FROM `sql airbnb hospitality project 2 new17075530020`
WHERE minimum_nights > 100;

-- 20.a query to show count of id where minimum_nights spend is less than 5
SELECT COUNT(minimum_nights)
FROM `sql airbnb hospitality project 2 new17075530020`
WHERE minimum_nights < 5;

-- 21.Write a query to show all data of listings &booking_details
SELECT *
FROM listing_details 
JOIN `sql airbnb hospitality project 2 new17075530020`
on listing_details.id = `sql airbnb hospitality project 2 new17075530020`.listing_id ;

-- 22.Write a query to show host name and price
SELECT listing_details.host_name, `sql airbnb hospitality project 2 new17075530020`.price
FROM listing_details
JOIN `sql airbnb hospitality project 2 new17075530020`
 ON listing_details.id = `sql airbnb hospitality project 2 new17075530020`.listing_id;

-- 23. Write a query to show room_type and price
SELECT listing_details.room_type, `sql airbnb hospitality project 2 new17075530020`.price
FROM listing_details
JOIN `sql airbnb hospitality project 2 new17075530020`
ON listing_details.id = `sql airbnb hospitality project 2 new17075530020`.listing_id;

-- 24.Write a query to show neighbourhood_group&minimum_nights spend
SELECT listing_details.neighbourhood_group, `sql airbnb hospitality project 2 new17075530020`.minimum_nights
FROM listing_details
JOIN `sql airbnb hospitality project 2 new17075530020`
ON listing_details.id = `sql airbnb hospitality project 2 new17075530020`.listing_id;

-- 25.Write a query to show neighbourhood& availability_365
SELECT listing_details.neighbourhood, `sql airbnb hospitality project 2 new17075530020`.availability_365
FROM listing_details
JOIN `sql airbnb hospitality project 2 new17075530020`
ON listing_details.id = `sql airbnb hospitality project 2 new17075530020`.listing_id;

-- 26.Write a query to show total price by neighbourhood_group
SELECT listing_details.neighbourhood_group, 
       SUM(`sql airbnb hospitality project 2 new17075530020`.price) 
FROM listing_details
JOIN `sql airbnb hospitality project 2 new17075530020`
ON listing_details.id = `sql airbnb hospitality project 2 new17075530020`.listing_id
GROUP BY listing_details.neighbourhood_group;


-- 27.Write a query to show maximum price by neighbourhood_group
SELECT listing_details.neighbourhood_group,
       MAX(`sql airbnb hospitality project 2 new17075530020`.price)
FROM listing_details
JOIN `sql airbnb hospitality project 2 new17075530020`
ON listing_details.id = `sql airbnb hospitality project 2 new17075530020`.listing_id
GROUP BY listing_details.neighbourhood_group;

-- 28.  Write a query to show maximum night spend by neighbourhood_group
SELECT listing_details.neighbourhood_group,
       MAX(`sql airbnb hospitality project 2 new17075530020`.price * `sql airbnb hospitality project 2 new17075530020`.minimum_nights) AS max_night_spend
FROM listing_details
JOIN `sql airbnb hospitality project 2 new17075530020`
ON listing_details.id = `sql airbnb hospitality project 2 new17075530020`.listing_id
GROUP BY listing_details.neighbourhood_group;

-- 29.Write a query to show maximum reviews_per_monthspend by neighbourhood
SELECT listing_details.neighbourhood,
       MAX(`sql airbnb hospitality project 2 new17075530020`.price * `sql airbnb hospitality project 2 new17075530020`.minimum_nights) AS max_night_spend
FROM listing_details
JOIN `sql airbnb hospitality project 2 new17075530020`
ON listing_details.id = `sql airbnb hospitality project 2 new17075530020`.listing_id
GROUP BY listing_details.neighbourhood;

-- 30.Write a query to show maximum price by room type
SELECT listing_details.room_type, MAX(`sql airbnb hospitality project 2 new17075530020`.price) 
FROM `sql airbnb hospitality project 2 new17075530020`
inner join listing_details
on `sql airbnb hospitality project 2 new17075530020`.listing_id = listing_details.id
GROUP BY listing_details.room_type;

-- 31.Write a query to show average number_of_reviews by room_type
SELECT listing_details.room_type, AVG(`sql airbnb hospitality project 2 new17075530020`.number_of_reviews) 
FROM `sql airbnb hospitality project 2 new17075530020`
INNER JOIN listing_details
ON `sql airbnb hospitality project 2 new17075530020`.listing_id = listing_details.id
GROUP BY listing_details.room_type;

-- 32.Write a query to show average price by room type
SELECT listing_details.room_type, avg(`sql airbnb hospitality project 2 new17075530020`.price) 
FROM `sql airbnb hospitality project 2 new17075530020`
inner join listing_details
on `sql airbnb hospitality project 2 new17075530020`.listing_id = listing_details.id
GROUP BY listing_details.room_type;

-- 33.  Write a query to show average night spend by room type
SELECT listing_details.neighbourhood,
       AVG(`sql airbnb hospitality project 2 new17075530020`.price * `sql airbnb hospitality project 2 new17075530020`.minimum_nights) AS max_night_spend
FROM listing_details
JOIN `sql airbnb hospitality project 2 new17075530020`
ON listing_details.id = `sql airbnb hospitality project 2 new17075530020`.listing_id
GROUP BY listing_details.neighbourhood;

-- 34.Write a query to show average price by room type but average price is less than 100
SELECT listing_details.room_type,
       AVG(`sql airbnb hospitality project 2 new17075530020`.price) 
FROM listing_details
JOIN `sql airbnb hospitality project 2 new17075530020`
ON listing_details.id = `sql airbnb hospitality project 2 new17075530020`.listing_id
WHERE `sql airbnb hospitality project 2 new17075530020`.price < 100
GROUP BY listing_details.room_type;

-- 35.Write a query to show average night by neighbourhood and average_nights is greater than 5

-- 36.Write a query to show all data from listings where price is greater than 200 using sub-query

-- 37.Write a query to show all values from booking_details table where host id is 314941 using sub-query

-- 38.Find all pairs of id having the same host id, each pair coming once only.

-- 39.Write ansql query to show fetch all records that have the term cozy in name

-- 40.Write ansql query to show price, host id, neighbourhood_group of manhattanneighbourhood_group 
select `sql airbnb hospitality project 2 new17075530020`.price, listing_details.host_id,listing_details.neighbourhood_group
from `sql airbnb hospitality project 2 new17075530020`
inner join listing_details
on `sql airbnb hospitality project 2 new17075530020`.listing_id = listing_details.id
where listing_details.neighbourhood_group in ('manhattan');

-- 41. Write a query to show id , host name, neighbourhood and price but only for Upper West Side 
-- & Williamsburg neighbourhood, also make sure price is greater than 100
SELECT 
    listing_details.id,
    listing_details.host_name,
    listing_details.neighbourhood,
    `sql airbnb hospitality project 2 new17075530020`.price
FROM
    listing_details
        INNER JOIN
    `sql airbnb hospitality project 2 new17075530020` ON listing_details.id = `sql airbnb hospitality project 2 new17075530020`.listing_id
WHERE
    listing_details.neighbourhood IN ('Upper West Side' , 'Williamsburg')
        AND `sql airbnb hospitality project 2 new17075530020`.price > 100;

-- 42.Write a query to show id , host name, neighbourhood and price for host name Elise and neighbourhood is Bedford-Stuyvesant
SELECT 
    listing_details.id,
    listing_details.host_name,
    listing_details.neighbourhood,
    `sql airbnb hospitality project 2 new17075530020`.price
FROM
    listing_details
        INNER JOIN
    `sql airbnb hospitality project 2 new17075530020` 
    ON listing_details.id = `sql airbnb hospitality project 2 new17075530020`.listing_id
WHERE
    listing_details.host_name = 'Elise'
        AND listing_details.neighbourhood = 'Bedford-Stuyvesant';
        
-- 43. Write a query to show host_name, availability_365,minimum_nights only for 100+ availability_365 and minimum_nights
SELECT 

    listing_details.host_name,
    `sql airbnb hospitality project 2 new17075530020`.availability_365,
    `sql airbnb hospitality project 2 new17075530020`.minimum_nights
FROM
    listing_details
        INNER JOIN
    `sql airbnb hospitality project 2 new17075530020` 
    ON listing_details.id = `sql airbnb hospitality project 2 new17075530020`.listing_id
WHERE
    `sql airbnb hospitality project 2 new17075530020`.availability_365 > 100
        AND `sql airbnb hospitality project 2 new17075530020`.minimum_nights > 100;

-- 44.Write a query to show to fetch id , host_name , number_of_reviews, and reviews_per_month
-- but show only that records where number of reviews are 500+ and review per month is 5+

SELECT
 
	listing_details.id,
    listing_details.host_name,
    `sql airbnb hospitality project 2 new17075530020`.number_of_reviews,
    `sql airbnb hospitality project 2 new17075530020`.reviews_per_month
FROM
    listing_details
        INNER JOIN
    `sql airbnb hospitality project 2 new17075530020` 
    ON listing_details.id = `sql airbnb hospitality project 2 new17075530020`.listing_id
WHERE
    `sql airbnb hospitality project 2 new17075530020`.number_of_reviews > 500
        AND `sql airbnb hospitality project 2 new17075530020`.reviews_per_month > 5;
        
-- 45 Write a query to show neighbourhood_group which have most total number of review

-- 46 .  Write a query to show host name which have most cheaper total price

-- 47. Write a query to show host name which have most costly total price

-- 48 Write a query to show host name which have max price using sub-query

-- 49 Write a query to show neighbourhood_group where price is less than 100

SELECT 
    listing_details.neighbourhood_group,
    `sql airbnb hospitality project 2 new17075530020`.price
FROM
    listing_details
INNER JOIN
    `sql airbnb hospitality project 2 new17075530020`
ON 
    listing_details.id = `sql airbnb hospitality project 2 new17075530020`.listing_id
WHERE
    `sql airbnb hospitality project 2 new17075530020`.price < 100;

-- 50 Write a query to find max price, average availability_365 for each room type and 
-- order in ascending by maximum price.

SELECT 
    listing_details.room_type,
    MAX(`sql airbnb hospitality project 2 new17075530020`.price) AS max_price,
    AVG(`sql airbnb hospitality project 2 new17075530020`.availability_365) AS avg_availability_365
FROM
    listing_details
INNER JOIN
    `sql airbnb hospitality project 2 new17075530020`
ON 
    listing_details.id = `sql airbnb hospitality project 2 new17075530020`.listing_id
GROUP BY 
    listing_details.room_type
ORDER BY 
    max_price ASC;









