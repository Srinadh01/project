create table customer_details (Customer_name varchar(25), Account_ID int, Phone_number int NOTnull, Location varchar(25));
create table merchant_details (Store_ID INT NOT NULL, Store_name varchar(20), store_location varchar(20), store_phnnumber INT);
create table product_details (product_ID INT, product_name varchar(20), quantity varchar(20), availability int);
create table payment_details (price int not null, trnsaction_id int not null, transaction_date date, transaction_status char);
create table delivery_details (recipient_name varchar(25), import_status varchar(20), delivery_date date not null, shipping_address varchar(25));
