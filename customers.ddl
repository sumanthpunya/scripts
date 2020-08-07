
create external table sample.customers
(customerNumber integer,
customerName varchar(50),
contactLastName varchar(50),
contactFirstName varchar(50),
phone varchar(50),
addressLine1 varchar(50),
addressLine2 varchar(50),
city varchar(50),
state varchar(50),
postalCode varchar(15),
country varchar(50),
salesRepEmployeeNumber integer,
creditLimit decimal(10,2))
location ('file://gpdb-sandbox.localdomain:5432/home/gpadmin/sample_project/Interview-Dataset/data/raw/customers.csv')
format 'CSV' (HEADER DELIMITER AS ',');
