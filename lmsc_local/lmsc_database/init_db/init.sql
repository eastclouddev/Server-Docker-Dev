CREATE DATABASE IF NOT EXISTS `lmsc-db`;

CREATE TABLE IF NOT EXISTS `lmsc-db`.`test` (
    `id` INT NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(255) NOT NULL,
    PRIMARY KEY (`id`)
);
CREATE TABLE IF NOT EXISTS `lmsc-db`.`users` (
    `id` INT NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(255) NOT NULL,
    `email` VARCHAR(255) NOT NULL,
    `password` VARCHAR(255) NOT NULL,
    `is_active` tinyint(1) NOT NULL DEFAULT '0',
    PRIMARY KEY (`id`)
);

INSERT INTO `lmsc-db`.`test` (`name`) VALUES ("lmsc");
INSERT INTO `lmsc-db`.`users` (`name`, `email`, `password`) VALUES ("lmsc", "hoge@work-ready.jp", "hogehoge");
