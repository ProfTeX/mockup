-- Mo 06 Apr 2015 18:40:49 CEST
SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

CREATE SCHEMA IF NOT EXISTS `proftex` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci ;
USE `proftex` ;

-- -----------------------------------------------------
-- Table `proftex`.`User`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `proftex`.`User` ;

CREATE TABLE IF NOT EXISTS `proftex`.`User` (
  `ID` INT NOT NULL AUTO_INCREMENT,
  `Name` VARCHAR(200) NULL DEFAULT 'Dummy',
  `Email` VARCHAR(200) NOT NULL,
  `Password` VARCHAR(300) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE INDEX `Email_UNIQUE` (`Email` ASC))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `proftex`.`Room`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `proftex`.`Room` ;

CREATE TABLE IF NOT EXISTS `proftex`.`Room` (
  `ID` INT NOT NULL AUTO_INCREMENT,
  `Name` VARCHAR(200) NOT NULL,
  `Course` VARCHAR(100) NULL,
  `Description` TEXT NULL,
  `created_at` DATETIME NOT NULL,
  PRIMARY KEY (`ID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `proftex`.`Snippet`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `proftex`.`Snippet` ;

CREATE TABLE IF NOT EXISTS `proftex`.`Snippet` (
  `ID` INT NOT NULL AUTO_INCREMENT,
  `Title` VARCHAR(150) NOT NULL,
  `Content` TEXT NOT NULL,
  `created_at` DATETIME NOT NULL,
  `updated_at` DATETIME NULL,
  `Position` INT NOT NULL,
  PRIMARY KEY (`ID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `proftex`.`Tag`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `proftex`.`Tag` ;

CREATE TABLE IF NOT EXISTS `proftex`.`Tag` (
  `ID` INT NOT NULL AUTO_INCREMENT,
  `Name` VARCHAR(40) NOT NULL,
  `created_at` DATETIME NOT NULL,
  `updated_at` DATETIME NULL,
  PRIMARY KEY (`ID`),
  UNIQUE INDEX `Name_UNIQUE` (`Name` ASC))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `proftex`.`Chapter`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `proftex`.`Chapter` ;

CREATE TABLE IF NOT EXISTS `proftex`.`Chapter` (
  `ID` INT NOT NULL AUTO_INCREMENT,
  `Name` VARCHAR(150) NOT NULL,
  `created_at` DATETIME NOT NULL,
  `updated_at` DATETIME NULL,
  `Room_ID` INT NOT NULL,
  `Position` INT NOT NULL,
  PRIMARY KEY (`ID`),
  INDEX `fk_Chapter_Room1_idx` (`Room_ID` ASC),
  CONSTRAINT `fk_Chapter_Room1`
    FOREIGN KEY (`Room_ID`)
    REFERENCES `proftex`.`Room` (`ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `proftex`.`User_has_Room`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `proftex`.`User_has_Room` ;

CREATE TABLE IF NOT EXISTS `proftex`.`User_has_Room` (
  `User_ID` INT NOT NULL,
  `Room_ID` INT NOT NULL,
  PRIMARY KEY (`User_ID`, `Room_ID`),
  INDEX `fk_User_has_Room_Room1_idx` (`Room_ID` ASC),
  INDEX `fk_User_has_Room_User_idx` (`User_ID` ASC),
  CONSTRAINT `fk_User_has_Room_User`
    FOREIGN KEY (`User_ID`)
    REFERENCES `proftex`.`User` (`ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_User_has_Room_Room1`
    FOREIGN KEY (`Room_ID`)
    REFERENCES `proftex`.`Room` (`ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `proftex`.`Chapter_has_Snippet`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `proftex`.`Chapter_has_Snippet` ;

CREATE TABLE IF NOT EXISTS `proftex`.`Chapter_has_Snippet` (
  `Chapter_ID` INT NOT NULL,
  `Snippet_ID` INT NOT NULL,
  PRIMARY KEY (`Chapter_ID`, `Snippet_ID`),
  INDEX `fk_Chapter_has_Snippet_Snippet1_idx` (`Snippet_ID` ASC),
  INDEX `fk_Chapter_has_Snippet_Chapter1_idx` (`Chapter_ID` ASC),
  CONSTRAINT `fk_Chapter_has_Snippet_Chapter1`
    FOREIGN KEY (`Chapter_ID`)
    REFERENCES `proftex`.`Chapter` (`ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Chapter_has_Snippet_Snippet1`
    FOREIGN KEY (`Snippet_ID`)
    REFERENCES `proftex`.`Snippet` (`ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `proftex`.`Snippet_has_Tag`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `proftex`.`Snippet_has_Tag` ;

CREATE TABLE IF NOT EXISTS `proftex`.`Snippet_has_Tag` (
  `Snippet_ID` INT NOT NULL,
  `Tag_ID` INT NOT NULL,
  PRIMARY KEY (`Snippet_ID`, `Tag_ID`),
  INDEX `fk_Snippet_has_Tag_Tag1_idx` (`Tag_ID` ASC),
  INDEX `fk_Snippet_has_Tag_Snippet1_idx` (`Snippet_ID` ASC),
  CONSTRAINT `fk_Snippet_has_Tag_Snippet1`
    FOREIGN KEY (`Snippet_ID`)
    REFERENCES `proftex`.`Snippet` (`ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Snippet_has_Tag_Tag1`
    FOREIGN KEY (`Tag_ID`)
    REFERENCES `proftex`.`Tag` (`ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `proftex`.`Group`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `proftex`.`Group` ;

CREATE TABLE IF NOT EXISTS `proftex`.`Group` (
  `Email` VARCHAR(200) NOT NULL,
  `Group` VARCHAR(45) NULL,
  PRIMARY KEY (`Email`),
  UNIQUE INDEX `Email_UNIQUE` (`Email` ASC))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `proftex`.`User_has_Group`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `proftex`.`User_has_Group` ;

CREATE TABLE IF NOT EXISTS `proftex`.`User_has_Group` (
  `User_ID` INT NOT NULL,
  `Group_Email` VARCHAR(200) NOT NULL,
  PRIMARY KEY (`User_ID`, `Group_Email`),
  INDEX `fk_User_has_Group_Group1_idx` (`Group_Email` ASC),
  INDEX `fk_User_has_Group_User1_idx` (`User_ID` ASC),
  CONSTRAINT `fk_User_has_Group_User1`
    FOREIGN KEY (`User_ID`)
    REFERENCES `proftex`.`User` (`ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_User_has_Group_Group1`
    FOREIGN KEY (`Group_Email`)
    REFERENCES `proftex`.`Group` (`Email`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
