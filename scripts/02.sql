\c live025

--EXPLAIN ANALYZE VERBOSE SELECT * FROM customers WHERE first_name = 'Customer-10';
--EXPLAIN ANALYZE VERBOSE SELECT * FROM customers WHERE id = 10;
--EXPLAIN ANALYZE VERBOSE SELECT * FROM customers WHERE email = 'customer.100@exemplo.com' AND first_name = 'customer-10';

--DROP INDEX customer_first_name_idx;
--CREATE INDEX IF NOT EXISTS customer_first_name_idx ON customers(first_name);
SELECT pg_total_relation_size('customers');

--SELECT * FROM pg_indexes WHERE tablename = 'customers';

  983 040
1 163 264