-- Database: test

-- DROP DATABASE test;

CREATE DATABASE test
    WITH 
    OWNER = postgres
    ENCODING = 'UTF8'
    LC_COLLATE = 'en_US.UTF-8'
    LC_CTYPE = 'en_US.UTF-8'
    TABLESPACE = pg_default
    CONNECTION LIMIT = -1;

 -- modifying tables and add a column

CREATE TABLE examples (

	example_id SERIAL PRIMARY KEY,
	first_name VARCHAR(30),
	last_name VARCHAR(30)
);
	
SELECT * FROM examples;
	
ALTER TABLE examples
ADD COLUMN email VARCHAR(50) UNIQUE;

ALTER TABLE examples
ADD COLUMN nationality VARCHAR(30),
ADD COLUMN AGE INT NOT NULL;


-- modify a columns data type

/*
ALTER TABLE tablename
ALTER COLUMN columnname TYPE new_data_type;
*/

ALTER TABLE examples
ALTER COLUMN nationality TYPE CHAR(3);

SELECT * FROM examples;

ALTER TABLE examples
ALTER COLUMN last_name TYPE VARCHAR(50),
ALTER COLUMN email TYPE VARCHAR(80);

-- deleting tables from a database

CREATE TABLE practice (

    id SERIAL PRIMARY KEY,
    product_name VARCHAR(50),
    product_price NUMERIC(4,2)
);

SELECT * FROM practice;

DROP TABLE practice;

-- INSERT DATA INTO A TABLE

/* 

INSERT INTO tablename (columnname1, columnname2, columnname3)
VALUES ('value1', 'value2', 'value3');

*/

INSERT INTO examples (first_name, last_name, email, nationality, age)
VALUES('David','Mitchell','dmitch@gmail.com','GBR',43);

SELECT * FROM examples;

INSERT INTO examples (first_name, last_name, email, nationality, age)
VALUES('Emily','Watson','ewatson@gmail.com','USA',29),('Theo','Scott','tscott@gmail.com','AUS',33),('Emily','Smith','esmith@gmail.com','GBR',29),('Jim','Burr','jburr@gmail.com','USA',54);


