DROP DATABASE IF EXISTS session05;
CREATE DATABASE session05;
USE session05;

CREATE TABLE products (
    product_id INT AUTO_INCREMENT PRIMARY KEY,
    product_name VARCHAR(255),
    price DECIMAL(10,2),
    stock INT,
    status enum('active','inactive')
);

insert into products (product_name, price, stock, status) 
values ('Laptop', 1700000, 10, 'ACTIVE'),
	   ('Mouse', 2000000, 100, 'ACTIVE'),
	   ('Keyboard', 3000000, 50, 'inACTIVE'),
       ('Monitor', 400000, 20, 'ACTIVE'),
	   ('Printer', 950000, 0, 'INACTIVE');

-- Hiển thị bảng
select * from products;
-- Hiển thị active
select * from products where status = 'active';
-- Hiển thị giá lớn hơn 1.000.000
select * from products where price > 1000000;
-- Hiển thị đang bán và theo giá tăng dần
select * from products where status = 'active' order by price asc;