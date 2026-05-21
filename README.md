# QuickBite Database System

## Project Overview

QuickBite Database System is a relational database project designed for a food delivery platform similar to Zomato or Swiggy.

The system manages:

- customers
- restaurants
- menu items
- orders
- payments
- delivery partners
- reviews

The project demonstrates SQL concepts such as relational database design, joins, subqueries, views, stored procedures, triggers, indexes, and analytical report queries.

## Features

- Customer and restaurant management
- Order and payment tracking
- Delivery partner management
- Review and rating system
- Business report queries
- Views for simplified reporting
- Stored procedures for reusable operations
- Trigger for automatic order total updates
- Indexes for query optimization

## Database Tables

- customers
- restaurants
- menu_items
- orders
- order_items
- delivery_partners
- payments
- reviews

## SQL Concepts Used

- Primary Key
- Foreign Key
- Constraints
- Joins
- Aggregate Functions
- GROUP BY and HAVING
- Subqueries
- Views
- Stored Procedures
- Triggers
- Indexes

## Sample Reports

- Top restaurants by revenue
- Most ordered food items
- Payment status reports
- Delivered vs cancelled orders
- Restaurant-wise average food price

## Trigger Used

The project includes a trigger that automatically updates the total order amount whenever a new item is inserted into the order_items table.

## Stored Procedures

- GetOrdersByStatus()
- GetRestaurantMenu()

## Future Improvements

- Add real-time order tracking
- Implement role-based access
- Add backup and recovery features
- Integrate with frontend application

## Technologies Used

- SQL
- MySQL

# How to Run
1. Open MySQL Workbench or any SQL client
2. Create the database:
CREATE DATABASE quickbite_db;
3. Select the database:
USE quickbite_db;
4. Run the schema file:
schema.sql

This will create all required tables.

5. Insert sample data:
sample_data.sql
6. Run queries:
queries.sql
Verify results using SELECT queries.
