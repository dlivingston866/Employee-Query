USE employeeDB;

INSERT INTO departments (name) VALUES ("Sales");
INSERT INTO departments (name) VALUES ("IT");
INSERT INTO departments (name) VALUES ("Finance");
INSERT INTO departments (name) VALUES ("Legal");

INSERT INTO roles (title, salary, department_id) VALUES ("Sales Manager", 100000, 1);
INSERT INTO roles (title, salary, department_id) VALUES ("IT Manager", 150000, 2);
INSERT INTO roles (title, salary, department_id) VALUES ("Finance Manager", 1200000, 3);
INSERT INTO roles (title, salary, department_id) VALUES ("Attorney", 200000, 4);

INSERT INTO employee (first_name, last_name, role_id, manager_id) VALUES ("David", "Child", 1,1);
INSERT INTO employee (first_name, last_name, role_id, manager_id) VALUES ("Maurice", "Lefevre", 2,4);
INSERT INTO employee (first_name, last_name, role_id, manager_id) VALUES ("Sam", "Kennison", 3,2);
INSERT INTO employee (first_name, last_name, role_id, manager_id) VALUES ("Betsy", "Ross", 4,3);
INSERT INTO employee (first_name, last_name, role_id, manager_id) VALUES ("David", "Washington", 1,4);
INSERT INTO employee (first_name, last_name, role_id, manager_id) VALUES ("Murray", "Johnson", 3,1);
INSERT INTO employee (first_name, last_name, role_id, manager_id) VALUES ("Samuel", "Addams", 4,3);
INSERT INTO employee (first_name, last_name, role_id, manager_id) VALUES ("Jennifer", "Rodriguez", 2,2);