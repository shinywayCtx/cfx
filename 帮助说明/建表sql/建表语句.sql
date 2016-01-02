 

DROP TABLE IF EXISTS `t_bx_apply`;
CREATE TABLE `t_bx_apply` (
  `apply_id` varchar(40) NOT NULL,
  `apply_user_id` varchar(40) DEFAULT NULL,
  `biz_type` varchar(40) DEFAULT NULL,
  `bx_type` varchar(40) DEFAULT NULL,
  `bank_name` varchar(100) DEFAULT NULL,
  `skr_persion` varchar(100) DEFAULT NULL,
  `skr_phone` varchar(100) DEFAULT NULL,
  `bank_card` varchar(100) DEFAULT NULL,
  `bx_content` varchar(500) DEFAULT NULL,
  `status` int(2) DEFAULT NULL,
  `apply_unit_id` varchar(40) DEFAULT NULL,
  `memo` varchar(400) DEFAULT NULL,
  `receipt_count` int(2) DEFAULT NULL,
  `attach_id` varchar(40) DEFAULT NULL,
  `apply_money` double DEFAULT NULL,
  `confir_money` double DEFAULT NULL,
  `apply_date` date DEFAULT NULL,
  `pass_date` date DEFAULT NULL,
  `pay_date` date DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `creater` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`apply_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
 
INSERT INTO `t_bx_apply` VALUES ('11111111111111','sys','','','','','','','',NULL,'0','',1,NULL,1,NULL,'2015-12-26',NULL,NULL,NULL,NULL),('82dc65e1-d9d3-449c-ac01-7fa810c0e603','sys','','','','','','','1',NULL,'0','111',1,NULL,1,NULL,'2016-01-02',NULL,NULL,NULL,NULL);
 

DROP TABLE IF EXISTS `t_cfx_unit`;
CREATE TABLE `t_cfx_unit` (
  `unit_id` varchar(100) NOT NULL,
  `unit_name` varchar(40) DEFAULT NULL,
  `unit_short_name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`unit_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

 

INSERT INTO `t_cfx_unit` VALUES ('0','信息技术中心','IT');

 
DROP TABLE IF EXISTS `t_cfx_user`;
CREATE TABLE `t_cfx_user` (
  `user_id` varchar(100) NOT NULL,
  `user_account` varchar(40) DEFAULT NULL,
  `user_password` varchar(40) DEFAULT NULL,
  `user_name` varchar(40) DEFAULT NULL,
  `unit_id` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Data for table "t_cfx_user"
#

INSERT INTO `t_cfx_user` VALUES ('sys','admin','ctx1187','管理员','0');

