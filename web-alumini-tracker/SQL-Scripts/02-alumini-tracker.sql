CREATE DATABASE  IF NOT EXISTS `web_alumini_tracker`;

CREATE SCHEMA `web_alumini_tracker`;

USE `web_alumini_tracker`;

SET FOREIGN_KEY_CHECKS = 0;

--
-- Table structure for table `alumini`
--
DROP TABLE IF EXISTS `alumini_detail`;

CREATE TABLE `alumini_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `resume_link` varchar(128) DEFAULT NULL,
  `linkedin_link` varchar(128) DEFAULT NULL,
  `phone_number` varchar(45) DEFAULT NULL,
  `residency` varchar(128) DEFAULT NULL,
  `occupation` varchar(128) NOT NULL,
  `hobby` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;

DROP TABLE IF EXISTS `alumini`;

CREATE TABLE `alumini` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(45) NOT NULL,
  `last_name` varchar(45) NOT NULL,   
  `school` varchar(128) NOT NULL,
  `major` varchar(128) NOT NULL,
  `minor` varchar(128) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `alumini_detail_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),    
  KEY `FK_DETAIL_idx` (`alumini_detail_id`),
  CONSTRAINT `FK_DETAIL` FOREIGN KEY (`alumini_detail_id`) REFERENCES `alumini_detail` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

SET FOREIGN_KEY_CHECKS = 1;
