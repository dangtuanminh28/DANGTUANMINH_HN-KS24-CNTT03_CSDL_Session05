DROP DATABASE IF EXISTS session05;
CREATE DATABASE session05;
USE session05;

CREATE TABLE products (
	product_id int primary key auto_increment,
    product_name varchar(255),
	product_price decimal(12,2) not null,
    sold_quantity int not null,
    status enum('active','inactive')
);
insert into products(product_name ,product_price, sold_quantity, status)
values ('Loa bluetooth', 20000.00, 95, 'active'),
('Chuột có dây', 35000.00, 78, 'inactive'),
('Điện thoại', 22900.00, 77, 'active'),
('Pin dự phòng', 12900.00, 72, 'active'),
('Cục Wifi', 18500.00, 68, 'active'),
('Chuột không dây', 6500.00, 45, 'inactive'),
('Máy tính', 95000.00, 40, 'inactive'),
('Webcam full HD', 16000.00, 38, 'active'),
('Bàn phím', 48000.00 , 28, 'active'),
('Micro', 12000.00, 20, 'inactive'),
('Giá đỡ điện thoại', 25000.00, 18, 'active'),
('Tai nghe bluetooth', 85000.00, 12, 'inactive'),
('Tai nghe không dây', 12500.00, 10, 'active'),
('Dây sạc', 150000.00, 41, 'active'),
('Ốp lưng Iphone 15', 450000.00, 60, 'inactive'),
('USB Hub 7 port', 55000.00, 60, 'active'),
('Loa Mini', 1800000.00, 55, 'active'),
('Sạc Nhanh', 850000.00, 120, 'active'),
('Ổ Cứng SSD', 2200000.00, 42, 'active'),
('Ram 16GB', 1500000.00, 68, 'active'),
('Card Màn Hình', 5800000.00, 15, 'active'),
('Màn Hình 27"', 7200000.00, 20, 'active'),
('Router Wifi', 1300000.00, 35, 'active'),
('Pin 30000mAh', 1400000.00, 90, 'active'),
('Tai Nghe Gaming', 2600000.00, 48, 'active'),
('Bàn Phím Cơ', 2900000.00, 33, 'active');

-- Hiển thị sản phẩm
select * from products;
-- Hiển thị đang bán và giá từ 1.000.000 - 3.000.000
select * from products where status like 'active' and product_price between 10000.00 and 30000.00 limit 10;
-- Hiển thị tăng dần
select * from products order by product_price limit 10 offset 10;