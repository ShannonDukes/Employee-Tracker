-- Drops/deletes database if already exists -- 
DROP DATABASE IF EXISTS employee_db;

-- Creates the "employee_DB" database --
CREATE DATABASE employee_db;

USE employee_db;
-- CREATE TABLE department (
--   id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
--   name VARCHAR(30) UNIQUE NOT NULL
-- );

-- CREATE TABLE role (
--   id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
--   title VARCHAR(30) UNIQUE NOT NULL,
--   salary DECIMAL UNSIGNED NOT NULL,
--   department_id INT UNSIGNED NOT NULL,
--   INDEX dep_ind (department_id),
--   CONSTRAINT fk_department FOREIGN KEY (department_id) REFERENCES department(id) ON DELETE CASCADE
-- );

-- CREATE TABLE employee (
--   id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
--   first_name VARCHAR(30) NOT NULL,
--   last_name VARCHAR(30) NOT NULL,
--   role_id INT UNSIGNED NOT NULL,
--   INDEX role_ind (role_id),
--   CONSTRAINT fk_role FOREIGN KEY (role_id) REFERENCES role(id) ON DELETE CASCADE,
--   manager_id INT UNSIGNED,
--   INDEX man_ind (manager_id),
--   CONSTRAINT fk_manager FOREIGN KEY (manager_id) REFERENCES employee(id) ON DELETE SET NULL
-- );

-- Create table to hold departments information --
CREATE TABLE department(
	id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(30),
    PRIMARY KEY(id)
);

--Create table to hold employee's roles information --
CREATE TABLE role(
	id INT NOT NULL AUTO_INCREMENT primary key,
    title VARCHAR(30) NOT NULL, 
    salary DECIMAL,
    department_id INT,
    CONSTRAINT fk_department FOREIGN KEY (department_id) 
    REFERENCES department(id)
		ON UPDATE CASCADE
        ON DELETE CASCADE
--     PRIMARY KEY(id)
);


--Create table to hold employee information --
CREATE TABLE employee(
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(30) NOT NULL,
    last_name VARCHAR(30) NOT NULL,
    role_id INT,
    manager_id INT,
	CONSTRAINT fk_role FOREIGN KEY (role_id) 
    REFERENCES role(id) 
		ON UPDATE CASCADE 
        ON DELETE CASCADE,
    CONSTRAINT fk_manager FOREIGN KEY (manager_id) 
    REFERENCES employee(id) 
		ON UPDATE CASCADE 
        ON DELETE CASCADE
    -- PRIMARY KEY (id)
);

-- SELECT * FROM role;

-- SELECT * FROM department;

-- SELECT * FROM employee;