CREATE DATABASE IF NOT EXISTS `sample_db` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `sample_db`;

-- Drop tables if they exist
DROP TABLE IF EXISTS `department`;
DROP TABLE IF EXISTS `employee`;

-- Table 1: Department
CREATE TABLE `department` (
  `dept_id` INT AUTO_INCREMENT NOT NULL,
  `dept_name` VARCHAR(100) NOT NULL,
  `location` VARCHAR(255) DEFAULT NULL,
  PRIMARY KEY (`dept_id`)
);

-- Table 2: Employee
CREATE TABLE `employee` (
  `emp_id` INT AUTO_INCREMENT NOT NULL,
  `first_name` VARCHAR(50) NOT NULL,
  `last_name` VARCHAR(50) NOT NULL,
  `email` VARCHAR(255) DEFAULT NULL,
  `phone_number` VARCHAR(15) DEFAULT NULL,
  `salary` DECIMAL(10, 2) NOT NULL,
  `dept_id` INT DEFAULT NULL,
  PRIMARY KEY (`emp_id`),
  FOREIGN KEY (`dept_id`) REFERENCES `department` (`dept_id`) ON DELETE SET NULL
);
