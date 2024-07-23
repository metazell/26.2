-- Comments in SQL Start with dash-dash --
SELECT * FROM analytics WHERE id = 1880;

SELECT id, name FROM analytics WHERE last_updated = '2018-08-01';

SELECT category, COUNT(*) FROM analytics GROUP BY category;

SELECT name, reviews FROM analytics ORDER BY reviews DESC LIMIT 5;

SELECT name, reviews FROM analytics WHERE rating >= 4.8 ORDER BY reviews DESC LIMIT 1;

SELECT category, AVG(rating) AS avg_rating FROM analytics GROUP BY category ORDER BY avg_rating DESC;

SELECT name, price, rating FROM analytics WHERE rating < 3 ORDER BY price DESC LIMIT 1;

SELECT * FROM analytics WHERE min_installs <= 50 AND rating IS NOT NULL ORDER BY rating DESC;

SELECT name FROM analytics WHERE rating < 3 AND reviews >= 10000;

SELECT name, reviews FROM analytics WHERE price BETWEEN 0.10 AND 1.00 ORDER BY reviews DESC LIMIT 10;

SELECT * FROM analytics WHERE last_updated = (SELECT MIN(last_updated) FROM analytics);

SELECT * FROM analytics WHERE price = (SELECT MAX(price) FROM analytics);

SELECT SUM(reviews) FROM analytics;

SELECT category FROM analytics GROUP BY category HAVING COUNT(*) > 300;

SELECT name, reviews, min_installs, (min_installs::float / reviews) AS proportion
FROM analytics
WHERE min_installs >= 100000
ORDER BY proportion DESC
LIMIT 1;
