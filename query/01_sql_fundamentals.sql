-- Tampilkan seluruh produk
SELECT * FROM products;

-- Tampilkan nama dan harga produk saja
SELECT product_name, price
FROM products;

-- Tampilkan produk dengan harga antara 50.000 sampai 200.000
SELECT *
FROM products
WHERE price BETWEEN 50000 AND 200000;

-- Tampilkan produk dengan stok 0 ATAU harga di atas 500.000
SELECT *
FROM products
WHERE stock = 0
OR price > 500000;

-- Tampilkan 5 produk dengan harga tertinggi
SELECT *
FROM products
ORDER BY price DESC
LIMIT 5;