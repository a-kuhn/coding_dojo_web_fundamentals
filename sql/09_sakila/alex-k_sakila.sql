-- 1. What query would you run to get all the customers inside city_id = 312? Your query should return customer first name, last name, email, and address.
SELECT cu.first_name, cu.last_name, cu.email, a.address
FROM customer cu
JOIN address a ON cu.address_id = a.address_id
WHERE a.city_id = '312';

-- 2. What query would you run to get all comedy films? Your query should return film title, description, release year, rating, special features, and genre (category).
SELECT f.title, f.description, f.release_year, f.rating, f.special_features,  c.name
FROM film f
JOIN film_category ON f.film_id = film_category.film_id
JOIN category c ON film_category.category_id = c.category_id
WHERE c.name = 'comedy';


-- 3. What query would you run to get all the films joined by actor_id=5? Your query should return the actor id, actor name, film title, description, and release year.
SELECT a.actor_id, a.first_name, f.title, f.description, f.release_year
FROM actor a
JOIN film_actor ON a.actor_id = film_actor.actor_id
JOIN film f ON film_actor.film_id = f.film_id
WHERE a.actor_id = 5;


-- 4. What query would you run to get all the customers in store_id = 1 and inside these cities (1, 42, 312 and 459)? Your query should return customer first name, last name, email, and address.
SELECT c.first_name, c.last_name, c.email, a.address
FROM customer c
JOIN address a ON c.address_id = a.address_id
WHERE c.store_id = 1 AND a.city_id IN (1, 42, 312, 459);


-- 5. What query would you run to get all the films with a "rating = G" and "special feature = behind the scenes", joined by actor_id = 15? Your query should return the film title, description, release year, rating, and special feature. Hint: You may use LIKE function in getting the 'behind the scenes' part.
SELECT f.title, f.description, f.release_year, f.rating, f.special_features
FROM film f
JOIN film_actor fa ON f.film_id = fa.film_id
WHERE f.rating = 'G' AND f.special_features LIKE '%behind the scenes%' AND fa.actor_id = 15;


-- 6. What query would you run to get all the actors that joined in the film_id = 369? Your query should return the film_id, title, actor_id, and actor_name.
SELECT f.film_id, f.title, a.actor_id, CONCAT(a.first_name,' ', a.last_name)
FROM film f
JOIN film_actor ON f.film_id = film_actor.film_id
JOIN actor a ON film_actor.actor_id = a.actor_id
WHERE f.film_id = 369;


-- 7. What query would you run to get all drama films with a rental rate of 2.99? Your query should return film title, description, release year, rating, special features, and genre (category).
SELECT f.title, f.description, f.release_year, f.rating, f.special_features, c.name, f.rental_rate
FROM film f 
JOIN film_category ON f.film_id = film_category.film_id
JOIN category c ON film_category.category_id = c.category_id
WHERE f.rental_rate = 2.99 AND c.name = 'drama';


-- 8. What query would you run to get all the action films which are joined by SANDRA KILMER? Your query should return film title, description, release year, rating, special features, genre (category), and actor's first name and last name.
SELECT f.title, f.description, f.release_year, f.rating, f.special_features, c.name, CONCAT(a.first_name, ' ', a.last_name) AS actor
FROM film f 
JOIN film_category ON f.film_id = film_category.film_id
JOIN category c ON film_category.category_id = c.category_id
JOIN film_actor ON f.film_id = film_actor.film_id
JOIN actor a ON film_actor.actor_id = a.actor_id

WHERE c.name = 'action' AND a.first_name = 'SANDRA' AND a.last_name = 'KILMER';





