use ecommerce_1;

CREATE TABLE PRODUCTS(
ProductID INT AUTO_INCREMENT PRIMARY KEY,
ProductName varchar(255) not null,
Description TEXT,
Price DECIMAL(10,2) not null,
StockQuantity INT not null,
Category varchar(100),
DateAdded Date NOT NULL DEFAULT (CURDATE())
);

DESCRIBE products_data;





CREATE TABLE USERS(
UserID INT auto_increment PRIMARY KEY,
UserName varchar(255) not null,
Email varchar(255) not null unique,
Password varchar(255) not null,
Address varchar(255) not null,
DateRegistered Date not null DEFAULT (CurDate())
);

Describe users_data;



CREATE TABLE ORDERS(
OrderID INT auto_increment primary key,
UserID int not null,
OrderDate date not null,
TotalAmount Decimal(10,1) not null,
foreign key(UserID) references Users(UserId)
);


describe orders_data;






CREATE TABLE REVIEWS(
ReviewID INT auto_increment primary key,
UserID int not null,
ProductID int not null,
Rating int not null,
ReviewText TEXT,
foreign key(UserID) references Users(UserId),
foreign key(ProductID) references Products(ProductId),
CHECK (Rating>=1 and Rating<=5)
);

Describe reviews_data;


CREATE TABLE Payments(
PaymentID int auto_increment primary key,
OrderID int not null,
PaymentMethod Varchar(50),
PaymentDate Date,
Amount Decimal (10,1),
foreign key (OrderID) references Orders(OrderID)
);



describe payments_data;