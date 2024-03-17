CREATE USER 'report_user'@'%' IDENTIFIED BY 'Auth123';

CREATE DATABASE IF NOT EXISTS report;

GRANT ALL PRIVILEGES ON report.* TO 'report_user'@'%';

USE report;

CREATE TABLE IF NOT EXISTS `report` (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    daily_amount INT NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);