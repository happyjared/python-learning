-- ----------------------------
-- Table structure for tb_message
-- ----------------------------
DROP TABLE IF EXISTS `tb_message`;
CREATE TABLE `tb_message` (
  `mid` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `uid` smallint(5) unsigned NOT NULL COMMENT '本来为外键，这里就随意吧',
  `content` text NOT NULL COMMENT '内容',
  `post_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '发表时间',
  PRIMARY KEY (`mid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COMMENT='内涵段子表';
