﻿CREATE TABLE `guitarwars` (
  `id` INT AUTO_INCREMENT,
  /**** DEFALUT/ON UPDATEにCURRENT_TIMESTAMPを複数のカラムにつけることはできないのでdateのdefaultを修正
  	もしくは　型をdatetime型にする*********************************************************************

  `date` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  ********************************************************************************************************/
  `date` TIMESTAMP DEFALUT 0,
  `modified` TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `name` VARCHAR(32),
  `score` INT,
  PRIMARY KEY (`id`),
  KEY `name` (`name`)
);

INSERT INTO `guitarwars` VALUES (1, '2009-09-12 14:37:34', '岡野 一郎', 127650);
INSERT INTO `guitarwars` VALUES (2, '2009-09-12 21:27:54', '上野 正夫', 98430);
INSERT INTO `guitarwars` VALUES (3, '2009-09-13 09:06:35', '大谷 淳', 345900);
INSERT INTO `guitarwars` VALUES (4, '2009-09-13 09:12:53', '深沢 麻子', 282470);
INSERT INTO `guitarwars` VALUES (5, '2009-09-13 09:13:34', '西原 孝俊', 368420);
INSERT INTO `guitarwars` VALUES (6, '2009-09-13 14:09:50', '山口 裕子', 64930);

/*** PHPで時刻の挿入は以下 ****
1. MySQLのNOW(）関数
2. date('Y-m-d H:i:s')
3. $date=new Datetime();
   $date->format('Y-m-d H:i:s')

