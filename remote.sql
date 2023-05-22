/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 50722
 Source Host           : 127.0.0.1:3306
 Source Schema         : springboot50460

 Target Server Type    : MySQL
 Target Server Version : 50722
 File Encoding         : 65001

 Date: 02/03/2023 14:35:23
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for chuzhenxinxi
-- ----------------------------
DROP TABLE IF EXISTS `chuzhenxinxi`;
CREATE TABLE `chuzhenxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yishenggonghao` varchar(200) DEFAULT NULL COMMENT '医生工号',
  `yishengxingming` varchar(200) DEFAULT NULL COMMENT '医生姓名',
  `zhicheng` varchar(200) DEFAULT NULL COMMENT '职称',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  `keshi` varchar(200) DEFAULT NULL COMMENT '科室',
  `shanzhang` varchar(200) DEFAULT NULL COMMENT '擅长',
  `chuzhenshijian` date DEFAULT NULL COMMENT '出诊时间',
  `keyuerenshu` int(11) DEFAULT NULL COMMENT '可约人数',
  `guahaofei` int(11) DEFAULT NULL COMMENT '挂号费',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1617433326746 DEFAULT CHARSET=utf8 COMMENT='出诊信息';

-- ----------------------------
-- Records of chuzhenxinxi
-- ----------------------------
BEGIN;
INSERT INTO `chuzhenxinxi` VALUES (41, '2021-04-03 14:53:04', '医生工号1', '医生姓名1', '职称1', 'http://localhost:8080/springboot50460/upload/chuzhenxinxi_zhaopian1.jpg', '科室1', '擅长1', '2021-04-03', 1, 1, '2023-01-19 11:07:07', 16);
INSERT INTO `chuzhenxinxi` VALUES (42, '2021-04-03 14:53:04', '医生工号2', '医生姓名2', '职称2', 'http://localhost:8080/springboot50460/upload/chuzhenxinxi_zhaopian2.jpg', '科室2', '擅长2', '2021-04-03', 2, 2, '2023-03-02 06:32:43', 6);
INSERT INTO `chuzhenxinxi` VALUES (43, '2021-04-03 14:53:04', '医生工号3', '医生姓名3', '职称3', 'http://localhost:8080/springboot50460/upload/chuzhenxinxi_zhaopian3.jpg', '科室3', '擅长3', '2021-04-03', 3, 3, '2021-04-03 14:53:04', 3);
INSERT INTO `chuzhenxinxi` VALUES (44, '2021-04-03 14:53:04', '医生工号4', '医生姓名4', '职称4', 'http://localhost:8080/springboot50460/upload/chuzhenxinxi_zhaopian4.jpg', '科室4', '擅长4', '2021-04-03', 4, 4, '2021-04-03 14:53:04', 4);
INSERT INTO `chuzhenxinxi` VALUES (45, '2021-04-03 14:53:04', '医生工号5', '医生姓名5', '职称5', 'http://localhost:8080/springboot50460/upload/chuzhenxinxi_zhaopian5.jpg', '科室5', '擅长5', '2021-04-03', 5, 5, '2021-04-03 14:59:05', 7);
INSERT INTO `chuzhenxinxi` VALUES (46, '2021-04-03 14:53:04', '医生工号6', '医生姓名6', '职称6', 'http://localhost:8080/springboot50460/upload/chuzhenxinxi_zhaopian6.jpg', '科室6', '擅长6', '2021-04-03', 6, 6, '2023-01-19 11:05:59', 14);
INSERT INTO `chuzhenxinxi` VALUES (1617433326745, '2021-04-03 15:02:05', '1', '张悦', '副主任医师', 'http://localhost:8080/springboot50460/upload/1617433213391.png', '皮肤科', '擅长过敏性皮炎，脂溢性皮炎的诊断与治疗', '2021-04-05', 30, 20, '2021-04-03 15:04:31', 3);
COMMIT;

-- ----------------------------
-- Table structure for config
-- ----------------------------
DROP TABLE IF EXISTS `config`;
CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

-- ----------------------------
-- Records of config
-- ----------------------------
BEGIN;
INSERT INTO `config` VALUES (1, 'picture1', 'http://localhost:8080/springboot50460/upload/1617433264937.jpg');
INSERT INTO `config` VALUES (2, 'picture2', 'http://localhost:8080/springboot50460/upload/1617433274062.jpg');
INSERT INTO `config` VALUES (3, 'picture3', 'http://localhost:8080/springboot50460/upload/picture3.jpg');
INSERT INTO `config` VALUES (6, 'homepage', NULL);
COMMIT;

-- ----------------------------
-- Table structure for discusschuzhenxinxi
-- ----------------------------
DROP TABLE IF EXISTS `discusschuzhenxinxi`;
CREATE TABLE `discusschuzhenxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=127 DEFAULT CHARSET=utf8 COMMENT='出诊信息评论表';

-- ----------------------------
-- Records of discusschuzhenxinxi
-- ----------------------------
BEGIN;
INSERT INTO `discusschuzhenxinxi` VALUES (121, '2021-04-03 14:53:04', 1, 1, '用户名1', '评论内容1', '回复内容1');
INSERT INTO `discusschuzhenxinxi` VALUES (122, '2021-04-03 14:53:04', 2, 2, '用户名2', '评论内容2', '回复内容2');
INSERT INTO `discusschuzhenxinxi` VALUES (123, '2021-04-03 14:53:04', 3, 3, '用户名3', '评论内容3', '回复内容3');
INSERT INTO `discusschuzhenxinxi` VALUES (124, '2021-04-03 14:53:04', 4, 4, '用户名4', '评论内容4', '回复内容4');
INSERT INTO `discusschuzhenxinxi` VALUES (125, '2021-04-03 14:53:04', 5, 5, '用户名5', '评论内容5', '回复内容5');
INSERT INTO `discusschuzhenxinxi` VALUES (126, '2021-04-03 14:53:04', 6, 6, '用户名6', '评论内容6', '回复内容6');
COMMIT;

-- ----------------------------
-- Table structure for discusskeshixinxi
-- ----------------------------
DROP TABLE IF EXISTS `discusskeshixinxi`;
CREATE TABLE `discusskeshixinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1617433418893 DEFAULT CHARSET=utf8 COMMENT='科室信息评论表';

-- ----------------------------
-- Records of discusskeshixinxi
-- ----------------------------
BEGIN;
INSERT INTO `discusskeshixinxi` VALUES (111, '2021-04-03 14:53:04', 1, 1, '用户名1', '评论内容1', '回复内容1');
INSERT INTO `discusskeshixinxi` VALUES (112, '2021-04-03 14:53:04', 2, 2, '用户名2', '评论内容2', '回复内容2');
INSERT INTO `discusskeshixinxi` VALUES (113, '2021-04-03 14:53:04', 3, 3, '用户名3', '评论内容3', '回复内容3');
INSERT INTO `discusskeshixinxi` VALUES (114, '2021-04-03 14:53:04', 4, 4, '用户名4', '评论内容4', '回复内容4');
INSERT INTO `discusskeshixinxi` VALUES (115, '2021-04-03 14:53:04', 5, 5, '用户名5', '评论内容5', '回复内容5');
INSERT INTO `discusskeshixinxi` VALUES (116, '2021-04-03 14:53:04', 6, 6, '用户名6', '评论内容6', '回复内容6');
INSERT INTO `discusskeshixinxi` VALUES (1617433418892, '2021-04-03 15:03:38', 1617433200063, 1617433354434, '2', '很不错的科室', NULL);
COMMIT;

-- ----------------------------
-- Table structure for jiuzhenpingjia
-- ----------------------------
DROP TABLE IF EXISTS `jiuzhenpingjia`;
CREATE TABLE `jiuzhenpingjia` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yishenggonghao` varchar(200) DEFAULT NULL COMMENT '医生工号',
  `yishengxingming` varchar(200) DEFAULT NULL COMMENT '医生姓名',
  `zhicheng` varchar(200) DEFAULT NULL COMMENT '职称',
  `keshi` varchar(200) DEFAULT NULL COMMENT '科室',
  `chuzhenshijian` varchar(200) DEFAULT NULL COMMENT '出诊时间',
  `shijianduan` varchar(200) DEFAULT NULL COMMENT '时间段',
  `taidupingfen` varchar(200) DEFAULT NULL COMMENT '态度评分',
  `jishupingfen` varchar(200) DEFAULT NULL COMMENT '技术评分',
  `pingjianeirong` longtext COMMENT '评价内容',
  `pingjiariqi` date DEFAULT NULL COMMENT '评价日期',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1617433546647 DEFAULT CHARSET=utf8 COMMENT='就诊评价';

-- ----------------------------
-- Records of jiuzhenpingjia
-- ----------------------------
BEGIN;
INSERT INTO `jiuzhenpingjia` VALUES (71, '2021-04-03 14:53:04', '医生工号1', '医生姓名1', '职称1', '科室1', '出诊时间1', '时间段1', '1', '1', '评价内容1', '2021-04-03', '用户名1', '姓名1', '是', '');
INSERT INTO `jiuzhenpingjia` VALUES (72, '2021-04-03 14:53:04', '医生工号2', '医生姓名2', '职称2', '科室2', '出诊时间2', '时间段2', '1', '1', '评价内容2', '2021-04-03', '用户名2', '姓名2', '是', '');
INSERT INTO `jiuzhenpingjia` VALUES (73, '2021-04-03 14:53:04', '医生工号3', '医生姓名3', '职称3', '科室3', '出诊时间3', '时间段3', '1', '1', '评价内容3', '2021-04-03', '用户名3', '姓名3', '是', '');
INSERT INTO `jiuzhenpingjia` VALUES (74, '2021-04-03 14:53:04', '医生工号4', '医生姓名4', '职称4', '科室4', '出诊时间4', '时间段4', '1', '1', '评价内容4', '2021-04-03', '用户名4', '姓名4', '是', '');
INSERT INTO `jiuzhenpingjia` VALUES (75, '2021-04-03 14:53:04', '医生工号5', '医生姓名5', '职称5', '科室5', '出诊时间5', '时间段5', '1', '1', '评价内容5', '2021-04-03', '用户名5', '姓名5', '是', '');
INSERT INTO `jiuzhenpingjia` VALUES (76, '2021-04-03 14:53:04', '医生工号6', '医生姓名6', '职称6', '科室6', '出诊时间6', '时间段6', '1', '1', '评价内容6', '2021-04-03', '用户名6', '姓名6', '是', '');
INSERT INTO `jiuzhenpingjia` VALUES (1617433546646, '2021-04-03 15:05:46', '1', '张悦', '副主任医师', '皮肤科', '2021-04-05', '9:00-10:00', '5', '5', '医生医术高明', '2021-04-06', '2', '陈一', '是', '要多注意皮肤的保护');
COMMIT;

-- ----------------------------
-- Table structure for keshixinxi
-- ----------------------------
DROP TABLE IF EXISTS `keshixinxi`;
CREATE TABLE `keshixinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `keshi` varchar(200) NOT NULL COMMENT '科室',
  `tupian` varchar(200) NOT NULL COMMENT '图片',
  `keshijieshao` longtext COMMENT '科室介绍',
  `keshiweizhi` varchar(200) DEFAULT NULL COMMENT '科室位置',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1617433200064 DEFAULT CHARSET=utf8 COMMENT='科室信息';

-- ----------------------------
-- Records of keshixinxi
-- ----------------------------
BEGIN;
INSERT INTO `keshixinxi` VALUES (21, '2021-04-03 14:53:04', '科室1', 'http://localhost:8080/springboot50460/upload/1617433063115.jpg', '<p>科室介绍1,好的地方在的123456789</p>', '科室位置1');
INSERT INTO `keshixinxi` VALUES (22, '2021-04-03 14:53:04', '科室2', 'http://localhost:8080/springboot50460/upload/1617433070282.jpg', '科室介绍2', '科室位置2');
INSERT INTO `keshixinxi` VALUES (23, '2021-04-03 14:53:04', '科室3', 'http://localhost:8080/springboot50460/upload/1617433079815.jpg', '科室介绍3', '科室位置3');
INSERT INTO `keshixinxi` VALUES (24, '2021-04-03 14:53:04', '科室4', 'http://localhost:8080/springboot50460/upload/1617433088318.jpg', '科室介绍4', '科室位置4');
INSERT INTO `keshixinxi` VALUES (25, '2021-04-03 14:53:04', '科室5', 'http://localhost:8080/springboot50460/upload/1617433095858.jpg', '科室介绍5', '科室位置5');
INSERT INTO `keshixinxi` VALUES (26, '2021-04-03 14:53:04', '科室6', 'http://localhost:8080/springboot50460/upload/1617433103883.jpg', '科室介绍6', '科室位置6');
INSERT INTO `keshixinxi` VALUES (1617433200063, '2021-04-03 14:59:59', '皮肤科', 'http://localhost:8080/springboot50460/upload/1617433190902.jpg', '成立于2006年，本科室设备先进,技术力量雄厚。科室共有医护人员7名，主治医师2名、医师2名、美容技师1名、护士2名。', '门诊大楼三楼');
COMMIT;

-- ----------------------------
-- Table structure for messages
-- ----------------------------
DROP TABLE IF EXISTS `messages`;
CREATE TABLE `messages` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '留言人id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '留言内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1674097643705 DEFAULT CHARSET=utf8 COMMENT='留言板';

-- ----------------------------
-- Records of messages
-- ----------------------------
BEGIN;
INSERT INTO `messages` VALUES (101, '2021-04-03 14:53:04', 1, '用户名1', '留言内容1', '回复内容1');
INSERT INTO `messages` VALUES (102, '2021-04-03 14:53:04', 2, '用户名2', '留言内容2', '回复内容2');
INSERT INTO `messages` VALUES (103, '2021-04-03 14:53:04', 3, '用户名3', '留言内容3', '回复内容3');
INSERT INTO `messages` VALUES (104, '2021-04-03 14:53:04', 4, '用户名4', '留言内容4', '回复内容4');
INSERT INTO `messages` VALUES (105, '2021-04-03 14:53:04', 5, '用户名5', '留言内容5', '回复内容5');
INSERT INTO `messages` VALUES (106, '2021-04-03 14:53:04', 6, '用户名6', '留言内容6', '回复内容6');
INSERT INTO `messages` VALUES (1617433486607, '2021-04-03 15:04:45', 1617433354434, '2', '请问有儿科吗', '有的');
INSERT INTO `messages` VALUES (1674035408601, '2023-01-18 17:50:08', 1674032783180, 'liang', 'zzz', NULL);
INSERT INTO `messages` VALUES (1674097643704, '2023-01-19 11:07:23', 1674032783180, 'liang', '很好的', NULL);
COMMIT;

-- ----------------------------
-- Table structure for news
-- ----------------------------
DROP TABLE IF EXISTS `news`;
CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `introduction` longtext COMMENT '简介',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1617433305457 DEFAULT CHARSET=utf8 COMMENT='医院公告';

-- ----------------------------
-- Records of news
-- ----------------------------
BEGIN;
INSERT INTO `news` VALUES (91, '2021-04-03 14:53:04', '标题1', '简介1', 'http://localhost:8080/springboot50460/upload/news_picture1.jpg', '内容1');
INSERT INTO `news` VALUES (92, '2021-04-03 14:53:04', '标题2', '简介2', 'http://localhost:8080/springboot50460/upload/news_picture2.jpg', '内容2');
INSERT INTO `news` VALUES (93, '2021-04-03 14:53:04', '标题3', '简介3', 'http://localhost:8080/springboot50460/upload/news_picture3.jpg', '内容3');
INSERT INTO `news` VALUES (94, '2021-04-03 14:53:04', '标题4', '简介4', 'http://localhost:8080/springboot50460/upload/1617433119396.jpg', '<p>内容4</p>');
INSERT INTO `news` VALUES (95, '2021-04-03 14:53:04', '标题5', '简介5', 'http://localhost:8080/springboot50460/upload/1617433128694.jpg', '<p>内容5</p>');
INSERT INTO `news` VALUES (96, '2021-04-03 14:53:04', '标题6', '简介6', 'http://localhost:8080/springboot50460/upload/1617433141555.jpg', '<p>内容6</p>');
INSERT INTO `news` VALUES (1617433305456, '2021-04-03 15:01:45', '就诊指南', '就诊指南', 'http://localhost:8080/springboot50460/upload/1617433283874.jpg', '<p>1）用户首次预约必须注册就诊人的真实有效基本信息，包括就诊人员的真实姓名、有效证件号(身份证、军官证、护照、港澳通行证、台胞证)、性别、电话、手机号码等基本信息。</p><p>2）可选择相应科室，医生进行挂号预约，支付挂号费预约后，需要医生审核，审核通过方式预约成功</p><p>3）成功预约挂号后，系统将自动保存用户预约记录</p><p><img src=\"http://localhost:8080/ssm50460/upload/1617433303618.jpg\"></p>');
COMMIT;

-- ----------------------------
-- Table structure for storeup
-- ----------------------------
DROP TABLE IF EXISTS `storeup`;
CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1677738741483 DEFAULT CHARSET=utf8 COMMENT='收藏表';

-- ----------------------------
-- Records of storeup
-- ----------------------------
BEGIN;
INSERT INTO `storeup` VALUES (1617433409987, '2021-04-03 15:03:29', 1617433354434, 1617433200063, 'keshixinxi', '皮肤科', 'http://localhost:8080/springboot50460/upload/1617433190902.jpg');
INSERT INTO `storeup` VALUES (1673581180141, '2023-01-13 11:39:39', 1673581087528, 22, 'keshixinxi', '科室2', 'http://localhost:8080/springboot50460/upload/1617433070282.jpg');
INSERT INTO `storeup` VALUES (1674035343795, '2023-01-18 17:49:03', 1674032783180, 21, 'keshixinxi', '科室1', 'http://localhost:8080/springboot50460/upload/1617433063115.jpg');
INSERT INTO `storeup` VALUES (1674035421590, '2023-01-18 17:50:20', 1674032783180, 23, 'keshixinxi', '科室3', 'http://localhost:8080/springboot50460/upload/1617433079815.jpg');
INSERT INTO `storeup` VALUES (1674097607449, '2023-01-19 11:06:47', 1674032783180, 41, 'chuzhenxinxi', '医生姓名1', 'http://localhost:8080/springboot50460/upload/chuzhenxinxi_zhaopian1.jpg');
INSERT INTO `storeup` VALUES (1677738741482, '2023-03-02 14:32:20', 1677738710959, 25, 'keshixinxi', '科室5', 'http://localhost:8080/springboot50460/upload/1617433095858.jpg');
COMMIT;

-- ----------------------------
-- Table structure for token
-- ----------------------------
DROP TABLE IF EXISTS `token`;
CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='token表';

-- ----------------------------
-- Records of token
-- ----------------------------
BEGIN;
INSERT INTO `token` VALUES (1, 1, 'abo', 'users', '管理员', '6bu0bg3o3ptkxc9fgpy1awlo42zstww4', '2021-04-03 14:57:32', '2023-03-02 07:33:09');
INSERT INTO `token` VALUES (2, 1617433233219, '1', 'yisheng', '医生', '3dozq3wk36b2af7nf7zemwipzm0o9rgw', '2021-04-03 15:01:52', '2021-04-03 16:05:54');
INSERT INTO `token` VALUES (3, 1617433354434, '2', 'yonghu', '用户', '66fry3uqn5he6fhedqefv6jsjbheavxh', '2021-04-03 15:02:39', '2021-04-03 16:05:26');
INSERT INTO `token` VALUES (4, 1673581004259, 'qqq', 'yisheng', '医生', '65ks8tvu48qzkbbccucviweclps5zef3', '2023-01-13 11:37:41', '2023-01-13 12:37:42');
INSERT INTO `token` VALUES (5, 1673581087528, 'ee', 'yonghu', '用户', 'bs9uhteglfiar206mmw5t7u4tjj8rlth', '2023-01-13 11:38:15', '2023-01-13 12:39:51');
INSERT INTO `token` VALUES (6, 1674032783180, 'liang', 'yonghu', '用户', 'qwryevasks5puuc3uyiw1pug9bfyztqw', '2023-01-18 17:06:37', '2023-03-02 07:31:33');
INSERT INTO `token` VALUES (7, 1674035543749, 'www', 'yisheng', '医生', 'boyysnvboxf90ngw1fg8449qkx4oo45f', '2023-01-18 17:52:31', '2023-01-19 12:09:32');
INSERT INTO `token` VALUES (8, 1677738710959, '33', 'yonghu', '用户', 'ryaobziuvsck1rngh0676i9x8r11118t', '2023-03-02 14:31:56', '2023-03-02 07:31:57');
COMMIT;

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';

-- ----------------------------
-- Records of users
-- ----------------------------
BEGIN;
INSERT INTO `users` VALUES (1, 'liang', 'liang', '管理员', '2021-04-03 14:53:04');
COMMIT;

-- ----------------------------
-- Table structure for yisheng
-- ----------------------------
DROP TABLE IF EXISTS `yisheng`;
CREATE TABLE `yisheng` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yishenggonghao` varchar(200) NOT NULL COMMENT '医生工号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `yishengxingming` varchar(200) NOT NULL COMMENT '医生姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  `zhicheng` varchar(200) DEFAULT NULL COMMENT '职称',
  `keshi` varchar(200) DEFAULT NULL COMMENT '科室',
  `shanzhang` varchar(200) DEFAULT NULL COMMENT '擅长',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1677738828435 DEFAULT CHARSET=utf8 COMMENT='医生';

-- ----------------------------
-- Records of yisheng
-- ----------------------------
BEGIN;
INSERT INTO `yisheng` VALUES (31, '2021-04-03 14:53:04', '医生1', '123456', '医生姓名1', '男', 'http://localhost:8080/springboot50460/upload/yisheng_zhaopian1.jpg', '医师', '科室1', '擅长1', '13823888881');
INSERT INTO `yisheng` VALUES (32, '2021-04-03 14:53:04', '医生2', '123456', '医生姓名2', '男', 'http://localhost:8080/springboot50460/upload/yisheng_zhaopian2.jpg', '医师', '科室2', '擅长2', '13823888882');
INSERT INTO `yisheng` VALUES (33, '2021-04-03 14:53:04', '医生3', '123456', '医生姓名3', '男', 'http://localhost:8080/springboot50460/upload/yisheng_zhaopian3.jpg', '医师', '科室3', '擅长3', '13823888883');
INSERT INTO `yisheng` VALUES (34, '2021-04-03 14:53:04', '医生4', '123456', '医生姓名4', '男', 'http://localhost:8080/springboot50460/upload/yisheng_zhaopian4.jpg', '医师', '科室4', '擅长4', '13823888884');
INSERT INTO `yisheng` VALUES (35, '2021-04-03 14:53:04', '医生5', '123456', '医生姓名5', '男', 'http://localhost:8080/springboot50460/upload/yisheng_zhaopian5.jpg', '医师', '科室5', '擅长5', '13823888885');
INSERT INTO `yisheng` VALUES (36, '2021-04-03 14:53:04', '医生6', '123456', '医生姓名6', '男', 'http://localhost:8080/springboot50460/upload/yisheng_zhaopian6.jpg', '医师', '科室6', '擅长6', '13823888886');
INSERT INTO `yisheng` VALUES (1617433233219, '2021-04-03 15:00:33', '1', '1', '张悦', '女', 'http://localhost:8080/springboot50460/upload/1617433213391.png', '副主任医师', '皮肤科', '擅长过敏性皮炎，脂溢性皮炎的诊断与治疗', '13751712312');
INSERT INTO `yisheng` VALUES (1673581004259, '2023-01-13 11:36:44', 'qqq', 'qq', 'qqq', NULL, NULL, NULL, NULL, NULL, '13512345678');
INSERT INTO `yisheng` VALUES (1674035543749, '2023-01-18 17:52:23', 'www', 'www', 'www', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `yisheng` VALUES (1677738828434, '2023-03-02 14:33:48', '4444', '444', '4444', '男', 'http://localhost:8080/springboot50460/upload/1677738821977.jpg', 'ewrw', '科室1', '<p>fdsfs</p>', NULL);
COMMIT;

-- ----------------------------
-- Table structure for yonghu
-- ----------------------------
DROP TABLE IF EXISTS `yonghu`;
CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuming` varchar(200) NOT NULL COMMENT '用户名',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuming` (`yonghuming`)
) ENGINE=InnoDB AUTO_INCREMENT=1677738710960 DEFAULT CHARSET=utf8 COMMENT='用户';

-- ----------------------------
-- Records of yonghu
-- ----------------------------
BEGIN;
INSERT INTO `yonghu` VALUES (11, '2021-04-03 14:53:04', '用户1', '123456', '姓名1', 'http://localhost:8080/springboot50460/upload/yonghu_touxiang1.jpg', '男', '13823888881', '440300199101010001');
INSERT INTO `yonghu` VALUES (12, '2021-04-03 14:53:04', '用户2', '123456', '姓名2', 'http://localhost:8080/springboot50460/upload/yonghu_touxiang2.jpg', '男', '13823888882', '440300199202020002');
INSERT INTO `yonghu` VALUES (13, '2021-04-03 14:53:04', '用户3', '123456', '姓名3', 'http://localhost:8080/springboot50460/upload/yonghu_touxiang3.jpg', '男', '13823888883', '440300199303030003');
INSERT INTO `yonghu` VALUES (14, '2021-04-03 14:53:04', '用户4', '123456', '姓名4', 'http://localhost:8080/springboot50460/upload/yonghu_touxiang4.jpg', '男', '13823888884', '440300199404040004');
INSERT INTO `yonghu` VALUES (15, '2021-04-03 14:53:04', '用户5', '123456', '姓名5', 'http://localhost:8080/springboot50460/upload/yonghu_touxiang5.jpg', '男', '13823888885', '440300199505050005');
INSERT INTO `yonghu` VALUES (16, '2021-04-03 14:53:04', '用户6', '123456', '姓名6', 'http://localhost:8080/springboot50460/upload/yonghu_touxiang6.jpg', '男', '13823888886', '440300199606060006');
INSERT INTO `yonghu` VALUES (1617433354434, '2021-04-03 15:02:34', '2', '2', '陈一', 'http://localhost:8080/springboot50460/upload/1617433369084.jpg', '女', '12345678978', '123456789789456123');
INSERT INTO `yonghu` VALUES (1673581087528, '2023-01-13 11:38:07', 'ee', 'ee', 'ee', NULL, NULL, '', '');
INSERT INTO `yonghu` VALUES (1673592082912, '2023-01-13 14:41:22', 'qqq', 'qqq', 'qqq', 'http://localhost:8080/springboot50460/upload/1673592073272.jpg', '女', '', '');
INSERT INTO `yonghu` VALUES (1674032783180, '2023-01-18 17:06:23', 'liang', 'liang', 'liang', 'http://localhost:8080/springboot50460/upload/1674097654967.jpg', '', '', '');
INSERT INTO `yonghu` VALUES (1677738710959, '2023-03-02 14:31:50', '33', '33', '33', NULL, NULL, NULL, NULL);
COMMIT;

-- ----------------------------
-- Table structure for yuyueguahao
-- ----------------------------
DROP TABLE IF EXISTS `yuyueguahao`;
CREATE TABLE `yuyueguahao` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yishenggonghao` varchar(200) DEFAULT NULL COMMENT '医生工号',
  `yishengxingming` varchar(200) DEFAULT NULL COMMENT '医生姓名',
  `zhicheng` varchar(200) DEFAULT NULL COMMENT '职称',
  `keshi` varchar(200) DEFAULT NULL COMMENT '科室',
  `guahaofei` varchar(200) DEFAULT NULL COMMENT '挂号费',
  `chuzhenshijian` varchar(200) DEFAULT NULL COMMENT '出诊时间',
  `shijianduan` varchar(200) DEFAULT NULL COMMENT '时间段',
  `jiuzhenmiaoshu` varchar(200) DEFAULT NULL COMMENT '就诊描述',
  `riqi` date DEFAULT NULL COMMENT '日期',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1677738760877 DEFAULT CHARSET=utf8 COMMENT='预约挂号';

-- ----------------------------
-- Records of yuyueguahao
-- ----------------------------
BEGIN;
INSERT INTO `yuyueguahao` VALUES (61, '2021-04-03 14:53:04', '医生工号1', '医生姓名1', '职称1', '科室1', '1', '出诊时间1', '时间段1', '<p>就诊描述1</p>', '2021-04-03', '用户名1', '姓名1', '身份证1', '是', '<p>aaaa</p>', '已支付');
INSERT INTO `yuyueguahao` VALUES (62, '2021-04-03 14:53:04', '医生工号2', '医生姓名2', '职称2', '科室2', '挂号费2', '出诊时间2', '时间段2', '就诊描述2', '2021-04-03', '用户名2', '姓名2', '身份证2', '是', '', '未支付');
INSERT INTO `yuyueguahao` VALUES (63, '2021-04-03 14:53:04', '医生工号3', '医生姓名3', '职称3', '科室3', '挂号费3', '出诊时间3', '时间段3', '就诊描述3', '2021-04-03', '用户名3', '姓名3', '身份证3', '是', '', '未支付');
INSERT INTO `yuyueguahao` VALUES (64, '2021-04-03 14:53:04', '医生工号4', '医生姓名4', '职称4', '科室4', '挂号费4', '出诊时间4', '时间段4', '就诊描述4', '2021-04-03', '用户名4', '姓名4', '身份证4', '是', '', '未支付');
INSERT INTO `yuyueguahao` VALUES (65, '2021-04-03 14:53:04', '医生工号5', '医生姓名5', '职称5', '科室5', '挂号费5', '出诊时间5', '时间段5', '就诊描述5', '2021-04-03', '用户名5', '姓名5', '身份证5', '是', '', '未支付');
INSERT INTO `yuyueguahao` VALUES (66, '2021-04-03 14:53:04', '医生工号6', '医生姓名6', '职称6', '科室6', '挂号费6', '出诊时间6', '时间段6', '就诊描述6', '2021-04-03', '用户名6', '姓名6', '身份证6', '是', '', '未支付');
INSERT INTO `yuyueguahao` VALUES (1617433468310, '2021-04-03 15:04:28', '1', '张悦', '副主任医师', '皮肤科', '20', '2021-04-05', '9:00-10:00', '皮肤过敏', '2021-04-03', '2', '陈一', '123456789789456123', '是', 'ok', '已支付');
INSERT INTO `yuyueguahao` VALUES (1674035392761, '2023-01-18 17:49:52', '医生工号6', '医生姓名6', '职称6', '科室6', '6', '2021-04-03', '时间段1', 'qqq', '2023-01-19', 'liang', 'liang', '', '否', NULL, '未支付');
INSERT INTO `yuyueguahao` VALUES (1674097624585, '2023-01-19 11:07:04', '医生工号1', '医生姓名1', '职称1', '科室1', '1', '2021-04-03', '9:00-10:00', 'aaaaa', '2023-01-20', 'liang', 'liang', '', '否', NULL, '未支付');
INSERT INTO `yuyueguahao` VALUES (1677738760876, '2023-03-02 14:32:40', '医生工号2', '医生姓名2', '职称2', '科室2', '2', '2021-04-03', '时间段2', 'dfsf', '2023-03-08', '33', '33', NULL, '否', NULL, '未支付');
COMMIT;

-- ----------------------------
-- Table structure for yuyueshijianduan
-- ----------------------------
DROP TABLE IF EXISTS `yuyueshijianduan`;
CREATE TABLE `yuyueshijianduan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shijianduan` varchar(200) NOT NULL COMMENT '时间段',
  PRIMARY KEY (`id`),
  UNIQUE KEY `shijianduan` (`shijianduan`)
) ENGINE=InnoDB AUTO_INCREMENT=1673593480005 DEFAULT CHARSET=utf8 COMMENT='预约时间段';

-- ----------------------------
-- Records of yuyueshijianduan
-- ----------------------------
BEGIN;
INSERT INTO `yuyueshijianduan` VALUES (51, '2021-04-03 14:53:04', '时间段1');
INSERT INTO `yuyueshijianduan` VALUES (52, '2021-04-03 14:53:04', '时间段2');
INSERT INTO `yuyueshijianduan` VALUES (53, '2021-04-03 14:53:04', '时间段3');
INSERT INTO `yuyueshijianduan` VALUES (54, '2021-04-03 14:53:04', '时间段4');
INSERT INTO `yuyueshijianduan` VALUES (55, '2021-04-03 14:53:04', '时间段5');
INSERT INTO `yuyueshijianduan` VALUES (56, '2021-04-03 14:53:04', '时间段6');
INSERT INTO `yuyueshijianduan` VALUES (1617433255398, '2021-04-03 15:00:55', '9:00-10:00');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
