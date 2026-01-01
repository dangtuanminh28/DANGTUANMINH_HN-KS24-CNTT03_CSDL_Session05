DROP DATABASE IF EXISTS session05;
CREATE DATABASE session05;
USE session05;

CREATE TABLE products (
	product_id int primary key auto_increment,
    product_name varchar(255),
	product_price decimal(12.2) not null,
    sold_quantity int not null
);
insert into products(product_name ,product_price, sold_quantity)
values ('Loa bluetooth', 20000.00, 95),
('Chuột có dây', 350000.00, 78),
('Điện thoại', 22900000.00, 77),
('Pin dự phòng', 1100000.00, 72),
('Cục Wifi', 1850000.00, 68),
('Chuột không dây', 650000.00, 45),
('Máy tính', 18500000.00, 40),
('Webcam full HD', 1650000.00, 38),
('Bàn phím', 9000.00, 28),
('Micro', 1200000.00, 20),
('Giá đỡ điện thoại', 250000.00, 18),
('Tai nghe bluetooth', 850000.00, 12),
('Tai nghe không dây', 1250000.00, 10),
('Dây sạc', 150000.00, 41),
('Ốp lưng Iphone 15', 450000.00, 60),
('USB Hub 7 port', 55000.00, 60);

-- Hiển thị 10 sản phẩm bán chạy nhất
select * from products order by sold_quantity desc limit 10;
-- Hiển thị 5 sản phẩm bán chạy nhất tiếp theo
select * from products order by sold_quantity desc limit 5 offset 10;
-- Hiển thị sản phẩm giá < 2.000.000, sắp xếp số lượng bán giảm dần
select * from products where product_price < 200000.00 order by sold_quantity desc; 