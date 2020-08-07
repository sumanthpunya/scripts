
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
