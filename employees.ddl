
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
