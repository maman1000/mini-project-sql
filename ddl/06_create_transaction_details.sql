CREATE TABLE transaction_details (
    id INT AUTO_INCREMENT PRIMARY KEY,
    transaction_id INT NOT NULL,
    product_id INT NOT NULL,
    qty INT NOT NULL,
    subtotal DECIMAL(10,2) NOT NULL,

    FOREIGN KEY (transaction_id)
        REFERENCES transactions(id),

    FOREIGN KEY (product_id)
        REFERENCES products(id)
);