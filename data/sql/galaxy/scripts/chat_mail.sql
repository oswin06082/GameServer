
/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

--
-- Definition of table `chat_mail`
--

DROP TABLE IF EXISTS `chat_mail`;
CREATE TABLE `chat_mail` (
  `id` int(10) NOT NULL auto_increment,
  `sender` char(255) NOT NULL,
  `sender_game` char(255) NOT NULL,
  `sender_galaxy` char(255) NOT NULL,
  `receiver_id` bigint(20) NOT NULL,
  `subject` char(255) NOT NULL,
  `message` text,
  `status` tinyint(1) unsigned NOT NULL,
  `sent_time` bigint(20) unsigned NOT NULL,
  `attachments` text,
  `deleted` tinyint(1) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY  (`id`),
  KEY `fk_mails_to_char` (`receiver_id`),
  CONSTRAINT `chat_mail_ibfk_1` FOREIGN KEY (`receiver_id`) REFERENCES `object` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `chat_mail`
--

/*!40000 ALTER TABLE `chat_mail` DISABLE KEYS */;
/*!40000 ALTER TABLE `chat_mail` ENABLE KEYS */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
