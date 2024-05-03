USE sakila;
-- 1. 
SELECT c.name AS category_name, COUNT(fc.film_id) AS movie_count
FROM category c
JOIN film_category fc ON c.category_id = fc.category_id
GROUP BY c.category_id;

-- 2. 
SELECT store.store_id, city.city, country.country
FROM store
JOIN address ON store.address_id = address.address_id
JOIN city ON address.city_id = city.city_id
JOIN country ON city.country_id = country.country_id;

-- 3. 
SELECT s.store_id, SUM(p.amount) AS total_revenue
FROM payment p
JOIN rental r ON p.rental_id = r.rental_id
JOIN staff s ON p.staff_id = s.staff_id
GROUP BY s.store_id;
