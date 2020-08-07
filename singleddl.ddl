# All ddls
create external table sample.productlines
(productLine varchar(50),
textDescription varchar(4000),
htmlDescription text,
image text)
location ('file://gpdb-sandbox.localdomain:5432/home/gpadmin/sample_project/Interview-Dataset/data/raw/productlines.csv')
format 'CSV' (HEADER DELIMITER AS ',');


create external table sample.employees
(employeeNumber integer,
lastName varchar(50),
firstName varchar(50),
extension varchar(10),
email varchar(100),
officeCode varchar(10),
reportsTo integer,
jobTitle varchar(50))
location ('file://gpdb-sandbox.localdomain:5432/home/gpadmin/sample_project/Interview-Dataset/data/raw/employees.csv')
format 'CSV' (HEADER DELIMITER AS ',');



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



create external table sample.products
(productCode varchar(15),
productName varchar(70),
productLine varchar(50),
productScale varchar(10),
productVendor varchar(50),
productDescription text,
quantityinStock smallint,
buyPrice decimal(10,2),
MSRP decimal(10,2))
location ('file://gpdb-sandbox.localdomain:5432/home/gpadmin/sample_project/Interview-Dataset/data/raw/products.csv')
format 'CSV' (HEADER DELIMITER AS ',');


create external table sample.orderdetails
(orderNumber integer,
productCode varchar(15),
quantityOrdered integer,
priceEach decimal(10,2),
orderLineNumber smallint)
location ('file://gpdb-sandbox.localdomain:5432/home/gpadmin/sample_project/Interview-Dataset/data/raw/orderdetails.csv')
format 'CSV' (HEADER DELIMITER AS ',');


create external table sample.orders
(orderNumber integer,
orderDate date,
requiredDate date,
shippedDate date,
status varchar(15),
comments text,
customerNumber integer)
location ('file://gpdb-sandbox.localdomain:5432/home/gpadmin/sample_project/Interview-Dataset/data/raw/orders.csv')
format 'CSV' (HEADER DELIMITER AS ',');

create external table sample.offices
(officeCode varchar(10),
city varchar(50),
phone varchar(50),
addressLine1 varchar(50),
addressLine2 varchar(50),
state varchar(50),
country varchar(50),
postalCode varchar(15),
territory varchar(10))
location ('file://gpdb-sandbox.localdomain:5432/home/gpadmin/sample_project/Interview-Dataset/data/raw/offices.csv')
format 'CSV' (HEADER DELIMITER AS ',');
