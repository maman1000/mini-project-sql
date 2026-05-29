EXPLAIN SELECT * FROM products WHERE price BETWEEN 100000 AND 300000;

EXPLAIN SELECT u.name, SUM(td.subtotal) 
FROM transactions t 
JOIN users u ON t.user_id = u.id 
JOIN transaction_details td ON t.id = td.transaction_id 
GROUP BY u.id;