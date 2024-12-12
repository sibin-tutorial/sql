-- Create a table:
CREATE TABLE IF NOT EXISTS users (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
	email VARCHAR(100) NOT NULL
);

-- List user table
Select * from users;

-- Insert datatas
INSERT INTO users(name,email) values('rahul','rahul@gmail.com');
INSERT INTO users(name,email) values('tom','tom@gmail.com');
INSERT INTO users(name,email) values('Don','don@gmail.com');
INSERT INTO users(name,email) values('june','june@gmail.com');
INSERT INTO users(name,email) values('april','april@gmail.com');
INSERT INTO users(name,email) values('may','may@gmail.com');


-- List user table
Select * from users;

-- Update a row
UPDATE users set email = 'rahul1990@gmail.com' where id = 1;

-- List user table
Select * from users;

-- Delete a row
DELETE FROM users where id = 1;

-- List user table
Select * from users;

-- ORDER BY - ascending order name
select * from users order by name;

-- ORDER BY - descending order name
select * from users order by name desc;

--The SQL AND Operator
select * from users where name = 'tom' AND email = 'tom@gmail.com';

-- OR operator
select * from users where name = 'tom' OR name = 'may';

-- NOT Operator
select * from users where NOT name = 'tom';

--The MIN() function returns the smallest value of the selected column.
select MIN(id) from users;

--The MAX() function returns the largest value of the selected column.
select MAX(id) from users;



-- Stored procedure
CREATE OR REPLACE FUNCTION add_numbers(a INT, b INT) RETURNS INT AS $$
BEGIN
    RETURN a + b;
END;
$$ LANGUAGE plpgsql;
