\c live025

INSERT INTO orders(customer_id, amount) VALUES (10, 199.95);

SELECT * FROM customers AS cus
JOIN orders AS ord ON ord.customer_id = cus.id
WHERE cus.id = 10
;
