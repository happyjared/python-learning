-- ----------------------------
-- Table structure for tb_read
-- ----------------------------
DROP TABLE IF EXISTS `tb_read`;
CREATE TABLE `tb_read` (
  `rid` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `title` varchar(15) NOT NULL COMMENT '书名',
  `second_title` varchar(10) DEFAULT NULL COMMENT '二级标题(书名)',
  `author` varchar(30) NOT NULL COMMENT '作者',
  `url` varchar(180) NOT NULL COMMENT '图片地址',
  `review` varchar(1500) NOT NULL COMMENT '书评',
  `aid` tinyint(3) unsigned NOT NULL COMMENT '本来为外键，这里就随意吧',
  `post_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`rid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COMMENT='图书表';
