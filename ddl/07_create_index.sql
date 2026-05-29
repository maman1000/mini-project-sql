CREATE INDEX idx_products_user_id ON products(user_id);
CREATE INDEX idx_products_category_id ON products(category_id);
CREATE INDEX idx_products_product_name ON products(product_name);
CREATE INDEX idx_products_price ON products(price);
CREATE INDEX idx_products_stock ON products(stock);

CREATE INDEX idx_transactions_user_id ON transactions(user_id);
CREATE INDEX idx_transactions_date ON transactions(transaction_date);

CREATE INDEX idx_td_transaction_id ON transaction_details(transaction_id);
CREATE INDEX idx_td_product_id ON transaction_details(product_id);
CREATE INDEX idx_td_trans_prod ON transaction_details(transaction_id, product_id);
