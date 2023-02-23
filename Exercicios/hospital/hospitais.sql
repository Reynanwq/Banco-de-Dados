-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 ;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`hospitais`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`hospitais` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `localizacao` VARCHAR(45) NOT NULL,
  `nome_hospital` VARCHAR(45) NOT NULL,
  `id_medicos` INT NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`medicos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`medicos` (
  `id` INT NOT NULL,
  `nome` VARCHAR(45) NOT NULL,
  `idade` VARCHAR(45) NOT NULL,
  `especialidade` VARCHAR(45) NOT NULL,
  `id_medicos_hospitais` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_medicos_1_idx` (`id_medicos_hospitais` ASC) VISIBLE,
  CONSTRAINT `fk_medicos_1`
    FOREIGN KEY (`id_medicos_hospitais`)
    REFERENCES `mydb`.`hospitais` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`pacientes`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`pacientes` (
  `id` INT NOT NULL,
  `nome` VARCHAR(45) NOT NULL,
  `idade` VARCHAR(45) NOT NULL,
  `doenca` VARCHAR(45) NOT NULL,
  `id_pacientes_medicos` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_pacientes_1_idx` (`id_pacientes_medicos` ASC) VISIBLE,
  CONSTRAINT `fk_pacientes_1`
    FOREIGN KEY (`id_pacientes_medicos`)
    REFERENCES `mydb`.`medicos` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
