create table customer_details (Customer_name varchar(25), Account_ID int, Phone_number int NOTnull, Location varchar(25));
create table merchant_details (Store_ID INT NOT NULL, Store_name varchar(20), store_location varchar(20), store_phnnumber INT);
create table product_details (product_ID INT, product_name varchar(20), quantity varchar(20), availability int);
create table payment_details (price int not null, trnsaction_id int not null, transaction_date date, transaction_status char);
create table delivery_details (recipient_name varchar(25), import_status varchar(20), delivery_date date not null, shipping_address varchar(25));


# loading data files
load data local infile "C:/Users/nabig/OneDrive/Desktop/assignments/srinadh/customer_details.csv" into table customer_details fields terminated by ',' lines terminated by '\r\n' ignore 1 lines (Customer_name, Account_ID, Phone_number, Location);
load data local infile "C:/Users/nabig/OneDrive/Desktop/assignments/srinadh/merchant_details.csv" into table merchant_details fields terminated by ',' lines terminated by '\r\n' ignore 1 lines (Store_ID, Store_name, store_location, store_phnnumber);
load data local infile "C:/Users/nabig/OneDrive/Desktop/assignments/srinadh/product_details.csv" into table product_details fields terminated by ',' lines terminated by '\r\n' ignore 1 lines (Product_id, product_name, quantity, availability);
load data local infile "C:/Users/nabig/OneDrive/Desktop/assignments/srinadh/payment_details.csv" into table payment_details fields terminated by ',' lines terminated by '\r\n' ignore 1 lines (Price, Trnsaction_ID, Transaction_date, Transaction_status);
load data local infile "C:/Users/nabig/OneDrive/Desktop/assignments/srinadh/delivery_details.csv" into table delivery_details fields terminated by ',' lines terminated by '\r\n' ignore 1 lines (Recipient_name, import_status, delivery_date, Shipping_address);

