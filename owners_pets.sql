-- 1. Create a new database called owners_pets

-- 2. Create the owners table

CREATE TABLE owners (

    id SERIAL PRIMARY KEY,
    first_name VARCHAR(30),
    last_name VARCHAR(30),
    city VARCHAR(30),
    state CHAR(2)
);

SELECT * FROM owners;

-- 3. Create the pets table (with a foreign key)

CREATE TABLE pets (

    id SERIAL PRIMARY KEY,
    species VARCHAR(30),
    full_name VARCHAR(30),
    age INT,
    owner_id INT REFERENCES owners(id)
);

SELECT * FROM pets;

-- 4. Add an email column to the owners table

ALTER TABLE owners
ADD COLUMN email VARCHAR(50) UNIQUE;

SELECT * FROM owners;

-- 5. Change the data type of the last_name column in the owners table to VARCHAR(50).

ALTER TABLE owners
ALTER COLUMN last_name TYPE VARCHAR(50);

SELECT * FROM owners;

INSERT INTO owners (first_name, last_name, city, state, email)
VALUES ('Samuel', 'Smith', 'Boston', 'MA', 'samsmith@gmail.com'),('Emma', 'Johnson', 'Seattle', 'WA', 'emjohnson@gmail.com'),('John','Oliver','New York','NY','johnoliver@gmail.com'),('Olivia','Brown','San Francisco', 'CA', 'oliviabrown@gmail.com'),('Simon', 'Smith', 'Dallas', 'TX', 'sismith@gmail.com'),(null,'Maxwell', null, 'CA', 'lordmaxwell@gmail.com');

SELECT * FROM owners;

INSERT INTO pets (species, full_name, age, owner_id)
VALUES ('Dog', 'Rex', 6, 1),('Rabbit', 'Fluffy', 2, 5),('Cat', 'Tom', 8, 2),('Mouse', 'Jerry', 2, 2),('Dog', 'Biggles', 4, 1),('Tortoise', 'Squirtle', 42, 3);

SELECT * FROM pets;

UPDATE pets
SET age = 3
WHERE id = 2;

DELETE FROM owners
WHERE id = 6;

