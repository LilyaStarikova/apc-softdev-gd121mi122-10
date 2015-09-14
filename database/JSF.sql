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
-- Table `mydb`.`TRAINING`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`TRAINING` (
  `TrainingCode` INT NOT NULL,
  PRIMARY KEY (`TrainingCode`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`SCHEDULE`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`SCHEDULE` (
  `ScheduleID` INT NOT NULL,
  `Room` VARCHAR(45) NULL,
  `Month` VARCHAR(45) NULL,
  `Date` VARCHAR(45) NULL,
  `Year` VARCHAR(45) NULL,
  `Hour` VARCHAR(45) NULL,
  `Minute` VARCHAR(45) NULL,
  `TRAINING_TrainingCode` INT NOT NULL,
  PRIMARY KEY (`ScheduleID`),
  INDEX `fk_SCHEDULE_TRAINING1_idx` (`TRAINING_TrainingCode` ASC),
  CONSTRAINT `fk_SCHEDULE_TRAINING1`
    FOREIGN KEY (`TRAINING_TrainingCode`)
    REFERENCES `mydb`.`TRAINING` (`TrainingCode`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`TRAINER`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`TRAINER` (
  `TrainerID` INT NOT NULL,
  `TrainerName` VARCHAR(45) NULL,
  `TrainerLastname` VARCHAR(45) NULL,
  `Age` VARCHAR(45) NULL,
  `Address` VARCHAR(45) NULL,
  `Gender` VARCHAR(45) NULL,
  `Contact` VARCHAR(45) NULL,
  `SCHEDULE_ScheduleID` INT NOT NULL,
  PRIMARY KEY (`TrainerID`),
  INDEX `fk_TRAINER_SCHEDULE1_idx` (`SCHEDULE_ScheduleID` ASC),
  CONSTRAINT `fk_TRAINER_SCHEDULE1`
    FOREIGN KEY (`SCHEDULE_ScheduleID`)
    REFERENCES `mydb`.`SCHEDULE` (`ScheduleID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`STUDENT`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`STUDENT` (
  `StudentID` INT NOT NULL,
  `Fname` VARCHAR(45) NULL,
  `Lname` VARCHAR(45) NULL,
  `address` VARCHAR(45) NULL,
  `contact` VARCHAR(45) NULL,
  `gender` VARCHAR(45) NULL,
  `email` VARCHAR(45) NULL,
  `citizenship` VARCHAR(45) NULL,
  `TRAINING_TrainingCode` INT NOT NULL,
  `TRAINER_TrainerID` INT NOT NULL,
  PRIMARY KEY (`StudentID`, `TRAINER_TrainerID`),
  INDEX `fk_STUDENT_TRAINING1_idx` (`TRAINING_TrainingCode` ASC),
  INDEX `fk_STUDENT_TRAINER1_idx` (`TRAINER_TrainerID` ASC),
  CONSTRAINT `fk_STUDENT_TRAINING1`
    FOREIGN KEY (`TRAINING_TrainingCode`)
    REFERENCES `mydb`.`TRAINING` (`TrainingCode`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_STUDENT_TRAINER1`
    FOREIGN KEY (`TRAINER_TrainerID`)
    REFERENCES `mydb`.`TRAINER` (`TrainerID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`LOGIN`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`LOGIN` (
  `LoginID` INT NOT NULL,
  `Username` VARCHAR(45) NULL,
  `Password` VARCHAR(45) NULL,
  PRIMARY KEY (`LoginID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`ADMIN`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`ADMIN` (
  `AdminID` INT NOT NULL,
  `fname` VARCHAR(45) NULL,
  `lname` VARCHAR(45) NULL,
  `address` VARCHAR(45) NULL,
  `contact` VARCHAR(45) NULL,
  `gender` VARCHAR(45) NULL,
  `age` VARCHAR(45) NULL,
  `username` VARCHAR(45) NULL,
  `LOGIN_LoginID` INT NOT NULL,
  PRIMARY KEY (`AdminID`),
  INDEX `fk_ADMIN_LOGIN_idx` (`LOGIN_LoginID` ASC),
  CONSTRAINT `fk_ADMIN_LOGIN`
    FOREIGN KEY (`LOGIN_LoginID`)
    REFERENCES `mydb`.`LOGIN` (`LoginID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`PROJECT`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`PROJECT` (
  `ProjectID` INT NOT NULL,
  `Projectname` VARCHAR(45) NULL,
  `TRAINING_TrainingCode` INT NOT NULL,
  `ADMIN_AdminID` INT NOT NULL,
  PRIMARY KEY (`ProjectID`, `TRAINING_TrainingCode`, `ADMIN_AdminID`),
  INDEX `fk_PROJECT_TRAINING1_idx` (`TRAINING_TrainingCode` ASC),
  INDEX `fk_PROJECT_ADMIN1_idx` (`ADMIN_AdminID` ASC),
  CONSTRAINT `fk_PROJECT_TRAINING1`
    FOREIGN KEY (`TRAINING_TrainingCode`)
    REFERENCES `mydb`.`TRAINING` (`TrainingCode`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_PROJECT_ADMIN1`
    FOREIGN KEY (`ADMIN_AdminID`)
    REFERENCES `mydb`.`ADMIN` (`AdminID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
