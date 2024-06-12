CREATE SCHEMA `jdbc_demo` ;

CREATE TABLE `jdbc_demo`.`new_table` (
  `bookcode` INT NOT NULL AUTO_INCREMENT,
  `title` VARCHAR(255) NOT NULL,
  `author` VARCHAR(255) NOT NULL,
  `category` VARCHAR(255) NOT NULL,
  `sold` VARCHAR(45) NULL DEFAULT 0,
  PRIMARY KEY (`bookcode`));

ALTER TABLE `jdbc_demo`.`new_table` 
CHANGE COLUMN `sold` `sold` INT NULL DEFAULT 0 ;
ALTER TABLE `jdbc_demo`.`new_table` 
RENAME TO  `jdbc_demo`.`book` ;
INSERT INTO `jdbc_demo`.`book` (`bookcode`, `title`, `author`, `category`, `sold`) VALUES ('1', 'Serlock Holmes', 'A. Conan Doyle', 'Trinh thám', '100');
INSERT INTO `jdbc_demo`.`book` (`title`, `author`, `category`, `sold`) VALUES ('Percy Jackson', 'Rick Riodan', 'Phiêu lưu', '150');
CREATE TABLE `jdbc_demo`.`category` (
  `idcategory` INT NOT NULL AUTO_INCREMENT,
  `categorycol` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idcategory`));
  INSERT INTO `jdbc_demo`.`category` (`idcategory`, `categorycol`) VALUES ('1', 'Trinh thám');
INSERT INTO `jdbc_demo`.`category` (`categorycol`) VALUES ('Phiêu lưu');
INSERT INTO `jdbc_demo`.`category` (`categorycol`) VALUES ('Tình cảm');
INSERT INTO `jdbc_demo`.`category` (`categorycol`) VALUES ('Hành động');
INSERT INTO `jdbc_demo`.`category` (`categorycol`) VALUES ('Kinh dị');
SELECT * FROM jdbc_demo.book;
UPDATE `jdbc_demo`.`book` SET `category` = 'Tình cảm', `sold` = '200' WHERE (`bookcode` = '1');


