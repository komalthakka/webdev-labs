-- Exercise 1 (done for you):
SELECT * FROM users;



-- Exercise 2 (done for you):
SELECT id, first_name, last_name 
FROM users;



-- Exercise 3
SELECT id, first_name, last_name
FROM users
ORDER BY last_name;



-- Exercise 4
SELECT id, user_id, image_url
FROM posts
WHERE user_id=26;



-- Exercise 5
SELECT id, user_id, image_url
FROM posts
WHERE user_id=26 OR user_id=12;



-- Exercise 6
SELECT count(*) FROM posts;



-- Exercise 7
SELECT user_id,count(*) 
FROM comments
GROUP BY user_id
ORDER BY count(*) DESC;



-- Exercise 8
SELECT posts.id, posts.image_url, posts.user_id,
	users.username, users.first_name, users.last_name
FROM posts
INNER JOIN users
ON posts.user_id=users.id
WHERE users.id=12 OR users.id=26;



-- Exercise 9
SELECT p.id, p.pub_date, f.following_id
FROM following f
INNER JOIN posts p ON
	f.following_id=p.user_id
WHERE f.user_id=26;



-- Exercise 10
SELECT p.id, p.pub_date, f.following_id, u.username
FROM following f
INNER JOIN posts p ON f.following_id=p.user_id
INNER JOIN users u ON u.id = f.following_id
WHERE f.user_id=26
ORDER BY p.pub_date DESC;



-- Exercise 11
INSERT INTO bookmarks (user_id,post_id,timestamp)
VALUES (26,219,TO_TIMESTAMP('2014-07-02 06:14:00.742000000', 'YYYY-MM-DD HH24:MI:SS.FF')),(26,220,TO_TIMESTAMP('2014-07-02 06:14:00.742000000', 'YYYY-MM-DD HH24:MI:SS.FF')),(26,221,TO_TIMESTAMP('2014-07-02 06:14:00.742000000', 'YYYY-MM-DD HH24:MI:SS.FF'));



-- Exercise 12
DELETE FROM bookmarks
WHERE (user_id = 26 AND post_id = 219) OR (user_id = 26 AND post_id = 220) OR (user_id = 26 AND post_id = 221);



-- Exercise 13
UPDATE users
SET email = 'knick2022@gmail.com'
WHERE id = 26;



-- Exercise 14
SELECT posts.id, posts.user_id, COUNT(*), posts.caption
FROM posts
INNER JOIN comments ON posts.id = comments.post_id
WHERE posts.user_id = 26
GROUP BY posts.id;