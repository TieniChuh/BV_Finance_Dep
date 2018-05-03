CREATE SCHEMA `invincible_com` ;

CREATE TABLE `invincible_com`.`ictuser` (
  `loginID` VARCHAR(45) NOT NULL,
  `loginPass` VARCHAR(45) NULL,
  `name` VARCHAR(45) NULL,
  `birthday` DATE NULL,
  `cellphone` VARCHAR(45) NULL,
  `department` VARCHAR(45) NULL,
  PRIMARY KEY (`loginID`))
ENGINE = InnoDB;
