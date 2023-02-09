-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema cat
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema cat
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `cat` ;
USE `cat` ;

-- -----------------------------------------------------
-- Table `cat`.`person`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `cat`.`person` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(100) NOT NULL,
  `idade` VARCHAR(100) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `cat`.`breeds`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `cat`.`breeds` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `breed` VARCHAR(100) NOT NULL,
  `id_person` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_breeds_1_idx` (`id_person` ASC) VISIBLE,
  CONSTRAINT `fk_breeds_1`
    FOREIGN KEY (`id_person`)
    REFERENCES `cat`.`person` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `cat`.`cat`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `cat`.`cat` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(100) NOT NULL,
  `idade` INT NOT NULL,
  `sexo` VARCHAR(1) NOT NULL,
  `id_breeds` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_Cat_1_idx` (`id_breeds` ASC) VISIBLE,
  CONSTRAINT `fk_Cat_1`
    FOREIGN KEY (`id_breeds`)
    REFERENCES `cat`.`breeds` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
