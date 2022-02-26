
DROP DATABASE IF EXISTS `Spring12345`;
/* Lenh tao Database */
CREATE DATABASE IF NOT EXISTS `Spring12345`;
/* Lenh su dung Database */
USE `Spring12345`;


/*------------------- Create table ----------------------- */

/* Lenh xoa bang */
DROP TABLE IF EXISTS `Department`;
/* Len tao bang va cac cot du lieu cua bang--*/
CREATE TABLE `Department`
(
    `DepartmentID`   TINYINT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
    `DepartmentName` VARCHAR(50) NOT NULL UNIQUE KEY
);


DROP TABLE IF EXISTS `Account`;
CREATE TABLE IF NOT EXISTS `Account`
(
    `AccountID`    MEDIUMINT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
    `Email`        VARCHAR(100) UNIQUE,
    `Username`     VARCHAR(50) NOT NULL unique,
    `Fullname`     VARCHAR(50),
    `DeptID` TINYINT UNSIGNED,
    `CreateDate`   DATETIME ,
    `password`    Varchar(100),
    `Role`    Varchar(100),
    CONSTRAINT fk_dp_id FOREIGN KEY (`DeptID`) REFERENCES `Department` (`DepartmentID`) ON UPDATE CASCADE ON DELETE SET NULL
);


/* ---------------------- INSERT DATA ---------------------------- */
/* INSERT DATA bang Department */
INSERT INTO `Department`(`DepartmentName`)
VALUES ('Phong Ky Thuat 1'),
       ('Phong Ky Thuat 2'),
       ('Phong Dev 1'),
       ('Phong Dev 2'),
       ('Phong Sale'),
       ('Phong Marketing'),
       ('Phong Giam Doc'),
       ('Phong Tai Chinh');

/* lenh sua bang xoa khoa ngoai foreign key*/

/* INSERT DATA bang Account */
INSERT INTO `Account`(`Email`, `Username`, `Fullname`, `DeptID`, `CreateDate`,`password`,`role`)
VALUES ('vti_account1@vtiacademy.com', 'vti1', 'Nguyen Van Tinh', 1, '2019-12-01','$2a$10$W2neF9.6Agi6kAKVq8q3fec5dHW8KUA.b0VSIGdIZyUravfLpyIFi', 'ROLE_USER'),
       ('vti_account2@vtiacademy.com', 'vti2', 'Trinh Hoai Linh', 1, '2020-12-01','$2a$10$W2neF9.6Agi6kAKVq8q3fec5dHW8KUA.b0VSIGdIZyUravfLpyIFi', 'ROLE_USER'),
       ('vti_account3@vtiacademy.com', 'vti3', 'Nguyen Van Test', 1, '2020-07-01','$2a$10$W2neF9.6Agi6kAKVq8q3fec5dHW8KUA.b0VSIGdIZyUravfLpyIFi', 'ROLE_ADMIN'),
       ('vti_account4@vtiacademy.com', 'vti4', 'Tran Van Tinh', 2, '2019-09-01','$2a$10$W2neF9.6Agi6kAKVq8q3fec5dHW8KUA.b0VSIGdIZyUravfLpyIFi', 'ROLE_ADMIN'),
       ('vti_account5@vtiacademy.com', 'account5', 'Ho Van Tinh', 3,  '2021-07-01','$2a$10$W2neF9.6Agi6kAKVq8q3fec5dHW8KUA.b0VSIGdIZyUravfLpyIFi', 'ROLE_USER'),
       ('vti_account6@vtiacademy.com', 'account_vti6', 'Cao Thai Son', 3, NOW(),'$2a$10$W2neF9.6Agi6kAKVq8q3fec5dHW8KUA.b0VSIGdIZyUravfLpyIFi', 'ROLE_USER'),
       ('vti_7@vtiacademy.com', 'account_vti7', 'Tam Thất Tùng', 3,  '2020-10-01','$2a$10$W2neF9.6Agi6kAKVq8q3fec5dHW8KUA.b0VSIGdIZyUravfLpyIFi', 'ROLE_USER'),
       ('vti_8@vtiacademy.com', 'account_vti8', 'Nguyen Quynh Thu',  4, '2019-04-01','$2a$12$/hPK4SwPMag8kQmkMMeLQ.1mxdrH5a1LbAZiYmU9wIj9.zFkCEUVG', 'ROLE_USER'),
       ('vti_9@vtiacademy.com', 'account_vti9', 'Tran Kim Tuyen', 2,  NOW(),'$2a$12$/hPK4SwPMag8kQmkMMeLQ.1mxdrH5a1LbAZiYmU9wIj9.zFkCEUVG', 'ROLE_USER'),
       ('vti_account10@vtiacademy.com', 'account_vti10', 'Nguyen Ba Dao',  5, '2019-10-01','$2a$12$/hPK4SwPMag8kQmkMMeLQ.1mxdrH5a1LbAZiYmU9wIj9.zFkCEUVG', 'ROLE_USER'),
       ('vti_account11@vtiacademy.com', 'account_vti11', 'Nguyen Van Binh',  3, '2020-12-01','$2a$12$/hPK4SwPMag8kQmkMMeLQ.1mxdrH5a1LbAZiYmU9wIj9.zFkCEUVG', 'ROLE_USER');

