-- Hitung total user yang terdaftar
SELECT COUNT(*) AS total_user
FROM users;

-- Hitung total produk yang tersedia
SELECT COUNT(*) AS total_produk
FROM products;

-- Hitung jumlah produk per kategori
SELECT
    pc.category_name,
    COUNT(p.id) AS jumlah_produk
FROM product_categories pc
LEFT JOIN products p
ON pc.id = p.category_id
GROUP BY pc.category_name;

-- Hitung rata-rata harga produk per kategori
SELECT
    pc.category_name,
    AVG(p.price) AS rata_rata_harga
FROM product_categories pc
LEFT JOIN products p
ON pc.id = p.category_id
GROUP BY pc.category_name;

-- Tampilkan kategori yang memiliki lebih dari 3 produk
SELECT
    pc.category_name,
    COUNT(p.id) AS jumlah_produk
FROM product_categories pc
LEFT JOIN products p
ON pc.id = p.category_id
GROUP BY pc.category_name
HAVING COUNT(p.id) > 3;

