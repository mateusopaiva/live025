\c live025

--INSERT INTO orders(customer_id, amount) VALUES (10, 199.95);
--INSERT INTO orders(amount) VALUES (99);
--DELETE FROM orders WHERE customer_id = 9;

SELECT 
  cus.*,
  no_empty_object_array(
    COUNT(ord.id),
    JSON_AGG(
      JSON_STRIP_NULLS(
        JSON_BUILD_OBJECT(
          'id', ord.id,
          'amount', ord.amount
        )
      )
    )
  ) AS orders
FROM customers AS cus
LEFT JOIN orders AS ord ON ord.customer_id = cus.id
WHERE cus.id = 9
GROUP BY cus.id
;

-- 5 TIPOS DE JOINS:
-- JOIN (INNER JOIN)
-- LEFT JOIN (LEFT OUTER JOIN)
-- RIGHT JOIN (RIGHT OUTER JOIN)
-- FULL JOIN (FULL OUTER JOIN)
-- CROSS JOIN

-- AGG => Aggregate