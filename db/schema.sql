---------- Inital Structure of DB ---------------

DROP DATABASE IF EXISTS employee_traker;

CREATE DATABASE employee_traker;

USE employee_traker;

CREATE TABLE department (
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(30) NOT NULL
);

CREATE TABLE role (
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  title VARCHAR(30) NOT NULL,
  salary DECIMAL,
  department_id INT,
  CONSTRAINT fk_department
  FOREIGN KEY (department_id)
  REFERENCES department(id) ON DELETE SET NULL
);

CREATE TABLE employee (
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  first_name VARCHAR(30) NOT NULL,
  last_name VARCHAR(30) NOT NULL,
  role_id INT NOT NULL,
  manager_id INT,
  CONSTRAINT fk_employee
  FOREIGN KEY (manager_id)
  REFERENCES employee(id),
  CONSTRAINT fk_role
  FOREIGN KEY (role_id)
  REFERENCES role(id)
);