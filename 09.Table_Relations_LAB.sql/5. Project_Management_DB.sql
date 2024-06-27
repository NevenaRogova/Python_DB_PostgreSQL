CREATE TABLE clients(
    ID   SERIAL PRIMARY KEY,
    name VARCHAR(10)
                    );

CREATE TABLE employees(
    ID         SERIAL PRIMARY KEY,
    first_name VARCHAR(30),
    last_name  VARCHAR(30)
                        );

CREATE TABLE projects(
    ID SERIAL PRIMARY KEY
    , client_id INT
	, FOREIGN KEY(client_id) REFERENCES clients(id)
	, project_lead_id INT
	, FOREIGN KEY(project_lead_id) REFERENCES employees(id)
);

ALTER TABLE employees
ADD CONSTRAINT fk_employee_project
FOREIGN KEY (project_lead_id)
REFERENCES projects(id);