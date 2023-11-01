INSERT INTO category (category_id, category_name, category_description) VALUES (0001, 'Category 1', 'Category 1 Description');
INSERT INTO customer (customer_id, customer_name, password, email) VALUES (1000, 'Customer 1', 'password', 'email@email.com');
INSERT INTO product (product_id, category_id, customer_id, name, description, price, stock) VALUES (0011, 0001, 1000, 'Product 1', 'Product 1 description', 10, 100);
INSERT INTO cart (cart_id, customer_id) VALUES (1111, 1000);
INSERT INTO cart_product (cart_id, product_id) VALUES (1111, 0011);