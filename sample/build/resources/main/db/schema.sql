
DROP TABLE IF EXISTS Product;
CREATE TABLE product (
    id IDENTITY PRIMARY KEY,
    sku VARCHAR(256),
    name VARCHAR(256),
    price DECIMAL(20, 2)
);

DROP TABLE IF EXISTS customer;
CREATE TABLE customer (
    id IDENTITY PRIMARY KEY,
    name VARCHAR(256),
    birthdate DATE
);

DROP TABLE IF EXISTS address;
CREATE TABLE address (
    id INT8 PRIMARY KEY,
    street VARCHAR(128),
    postal_code VARCHAR(16),
    FOREIGN KEY(id) REFERENCES customer(id) ON DELETE CASCADE
);

DROP TABLE IF EXISTS email_address;
CREATE TABLE email_address (
    id IDENTITY PRIMARY KEY,
    customer_id INT8,
    address VARCHAR(128),
    FOREIGN KEY(customer_id) REFERENCES customer(id) ON DELETE CASCADE
);

DROP TABLE IF EXISTS purchase_order;
CREATE TABLE purchase_order (
    id IDENTITY PRIMARY KEY,
    customer_id INT8,
    order_date DATE,
    FOREIGN KEY(customer_id) REFERENCES customer(id)
);

DROP TABLE IF EXISTS item;
CREATE TABLE item (
    id IDENTITY PRIMARY KEY,
    order_id INT8,
    product_id INT8,
    quantity INT,
    total DECIMAL(20, 2),
    FOREIGN KEY(order_id) REFERENCES purchase_order(id),
    FOREIGN KEY(product_id) REFERENCES product(id)
);