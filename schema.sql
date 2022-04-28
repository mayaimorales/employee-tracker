DROP DATABASE IF EXISTS employees_db;
CREATE DATABASE employees_db;

USE employees_db

CREATE TABLE department (
  id INT PRIMARY KEY,
  department_name VARCHAR(30) NOT NULL
);

CREATE TABLE employee_role (
  id INT PRIMARY KEY,
  title VARCHAR(30) NOT NULL,
  salary DECIMAL NOT NULL,
  department_id: INT
  FOREIGN KEY (department_id)
  REFERENCES (department(id)
);

CREATE TABLE employee (
  id INT PRIMARY KEY,
  first_name VARCHAR(30) NOT NULL,
  last_name VARCHAR(30) NOT NULL,
  role_id INT,
  manager_id INT,
  FOREIGN KEY (employee_role id)
  REFERENCES (employee_role(id))
);