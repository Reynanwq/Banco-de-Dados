-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema farmacia
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema farmacia
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `farmacia` ;
USE `farmacia` ;

-- -----------------------------------------------------
-- Table `farmacia`.`tipos_produtos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `farmacia`.`tipos_produtos` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `tipos` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `farmacia`.`fabricantes`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `farmacia`.`fabricantes` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `fabricantescol` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `farmacia`.`produtos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `farmacia`.`produtos` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `produto` VARCHAR(45) NOT NULL,
  `designacao` VARCHAR(45) NOT NULL,
  `composicao` VARCHAR(45) NOT NULL,
  `preco_venda` VARCHAR(45) NOT NULL,
  `id_tipo_produto` INT NOT NULL,
  `id_fabricante` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_produtos_1_idx` (`id_tipo_produto` ASC) VISIBLE,
  INDEX `fk_produtos_2_idx` (`id_fabricante` ASC) VISIBLE,
  CONSTRAINT `fk_produtos_1`
    FOREIGN KEY (`id_tipo_produto`)
    REFERENCES `farmacia`.`tipos_produtos` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_produtos_2`
    FOREIGN KEY (`id_fabricante`)
    REFERENCES `farmacia`.`fabricantes` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `farmacia`.`clientes`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `farmacia`.`clientes` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(100) NOT NULL,
  `endereco` VARCHAR(200) NOT NULL,
  `cep` VARCHAR(15) NOT NULL,
  `telefone` VARCHAR(20) NOT NULL,
  `localidade` VARCHAR(45) NOT NULL,
  `cpf` VARCHAR(15) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `farmacia`.`compras`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `farmacia`.`compras` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `id_clientes` INT NOT NULL,
  `Date` DATE NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_compras_1_idx` (`id_clientes` ASC) VISIBLE,
  CONSTRAINT `fk_compras_1`
    FOREIGN KEY (`id_clientes`)
    REFERENCES `farmacia`.`clientes` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `farmacia`.`produtos_compras`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `farmacia`.`produtos_compras` (
  `id` INT NOT NULL,
  `id_compra` INT NOT NULL,
  `id_produtos` INT NOT NULL,
  `quantidade` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_produtos_compras_1_idx` (`id_compra` ASC) VISIBLE,
  INDEX `fk_produtos_compras_2_idx` (`id_produtos` ASC) VISIBLE,
  CONSTRAINT `fk_produtos_compras_1`
    FOREIGN KEY (`id_compra`)
    REFERENCES `farmacia`.`compras` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_produtos_compras_2`
    FOREIGN KEY (`id_produtos`)
    REFERENCES `farmacia`.`produtos` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `farmacia`.`medicos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `farmacia`.`medicos` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(100) NOT NULL,
  `crm` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `farmacia`.`receitas_medicas`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `farmacia`.`receitas_medicas` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `id_produtos_compras` INT NOT NULL,
  `id_medicos` INT NOT NULL,
  `receitas` VARCHAR(100) NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_receitas_medicas_1_idx` (`id_produtos_compras` ASC) VISIBLE,
  INDEX `fk_receitas_medicas_2_idx` (`id_medicos` ASC) VISIBLE,
  CONSTRAINT `fk_receitas_medicas_1`
    FOREIGN KEY (`id_produtos_compras`)
    REFERENCES `farmacia`.`produtos_compras` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_receitas_medicas_2`
    FOREIGN KEY (`id_medicos`)
    REFERENCES `farmacia`.`medicos` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
