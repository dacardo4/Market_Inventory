CREATE TABLE `bovxuaqnosdh4yledh9c`.`product` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `productName` VARCHAR(45) NOT NULL,
  `idUser` INT NULL,
  `idCategory` INT NULL,
  `idSubcategory` INT NULL,
  PRIMARY KEY (`id`));

CREATE TABLE `bovxuaqnosdh4yledh9c`.`market` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `marketName` VARCHAR(45) NOT NULL,
  `marketAddress` VARCHAR(100) NULL,
  PRIMARY KEY (`id`));

CREATE TABLE `bovxuaqnosdh4yledh9c`.`price` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `price` INT NOT NULL,
  `idProduct` INT NULL,
  `idMarket` INT NULL,
  PRIMARY KEY (`id`));

CREATE TABLE `bovxuaqnosdh4yledh9c`.`category` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `categoryName` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`));

CREATE TABLE `bovxuaqnosdh4yledh9c`.`subcategory` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `subcategoryName` VARCHAR(45) NOT NULL,
  `idCategory` INT NULL,
  PRIMARY KEY (`id`));

CREATE TABLE `bovxuaqnosdh4yledh9c`.`quantity` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `quantity` INT NOT NULL,
  `idProduct` INT NULL,
  `idUser` INT NULL,
  PRIMARY KEY (`id`));

ALTER TABLE `bovxuaqnosdh4yledh9c`.`quantity` 
  ADD COLUMN `quantityToBuy` INT(11) NULL AFTER `quantityInStock`,
  CHANGE COLUMN `quantity` `quantityInStock` INT(11) NOT NULL ;

ALTER TABLE `bovxuaqnosdh4yledh9c`.`prices` 
  ADD COLUMN `idBrand` INT(11) NULL DEFAULT NULL AFTER `idMarket`;

CREATE TABLE `bovxuaqnosdh4yledh9c`.`brand` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `brandName` VARCHAR(45) NULL,
  PRIMARY KEY (`id`));

