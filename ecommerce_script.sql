CREATE DATABASE e_commerce;
use e_commerce;
DROP TABLE IF EXISTS categories;

CREATE TABLE categories (
    category_id INT AUTO_INCREMENT PRIMARY KEY,
    category_name VARCHAR(25) NOT NULL UNIQUE
);

CREATE TABLE products(
	product_id int auto_increment primary key , 
    product_name varchar(40) not null , 
    price int not null  , 
    stock_quantity int default 0  , 
    category_id int ,
    foreign key(category_id) references categories(category_id)
    );
CREATE TABLE customers(
    customer_id int auto_increment primary key,
    customer_name varchar(100) not null,
    customer_email varchar(50) unique not null ,
    customer_phone int not null,
    address text not null
);

DROP TABLE IF EXISTS orders;
CREATE TABLE Orders (
    order_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id INT,
    order_date DATE ,
    status VARCHAR(50),
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

    
CREATE TABLE order_items(
	orderitems_id int auto_increment primary key,
	order_id int,
    customer_id int ,
    product_id int ,
    quantity int not null,
    price decimal(10,2),
    foreign key(order_id) references orders(order_id),
    foreign key(product_id ) references products(product_id)
);

CREATE TABLE Payments (
    payment_id INT AUTO_INCREMENT PRIMARY KEY,
    order_id INT,
    payment_date DATE ,
    amount DECIMAL(10,2),
    method VARCHAR(50),
    FOREIGN KEY (order_id) REFERENCES Orders(order_id)
);
    
    
    
    
