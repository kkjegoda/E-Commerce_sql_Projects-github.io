INSERT INTO PRODUCTS (ProductName,Description,Price,StockQuantity,Category)
VALUES
('Apple Iphone 16','Latest Smartphone by Apple','699.99',50,'Electronics'),
('Nike Jordans','New Launched Sneakers by Nike','99.99',100,'Sneakers'),
('Boss Bass 20','Portable Speaker with Excellent Sound Quality','150.00',200,'Electronics');

SELECT * FROM ecommerce_1.products_data;

INSERT INTO USERS(UserName,Email,Password,Address)
VALUES
('ankit1222000','ankit.bhatia1220@gmail.com','Ankit@1222000','1008, Greek Row Dr Apt 101'),
('bhavesh6599','bwadhwa0387@gmail.com','Bhavesh@6599','South Campus Apt 10');

select * from ecommerce_1.users_data;


insert into orders(UserID,ProductID,OrderDate,OrderQuantity,TotalAmount)
values
(1,3,'2024-11-24',3,450),
(2,1,'2024-11-24',1,699.99);

select * from ecommerce_1.orders_data;


insert into reviews(UserID,ProductID,Rating,ReviewText)
values
(1,3,5,'Amazing Speakers, very satisfied'),
(2,1,4,'Great Phone, could be less expensive');

select * from ecommerce_1.reviews_data;


insert into Payments(orderId,PaymentMethod,PaymentDate,Amount)
values
(1,'Cash','2024-11-24',450),
(2,'Credit Card','2024-11-24',699.99);

select * from ecommerce_1.payments_data;