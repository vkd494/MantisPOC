create database MantisWithUI;
use MantisWithUI;

CREATE TABLE project (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100)
);
select * from project;
CREATE TABLE mantis (
    mantis_id INT PRIMARY KEY,
    project_id INT,
    FOREIGN KEY (project_id) REFERENCES project(id)
);
select * from mantis;

INSERT INTO project (name) VALUES ('OFA'), ('ARMF'), ('DWM');
INSERT INTO mantis (mantis_id, project_id) VALUES 
(101, 1), 
(102, 1), 
(201, 2), 
(202, 2), 
(301, 3);

 alter table mantis_integration 
       modify column reason varchar(255);
       
 alter table mantis_integration 
       modify column run_query varchar(255);
  alter table project 
       modify column name varchar(255);

CREATE TABLE mantis_integration (
    id INT AUTO_INCREMENT PRIMARY KEY,
    reason varchar(200),
    run_query varchar(200),
    mantis_id INT,
    FOREIGN KEY (mantis_id) REFERENCES mantis(mantis_id)
);

select
        p1_0.id,
        p1_0.name 
    from
        project p1_0;

select * from mantis_integration;