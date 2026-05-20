# Food Delivery Database System

## 1. schema.sql
-- =========================================
-- DATABASE CREATION
-- =========================================

CREATE DATABASE QuickBite_Database_System;

USE QuickBite_Database_System;


-- =========================================
-- TABLE CREATION
-- =========================================

-- customers table

CREATE TABLE customers(
    customer_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    phone VARCHAR(15) UNIQUE NOT NULL,
    address VARCHAR(255) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);


-- restaurants table

CREATE TABLE restaurants(
    restaurant_id INT PRIMARY KEY AUTO_INCREMENT,
    restaurant_name VARCHAR(100) NOT NULL,
    location VARCHAR(100) NOT NULL,
    rating DECIMAL(2,1) CHECK(rating BETWEEN 1 AND 5),
    contact_number VARCHAR(15) UNIQUE NOT NULL
);


-- menu_items table

CREATE TABLE menu_items(
    item_id INT PRIMARY KEY AUTO_INCREMENT,
    restaurant_id INT NOT NULL,
    item_name VARCHAR(100) NOT NULL,
    price DECIMAL(10,2) CHECK(price > 0),
    category VARCHAR(50),
    availability_status VARCHAR(20) DEFAULT 'Available',

    FOREIGN KEY (restaurant_id)
    REFERENCES restaurants(restaurant_id)
);


-- delivery_partners table

CREATE TABLE delivery_partners(
    partner_id INT PRIMARY KEY AUTO_INCREMENT,
    partner_name VARCHAR(100) NOT NULL,
    phone VARCHAR(15) UNIQUE NOT NULL,
    vehicle_type VARCHAR(50) NOT NULL,
    availability_status VARCHAR(20) DEFAULT 'Available'
);


-- orders table

CREATE TABLE orders(
    order_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_id INT NOT NULL,
    delivery_partner_id INT,
    order_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    order_status VARCHAR(30) DEFAULT 'Pending',
    total_amount DECIMAL(10,2) CHECK(total_amount >= 0),

    FOREIGN KEY (customer_id)
    REFERENCES customers(customer_id),

    FOREIGN KEY (delivery_partner_id)
    REFERENCES delivery_partners(partner_id)
);


-- order_items table

CREATE TABLE order_items(
    order_item_id INT PRIMARY KEY AUTO_INCREMENT,
    order_id INT NOT NULL,
    item_id INT NOT NULL,
    quantity INT CHECK(quantity > 0),
    subtotal DECIMAL(10,2) CHECK(subtotal >= 0),

    FOREIGN KEY (order_id)
    REFERENCES orders(order_id),

    FOREIGN KEY (item_id)
    REFERENCES menu_items(item_id)
);


-- payments table

CREATE TABLE payments(
    payment_id INT PRIMARY KEY AUTO_INCREMENT,
    order_id INT UNIQUE NOT NULL,
    payment_method VARCHAR(50) NOT NULL,
    payment_status VARCHAR(30) DEFAULT 'Pending',
    payment_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,

    FOREIGN KEY (order_id)
    REFERENCES orders(order_id)
);


-- reviews table

CREATE TABLE reviews(
    review_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_id INT NOT NULL,
    restaurant_id INT NOT NULL,
    rating INT CHECK(rating BETWEEN 1 AND 5),
    comment VARCHAR(255),
    review_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,

    FOREIGN KEY (customer_id)
    REFERENCES customers(customer_id),

    FOREIGN KEY (restaurant_id)
    REFERENCES restaurants(restaurant_id)
);





