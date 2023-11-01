DROP TABLE IF EXISTS category, customer, product, cart, cart_product;
CREATE TABLE category (
    category_id INT not null,
    category_name TEXT not null,
    category_description TEXT,
    PRIMARY KEY (category_id)
);
CREATE TABLE customer (
    customer_id INT not null,
    customer_name TEXT not null,
    password TEXT not null,
    email TEXT not null,
    PRIMARY KEY (customer_id)
);
CREATE TABLE product (
    product_id INT not null,
    category_id INT not null,
    customer_id INT not null,
    name TEXT not null,
    description TEXT not null,
    image bytea,
    price INT not null,
    stock INT not null,
    PRIMARY KEY (product_id),
    FOREIGN KEY (category_id)
        REFERENCES category (category_id),
    FOREIGN KEY (customer_id)
        REFERENCES customer (customer_id)
);
CREATE TABLE cart (
    cart_id INT not null,
    customer_id INT not null,
    PRIMARY KEY (cart_id),
    FOREIGN KEY (customer_id)
        REFERENCES customer (customer_id)
);
CREATE TABLE cart_product (
    cart_id INT not null,
    product_id INT not null,
    FOREIGN KEY (cart_id)
        REFERENCES cart (cart_id),
    FOREIGN KEY (product_id)
        REFERENCES product (product_id)
);