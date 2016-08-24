/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`bibles` /*!40100 DEFAULT CHARACTER SET latin7 */;

USE `bibles`;

/*Table structure for table `key_genre_english` */

DROP TABLE IF EXISTS `key_genre_english`;

CREATE TABLE `key_genre_english` (
  `g` tinyint(3) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Genre ID',
  `n` varchar(255) NOT NULL COMMENT 'Name of genre',
  PRIMARY KEY (`g`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1 COMMENT='Table mapping genre IDs to genre names for book table lookup';

/*Data for the table `key_genre_english` */

LOCK TABLES `key_genre_english` WRITE;

insert  into `key_genre_english`(`g`,`n`) values (1,'Law');
insert  into `key_genre_english`(`g`,`n`) values (2,'History');
insert  into `key_genre_english`(`g`,`n`) values (3,'Wisdom');
insert  into `key_genre_english`(`g`,`n`) values (4,'Prophets');
insert  into `key_genre_english`(`g`,`n`) values (5,'Gospels');
insert  into `key_genre_english`(`g`,`n`) values (6,'Acts');
insert  into `key_genre_english`(`g`,`n`) values (7,'Epistles');
insert  into `key_genre_english`(`g`,`n`) values (8,'Apocalyptic');

UNLOCK TABLES;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
