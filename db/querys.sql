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

{"where": {"id": 2}}
{"include": "category"}