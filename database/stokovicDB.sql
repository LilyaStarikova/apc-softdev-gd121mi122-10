-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci ;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`CLASSLIST`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`CLASSLIST` (
  `ClassCode` INT NOT NULL,
  PRIMARY KEY (`ClassCode`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`STUDENT`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`STUDENT` (
  `ID` INT NOT NULL,
  `Firstname` VARCHAR(45) NULL,
  `Lastname` VARCHAR(45) NULL,
  `Address` VARCHAR(45) NULL,
  `ContactNum` VARCHAR(45) NULL,
  `CLASSLIST_ClassCode` INT NOT NULL,
  PRIMARY KEY (`ID`),
  INDEX `fk_STUDENT_CLASSLIST1_idx` (`CLASSLIST_ClassCode` ASC),
  CONSTRAINT `fk_STUDENT_CLASSLIST1`
    FOREIGN KEY (`CLASSLIST_ClassCode`)
    REFERENCES `mydb`.`CLASSLIST` (`ClassCode`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`PROFFESSOR`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`PROFFESSOR` (
  `Prof_ID` INT NOT NULL,
  `Firstname` VARCHAR(45) NULL,
  `Lastname` VARCHAR(45) NULL,
  `ContactNum` VARCHAR(45) NULL,
  `CLASSLIST_ClassCode` INT NOT NULL,
  PRIMARY KEY (`Prof_ID`),
  INDEX `fk_PROFFESSOR_CLASSLIST1_idx` (`CLASSLIST_ClassCode` ASC),
  CONSTRAINT `fk_PROFFESSOR_CLASSLIST1`
    FOREIGN KEY (`CLASSLIST_ClassCode`)
    REFERENCES `mydb`.`CLASSLIST` (`ClassCode`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`SECTION`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`SECTION` (
  `SectionID` INT NOT NULL,
  `SectionName` VARCHAR(45) NULL,
  `CLASSLIST_ClassCode` INT NOT NULL,
  PRIMARY KEY (`SectionID`),
  INDEX `fk_SECTION_CLASSLIST1_idx` (`CLASSLIST_ClassCode` ASC),
  CONSTRAINT `fk_SECTION_CLASSLIST1`
    FOREIGN KEY (`CLASSLIST_ClassCode`)
    REFERENCES `mydb`.`CLASSLIST` (`ClassCode`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`SUBJECT`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`SUBJECT` (
  `SubjectID` INT NOT NULL,
  `SubDescription` VARCHAR(45) NULL,
  `SubSched` VARCHAR(45) NULL,
  `SECTION_SectionID` INT NOT NULL,
  PRIMARY KEY (`SubjectID`),
  INDEX `fk_SUBJECT_SECTION1_idx` (`SECTION_SectionID` ASC),
  CONSTRAINT `fk_SUBJECT_SECTION1`
    FOREIGN KEY (`SECTION_SectionID`)
    REFERENCES `mydb`.`SECTION` (`SectionID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
