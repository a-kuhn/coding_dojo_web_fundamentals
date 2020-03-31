SELECT CONCAT(users.first_name, ' ', users.last_name) as user, CONCAT(u2.first_name, ' ', u2.last_name) as friend
FROM users
LEFT JOIN friendships f ON users.id = f.user_id
LEFT JOIN users u2 ON u2.id = f.friend_id;


-- 1. Return all users who are friends with Kermit, make sure their names are displayed in results.
SELECT CONCAT(users.first_name, ' ', users.last_name) as user, CONCAT(u2.first_name, ' ', u2.last_name) as friend
FROM users
LEFT JOIN friendships f ON users.id = f.user_id
LEFT JOIN users u2 ON u2.id = f.friend_id
WHERE u2.first_name = 'Kermit';


-- 2. Return the count of all friendships
SELECT COUNT(*)
FROM users
LEFT JOIN friendships f ON users.id = f.user_id
LEFT JOIN users u2 ON u2.id = f.friend_id;


-- 3. Find out who has the most friends and return the count of their friends.
SELECT CONCAT(users.first_name, ' ', users.last_name) as user, CONCAT(u2.first_name, ' ', u2.last_name) as friend
FROM users
LEFT JOIN friendships f ON users.id = f.user_id
LEFT JOIN users u2 ON u2.id = f.friend_id;


-- 4. Create a new user and make them friends with Eli Byers, Kermit The Frog, and Marky Mark
INSERT INTO users (first_name, last_name)
VALUES ('Randy', 'Candy');

INSERT INTO friendships (user_id, friend_id)
VALUES (6, 2);

INSERT INTO friendships (user_id, friend_id)
VALUES (6, 4);

INSERT INTO friendships (user_id, friend_id)
VALUES (6, 5);

-- 5. Return the friends of Eli in alphabetical order
SELECT CONCAT(users.first_name, ' ', users.last_name) as user, CONCAT(u2.first_name, ' ', u2.last_name) as friend
FROM users
LEFT JOIN friendships f ON users.id = f.user_id
LEFT JOIN users u2 ON u2.id = f.friend_id
WHERE users.first_name='Eli'
ORDER BY u2.last_name DESC;


-- 6. Remove Marky Mark from Eli’s friends.
DELETE FROM friendships WHERE id = 5;


-- 7. Return all friendships, displaying just the first and last name of both friends
SELECT CONCAT(users.first_name, ' ', users.last_name) as user, CONCAT(u2.first_name, ' ', u2.last_name) as friend
FROM users
LEFT JOIN friendships f ON users.id = f.user_id
LEFT JOIN users u2 ON u2.id = f.friend_id;

