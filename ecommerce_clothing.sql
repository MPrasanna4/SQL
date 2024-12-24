

create database ecom_clothing;
use ecom_clothing;
create table ecom_clothing(product_id INT,
    product_name VARCHAR(100) ,
    category VARCHAR(50) ,
    size VARCHAR(10),
    color VARCHAR(30),
    price DECIMAL(10, 2) ,
    stock_quantity INT
);
show tables;
insert into ecom_clothing(product_id,product_name, category, size, color, price, stock_quantity) VALUES
(101,'Basic T-Shirt', 'Tops', 'M', 'Red', 19.99, 100),
(102,'Casual Jeans', 'Bottoms', '32', 'Blue', 39.99, 50),
(103,'Summer Dress', 'Dresses', 'L', 'Yellow', 29.99, 30),
(104,'Formal Shirt', 'Tops', 'L', 'White', 49.99, 20),
(105,'Sports Shoes', 'Bottoms', 'M', 'Black', 24.99, 40),
(106,'Winter Jacket', 'Outerwear', 'L', 'Green', 89.99, 15),
(107,'Sneakers', 'Footwear', '10', 'Gray', 59.99, 25),
(108,'Sandals', 'Footwear', '8', 'Brown', 29.99, 35),
(109,'Hoodie Sweatshirt', 'Tops', 'XL', 'Navy Blue', 39.99, 60),
(110,'Capri Pants', 'Bottoms', 'S', 'Pink', 34.99, 45),
(111,'Graphic Tee', 'Tops', 'M', 'Black/White', 24.99, 70),
(112,'Pencil Skirt', 'Bottoms', 'M', 'Red/Black Stripes', 49.99, 25),
(113,'Denim Jacket', 'Outerwear', 'M', 'Light Blue', 69.99, 10),
(114,'Yoga Pants', 'Bottoms', 'L', 'Purple', 29.99, 50),
(115,'Leather Belt', 'Accessories', 'FS', 'Brown', 19.99, 80),
(116,'Wool Scarf', 'Accessories', 'FS', 'Gray/Black Checkered', 14.99, 90),
(117,'Corg pants', 'Accessories', 'M', 'Black/Beige', 12.99, 100),
(118,'Party Wear', 'Accessories', 'M', 'green', 15.99, 60),
(119,'Running Shoes','Footwear','7','Black','69.99','30'),
(120,'Floral Blouse','Tops','S','Floral Print','34.99','50');
 select * from ecom_clothing;

 
 
 
