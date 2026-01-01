DROP DATABASE IF EXISTS session05;
CREATE DATABASE session05;
USE session05;

CREATE TABLE customers (
	customer_id int primary key auto_increment,
    full_name varchar(255),
    email varchar(255),
    city varchar(255),
    status enum('active','inactive')
);
insert into customers(full_name, email, city, status)
values ('Đặng Tuấn Minh', 'minh@gmail.com', 'Quảng Ninh', 'active'),
	   ('Đặng Thu Trang', 'trang@gmail.com', 'Hải Phòng', 'inactive'),
	   ('Phạm Hữu Tuệ', 'tue@gmail.com', 'Hà Nội', 'inactive'),
	   ('Đặng Khánh An', 'an@gmail.com', 'TP.HCM', 'inactive'),
	   ('Nguyễn Khoa Nam', 'nam@gmail.com', 'TP.HCM', 'active'),
	   ('Phạm Diệu Linh', 'linh@gmail.com', 'Hà Nội', 'active'),
	   ('Lưu Bình Thủy', 'thuy@gmail.com', 'Hà Nội', 'active'),
	   ('Đặng Mạnh Trường', 'truong@gmail.com', 'Huế', 'inactive');
-- Hiển thị danh sách
select * from customers;
-- Hiển thị khách ở TP.HCM
select * from customers where city like 'TP.HCM';
-- Hiển thị khách active và ở Hà Nội
select * from customers where city like 'Hà Nội' and status like 'active';
-- Sắp xếp A -> Z tên khách
select * from customers order by full_name asc;