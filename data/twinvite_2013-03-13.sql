# ************************************************************
# Sequel Pro SQL dump
# Version 4004
#
# http://www.sequelpro.com/
# http://code.google.com/p/sequel-pro/
#
# Host: 127.0.0.1 (MySQL 5.5.30-1~dotdeb.0)
# Database: twinvite
# Generation Time: 2013-03-13 14:47:17 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table auth_group
# ------------------------------------------------------------

DROP TABLE IF EXISTS `auth_group`;

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



# Dump of table auth_group_permissions
# ------------------------------------------------------------

DROP TABLE IF EXISTS `auth_group_permissions`;

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `group_id` (`group_id`,`permission_id`),
  KEY `auth_group_permissions_425ae3c4` (`group_id`),
  KEY `auth_group_permissions_1e014c8f` (`permission_id`),
  CONSTRAINT `group_id_refs_id_3cea63fe` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `permission_id_refs_id_5886d21f` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



# Dump of table auth_permission
# ------------------------------------------------------------

DROP TABLE IF EXISTS `auth_permission`;

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `content_type_id` (`content_type_id`,`codename`),
  KEY `auth_permission_1bb8f392` (`content_type_id`),
  CONSTRAINT `content_type_id_refs_id_728de91f` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`)
VALUES
	(1,'Can add permission',1,'add_permission'),
	(2,'Can change permission',1,'change_permission'),
	(3,'Can delete permission',1,'delete_permission'),
	(4,'Can add group',2,'add_group'),
	(5,'Can change group',2,'change_group'),
	(6,'Can delete group',2,'delete_group'),
	(7,'Can add user',3,'add_user'),
	(8,'Can change user',3,'change_user'),
	(9,'Can delete user',3,'delete_user'),
	(10,'Can add content type',4,'add_contenttype'),
	(11,'Can change content type',4,'change_contenttype'),
	(12,'Can delete content type',4,'delete_contenttype'),
	(13,'Can add session',5,'add_session'),
	(14,'Can change session',5,'change_session'),
	(15,'Can delete session',5,'delete_session'),
	(16,'Can add site',6,'add_site'),
	(17,'Can change site',6,'change_site'),
	(18,'Can delete site',6,'delete_site'),
	(19,'Can add migration history',7,'add_migrationhistory'),
	(20,'Can change migration history',7,'change_migrationhistory'),
	(21,'Can delete migration history',7,'delete_migrationhistory'),
	(22,'Can add invitee',8,'add_invitee'),
	(23,'Can change invitee',8,'change_invitee'),
	(24,'Can delete invitee',8,'delete_invitee'),
	(25,'Can add event',9,'add_event'),
	(26,'Can change event',9,'change_event'),
	(27,'Can delete event',9,'delete_event'),
	(28,'Can add attendee',10,'add_attendee'),
	(29,'Can change attendee',10,'change_attendee'),
	(30,'Can delete attendee',10,'delete_attendee'),
	(31,'Can add seed',11,'add_seed'),
	(32,'Can change seed',11,'change_seed'),
	(33,'Can delete seed',11,'delete_seed'),
	(34,'Can add user',12,'add_user'),
	(35,'Can change user',12,'change_user'),
	(36,'Can delete user',12,'delete_user'),
	(37,'Can add uninvitee',13,'add_uninvitee'),
	(38,'Can change uninvitee',13,'change_uninvitee'),
	(39,'Can delete uninvitee',13,'delete_uninvitee'),
	(40,'Can add api access',14,'add_apiaccess'),
	(41,'Can change api access',14,'change_apiaccess'),
	(42,'Can delete api access',14,'delete_apiaccess'),
	(43,'Can add api key',15,'add_apikey'),
	(44,'Can change api key',15,'change_apikey'),
	(45,'Can delete api key',15,'delete_apikey');

/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table auth_user
# ------------------------------------------------------------

DROP TABLE IF EXISTS `auth_user`;

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(30) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(75) NOT NULL,
  `password` varchar(128) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `last_login` datetime NOT NULL,
  `date_joined` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



# Dump of table auth_user_groups
# ------------------------------------------------------------

DROP TABLE IF EXISTS `auth_user_groups`;

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`group_id`),
  KEY `auth_user_groups_403f60f` (`user_id`),
  KEY `auth_user_groups_425ae3c4` (`group_id`),
  CONSTRAINT `user_id_refs_id_7ceef80f` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `group_id_refs_id_f116770` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



# Dump of table auth_user_user_permissions
# ------------------------------------------------------------

DROP TABLE IF EXISTS `auth_user_user_permissions`;

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`permission_id`),
  KEY `auth_user_user_permissions_403f60f` (`user_id`),
  KEY `auth_user_user_permissions_1e014c8f` (`permission_id`),
  CONSTRAINT `user_id_refs_id_dfbab7d` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `permission_id_refs_id_67e79cb` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



# Dump of table django_content_type
# ------------------------------------------------------------

DROP TABLE IF EXISTS `django_content_type`;

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `app_label` (`app_label`,`model`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;

INSERT INTO `django_content_type` (`id`, `name`, `app_label`, `model`)
VALUES
	(1,'permission','auth','permission'),
	(2,'group','auth','group'),
	(3,'user','auth','user'),
	(4,'content type','contenttypes','contenttype'),
	(5,'session','sessions','session'),
	(6,'site','sites','site'),
	(7,'migration history','south','migrationhistory'),
	(8,'invitee','twinvite_app','invitee'),
	(9,'event','twinvite_app','event'),
	(10,'attendee','twinvite_app','attendee'),
	(11,'seed','twinvite_app','seed'),
	(12,'user','twinvite_app','user'),
	(13,'uninvitee','twinvite_app','uninvitee'),
	(14,'api access','tastypie','apiaccess'),
	(15,'api key','tastypie','apikey');

/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table django_session
# ------------------------------------------------------------

DROP TABLE IF EXISTS `django_session`;

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_3da3d3d8` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`)
VALUES
	('0340ec4072723676080ddf961403b1f0','YWEzYzdiOTRkOWE0ODQzMTEzNTM0ZWIyNmUyNGU0NDg2YWZhODcyZTqAAn1xAShVBWNvdW50cQJL\nA1UGaGFuZGxlcQNVCkBiYl9sYXVyYWRxBFUEbmFtZXEFVQVMYXVyYXEGVQ9fc2Vzc2lvbl9leHBp\ncnlxB02gBXUu\n','2013-03-05 22:06:28'),
	('043174c5929b612510240209065f1fe0','YTQ5YmJiZTcxZjdlODI1MjE2ZmQxNTJkMTQwNDFkNDU3YTYzMTQ1MDqAAn1xAShVBWNvdW50cQJL\nA1UGaGFuZGxlcQNVC0BsYXVyYXNlcnJhcQRVBG5hbWVxBVULTGF1cmEgU2VycmFxBlUPX3Nlc3Np\nb25fZXhwaXJ5cQdNoAV1Lg==\n','2013-03-12 14:41:18'),
	('065beb739883ef61fb3a5e04be98ce0b','NTU5NThkZDgxNmMxMWM3YTI4NTEwZTk2ZDg0NTFlNjEwNDBkNTQwNzqAAn1xAShVBWNvdW50cQJL\nBFUGaGFuZGxlcQNVB0BLQUk1RVJxBFUEbmFtZXEFVQxKYW1pZSBLYWlzZXJxBlUPX3Nlc3Npb25f\nZXhwaXJ5cQdNoAV1Lg==\n','2013-03-08 21:15:32'),
	('07d17e0496e082cf5ed490a6e6eade1f','OTIwMzIxYzBkOGE1OWI0NGQ3NjM2MzA1MWFmZjcwOTE3MzZmYjY4NTqAAn1xAShVBWNvdW50cQJL\nA1UGaGFuZGxlcQNVCkBiYl9lZHdhcmRxBFUEbmFtZXEFVQllZCBrbmlnaHRxBlUPX3Nlc3Npb25f\nZXhwaXJ5cQdNoAV1Lg==\n','2013-03-06 16:21:10'),
	('1583a9653ffb86123073aa84f3cdfd7c','NTdiZjM4YTVhYjZiNGI4YzgzZWVlYTVmNTA0OTY1M2UyMjQ3ODNiNTqAAn1xAShVBWNvdW50cQJL\nA1UGaGFuZGxlcQNVCUBzYW1iMDBrYXEEVQRuYW1lcQVVA3RlZHEGVQ9fc2Vzc2lvbl9leHBpcnlx\nB02gBXUu\n','2013-03-07 20:21:06'),
	('1655d62e7a670a42e4337f3f358bc9f4','OTNhOThjZDk0MDU5NWRiYzY1MGQ1MjMyN2NiOWRhN2FhOGFiY2Q3NTqAAn1xAShVBWNvdW50cQJL\nA1UGaGFuZGxlcQNVD0BiYl9kZXZfYWNjb3VudHEEVQRuYW1lcQVVElRlY2huaWNhbCBEaXJlY3Rv\ncnEGVQ9fc2Vzc2lvbl9leHBpcnlxB02gBXUu\n','2013-03-12 16:40:27'),
	('17ff96e769b7b54e4613d7ddd5b4167e','NjY2ZDYwMGQ0OTI4NGE4MTJkZjIyY2U5YzVjY2Q0NWM5NWMxZDIzMDqAAn1xAShVBWNvdW50cQJL\nBlUGaGFuZGxlcQNVC0BicmVudHNteXRocQRVBG5hbWVxBVULQnJlbnQgU215dGhxBlUPX3Nlc3Np\nb25fZXhwaXJ5cQdNoAV1Lg==\n','2013-03-08 21:26:31'),
	('1d4ac83a5dc2a761f40d9fa49b640041','ZjgxODdiNDc0ODYzZmVmN2VlNmQ1ZjM5ZjgxYWMyYmFhNjRhZjMxYzqAAn1xAShVBWNvdW50cQJL\nCVUGaGFuZGxlcQNVCEBCQkFkYW00cQRVBG5hbWVxBVUHQkIgQWRhbXEGVQ9fc2Vzc2lvbl9leHBp\ncnlxB02gBXUu\n','2013-03-07 20:14:29'),
	('1e47ae7d87a7596e7b769d6966afcd2a','NjEwNjYwZTBmYjA1NzA1Njk5OGUxNzQ5NThiYTdiYTNlZWQ2YWU0YTqAAn1xAShVBWNvdW50cQJL\nA1UGaGFuZGxlcQNVCkBKZXNzX1N3YW5xBFUEbmFtZXEFVQxKZXNzaWNhIFN3YW5xBlUPX3Nlc3Np\nb25fZXhwaXJ5cQdNoAV1Lg==\n','2013-03-12 15:08:47'),
	('20ff965b1cf84cf8444d2ea4508befcc','N2I0NjA3MGVjMmFjMDY0OGFhNjIzYzJlMDcwNzkzYjhkYjBhYWE1ZjqAAn1xAShVBWNvdW50cQJL\nCFUGaGFuZGxlcQNVCUBiYl9iZXdic3EEVQRuYW1lcQVVC1BldGVyIEJ1YmFucQZVD19zZXNzaW9u\nX2V4cGlyeXEHTaAFdS4=\n','2013-03-08 20:32:15'),
	('294972097744fc892606ddbdd5ce18b7','YTc2MDk1NThjMzljMjM4Y2YyY2JkZTg2MjIyZDQwM2ViMGMzY2M4ZDqAAn1xAShVBWNvdW50cQJL\nBFUGaGFuZGxlcQNVCkBiYl9iZXNzaWVxBFUEbmFtZXEFVQZKZXNzaWVxBlUPX3Nlc3Npb25fZXhw\naXJ5cQdNoAV1Lg==\n','2013-03-07 20:19:32'),
	('2e44e3fafc6786e345d279be5f1f2138','ZjE1M2U1ZDMzY2I1Y2M2ZmRhYTNkN2NiMDg3MmUyZDZlZDkwNGY5NjqAAn1xAShVBWNvdW50cQJL\nA1UGaGFuZGxlcQNVDkBtYXh2YWxpcXVldHRlcQRVBG5hbWVxBVUOTWF4IFZhbGlxdWV0dGVxBlUP\nX3Nlc3Npb25fZXhwaXJ5cQdNoAV1Lg==\n','2013-03-12 15:57:06'),
	('37e7721619ca2e502fd4fcd2dfefe645','YWEzYzdiOTRkOWE0ODQzMTEzNTM0ZWIyNmUyNGU0NDg2YWZhODcyZTqAAn1xAShVBWNvdW50cQJL\nA1UGaGFuZGxlcQNVCkBiYl9sYXVyYWRxBFUEbmFtZXEFVQVMYXVyYXEGVQ9fc2Vzc2lvbl9leHBp\ncnlxB02gBXUu\n','2013-03-06 16:34:19'),
	('3a4e440076afd0f6397e87b747364dfb','MTc0N2Q5ZWM0NTg2MTliYWRkOThiM2E4YzgxODc2NGJlYWRiZmI0NDqAAn1xAShVBWNvdW50cQJL\nBFUGaGFuZGxlcQNVCUBzYW1iMDBrYXEEVQRuYW1lcQVVA3RlZHEGVQ9fc2Vzc2lvbl9leHBpcnlx\nB02gBXUu\n','2013-03-07 20:20:42'),
	('3cb6b76f81718661297a2ce4eb03d270','YjBkOTNkNDEyNWYxMzhiNmI3ZTI1MjA0NTc5ZjIxN2MyMTc0MDU5OTqAAn1xAShVBWNvdW50cQJL\nCFUGaGFuZGxlcQNVCkBiYl9lZHdhcmRxBFUEbmFtZXEFVQllZCBrbmlnaHRxBlUPX3Nlc3Npb25f\nZXhwaXJ5cQdNoAV1Lg==\n','2013-03-06 15:41:25'),
	('3e826cf16f912a626833779d0d1359c1','NGU5Y2NjODFlMzBiNTMzZmUyYWRjYmVlM2E1YWE1MWQxOGU3YzhmMjqAAn1xAVUNcmVxdWVzdF90\nb2tlbnECVSpTTW5OUW5yMWJOZVNKUHFaRVZDNjhNUFdIZm5iSThSeWVJUnF3dW5TNUlVKHg0ZEhJ\neDBQQTJKNzVDeHdkbDQ5TEFzTzA3bHZ6cERxOWxxc2NtcHOGcQNzLg==\n','2013-03-27 14:24:41'),
	('3f62217c0f6351c78072384ffc2794d1','MTc0N2Q5ZWM0NTg2MTliYWRkOThiM2E4YzgxODc2NGJlYWRiZmI0NDqAAn1xAShVBWNvdW50cQJL\nBFUGaGFuZGxlcQNVCUBzYW1iMDBrYXEEVQRuYW1lcQVVA3RlZHEGVQ9fc2Vzc2lvbl9leHBpcnlx\nB02gBXUu\n','2013-03-07 20:37:01'),
	('427ed89e2a437af20cc6bf99ba235e7b','M2MwYTc0OTIyNzM3NjFjNWU2NDA4ZjAwMjQ4ZmQzZmQ4M2E3YjQ5ZTqAAn1xAShVBWNvdW50cQJL\nBVUGaGFuZGxlcQNVCEBHdG9uZ2UxcQRVBG5hbWVxBVUNR2FycmV0dCBUb25nZXEGVQ9fc2Vzc2lv\nbl9leHBpcnlxB02gBXUu\n','2013-03-13 15:10:43'),
	('4338ced19e51c81e065e8f75a6cf3838','YWVmNmNjOTBmZjk4ZTg4YzVlZTdlMTZjOGYyMDFmMGNhZTAwNzI4MzqAAn1xAShVBWNvdW50cQJL\nCVUGaGFuZGxlcQNVCUBiYl9iZXdic3EEVQRuYW1lcQVVC1BldGVyIEJ1YmFucQZVD19zZXNzaW9u\nX2V4cGlyeXEHTaAFdS4=\n','2013-03-08 17:28:14'),
	('44e6fa30d987febe59cc620861c3bbc4','N2ZiOGEwMjVmNWU0NTRhMDhjMTcwMGRjZTFjYTk3ZTFkYjdmNmE4ZTqAAn1xAVUNcmVxdWVzdF90\nb2tlbnECVStWTGhTdThDMVliV3FITkZOemtwcll1M1dRbU5KZjZwSDM2Wk9CamRRb0lvVSsyazQz\na2ZYRGMyMUNYNXM5dWk2bmJFRUp2cWMxN2lvSTN4Wk10dXc2OWY4hnEDcy4=\n','2013-03-21 19:48:43'),
	('4a8fc9ae33d6694408504524f02e149a','YWEzYzdiOTRkOWE0ODQzMTEzNTM0ZWIyNmUyNGU0NDg2YWZhODcyZTqAAn1xAShVBWNvdW50cQJL\nA1UGaGFuZGxlcQNVCkBiYl9sYXVyYWRxBFUEbmFtZXEFVQVMYXVyYXEGVQ9fc2Vzc2lvbl9leHBp\ncnlxB02gBXUu\n','2013-03-07 20:22:39'),
	('4db6a0ff775ced752e59a86cdff5f1a5','MjJhMTQ2YjU1Nzc5MmEzNjUxNGIzZmRmOWEzM2QyZTllMGQ2OTVhYjqAAn1xAShVBWNvdW50cQJL\nA1UGaGFuZGxlcQNVEEBwYXdzZm9ydGhlY2F1c2VxBFUEbmFtZXEFVRJQYXdzIGZvciB0aGUgQ2F1\nc2VxBlUPX3Nlc3Npb25fZXhwaXJ5cQdNoAV1Lg==\n','2013-03-12 19:19:14'),
	('5ba78e26ffd5c42304f9533038fd9b89','MDJhNTlkOTdjZWE2YTVjOGY5OWYzMjc5NGVmMGNjMjA2MmYzZDE3NjqAAn1xAShVBWNvdW50cQJL\nCFUGaGFuZGxlcQNVC0BicmVudHNteXRocQRVBG5hbWVxBVULQnJlbnQgU215dGhxBlUPX3Nlc3Np\nb25fZXhwaXJ5cQdNoAV1Lg==\n','2013-03-07 20:28:43'),
	('5c6322002b1b9129cd01f9463251a112','NmRjYTU0YWQ5MzMxMzMyMTI4YzVjZGI2YjQxOGJlNzUwNTA1OGI1OTqAAn1xAVUNcmVxdWVzdF90\nb2tlbnECVSowd05HU1M2SHZoSGh3SUhUcEZiYXRic0JCckV1WVQ2aHViY0w1cjZhUW9VKzJoY2Ni\nTktnT1hVNFZLUU9PdjlkUlFFY2hkQnVFTUJGZUh4YTZQVlE1dlmGcQNzLg==\n','2013-03-26 16:27:13'),
	('6108d07b3cf280c819417d7997df9d43','YTc2MDk1NThjMzljMjM4Y2YyY2JkZTg2MjIyZDQwM2ViMGMzY2M4ZDqAAn1xAShVBWNvdW50cQJL\nBFUGaGFuZGxlcQNVCkBiYl9iZXNzaWVxBFUEbmFtZXEFVQZKZXNzaWVxBlUPX3Nlc3Npb25fZXhw\naXJ5cQdNoAV1Lg==\n','2013-03-11 20:50:08'),
	('6f490f2ca9443b2b4efdce0dc91621e0','YmQyOTg4OWE2YzliNDk0N2Q3MDFlMDBhMzJkMzJkZDAxZTRmYmEwNTqAAn1xAVUNcmVxdWVzdF90\nb2tlbnECVSczbmI4b3E3cmx0SHlOT3VzbjRaOTkzUUdiUWJHdW1JMTBnNEJqZGtVKVpLSWVySGpO\nbFdrNXV5U1E5OVRBa0NRdmhpaGM0VXVjMHEzZmt5N21rhnEDcy4=\n','2013-03-22 16:27:29'),
	('7bdcc1840d194ea9f00363ff32d3297b','ZWRiZGNiYmZkZTA1ZGVlNjk4NDRiMDc5Y2I1M2NiYWQ3MTE4YjY5YzqAAn1xAShVBWNvdW50cQJL\nCFUGaGFuZGxlcQNVCkBiYl9sYXVyYWRxBFUEbmFtZXEFVQVMYXVyYXEGVQ9fc2Vzc2lvbl9leHBp\ncnlxB02gBXUu\n','2013-03-08 20:14:37'),
	('7cf4db53d9503f05de329592e61c58be','NDFjMWQwYjZlNDM1NGEyNDQ0ODJlNTFlOWU4NGJlZTY3YzFmNjgxNzqAAn1xAShVBWNvdW50cQJL\nBFUGaGFuZGxlcQNVCkBiYl9lZHdhcmRxBFUEbmFtZXEFVQllZCBrbmlnaHRxBlUPX3Nlc3Npb25f\nZXhwaXJ5cQdNoAV1Lg==\n','2013-03-07 20:17:41'),
	('7d6fc32d40f1bcec6d072636c82dc29e','YzEzMmRlMWYyOTI2MzcxZjI1ODUxNTFlNjMzMWFkZTk3ZjIwNmJlYzqAAn1xAShVBWNvdW50cQJL\nBVUGaGFuZGxlcQNVCkBiYl9sYXVyYWRxBFUEbmFtZXEFVQVMYXVyYXEGVQ9fc2Vzc2lvbl9leHBp\ncnlxB02gBXUu\n','2013-03-06 16:05:03'),
	('86269f026ebad99c2189ebee70244c71','YjExMTI2MmQwNGYyZTA2YjU3M2ExNGEwN2I0NTEzYWY0ZWI1NmYwMTqAAn1xAShVBWNvdW50cQJL\nD1UGaGFuZGxlcQNVDkBDaGVmR3JhbnRTb3RvcQRVBG5hbWVxBVUPQ2hlZiBHcmFudCBTb3RvcQZV\nD19zZXNzaW9uX2V4cGlyeXEHTaAFdS4=\n','2013-03-13 14:38:40'),
	('8aed54642c92f8503db467d9410196d9','NTdiZjM4YTVhYjZiNGI4YzgzZWVlYTVmNTA0OTY1M2UyMjQ3ODNiNTqAAn1xAShVBWNvdW50cQJL\nA1UGaGFuZGxlcQNVCUBzYW1iMDBrYXEEVQRuYW1lcQVVA3RlZHEGVQ9fc2Vzc2lvbl9leHBpcnlx\nB02gBXUu\n','2013-03-08 21:26:52'),
	('8ce55199ac388ed21d6be2edaff31b96','OTIwMzIxYzBkOGE1OWI0NGQ3NjM2MzA1MWFmZjcwOTE3MzZmYjY4NTqAAn1xAShVBWNvdW50cQJL\nA1UGaGFuZGxlcQNVCkBiYl9lZHdhcmRxBFUEbmFtZXEFVQllZCBrbmlnaHRxBlUPX3Nlc3Npb25f\nZXhwaXJ5cQdNoAV1Lg==\n','2013-03-08 20:00:39'),
	('8f66223bbec96e2eec4038a6021f863a','YTRjMzgwYjQxZmY2NGRiZTQxMzMxMTFlY2UxNzViYmU3MmQ2MTAzOTqAAn1xAShVBWNvdW50cQJL\nBFUGaGFuZGxlcQNVCkBiYl9sYXVyYWRxBFUEbmFtZXEFVQVMYXVyYXEGVQ9fc2Vzc2lvbl9leHBp\ncnlxB02gBXUu\n','2013-03-08 17:06:03'),
	('9cc247a312753c861a855d67cd681b00','ODk3YjA4OGVjZWJlNmJkMTk1ZTY2MTIzN2ViMDFiOWM3NzA3ZGY1NzqAAn1xAShVBWNvdW50cQJL\nA1UGaGFuZGxlcQNVCUBiYl9iZXdic3EEVQRuYW1lcQVVC1BldGVyIEJ1YmFucQZVD19zZXNzaW9u\nX2V4cGlyeXEHTaAFdS4=\n','2013-03-07 20:07:14'),
	('9d47e7cce5514b7ac2e9871cf7953301','MmI5ZWNjYWFmMzVmM2JjMmEzMDg5MWU1MGIyYzA2OGZkYTZlZjlmZjqAAn1xAShVBWNvdW50cQJL\nA1UGaGFuZGxlcQNVEEBhc2hsZXlfYmFydGxldHRxBFUEbmFtZXEFVQ9Bc2hsZXkgQmFydGxldHRx\nBlUPX3Nlc3Npb25fZXhwaXJ5cQdNoAV1Lg==\n','2013-03-12 14:55:03'),
	('aad88f3a618a0397eb339b1a7aa4e76c','MGEwYWMyNjc4MzY2MzE2ODVjOWE3MWIyMDg0MDAwM2QwYWU3OTMzYzqAAn1xAShVBWNvdW50cQJL\nA1UGaGFuZGxlcQNVC0BicmVudHNteXRocQRVBG5hbWVxBVULQnJlbnQgU215dGhxBlUPX3Nlc3Np\nb25fZXhwaXJ5cQdNoAV1Lg==\n','2013-03-11 19:41:12'),
	('af34c9d8d2f9720686dda83858fa7535','NmZkMmEwN2U3MzA1NmQwZmRhZjQ3OGE4YjZkNDZlNzU2ZTNjMmJiYjqAAn1xAShVBWNvdW50cQJL\nBlUGaGFuZGxlcQNVCkBiYl9lZHdhcmRxBFUEbmFtZXEFVQllZCBrbmlnaHRxBlUPX3Nlc3Npb25f\nZXhwaXJ5cQdNoAV1Lg==\n','2013-03-08 16:59:41'),
	('b80b1aafa5ffec9fd4e4650519c5d717','Y2YxMzEyOGUyNWMxNWM0MDAzNmE2ZDU4ZTQxZmY3MTkwNTU1MWZhNjqAAn1xAShVBWNvdW50cQJL\nA1UGaGFuZGxlcQNVD0BzaGVsbGV5X3Rob21hc3EEVQRuYW1lcQVVE1NoZWxsZXkgQW5uZSBUaG9t\nYXNxBlUPX3Nlc3Npb25fZXhwaXJ5cQdNoAV1Lg==\n','2013-03-12 19:53:59'),
	('b9ed56ba8229538c9112ba404ab7cd0c','OTNhOThjZDk0MDU5NWRiYzY1MGQ1MjMyN2NiOWRhN2FhOGFiY2Q3NTqAAn1xAShVBWNvdW50cQJL\nA1UGaGFuZGxlcQNVD0BiYl9kZXZfYWNjb3VudHEEVQRuYW1lcQVVElRlY2huaWNhbCBEaXJlY3Rv\ncnEGVQ9fc2Vzc2lvbl9leHBpcnlxB02gBXUu\n','2013-03-08 14:21:49'),
	('bb9a47e645956b06ed4cb62db363213f','OTJhMjdhM2ZiNDk2ODJjNmU5MWM0ZGEwNWQxYTZiZGJlYzY3NTcwODqAAn1xAShVBWNvdW50cQJL\nB1UGaGFuZGxlcQNVCUBiYl9iZXdic3EEVQRuYW1lcQVVC1BldGVyIEJ1YmFucQZVD19zZXNzaW9u\nX2V4cGlyeXEHTaAFdS4=\n','2013-03-08 20:25:52'),
	('bd6e523aeb8b415b77a1a78d7f4396f4','ZWQ5ZWEwYjdkMWMwYmU4ZDc2OTg2ODU2OGYxMDU3YWM1OTFjMjQxMDqAAn1xAVUNcmVxdWVzdF90\nb2tlbnECVSpDZmF2RFAzT004bHhQMTZrSTRySE12eEVKQ0t4OUp4bTgxOGphYktjSmtVKnp3RUZk\nODZjVWxHaUJ3Q2NyZk5jakUyTDJReGJ6SnFzNVNpb0llSGgzWYZxA3Mu\n','2013-03-23 20:23:32'),
	('d7696517f55e3f6932781a973b28f33e','NzlhMzVjMzA5NTgzNjEwYmNjNzM5ZmNjYTIxMzU0YWI5OWY0NzA3YzqAAn1xAShVBWNvdW50cQJL\nA1UGaGFuZGxlcQNVDkBtZXJla2xhcG93aWNocQRVBG5hbWVxBVUSbWVyZWRpdGgga2xhcG93aWNo\ncQZVD19zZXNzaW9uX2V4cGlyeXEHTaAFdS4=\n','2013-03-12 16:18:14'),
	('e1d1bf411fa1c062f479155405d8dbff','MzE4NjU5ZmFjMGRmNDYzNDlkNDhlNDRiMzgxMjY0ODcxNGJhMjZkYjqAAn1xAVUNcmVxdWVzdF90\nb2tlbnECVSlhZmpzbFVTSDlRWWhya0JkeEQzNXo4NjJqY0VlZWkxUUFCOUFVUzVSMFUqME9PTDVW\nRTV6S0RaS1ZocHI5cjdtSGhYQ0FIVUc5c1NPWVFlcVoxVEJzhnEDcy4=\n','2013-03-21 16:43:33'),
	('ea41b7dfe743d419b79d0c74f0da12c1','OTIwMzIxYzBkOGE1OWI0NGQ3NjM2MzA1MWFmZjcwOTE3MzZmYjY4NTqAAn1xAShVBWNvdW50cQJL\nA1UGaGFuZGxlcQNVCkBiYl9lZHdhcmRxBFUEbmFtZXEFVQllZCBrbmlnaHRxBlUPX3Nlc3Npb25f\nZXhwaXJ5cQdNoAV1Lg==\n','2013-03-07 20:07:43'),
	('f252e27f1e8cb21b3c07ee3f6cde4d93','Njc3MTkyMGU1ZTBlMGIwZWMyYWI0NTVlMjFiYTMwZDU1MjU0YTI5MDqAAn1xAShVBWNvdW50cQJL\nA1UGaGFuZGxlcQNVDkBMYXVyZW5Xb2xmZlBScQRVBG5hbWVxBVUMTGF1cmVuIFdvbGZmcQZVD19z\nZXNzaW9uX2V4cGlyeXEHTaAFdS4=\n','2013-03-12 16:14:37'),
	('f5c82d0bea1039e14b376b6e16914952','OTZjMWYxMmQ2ZWI4NDY4MTllMjczNzcwODgyOTM2NGY1Y2E5MzBhYTqAAn1xAVUNcmVxdWVzdF90\nb2tlbnECVSk1TkU2ZW5kdG02Q1I0YjNrSmZOSXEwUmJPdjdObnFiSVVZSXlNM29tY1UqQVI5Sjc2\nTmJiSlBsanVvY0hnN01yNTF3VXNUSUZReEVYRWJMMlgxRGpzhnEDcy4=\n','2013-03-27 14:31:30'),
	('f6dd39b0c82fce05492d6f8771aa4c13','NzlhMzVjMzA5NTgzNjEwYmNjNzM5ZmNjYTIxMzU0YWI5OWY0NzA3YzqAAn1xAShVBWNvdW50cQJL\nA1UGaGFuZGxlcQNVDkBtZXJla2xhcG93aWNocQRVBG5hbWVxBVUSbWVyZWRpdGgga2xhcG93aWNo\ncQZVD19zZXNzaW9uX2V4cGlyeXEHTaAFdS4=\n','2013-03-12 15:34:14'),
	('f96533466c7e06bcedc52a7963e03019','MWEyYTBjZDJmNTg3ZTM3MTUyNGNiZWE1Njg3MThmMjQwMGFhMzRiMzqAAn1xAShVBWNvdW50cQJL\nBlUGaGFuZGxlcQNVCEBCQkFkYW00cQRVBG5hbWVxBVUHQkIgQWRhbXEGVQ9fc2Vzc2lvbl9leHBp\ncnlxB02gBXUu\n','2013-03-07 20:37:11'),
	('fcf93c940462bcfecc75755b94b19682','YjNmMjhlZWZmYThlYzc4M2I1MDg1YWQ2YTQ2ZTFhNzEwNjFmNGRhZTqAAn1xAShVBWNvdW50cQJL\nBFUGaGFuZGxlcQNVEEBhc2hsZXlfYmFydGxldHRxBFUEbmFtZXEFVQ9Bc2hsZXkgQmFydGxldHRx\nBlUPX3Nlc3Npb25fZXhwaXJ5cQdNoAV1Lg==\n','2013-03-08 20:05:54'),
	('ff74d2e4c78d28c760485f24af74b744','OTI5MjQ0YjVhMDZhNzlhNDIwZjdiODRmZmU3NDI2MzA4MTI5MDA2NjqAAn1xAShVBWNvdW50cQJL\nA1UGaGFuZGxlcQNVDEBOYXJyYXRpdmVQUnEEVQRuYW1lcQVVDE5hcnJhdGl2ZSBQUnEGVQ9fc2Vz\nc2lvbl9leHBpcnlxB02gBXUu\n','2013-03-12 18:46:58');

/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table django_site
# ------------------------------------------------------------

DROP TABLE IF EXISTS `django_site`;

CREATE TABLE `django_site` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `domain` varchar(100) NOT NULL,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `django_site` WRITE;
/*!40000 ALTER TABLE `django_site` DISABLE KEYS */;

INSERT INTO `django_site` (`id`, `domain`, `name`)
VALUES
	(1,'example.com','example.com');

/*!40000 ALTER TABLE `django_site` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table south_migrationhistory
# ------------------------------------------------------------

DROP TABLE IF EXISTS `south_migrationhistory`;

CREATE TABLE `south_migrationhistory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_name` varchar(255) NOT NULL,
  `migration` varchar(255) NOT NULL,
  `applied` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `south_migrationhistory` WRITE;
/*!40000 ALTER TABLE `south_migrationhistory` DISABLE KEYS */;

INSERT INTO `south_migrationhistory` (`id`, `app_name`, `migration`, `applied`)
VALUES
	(1,'twinvite_app','0001_initial','2013-03-05 21:41:49'),
	(2,'tastypie','0001_initial','2013-03-05 21:41:49'),
	(3,'tastypie','0002_add_apikey_index','2013-03-05 21:41:49'),
	(4,'twinvite_app','0002_auto__chg_field_attendee_email','2013-03-12 20:20:47');

/*!40000 ALTER TABLE `south_migrationhistory` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table tastypie_apiaccess
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tastypie_apiaccess`;

CREATE TABLE `tastypie_apiaccess` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `request_method` varchar(10) NOT NULL,
  `accessed` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



# Dump of table tastypie_apikey
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tastypie_apikey`;

CREATE TABLE `tastypie_apikey` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `key` varchar(256) NOT NULL,
  `created` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`),
  CONSTRAINT `user_id_refs_id_56bfdb62` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



# Dump of table twinvite_app_attendee
# ------------------------------------------------------------

DROP TABLE IF EXISTS `twinvite_app_attendee`;

CREATE TABLE `twinvite_app_attendee` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `handle` varchar(20) NOT NULL,
  `event_id` int(11) NOT NULL,
  `email` varchar(250) NOT NULL,
  `name` varchar(20) DEFAULT NULL,
  `seeder_id` decimal(5,0) DEFAULT NULL,
  `invitee_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `handle` (`handle`),
  KEY `twinvite_app_attendee_1647d06b` (`event_id`),
  KEY `twinvite_app_attendee_7cf0c275` (`invitee_id`),
  CONSTRAINT `event_id_refs_id_5317d9ae` FOREIGN KEY (`event_id`) REFERENCES `twinvite_app_event` (`id`),
  CONSTRAINT `invitee_id_refs_id_543d3a44` FOREIGN KEY (`invitee_id`) REFERENCES `twinvite_app_invitee` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `twinvite_app_attendee` WRITE;
/*!40000 ALTER TABLE `twinvite_app_attendee` DISABLE KEYS */;

INSERT INTO `twinvite_app_attendee` (`id`, `handle`, `event_id`, `email`, `name`, `seeder_id`, `invitee_id`)
VALUES
	(5,'@lauraserra',2,'laura.serra@narrative.ca','Laura Serra',NULL,23),
	(6,'@ashley_bartlett',2,'bartlett.ash@gmail.com','Ashley Bartlett',10,24),
	(7,'@Jess_Swan',2,'swan.jessical@gmail.com','Jessica Swan',10,25),
	(8,'@mereklapowich',2,'meredith.klapowich@bensimonbyrne.com','meredith klapowich',10,26),
	(9,'@NarrativePR',2,'lauralserra@gmail.com','Narrative PR',10,27),
	(10,'@pawsforthecause',2,'laura@pawsforthecause.ca','Paws for the Cause',10,28),
	(11,'@shelley_thomas',2,'shelley.thomas@narrative.ca','Shelley Anne Thomas',10,29),
	(12,'@ChefGrantSoto',2,'Chefgrantsoto@gmail.com','Chef Grant Soto',NULL,30),
	(13,'@Gtonge1',2,'Garretttonge@me.com','Garrett Tonge',NULL,37);

/*!40000 ALTER TABLE `twinvite_app_attendee` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table twinvite_app_event
# ------------------------------------------------------------

DROP TABLE IF EXISTS `twinvite_app_event`;

CREATE TABLE `twinvite_app_event` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `capacity` decimal(5,0) NOT NULL,
  `name` varchar(30) NOT NULL,
  `venue` varchar(30) NOT NULL,
  `address` varchar(250) NOT NULL,
  `date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `twinvite_app_event` WRITE;
/*!40000 ALTER TABLE `twinvite_app_event` DISABLE KEYS */;

INSERT INTO `twinvite_app_event` (`id`, `capacity`, `name`, `venue`, `address`, `date`)
VALUES
	(2,250,'The Experience','The 2nd Floor','461 King St W','2013-04-03 18:00:00');

/*!40000 ALTER TABLE `twinvite_app_event` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table twinvite_app_invitee
# ------------------------------------------------------------

DROP TABLE IF EXISTS `twinvite_app_invitee`;

CREATE TABLE `twinvite_app_invitee` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `handle` varchar(20) NOT NULL,
  `event_id` int(11) NOT NULL,
  `accepted` tinyint(1) NOT NULL,
  `visited` tinyint(1) NOT NULL,
  `seeder` tinyint(1) NOT NULL,
  `current_seed` decimal(3,0) DEFAULT NULL,
  `inviter_id` int(11) DEFAULT NULL,
  `max_num_invites` decimal(3,0) NOT NULL,
  `decided` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `handle` (`handle`),
  KEY `twinvite_app_invitee_1647d06b` (`event_id`),
  KEY `twinvite_app_invitee_74fccd78` (`inviter_id`),
  CONSTRAINT `inviter_id_refs_id_506ec7fd` FOREIGN KEY (`inviter_id`) REFERENCES `twinvite_app_invitee` (`id`),
  CONSTRAINT `event_id_refs_id_7ad13159` FOREIGN KEY (`event_id`) REFERENCES `twinvite_app_event` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `twinvite_app_invitee` WRITE;
/*!40000 ALTER TABLE `twinvite_app_invitee` DISABLE KEYS */;

INSERT INTO `twinvite_app_invitee` (`id`, `handle`, `event_id`, `accepted`, `visited`, `seeder`, `current_seed`, `inviter_id`, `max_num_invites`, `decided`)
VALUES
	(23,'@lauraserra',2,1,1,1,NULL,NULL,1,1),
	(24,'@ashley_bartlett',2,1,1,0,10,23,1,1),
	(25,'@jess_swan',2,1,1,0,10,24,1,1),
	(26,'@mereklapowich',2,1,1,0,10,25,1,1),
	(27,'@narrativePR',2,1,1,0,10,26,1,1),
	(28,'@pawsforthecause',2,1,1,0,10,27,1,1),
	(29,'@shelley_thomas',2,1,1,0,10,28,0,1),
	(30,'@chefgrantsoto',2,1,1,1,NULL,NULL,1,1),
	(31,'@sidewalkhustle',2,0,0,1,NULL,NULL,1,0),
	(32,'@randibergman',2,0,0,1,NULL,NULL,1,0),
	(33,'@hadisworld',2,0,0,1,NULL,NULL,1,0),
	(34,'@shedoesthecity',2,0,0,1,NULL,NULL,1,0),
	(35,'@markmunroemusic',2,0,0,1,NULL,NULL,1,0),
	(37,'@gtonge1',2,1,1,1,NULL,NULL,1,1),
	(38,'@maxvaliquette',2,0,0,1,NULL,NULL,1,0),
	(40,'@amandaalvaro',2,0,0,1,NULL,NULL,1,0),
	(41,'@maggiewrobel',2,0,0,1,NULL,NULL,1,0),
	(42,'@la_carnita',2,0,0,1,NULL,NULL,1,0),
	(43,'@marshadoucette',2,0,0,0,11,30,1,0),
	(44,'@nicperagine ',2,0,0,0,17,37,1,0);

/*!40000 ALTER TABLE `twinvite_app_invitee` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table twinvite_app_seed
# ------------------------------------------------------------

DROP TABLE IF EXISTS `twinvite_app_seed`;

CREATE TABLE `twinvite_app_seed` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `seeder_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `max_seeder_chain` decimal(5,0) NOT NULL,
  `event_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `twinvite_app_seed_42b5161c` (`seeder_id`),
  KEY `twinvite_app_seed_1647d06b` (`event_id`),
  CONSTRAINT `event_id_refs_id_55a688e5` FOREIGN KEY (`event_id`) REFERENCES `twinvite_app_event` (`id`),
  CONSTRAINT `seeder_id_refs_id_2a3d01b9` FOREIGN KEY (`seeder_id`) REFERENCES `twinvite_app_invitee` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `twinvite_app_seed` WRITE;
/*!40000 ALTER TABLE `twinvite_app_seed` DISABLE KEYS */;

INSERT INTO `twinvite_app_seed` (`id`, `seeder_id`, `created`, `max_seeder_chain`, `event_id`)
VALUES
	(10,23,'2013-03-12 10:00:00',6,2),
	(11,30,'2013-03-13 09:37:00',10,2),
	(12,31,'2013-03-13 09:40:00',10,2),
	(13,32,'2013-03-13 09:41:00',10,2),
	(14,33,'2013-03-13 09:42:00',10,2),
	(15,34,'2013-03-13 09:43:00',10,2),
	(16,35,'2013-03-13 09:44:00',10,2),
	(17,37,'2013-03-13 09:46:00',10,2),
	(18,38,'2013-03-13 09:47:00',10,2),
	(19,40,'2013-03-13 09:50:00',10,2),
	(22,41,'2013-03-13 09:52:00',10,2),
	(23,42,'2013-03-13 09:53:00',10,2);

/*!40000 ALTER TABLE `twinvite_app_seed` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table twinvite_app_uninvitee
# ------------------------------------------------------------

DROP TABLE IF EXISTS `twinvite_app_uninvitee`;

CREATE TABLE `twinvite_app_uninvitee` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `handle` varchar(20) NOT NULL,
  `message` longtext NOT NULL,
  `created` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `handle` (`handle`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `twinvite_app_uninvitee` WRITE;
/*!40000 ALTER TABLE `twinvite_app_uninvitee` DISABLE KEYS */;

INSERT INTO `twinvite_app_uninvitee` (`id`, `handle`, `message`, `created`)
VALUES
	(9,'@maxvaliquette','I am interested in coming','2013-03-12 15:33:20'),
	(10,'@bb_dev_account','I am interested in coming PWEEEAAAASE','2013-03-12 16:16:54');

/*!40000 ALTER TABLE `twinvite_app_uninvitee` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table twinvite_app_user
# ------------------------------------------------------------

DROP TABLE IF EXISTS `twinvite_app_user`;

CREATE TABLE `twinvite_app_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `handle` varchar(20) NOT NULL,
  `token` varchar(40) NOT NULL,
  `created` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `handle` (`handle`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
