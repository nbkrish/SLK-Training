create table Category
(
category_id int primary key identity(100,1),
category_name varchar(40) not null
)

create table Sub_Category
(
category_id int references category(category_id) on delete cascade,
sub_category_id int primary key identity(100,1),
sub_category_name varchar(40) not null
)

create table Seller
(
seller_id int primary key identity(100,1),
seller_name varchar(40) not null,
password varchar(40) not null,
Phone_No varchar(15) unique not null ,
Email_Id  varchar(40) unique not null,
Account_No bigint unique not null,
IFSC_Code varchar(40) not null,
GSTIN varchar(30) unique not null,
)

create table Product
(
product_Id int primary key identity(100,1),
seller_id int references Seller(seller_id) on delete cascade,
Sub_category_id int references Sub_Category(sub_category_id) on delete cascade,
product_name varchar(40) not null,
product_Desc varchar(300) ,
product_price float not null,
Product_quantity int not null,
img_front varchar(250),
img_back varchar(250),
img_left varchar(250),
img_right varchar(250),
img_top varchar(250)
)

create table admin
(
Admin_Id int primary key identity(100,1),
Password varchar(20) not null
)


create table customer
(
cust_id int primary key identity(100,1),
First_name varchar(20) not null,
Last_Name varchar(20),
phone_no varchar(15) unique not null ,
password varchar(30) not null,
Email_Id  varchar(40) unique not null,
Address varchar(300) not null,
Zipcode varchar(6) not null)														

create table cart
(
cart_id int primary key identity(100,1),
No_of_products int)

create table cart_details
(
cart_id int references cart(cart_id) on delete cascade,
prod_id int references product(product_id) on delete cascade,
quantity int not null,
prod_total_amnt int not null)



create table orders
(
order_id int primary key identity(100,1),
cust_id int references customer(cust_id) on delete cascade,
Order_Amt int not null,
Order_date date
)

create table order_details
(
order_id int references orders(order_id) on delete cascade,
product_id int references Product(product_ID) on delete cascade,
quantity int not null
)


create table shipper
(
shipper_id int primary key identity(100,1),
shipping_company_name varchar(20) not null,
)

create table shipping
(
shipping_id int primary key identity(100,1),
shipper_id int references shipper(shipper_id) on delete cascade,
ship_date date not null
)


create table shipping_details
(
shipping_id int references shipping(shipping_id) on delete cascade,
cust_id int references customer(cust_id) on delete cascade,
product_id int references Product(product_ID) on delete cascade
)

select * from Customer

delete from customer where cust_id = 104

insert into seller values('Ravi','ravi123','9845765121','ravi123@gmail.com','0020457891','hdfc00253','98745612');

select * from Seller

ALTER TABLE Product
ADD img VARCHAR(MAX);

ALTER TABLE Product
DROP COLUMN img_front,img_back,img_left,img_right,img_top;

go
insert Category values('Men') 
go
insert Category values('Women') 
go
insert Category values('Television') 
go
insert Category values('Furniture') 
go
insert Category values('Sports') 
go
insert Category values('Mobiles') 

insert Sub_Category values(105,'Mobile');
insert Sub_Category values(105,'Mobile Accessories');
insert Sub_Category values(105,'Laptops');
insert Sub_Category values(105,'Speaker');
insert Sub_Category values(105,'Camera');

insert Sub_Category values(100,'Top Wear');
insert Sub_Category values(100,'Bottom Wear');
insert Sub_Category values(100,'FootWear');
insert Sub_Category values(100,'Grooming');
insert Sub_Category values(100,'Sprots Wear');

insert Sub_Category values(101,'Shoes');
insert Sub_Category values(101,'Western Wear');
insert Sub_Category values(101,'Jewellery');

insert Sub_Category values(104,'Cricket');
insert Sub_Category values(104,'Badminton');
insert Sub_Category values(104,'Cycling');
insert Sub_Category values(104,'Skating');
insert Sub_Category values(104,'Football');


insert Sub_Category values(102,'Telivision');
insert Sub_Category values(102,'Washing Machine');
insert Sub_Category values(102,'Air Conditioner');
insert Sub_Category values(102,'Refridgerators');
insert Sub_Category values(102,'Home Appliances');

insert into Product values(100, 131, 'Nokia 8.1', 'The Nokia 8.1 is a dual sim smartphone', 22000.0, 2, '/Images/nokia.jpg');
insert into Product values(100, 131, 'OnePlus 7 pro', 'Never Settle', 42000.0, 4, '/Images/oneplus.jpg');
insert into Product values(100, 133, 'Hp spectre', 'Small & Sleek Design,22 hours Battery Life', 75000.0, 3, '/Images/hplaptop.jpg');
insert into Product values(100, 126, 'SG Cricket Kit', 'Helmet, Bat, pads, Arm gaurd', 3499.0, 2, '/Images/cricketkit.jpg');
insert into Product values(100, 139, 'LG Refridgerator', '3 star double door', 40000.0, 2, '/Images/ref.jpg');
insert into Product values(100, 118, 'Marshmallo Hoodie', 'Best for Winter', 1299.0, 5, '/Images/hoodie.jpg');

select * from Product

select * from Sub_Category

delete Sub_Category

delete Product where product_Id=121

 select * from customer

select * from cart

select * from cart_details

drop table admin