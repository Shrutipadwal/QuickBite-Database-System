 #2. sample_data.sql

-- =========================================
-- SAMPLE DATA INSERTION
-- =========================================


-- customers

INSERT INTO customers(name,email,phone,address)
VALUES
('Rahul Sharma','rahul@gmail.com','9876543210','Pune'),
('Priya Verma','priya@gmail.com','9876543211','Mumbai'),
('Amit Joshi','amit@gmail.com','9876543212','Delhi'),
('Sneha Patil','sneha@gmail.com','9876543213','Bangalore'),
('Karan Mehta','karan@gmail.com','9876543214','Hyderabad');


-- restaurants

INSERT INTO restaurants(restaurant_name,location,rating,contact_number)
VALUES
('Spice Hub','Pune',4.5,'9000000001'),
('Burger Point','Mumbai',4.2,'9000000002'),
('Pizza World','Delhi',4.7,'9000000003'),
('South Express','Bangalore',4.3,'9000000004'),
('Food Palace','Hyderabad',4.1,'9000000005');


-- menu_items

INSERT INTO menu_items(restaurant_id,item_name,price,category,availability_status)
VALUES
(1,'Paneer Butter Masala',250,'Main Course','Available'),
(1,'Butter Naan',40,'Bread','Available'),
(2,'Cheese Burger',180,'Fast Food','Available'),
(2,'French Fries',120,'Snacks','Available'),
(3,'Margherita Pizza',350,'Pizza','Available'),
(3,'Farmhouse Pizza',450,'Pizza','Available'),
(4,'Masala Dosa',120,'South Indian','Available'),
(4,'Idli Sambar',90,'South Indian','Available'),
(5,'Chicken Biryani',300,'Main Course','Available'),
(5,'Veg Biryani',220,'Main Course','Available');


-- delivery_partners

INSERT INTO delivery_partners(partner_name,phone,vehicle_type,availability_status)
VALUES
('Ramesh','8888888801','Bike','Available'),
('Suresh','8888888802','Scooter','Available'),
('Akash','8888888803','Bike','Busy'),
('Vikram','8888888804','Cycle','Available'),
('Deepak','8888888805','Bike','Busy');


-- orders

INSERT INTO orders(customer_id,delivery_partner_id,order_status,total_amount)
VALUES
(1,1,'Delivered',290),
(2,2,'Pending',180),
(3,3,'Delivered',450),
(4,4,'Out for Delivery',210),
(5,5,'Cancelled',300);


-- order_items

INSERT INTO order_items(order_id,item_id,quantity,subtotal)
VALUES
(1,1,1,250),
(1,2,1,40),
(2,3,1,180),
(3,6,1,450),
(4,7,1,120),
(4,8,1,90),
(5,9,1,300);


-- payments

INSERT INTO payments(order_id,payment_method,payment_status)
VALUES
(1,'UPI','Completed'),
(2,'Cash','Pending'),
(3,'Credit Card','Completed'),
(4,'UPI','Completed'),
(5,'Cash','Failed');


-- reviews

INSERT INTO reviews(customer_id,restaurant_id,rating,comment)
VALUES
(1,1,5,'Amazing food'),
(2,2,4,'Good burgers'),
(3,3,5,'Best pizza'),
(4,4,4,'Tasty dosa'),
(5,5,3,'Average biryani');