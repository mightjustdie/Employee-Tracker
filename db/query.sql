-- SELECT employee.id, employee.first_name, employee.last_name, role.title, department.name
-- AS department, role.salary, manager.first_name, manager.last_name 
-- AS manager
-- FROM employee
-- JOIN role ON employee.role_id = role.id
-- JOIN department ON role.department_id = department.id
-- LEFT JOIN employee manager ON employee.manager_id = manager.id;



UPDATE employee SET role_id = 10
WHERE employee.id = 1;