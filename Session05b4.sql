DROP DATABASE IF EXISTS session05;
CREATE DATABASE session05;
USE session05;

CREATE TABLE orders (
	order_id int primary key auto_increment,
    customer_id  int not null ,
    total_amount decimal(10,2),
    order_date date,
    status enum('pending','completed', 'cancelled') default 'pending'
);
insert into orders(customer_id, total_amount, order_date, status)
values (101, 58000.00, '2021-02-10', 'pending'),
(204, 12000.00, '2021-02-10', 'completed'),
(850, 25000.00, '2022-02-10', 'completed'),
(750, 5000.00, '2022-11-08', 'cancelled'),
(624, 98000.00, '2020-09-03', 'pending'),
(498, 72000.00, '2019-10-05', 'completed'),
(423, 66000.00, '2021-07-11', 'completed'),
(875, 90000.00, '2020-05-28', 'pending'),
(798, 20000.00, '2021-10-30', 'completed'),
(187, 40000.00, '2011-12-17', 'cancelled');

-- Hiển thị đơn đã hoàn thành
select * from orders where status like 'completed';
-- Hiển thị tổng tiền > 5.000.000
select * from orders where total_amount > 50000.00;
-- Hiển thị 5 đơn mới nhất
select * from orders order by order_date desc limit 5; 
-- Hiển thị các đơn đã hoàn thành, sắp xếp tổng tiền giảm dần 
select * from orders where status like 'completed' order by total_amount desc; 