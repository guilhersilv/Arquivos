SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

DROP SCHEMA IF EXISTS `qsardb` ;
CREATE SCHEMA IF NOT EXISTS `qsardb` DEFAULT CHARACTER SET latin1 ;
USE `qsardb` ;

-- -----------------------------------------------------
-- Table `qsardb`.`usuario`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `qsardb`.`usuario` (
  `codigo` INT(11) NOT NULL AUTO_INCREMENT ,
  `ativo` BIT(1) NULL DEFAULT NULL ,
  `dataCadastro` DATETIME NULL DEFAULT NULL ,
  `email` VARCHAR(50) NULL DEFAULT NULL ,
  `login` VARCHAR(50) NULL DEFAULT NULL ,
  `nome` VARCHAR(50) NULL DEFAULT NULL ,
  `senha` VARCHAR(50) NULL DEFAULT NULL ,
  `telefone` VARCHAR(50) NULL DEFAULT NULL ,
  PRIMARY KEY (`codigo`) ,
  UNIQUE INDEX `email` (`email` ASC) ,
  UNIQUE INDEX `email_2` (`email` ASC) )
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `qsardb`.`usuario_permissao`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `qsardb`.`usuario_permissao` (
  `codigo_user` INT(11) NOT NULL ,
  `permissao_user` VARCHAR(50) NULL DEFAULT NULL ,
  UNIQUE INDEX `codigo_user` (`codigo_user` ASC, `permissao_user` ASC) ,
  INDEX `FK9565D5B6E65D5B65` (`codigo_user` ASC) ,
  CONSTRAINT `FK9565D5B6E65D5B65`
    FOREIGN KEY (`codigo_user` )
    REFERENCES `qsardb`.`usuario` (`codigo` ))
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;

USE `qsardb` ;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
