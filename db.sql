/*
SQLyog Community Edition- MySQL GUI v7.15 
MySQL - 5.5.29 : Database - onlinepharmacy
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

CREATE DATABASE /*!32312 IF NOT EXISTS*/`onlinepharmacy` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `onlinepharmacy`;

/*Table structure for table `exchange` */

DROP TABLE IF EXISTS `exchange`;

CREATE TABLE `exchange` (
  `username` varchar(100) DEFAULT NULL,
  `mobile` varchar(100) DEFAULT NULL,
  `prescription` varchar(100) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `sheets` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `exchange` */

/*Table structure for table `hospitals` */

DROP TABLE IF EXISTS `hospitals`;

CREATE TABLE `hospitals` (
  `hname` varchar(100) DEFAULT NULL,
  `category` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `address` text,
  `mobile` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `hospitals` */

insert  into `hospitals`(`hname`,`category`,`email`,`address`,`mobile`) values ('Sun Shine','children','sunshine@gmail.com','Hyderabad','9898989898');

/*Table structure for table `medicine` */

DROP TABLE IF EXISTS `medicine`;

CREATE TABLE `medicine` (
  `username` varchar(100) DEFAULT NULL,
  `mobile` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `sheets` varchar(100) DEFAULT NULL,
  `pres` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `medicine` */

insert  into `medicine`(`username`,`mobile`,`email`,`address`,`sheets`,`pres`) values ('ram','9009090999','shivakeshavaraju77@gmail.com','hyd','12','ACCOUNT NO :1141243350\r\n\r\nUSER ID :bnr2634\r\n\r\nPASSWORD :abc123\r\n\r\nCUST CARE NO : 04066989898');

/*Table structure for table `orders` */

DROP TABLE IF EXISTS `orders`;

CREATE TABLE `orders` (
  `username` varchar(100) DEFAULT NULL,
  `mobile` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `sheets` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `orders` */

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `gender` varchar(100) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `mobile` varchar(100) DEFAULT NULL,
  `prescription` varchar(100) DEFAULT NULL,
  `status` varchar(40) DEFAULT 'Pending',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `user` */

insert  into `user`(`id`,`username`,`password`,`email`,`dob`,`gender`,`address`,`mobile`,`prescription`,`status`) values (1,'ram','ram','deepthi.1000projects@gmail.com','1990-03-02','MALE','hyd','9857463201','headach\r\ncold\r\nbodypains','Activated'),(2,'Nikil','nikil','deepthi.1000projects@gmail.com','1992-02-06','MALE','hyd','8574120369','cold and headach','Activated');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
