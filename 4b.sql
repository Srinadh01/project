alter table product_Details add product_review enum ('good', 'excellent', 'cute', 'average') not null;
insert into product_details(product_ID, product_name, quantity, availability,product_review) values(555, 'fish', 4, 1, 'cute');
update product_details set product_review= 'cute' where product_ID= 222;
update product_details set product_review= 'excellent' where product_ID=111;
delete from product_details where product_ID= 555;
select * from product_details;
alter table customer_details add customer_count int AUTO_INCREMENT PRIMARY KEY;
insert into customer_details(customer_name, account_id, phone_number, location)values( 'nani', 354, 218798474, 'arizona');
insert into customer_details(customer_name, account_id, phone_number, location) values( 'sanvy', 54, 256698474, 'arizona');
