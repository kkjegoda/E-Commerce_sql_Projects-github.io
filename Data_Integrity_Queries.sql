use ecommerce_1;

ALTER TABLE ORDERS
ADD CONSTRAINT
chk_user
foreign key (UserID) references Users(UserID)
ON DELETE
CASCADE;


START TRANSACTION;

INSERT INTO ORDERS(ORDERID,USERID,OrderDate,TotalAmount)
VALUES(1009,70,CURDATE(),"ANKIT");

COMMIT;
rollback;

SELECT * FROM ecommerce_1.orders_data;
