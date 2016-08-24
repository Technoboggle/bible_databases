/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`bibles` /*!40100 DEFAULT CHARACTER SET latin7 */;

USE `bibles`;

/*Table structure for table `bible_version_key` */

DROP TABLE IF EXISTS `bible_version_key`;

CREATE TABLE `bible_version_key` (
  `id` int(3) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `table` text NOT NULL COMMENT 'Database Table Name ',
  `abbreviation` text NOT NULL COMMENT 'Version Abbreviation',
  `language` text NOT NULL COMMENT 'Language of bible translation (used for language key tables)',
  `version` text NOT NULL COMMENT 'Version Name',
  `info_text` text NOT NULL COMMENT 'About / Info',
  `info_url` text NOT NULL COMMENT 'Info URL',
  `publisher` text NOT NULL COMMENT 'Publisher',
  `copyright` text NOT NULL COMMENT 'Copyright ',
  `copyright_info` text NOT NULL COMMENT 'Extended Copyright info',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1 COMMENT='This is the general translation information and db links';

/*Data for the table `bible_version_key` */

LOCK TABLES `bible_version_key` WRITE;

insert  into `bible_version_key`(`id`,`table`,`abbreviation`,`language`,`version`,`info_text`,`info_url`,`publisher`,`copyright`,`copyright_info`) values (001,'t_asv','ASV','english','American Standard-ASV1901','','http://en.wikipedia.org/wiki/American_Standard_Version','','Public Domain','');
insert  into `bible_version_key`(`id`,`table`,`abbreviation`,`language`,`version`,`info_text`,`info_url`,`publisher`,`copyright`,`copyright_info`) values (002,'t_bbe','BBE','english','Bible in Basic English','','http://en.wikipedia.org/wiki/Bible_in_Basic_English','','Public Domain','');
insert  into `bible_version_key`(`id`,`table`,`abbreviation`,`language`,`version`,`info_text`,`info_url`,`publisher`,`copyright`,`copyright_info`) values (003,'t_dby','DARBY','english','Darby English Bible','','http://en.wikipedia.org/wiki/Darby_Bible','','Public Domain','');
insert  into `bible_version_key`(`id`,`table`,`abbreviation`,`language`,`version`,`info_text`,`info_url`,`publisher`,`copyright`,`copyright_info`) values (004,'t_kjv','KJV','english','King James Version','','http://en.wikipedia.org/wiki/King_James_Version','','Public Domain','');
insert  into `bible_version_key`(`id`,`table`,`abbreviation`,`language`,`version`,`info_text`,`info_url`,`publisher`,`copyright`,`copyright_info`) values (005,'t_wbt','WBT','english','Webster\'s Bible','','http://en.wikipedia.org/wiki/Webster%27s_Revision','','Public Domain','');
insert  into `bible_version_key`(`id`,`table`,`abbreviation`,`language`,`version`,`info_text`,`info_url`,`publisher`,`copyright`,`copyright_info`) values (006,'t_web','WEB','english','World English Bible','','http://en.wikipedia.org/wiki/World_English_Bible','','Public Domain','');
insert  into `bible_version_key`(`id`,`table`,`abbreviation`,`language`,`version`,`info_text`,`info_url`,`publisher`,`copyright`,`copyright_info`) values (007,'t_ylt','YLT','english','Young\'s Literal Translation','','http://en.wikipedia.org/wiki/Young%27s_Literal_Translation','','Public Domain','');
insert  into `bible_version_key`(`id`,`table`,`abbreviation`,`language`,`version`,`info_text`,`info_url`,`publisher`,`copyright`,`copyright_info`) values (008,'t_lv','LV','english','Latin Vulgate','','http://en.wikipedia.org/wiki/Vulgate','','Public Domain','');
insert  into `bible_version_key`(`id`,`table`,`abbreviation`,`language`,`version`,`info_text`,`info_url`,`publisher`,`copyright`,`copyright_info`) values (009,'t_dr','DR','english','Douay-Rheims Challoner Edition','','http://en.wikipedia.org/wiki/Douay%E2%80%93Rheims_Bible','','Public Domain','');
insert  into `bible_version_key`(`id`,`table`,`abbreviation`,`language`,`version`,`info_text`,`info_url`,`publisher`,`copyright`,`copyright_info`) values (010,'t_jb','JB','english','Jerusalem Bible','','http://en.wikipedia.org/wiki/Jerusalem_Bible','','Public Domain','');
insert  into `bible_version_key`(`id`,`table`,`abbreviation`,`language`,`version`,`info_text`,`info_url`,`publisher`,`copyright`,`copyright_info`) values (011,'t_ncb','NCB','english','New Catholic Bible','','http://en.wikipedia.org/wiki/New_Catholic_Bible','','Public Domain : because all of it\'s constituent parts are, but unsure','');

UNLOCK TABLES;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
