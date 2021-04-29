USE lab_mysql;

SELECT * FROM salesperson
WHERE store_loc = 'Mimia';

UPDATE salesperson
SET store_loc = 'Miami'
WHERE store_loc = 'Mimia';

SELECT * FROM customer
WHERE (cust_name = 'Pablo Picasso') 
OR (cust_name = 'Abraham Lincoln') 
OR (cust_name =  'Napoléon Bonaparte')
;

UPDATE customer
SET email = (
CASE WHEN cust_name = 'Pablo Picasso' THEN 'ppicasso@gmail.com'
WHEN cust_name  = 'Abraham Lincoln' THEN 'lincoln@us.gov'
WHEN cust_name = 'Napoléon Bonaparte' THEN 'hello@napoleon.me'
END)
;