-- Tampilkan daftar produk beserta nama kategorinya
SELECT
    p.product_name,
    pc.category_name
FROM products p
INNER JOIN product_categories pc
ON p.category_id = pc.id;

-- Tampilkan semua kategori meskipun belum memiliki produk
SELECT
    pc.category_name,
    p.product_name
FROM product_categories pc
LEFT JOIN products p
ON pc.id = p.category_id;

-- Tampilkan semua user meskipun belum pernah membeli produk
SELECT
    u.name,
    t.id AS transaction_id
FROM users u
LEFT JOIN transactions t
ON u.id = t.user_id;

-- Tampilkan daftar transaksi beserta nama buyer
SELECT
    t.id AS transaction_id,
    u.name AS buyer_name,
    t.transaction_date
FROM transactions t
INNER JOIN users u
ON t.user_id = u.id;

-- Tampilkan daftar produk beserta nama user yang mengupload produk tersebut
SELECT
    p.product_name,
    u.name AS uploader
FROM products p
INNER JOIN users u
ON p.user_id = u.id;