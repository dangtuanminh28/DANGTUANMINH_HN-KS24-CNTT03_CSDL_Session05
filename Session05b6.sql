DROP DATABASE IF EXISTS session05;
CREATE DATABASE session05;
USE session05;

CREATE TABLE products (
	product_id int primary key auto_increment,
    product_name varchar(255),
	product_price decimal(12.2) not null,
    sold_quantity int not null,
    status enum('pending','completed', 'cancelled')
);
insert into products(product_name ,product_price, sold_quantity, status)
values ('Loa bluetooth', 20000.00, 95, 'pending'),
('Chuột có dây', 350000.00, 78, 'completed'),
('Điện thoại', 22900000.00, 77, 'completed'),
('Pin dự phòng', 1100000.00, 72, 'pending'),
('Cục Wifi', 1850000.00, 68, 'completed'),
('Chuột không dây', 650000.00, 45, 'cancelled'),
('Máy tính', 18500000.00, 40, 'completed'),
('Webcam full HD', 1650000.00, 38, 'cancelled'),
('Bàn phím', 9000.00, 28, 'cancelled'),
('Micro', 1200000.00, 20, 'cancelled'),
('Giá đỡ điện thoại', 250000.00, 18, 'completed'),
('Tai nghe bluetooth', 850000.00, 12, 'pending'),
('Tai nghe không dây', 1250000.00, 10, 'pending'),
('Dây sạc', 150000.00, 41, 'completed'),
('Ốp lưng Iphone 15', 450000.00, 60, 'cancelled'),
('USB Hub 7 port', 55000.00, 60, 'completed'),
('Bánh gạo', 20000.00, 20, 'cancelled'),
('Bánh mì', 2500.00, 18, 'completed'),
('Rong biển', 80.00, 12, 'pending'),
('Trứng', 100.00, 10, 'pending'),
('Chuối', 15000.00, 41, 'completed');

-- Trang 1: Hiển thị 5 đơn mới nhất
select * from products where status not like 'cancelled' limit 5;
-- Trang 2: Hiển thị 5 đơn tiếp theo
select * from products where status not like 'cancelled' limit 5 offset 5;
-- Trang 3: Hiển thị 5 đơn tiếp theo
select * from products where status not like 'cancelled' limit 5 offset 10;