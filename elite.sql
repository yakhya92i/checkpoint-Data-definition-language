CREATE TABLE customer 
(
    customer_id VARCHAR(20) PRIMARY KEY,
    customer_name VARCHAR(20) NOT NULL,
    customer_tel NUMBER
);

CREATE TABLE product
(
    product_id VARCHAR(20) PRIMARY KEY,
    customer_name VARCHAR(20) NOT NULL,
    price NUMBER CHECK (price > 0),
    category VARCHAR2(20)
);

CREATE TABLE orders  
(
    customer_id VARCHAR(20),
    product_id VARCHAR(20) NOT NULL,
    quantity NUMBER, 
    total_amount NUMBER,
    OrderDate DATE DEFAULT SYSDATE,
    PRIMARY KEY (customer_id, product_id)
);
