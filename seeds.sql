USE employee_db;

INSERT INTO department
    (name)
VALUES
    ('Sales'),
    ('Engineering'),
    ('Admin'),
    ('HR');

INSERT INTO role
    (title, salary, department_id)
VALUES
    ('Sales Lead', 100000, 1),
    ('Salesperson', 80000, 1),
    ('Lead Engineer', 150000, 2),
    ('Engineer', 120000, 2),
    ('Admin Manager', 160000, 3),
    ('Admin employee', 125000, 3),
    ('HR Regional Lead', 250000, 4),
    ('HR representative', 190000, 4);

INSERT INTO employee
    (first_name, last_name, role_id, manager_id)
VALUES
    ('Josh', 'Smith', 1, NULL),
    ('Noah', 'Hernandez', 2, 1),
    ('Anna', 'Trueman', 3, NULL),
    ('Kamahl', 'Sigurd', 4, 3),
    ('Jester', 'Linx', 5, NULL),
    ('Talia', 'Tarabishi', 6, 5),
    ('Bonnie', 'Mitchell', 7, NULL),
    ('Dialga', 'Arceus', 8, 7);