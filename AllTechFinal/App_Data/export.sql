/*
SQLyog Trial v11.11 (32 bit)
MySQL - 5.6.11 : Database - alltech
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`alltech` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `alltech`;

/*Table structure for table `addresses` */

DROP TABLE IF EXISTS `addresses`;

CREATE TABLE `addresses` (
  `address_id` int(11) NOT NULL AUTO_INCREMENT,
  `street` varchar(50) NOT NULL,
  `number` varchar(10) NOT NULL,
  `postal_code` varchar(11) NOT NULL,
  `district` varchar(50) NOT NULL,
  `city` varchar(50) NOT NULL,
  `state` varchar(50) NOT NULL,
  `country` varchar(50) NOT NULL,
  PRIMARY KEY (`address_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

/*Data for the table `addresses` */

insert  into `addresses`(`address_id`,`street`,`number`,`postal_code`,`district`,`city`,`state`,`country`) values (11,'Rua Um','1','11.111-111','Centro Um','umdopolis','Uni','Ummm'),(12,'Rua 00000','0000','00.000-000','Centro Zero','Zerópolis','Zerolandia','Zero'),(13,'Rua Dois','22222','22.222-222','Centro Dois','Doisolandia','Doiseiro','Dois'),(14,'Rua 3','3','333333','Centro 3','Treizópolis','Três','Terceiro');

/*Table structure for table `companies` */

DROP TABLE IF EXISTS `companies`;

CREATE TABLE `companies` (
  `company_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `cnpj` varchar(15) NOT NULL,
  `address_id` int(11) NOT NULL,
  `phone_id` int(11) NOT NULL,
  PRIMARY KEY (`company_id`),
  KEY `FK_company_address` (`address_id`),
  KEY `FK_company_phone` (`phone_id`),
  CONSTRAINT `FK_company_address` FOREIGN KEY (`address_id`) REFERENCES `addresses` (`address_id`),
  CONSTRAINT `FK_company_phone` FOREIGN KEY (`phone_id`) REFERENCES `phones` (`phone_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

/*Data for the table `companies` */

insert  into `companies`(`company_id`,`name`,`cnpj`,`address_id`,`phone_id`) values (10,'AllTech','11.111.111',11,12),(11,'Empresa 1','000000000',12,13),(12,'Empresa 2','22222222',13,14),(13,'Empresa 3','333333333',14,15);

/*Table structure for table `costs` */

DROP TABLE IF EXISTS `costs`;

CREATE TABLE `costs` (
  `cost_id` int(11) NOT NULL AUTO_INCREMENT,
  `description` varchar(50) NOT NULL,
  `value` varchar(50) NOT NULL,
  `estimated_id` int(11) NOT NULL,
  PRIMARY KEY (`cost_id`),
  KEY `FK_cost_estimate` (`estimated_id`),
  CONSTRAINT `FK_cost_estimate` FOREIGN KEY (`estimated_id`) REFERENCES `estimates` (`estimate_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

/*Data for the table `costs` */

insert  into `costs`(`cost_id`,`description`,`value`,`estimated_id`) values (1,'10 metros de fibra','10 centavos',1),(2,'100 metros de fibra','100 centavos',1),(3,'mão de obra','40 centavos',3),(4,'pé de obra','90 centarros',3),(5,'mão de obra','R$ 0,40',1),(6,'100 metros de fibra mm','R$ 0,60',1);

/*Table structure for table `estimates` */

DROP TABLE IF EXISTS `estimates`;

CREATE TABLE `estimates` (
  `estimate_id` int(11) NOT NULL AUTO_INCREMENT,
  `company_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `description` varchar(200) NOT NULL,
  `begin_date` varchar(20) NOT NULL,
  `ok` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`estimate_id`),
  KEY `FK_estimate_company` (`company_id`),
  KEY `FK_estimate_user` (`user_id`),
  CONSTRAINT `FK_estimate_company` FOREIGN KEY (`company_id`) REFERENCES `companies` (`company_id`),
  CONSTRAINT `FK_estimate_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

/*Data for the table `estimates` */

insert  into `estimates`(`estimate_id`,`company_id`,`user_id`,`description`,`begin_date`,`ok`) values (1,11,5,'novo ponto de rede na sala de supervisão.','27/05/2013 15:10:49',1),(3,11,5,'ativação ponto de rede na sala de controle.','27/05/2013 16:26:51',NULL),(4,11,5,'manutenção de linha telefonica.','27/05/2013 17:42:59',NULL);

/*Table structure for table `phones` */

DROP TABLE IF EXISTS `phones`;

CREATE TABLE `phones` (
  `phone_id` int(11) NOT NULL AUTO_INCREMENT,
  `phone` varchar(50) NOT NULL,
  `branch` varchar(10) NOT NULL,
  PRIMARY KEY (`phone_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

/*Data for the table `phones` */

insert  into `phones`(`phone_id`,`phone`,`branch`) values (12,'(11)1111-1111','1111'),(13,'(00)0000-0000','0000'),(14,'(22)2222-2222','2222'),(15,'33333333','3333');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `company_id` int(11) NOT NULL,
  `password` varchar(250) NOT NULL,
  PRIMARY KEY (`user_id`),
  KEY `FK_user_company` (`company_id`),
  CONSTRAINT `FK_user_company` FOREIGN KEY (`company_id`) REFERENCES `companies` (`company_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

/*Data for the table `users` */

insert  into `users`(`user_id`,`name`,`email`,`company_id`,`password`) values (4,'João Marcelo','jmfutrica@gmail.com',10,'123456'),(5,'Cliente José','cliente1@empresa1.com.br',11,'123456'),(6,'Cliente Pedro','cliente2@empresa2.com.br',12,'123456'),(7,'Cliente Jether Jones','jether@empresa3.com',13,'123456');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
