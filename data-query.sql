INSERT INTO staff VALUES (5,'santhu','warden',123687);
INSERT INTO staff VALUES (7,'joseph','manager',456677);


UPDATE staff SET contact=999999 WHERE id=5; 
UPDATE staff SET NAME='chatur' WHERE role='chef';

DELETE FROM staff WHERE id=5;

SELECT * FROM room;

SELECT t.name,r.r_num FROM tenant t JOIN room r ON t.r_num=r.r_num;

SELECT c.day,m.name FROM canteen c JOIN menu m ON c.Menu_id = m.id;

SELECT COUNT(id) FROM tenant;
SELECT AVG(rent_amnt) FROM room;
SELECT COUNT(id),role FROM staff GROUP BY role;

SELECT r.r_num,r.description,t.name,c.id,c.max_seats
FROM room r,tenant t,canteen c
WHERE t.r_num=r.r_num AND c.id=r.Canteen_id;s