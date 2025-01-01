create database banking;
use banking;
create table customer(customer_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) ,
    email VARCHAR(100) NOT NULL UNIQUE,
    phone_number VARCHAR(15),
    address VARCHAR(255),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
show tables;
insert into customer(first_name, last_name, email, phone_number, address) 
VALUES('Alice', 'Johnson', 'alice.johnson@example.com', '123-456-7890', '123 Main St, New York'),
('Bob', 'Smith', 'bob.smith@example.com', '987-654-3210', '456 Elm St, Los Angeles'),
('Charlie', 'Brown', 'charlie.brown@example.com', '555-123-4567', '789 Oak St, Chicago');
select * from customer;
insert into customer(first_name, email, phone_number, address)
values('Sam','sss@example.com','123-1289-88487','891 calbas' 'New York'),
('shiva','sh@example.com','123-912938-123','140 oak st''Us'),
('Alice','alice@example.com','123-456-7890', '123 Main St' 'New York'),
('johnson','joh@example.com','1237-12378-12','156 mainst''Us');
insert into customer(first_name, last_name, email, phone_number, address) 
VALUES('Alice', 'Rubbe', 'alice.R@example.com', '123-456-78123', '123 Main St, New York'),
('Samie', 'Smith', 'smith@example.com', '987-654-3212', '456 Elm St, Los Angeles'),
('Charlie', 'jackes', 'charlie@example.com', '5123-123-4567', '789 Oak St, Chicago');
insert into customer(first_name, last_name,email, address)
values('Ravi','Dasari','rr@example.com','143 down line, London'),
('Rajitha','Kumar','rk@exampl.com','256 main st New york'),
('Kavihta','M','km@example.com','124 str Us');
insert into customer(first_name,last_name,email,phone_number, address)
values('Diana', 'Prince', 'diana.prince@example.com', ' NULL', '321 Pine St, Houston'),
('Ethan', 'Hunt', 'ethan.hunt@example.com', '555-111-2222', NULL),
('Fiona', 'Green', 'fiona.green@example.com', '555-333-4444', '987 Cedar St, Philadelphia'),
('George', 'Clark', 'george.clark@example.com', NULL, NULL),
('Hannah', 'Montana', 'hannah.montana@example.com', '555-777-8888', NULL),
('Ian', 'Fleming', 'ian.fleming@example.com', NULL, '357 Willow St, Dallas'),
('Jasmine','Reed','jasmine.reed@example.com','555-222-3333','468 Fir St, San Jose'),
('Katherine','Heigl','katherine.heigl@example.com','555-888-9999','579 Birch St, Seattle'),
('Liam','Neeson','liam.neeson@example.com','555-444-5555','680 Maple St, Miami'),
('Mia','Thermopolis','mia.thermopolis@example.com','555-666-7777','791 Spruce St, San Francisco'),
('Noah','Centineo','noah.centineo@example.com','555-888-0000','802 Cedar St, Boston'),
('Olivia','Rodrigo','olivia.rodrigo@example.com','555-999-1111','913 Oak St, Denver'),
('Paul','Rudd','paul.rudd@example.com','555-000-2222','102 Pine St, Atlanta'),
('Quinn','Fabray','quinn.fabray@example.com','555-333-4444','213 Birch St, Orlando'),
('Ryan','Gosling','ryan.gosling@example.com','555-444-6666','324 Maple St, Nashville'),
('Sophia','Turner','sophia.turner@example.com','555-777-8888','435 Fir St, Portland'),
('Thomas','Shelby','thomas.shelby@example.com','555-888-9999','546 Spruce St, Charlotte'),
('Uma','Thurman','uma.thurman@example.com','','657 Cedar St, Sacramento');
insert into customer(first_name,last_name,email,phone_number, address)
values('Xander','Cage','xander.cage@example.com',null,'980 Fir St, Milwaukee'),
('Yara','Shahidi','yara.shahidi@example.com',null,'109 Spruce St, Memphis'),
('Zoe','Saldana','zoe.saldana@example.com','','210 Cedar St, Tucson'),
('Ava', 'Adams', 'ava.adams@example.com', '454-1293-1292', NULL),
('Ben', 'Affleck', 'ben.affleck@example.com', NULL, 'New York'),
('Chloe', 'Grace Moretz', 'chloe.gracemoretz@example.com', NULL, NULL),
('Daniel', 'Craig', 'daniel.craig@example.com', NULL, 'us'),
('Eva', 'Green', 'eva.green@example.com', '263-1927', NULL),
('Finn', 'Wolfhard', 'finn.wolfhard@example.com', NULL, NULL),
('Gina', 'Rodriguez', 'gina.rodriguez@example.com', NULL, NULL),
('Henry', 'Cavill', 'henry.cavill@example.com', NULL, NULL),
('Isla', 'Fisher', 'isla.fisher@example.com', NULL, NULL),
('Jackie', 'Chan', 'jackie.chan@example.com', NULL, NULL),
('Kylie', 'Jenner', 'kylie.jenner@example.com', '123-197382-12', 'UK'),
('Lily-Rose Depp ', 'Lily-Rose Depp ',  'lilyrose.depp@exmaple.com ',NULL,NULL),
('Matthew ',  'McConaughey ','matthew.mcconaughey@exmaple.co ','192-19129-123','Uk');
select * from customer;
/*delete */
delete from customer where customer_id =23;
/*alter>>adding a column using alter to existing table*/
alter table customer add proof varchar(100);
/** Drop the column*/
alter table customer drop column proof;

/*distinct.means select the specific column.*/
select distinct first_name,email from customer;
/*..where..*/
select phone_number,last_name from customer where first_name ='Alice';
CREATE TABLE accounts (
    account_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id INT,
    account_type ENUM('Savings', 'Checking', 'Business') NOT NULL,
    balance DECIMAL(10, 2) NOT NULL DEFAULT 0.00,
    opened_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (customer_id) REFERENCES customer(customer_id)
);
INSERT INTO accounts (customer_id,account_type, balance) 
VALUES
(1,'Savings', 1500.00);
select * from accounts;
select * from customer;
INSERT INTO accounts (customer_id,account_type, balance) 
VALUES
(2, 'Savings', 2000.00),
(3, 'Business', 5000.00),
(4, 'Savings', 1500.00),
(5, 'Checking', 750.00),
(6, 'Savings', 2000.00),
(7, 'Business', 5000.00),
(8, 'Checking', 1200.00),
(9, 'Savings', 3000.00),
(10, 'Business', 4000.00);
INSERT INTO accounts (customer_id,account_type, balance) 
VALUES
(11, 'Savings', 1500.00),
(12, 'Checking', 750.00),
(13, 'Business', 5000.00),
(14, 'Savings', 1500.00),
(15, 'Checking', 750.00),
(16, 'Savings', 2000.00),
(17, 'Business', 5000.00),
(18, 'Checking', 1200.00),
(19, 'Savings', 3000.00),
(20, 'Business', 4000.00),
(21, 'Checking', 750.00),
(22,'Business',1800.00),
(24, 'Savings', 1500.00),
(25, 'Checking', 750.00);
INSERT INTO accounts (customer_id,account_type, balance) 
VALUES
(26, 'Savings', 2000.00),
(27, 'Business', 5000.00),
(28, 'Checking', 1200.00),
(29, 'Savings', 3000.00),
(30, 'Business', 4000.00);
INSERT INTO accounts (customer_id,account_type, balance) 
VALUES

(41, 'Checking', 750.00),
(42, 'Savings', 2000.00),
(43, 'Business', 5000.00),
(44, 'Savings', 1500.00),
(45, 'Checking', 750.00);
(46, 'Savings', 2000.00),
(47, 'Business', 5000.00),
(48, 'Checking', 1200.00),
(49, 'Savings', 3000.00),
(50, 'Business', 4000.00),
(51, 'Business', 4000.00),
(52, 'Savings', 2000.00),
(53, 'Business', 5000.00),
(54, 'Savings', 1500.00),
(55, 'Checking', 750.00),
(56, 'Savings', 2000.00),
(57, 'Business', 5000.00),
(58, 'Checking', 1200.00),
(59, 'Savings', 3000.00),
(60, 'Business', 4000.00);
select * from accounts;
/*Arthimetic operators*/
use banking;
/*comparsion table*/
select * from accounts where account_type ='Savings';
select * from accounts where balance !=1500.00;
select * from accounts where balance<1500.00;
select * from accounts where balance >2000.00;
/*Logical>>AND< OR< NOT */
select * from accounts where account_type='Business' and balance >4000.00;
select * from accounts where account_type='Business' or balance >=4000.00;
select * from accounts where not account_type ='Business';
/*concatenation */
select * from customer;
select email , concat(first_name,last_name) as full_name from customer;
/*Like */
select * from customer where first_name like '%Alice%';
select * from customer where last_name like 'Bob%';
select * from customer where address like '%New';
/*In operatore*/
select * from accounts where account_type in ('Checking','Savings');
select * from accounts where account_type not in ('Savings');
/*Is Null */
select * from customer where last_name is null;
select * from customer where phone_number is not null;
/*Between*/

