DROP DATABASE IF EXISTS session05bthh;
CREATE DATABASE session05bthh;
USE session05bthh;

CREATE TABLE products (
    product_id INT AUTO_INCREMENT PRIMARY KEY,
    product_name VARCHAR(100),
    category VARCHAR(50),
    price DECIMAL(10,2),
    stock INT,
    status VARCHAR(20)
);

INSERT INTO products (product_name, category, price, stock, status) VALUES
('Laptop', 'Electronics', 1500, 10, 'ACTIVE'),
('Mouse', 'Accessories', 20, 100, 'ACTIVE'),
('Keyboard', 'Accessories', 50, 50, 'ACTIVE'),
('Monitor', 'Electronics', 300, 20, 'ACTIVE'),
('Printer', 'Electronics', 200, 0, 'INACTIVE'),
('USB Cable', 'Accessories', 10, 200, 'ACTIVE'),
('Webcam', 'Electronics', 80, 15, 'ACTIVE'),
('Headphone', 'Accessories', 120, 0, 'INACTIVE'),
('Tablet', 'Electronics', 600, 8, 'ACTIVE'),
('Speaker', 'Accessories', 150, 12, 'ACTIVE');

-- Danh sách tất cả sản phẩm
select * from products;
-- Danh sách sản phẩm đang được bán
select * from products where status = 'active';
-- Tên và giá của các sản phẩm có giá lớn hơn 100
select * from products where price > 100;
-- Các sản phẩm có giá từ 50 đến 300
select * from products where price between 50 and 300;
--  Các sản phẩm thuộc nhóm Electronics 
select * from products where category = 'Electronics';
-- Các sản phẩm có tồn kho bằng 0
select * from products where stock = 0;
-- Các sản phẩm có tên chứa chữ 'o'
select * from products where product_name like '%o%';
-- Danh sách sản phẩm sắp xếp theo giá tăng dần
select * from products order by price asc;
-- Danh sách sản phẩm sắp xếp theo tồn kho giảm dần
select * from products order by stock desc;
-- 5 sản phẩm đầu tiên đang được bán
select * from products where status = 'active' limit 5;