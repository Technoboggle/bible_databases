/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`bibles` /*!40100 DEFAULT CHARACTER SET latin7 */;

USE `bibles`;

/*Table structure for table `key_english` */

DROP TABLE IF EXISTS `key_english`;

CREATE TABLE `key_english` (
  `b` int(11) unsigned NOT NULL COMMENT 'Book #',
  `n` text NOT NULL COMMENT 'Name',
  `t` varchar(2) NOT NULL COMMENT 'Which Testament this book is in',
  `g` tinyint(3) unsigned NOT NULL COMMENT 'A genre ID to identify the type of book this is',
  `church` tinyint(1) NOT NULL DEFAULT '0' COMMENT '1=Catholic, 2=Anglican, 3=Both, 4=Neither',
  `differences` tinyint(1) NOT NULL DEFAULT '0' COMMENT '1 if versions structurally different',
  PRIMARY KEY (`b`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `key_english` */

LOCK TABLES `key_english` WRITE;

insert  into `key_english`(`b`,`n`,`t`,`g`,`church`,`differences`) values (1,'Genesis','OT',1,3,0);
insert  into `key_english`(`b`,`n`,`t`,`g`,`church`,`differences`) values (2,'Exodus','OT',1,3,0);
insert  into `key_english`(`b`,`n`,`t`,`g`,`church`,`differences`) values (3,'Leviticus','OT',1,3,0);
insert  into `key_english`(`b`,`n`,`t`,`g`,`church`,`differences`) values (4,'Numbers','OT',1,3,0);
insert  into `key_english`(`b`,`n`,`t`,`g`,`church`,`differences`) values (5,'Deuteronomy','OT',1,3,0);
insert  into `key_english`(`b`,`n`,`t`,`g`,`church`,`differences`) values (6,'Joshua','OT',2,3,0);
insert  into `key_english`(`b`,`n`,`t`,`g`,`church`,`differences`) values (7,'Judges','OT',2,3,0);
insert  into `key_english`(`b`,`n`,`t`,`g`,`church`,`differences`) values (8,'Ruth','OT',2,3,0);
insert  into `key_english`(`b`,`n`,`t`,`g`,`church`,`differences`) values (9,'1 Samuel','OT',2,3,0);
insert  into `key_english`(`b`,`n`,`t`,`g`,`church`,`differences`) values (10,'2 Samuel','OT',2,3,0);
insert  into `key_english`(`b`,`n`,`t`,`g`,`church`,`differences`) values (11,'1 Kings','OT',2,3,0);
insert  into `key_english`(`b`,`n`,`t`,`g`,`church`,`differences`) values (12,'2 Kings','OT',2,3,0);
insert  into `key_english`(`b`,`n`,`t`,`g`,`church`,`differences`) values (13,'1 Chronicles','OT',2,3,0);
insert  into `key_english`(`b`,`n`,`t`,`g`,`church`,`differences`) values (14,'2 Chronicles','OT',2,3,0);
insert  into `key_english`(`b`,`n`,`t`,`g`,`church`,`differences`) values (15,'Ezra','OT',2,3,1);
insert  into `key_english`(`b`,`n`,`t`,`g`,`church`,`differences`) values (16,'Nehemiah','OT',2,3,1);
insert  into `key_english`(`b`,`n`,`t`,`g`,`church`,`differences`) values (17,'Tobias','OT',0,1,1);
insert  into `key_english`(`b`,`n`,`t`,`g`,`church`,`differences`) values (18,'Judith','OT',0,1,1);
insert  into `key_english`(`b`,`n`,`t`,`g`,`church`,`differences`) values (19,'Esther','OT',2,3,1);
insert  into `key_english`(`b`,`n`,`t`,`g`,`church`,`differences`) values (20,'Job','OT',3,3,0);
insert  into `key_english`(`b`,`n`,`t`,`g`,`church`,`differences`) values (21,'Psalms','OT',3,3,1);
insert  into `key_english`(`b`,`n`,`t`,`g`,`church`,`differences`) values (22,'Proverbs','OT',3,3,0);
insert  into `key_english`(`b`,`n`,`t`,`g`,`church`,`differences`) values (23,'Ecclesiastes','OT',3,3,0);
insert  into `key_english`(`b`,`n`,`t`,`g`,`church`,`differences`) values (24,'Song of Solomon','OT',3,3,0);
insert  into `key_english`(`b`,`n`,`t`,`g`,`church`,`differences`) values (25,'Wisdom','OT',0,1,1);
insert  into `key_english`(`b`,`n`,`t`,`g`,`church`,`differences`) values (26,'Sirach','OT',0,1,1);
insert  into `key_english`(`b`,`n`,`t`,`g`,`church`,`differences`) values (27,'Isaiah','OT',4,3,0);
insert  into `key_english`(`b`,`n`,`t`,`g`,`church`,`differences`) values (28,'Jeremiah','OT',4,3,0);
insert  into `key_english`(`b`,`n`,`t`,`g`,`church`,`differences`) values (29,'Lamentations','OT',4,3,0);
insert  into `key_english`(`b`,`n`,`t`,`g`,`church`,`differences`) values (30,'Baruch','OT',0,1,1);
insert  into `key_english`(`b`,`n`,`t`,`g`,`church`,`differences`) values (31,'Ezekiel','OT',4,3,0);
insert  into `key_english`(`b`,`n`,`t`,`g`,`church`,`differences`) values (32,'Daniel','OT',4,3,1);
insert  into `key_english`(`b`,`n`,`t`,`g`,`church`,`differences`) values (33,'Hosea','OT',4,3,0);
insert  into `key_english`(`b`,`n`,`t`,`g`,`church`,`differences`) values (34,'Joel','OT',4,3,0);
insert  into `key_english`(`b`,`n`,`t`,`g`,`church`,`differences`) values (35,'Amos','OT',4,3,0);
insert  into `key_english`(`b`,`n`,`t`,`g`,`church`,`differences`) values (36,'Obadiah','OT',4,3,0);
insert  into `key_english`(`b`,`n`,`t`,`g`,`church`,`differences`) values (37,'Jonah','OT',4,3,0);
insert  into `key_english`(`b`,`n`,`t`,`g`,`church`,`differences`) values (38,'Micah','OT',4,3,0);
insert  into `key_english`(`b`,`n`,`t`,`g`,`church`,`differences`) values (39,'Nahum','OT',4,3,0);
insert  into `key_english`(`b`,`n`,`t`,`g`,`church`,`differences`) values (40,'Habakkuk','OT',4,3,0);
insert  into `key_english`(`b`,`n`,`t`,`g`,`church`,`differences`) values (41,'Zephaniah','OT',4,3,0);
insert  into `key_english`(`b`,`n`,`t`,`g`,`church`,`differences`) values (42,'Haggai','OT',4,3,0);
insert  into `key_english`(`b`,`n`,`t`,`g`,`church`,`differences`) values (43,'Zechariah','OT',4,3,0);
insert  into `key_english`(`b`,`n`,`t`,`g`,`church`,`differences`) values (44,'Malachi','OT',4,3,0);
insert  into `key_english`(`b`,`n`,`t`,`g`,`church`,`differences`) values (45,'1 Maccabees','OT',0,1,1);
insert  into `key_english`(`b`,`n`,`t`,`g`,`church`,`differences`) values (46,'2 Maccabees','OT',0,1,1);
insert  into `key_english`(`b`,`n`,`t`,`g`,`church`,`differences`) values (47,'Matthew','NT',5,3,0);
insert  into `key_english`(`b`,`n`,`t`,`g`,`church`,`differences`) values (48,'Mark','NT',5,3,0);
insert  into `key_english`(`b`,`n`,`t`,`g`,`church`,`differences`) values (49,'Luke','NT',5,3,0);
insert  into `key_english`(`b`,`n`,`t`,`g`,`church`,`differences`) values (50,'John','NT',5,3,0);
insert  into `key_english`(`b`,`n`,`t`,`g`,`church`,`differences`) values (51,'Acts','NT',6,3,0);
insert  into `key_english`(`b`,`n`,`t`,`g`,`church`,`differences`) values (52,'Romans','NT',7,3,0);
insert  into `key_english`(`b`,`n`,`t`,`g`,`church`,`differences`) values (53,'1 Corinthians','NT',7,3,0);
insert  into `key_english`(`b`,`n`,`t`,`g`,`church`,`differences`) values (54,'2 Corinthians','NT',7,3,0);
insert  into `key_english`(`b`,`n`,`t`,`g`,`church`,`differences`) values (55,'Galatians','NT',7,3,0);
insert  into `key_english`(`b`,`n`,`t`,`g`,`church`,`differences`) values (56,'Ephesians','NT',7,3,0);
insert  into `key_english`(`b`,`n`,`t`,`g`,`church`,`differences`) values (57,'Philippians','NT',7,3,0);
insert  into `key_english`(`b`,`n`,`t`,`g`,`church`,`differences`) values (58,'Colossians','NT',7,3,0);
insert  into `key_english`(`b`,`n`,`t`,`g`,`church`,`differences`) values (59,'1 Thessalonians','NT',7,3,0);
insert  into `key_english`(`b`,`n`,`t`,`g`,`church`,`differences`) values (60,'2 Thessalonians','NT',7,3,0);
insert  into `key_english`(`b`,`n`,`t`,`g`,`church`,`differences`) values (61,'1 Timothy','NT',7,3,0);
insert  into `key_english`(`b`,`n`,`t`,`g`,`church`,`differences`) values (62,'2 Timothy','NT',7,3,0);
insert  into `key_english`(`b`,`n`,`t`,`g`,`church`,`differences`) values (63,'Titus','NT',7,3,0);
insert  into `key_english`(`b`,`n`,`t`,`g`,`church`,`differences`) values (64,'Philemon','NT',7,3,0);
insert  into `key_english`(`b`,`n`,`t`,`g`,`church`,`differences`) values (65,'Hebrews','NT',7,3,0);
insert  into `key_english`(`b`,`n`,`t`,`g`,`church`,`differences`) values (66,'James','NT',7,3,0);
insert  into `key_english`(`b`,`n`,`t`,`g`,`church`,`differences`) values (67,'1 Peter','NT',7,3,0);
insert  into `key_english`(`b`,`n`,`t`,`g`,`church`,`differences`) values (68,'2 Peter','NT',7,3,0);
insert  into `key_english`(`b`,`n`,`t`,`g`,`church`,`differences`) values (69,'1 John','NT',7,3,0);
insert  into `key_english`(`b`,`n`,`t`,`g`,`church`,`differences`) values (70,'2 John','NT',7,3,0);
insert  into `key_english`(`b`,`n`,`t`,`g`,`church`,`differences`) values (71,'3 John','NT',7,3,0);
insert  into `key_english`(`b`,`n`,`t`,`g`,`church`,`differences`) values (72,'Jude','NT',7,3,0);
insert  into `key_english`(`b`,`n`,`t`,`g`,`church`,`differences`) values (73,'Revelation','NT',8,3,0);

UNLOCK TABLES;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
