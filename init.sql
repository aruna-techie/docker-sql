-- TFI Heroes Database

CREATE DATABASE tfi_heroes;

USE tfi_heroes;

-- Create table
CREATE TABLE heroes (
    id INT PRIMARY KEY AUTO_INCREMENT,
    hero_name VARCHAR(100) NOT NULL,
    age INT,
    salary_crores DECIMAL(10,2),
    industry VARCHAR(50) DEFAULT 'TFI'
);

-- Insert TFI heroes
INSERT INTO heroes (hero_name, age, salary_crores) VALUES
('Prabhas', 46, 100.00),
('Allu Arjun', 43, 80.00),
('Mahesh Babu', 51, 80.00),
('Jr NTR', 43, 70.00),
('Ram Charan', 41, 65.00),
('Pawan Kalyan', 55, 60.00),
('Chiranjeevi', 71, 50.00),
('Nandamuri Balakrishna', 66, 30.00),
('Vijay Deverakonda', 37, 25.00),
('Nani', 42, 25.00),
('Ravi Teja', 58, 20.00),
('Vishwak Sen', 31, 10.00);

-- Display all heroes
SELECT * FROM heroes;

-- Display hero name and salary
SELECT hero_name, salary_crores
FROM heroes;

-- Display heroes earning more than 50 crores
SELECT hero_name, salary_crores
FROM heroes
WHERE salary_crores > 50;

-- Sort heroes by salary
SELECT hero_name, salary_crores
FROM heroes
ORDER BY salary_crores DESC;

-- Find the highest salary
SELECT MAX(salary_crores) AS highest_salary
FROM heroes;

-- Find the average salary
SELECT AVG(salary_crores) AS average_salary
FROM heroes;
