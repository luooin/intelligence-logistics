/*
 Navicat Premium Data Transfer

 Source Server         : 本地
 Source Server Type    : MySQL
 Source Server Version : 80028
 Source Host           : localhost:3306
 Source Schema         : intelligence_logistics

 Target Server Type    : MySQL
 Target Server Version : 80028
 File Encoding         : 65001

 Date: 01/07/2024 16:33:24
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for cangkuxinxi
-- ----------------------------
DROP TABLE IF EXISTS `cangkuxinxi`;
CREATE TABLE `cangkuxinxi`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `cangkubianhao` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '仓库编号',
  `cangkumingcheng` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '仓库名称',
  `cangkuleixing` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '仓库类型',
  `cangkuweizhi` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '仓库位置',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `cangkubianhao`(`cangkubianhao`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 57 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '仓库信息' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cangkuxinxi
-- ----------------------------
INSERT INTO `cangkuxinxi` VALUES (51, '2024-05-18 14:45:34', '1111111111', '万华仓库', '1', '长沙市岳麓区麓山南路456号');
INSERT INTO `cangkuxinxi` VALUES (52, '2024-05-18 14:45:34', '2222222222', '秋丽仓库', '2', '西安市雁塔区雁南五路789号');
INSERT INTO `cangkuxinxi` VALUES (53, '2024-05-18 14:45:34', '3333333333', '万客仓库', '3', '成都市锦江区春熙路101号');
INSERT INTO `cangkuxinxi` VALUES (54, '2024-05-18 14:45:34', '4444444444', '星辰仓库', '4', '广州市天河区珠江新城华夏路456号');
INSERT INTO `cangkuxinxi` VALUES (55, '2024-05-18 14:45:34', '5555555555', '白云仓库', '5', '上海市浦东新区张江高科技园区789号');
INSERT INTO `cangkuxinxi` VALUES (56, '2024-05-18 14:45:34', '6666666666', '吉地仓库', '6', '深圳市福田区福华路789号');

-- ----------------------------
-- Table structure for changshangxinxi
-- ----------------------------
DROP TABLE IF EXISTS `changshangxinxi`;
CREATE TABLE `changshangxinxi`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `changshangbianhao` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '厂商编号',
  `changshangmingcheng` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '厂商名称',
  `fuzeren` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '负责人',
  `lianxifangshi` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '联系方式',
  `changshangdizhi` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '厂商地址',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `changshangbianhao`(`changshangbianhao`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 27 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '厂商信息' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of changshangxinxi
-- ----------------------------
INSERT INTO `changshangxinxi` VALUES (21, '2024-05-18 14:45:34', '1', '小明制药', '小明', '13823432288', '白云大街468号B区');
INSERT INTO `changshangxinxi` VALUES (22, '2024-05-18 14:45:34', '2', '大电百货', '小李', '13848394782', '白云大街389号');
INSERT INTO `changshangxinxi` VALUES (23, '2024-05-18 14:45:34', '3', '清风纸业', '启明', '13823485963', '上港东大街269号');
INSERT INTO `changshangxinxi` VALUES (24, '2024-05-18 14:45:34', '4', '蓝天纺织', '李强', '18329483788', '上港西大街367号');
INSERT INTO `changshangxinxi` VALUES (25, '2024-05-18 14:45:34', '5', '西南商场', '大民', '18394588885', '明灯路378号');
INSERT INTO `changshangxinxi` VALUES (26, '2024-05-18 14:45:34', '6', '启迪日化', '董明', '19203888886', '白云东大街288号');

-- ----------------------------
-- Table structure for config
-- ----------------------------
DROP TABLE IF EXISTS `config`;
CREATE TABLE `config`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '配置文件' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of config
-- ----------------------------
INSERT INTO `config` VALUES (1, 'picture1', 'upload/picture1.jpg');
INSERT INTO `config` VALUES (2, 'picture2', 'upload/picture2.jpg');
INSERT INTO `config` VALUES (3, 'picture3', 'upload/picture3.jpg');

-- ----------------------------
-- Table structure for huowuchuku
-- ----------------------------
DROP TABLE IF EXISTS `huowuchuku`;
CREATE TABLE `huowuchuku`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `huowumingcheng` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '货物名称',
  `huowuleixing` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '货物类型',
  `huowutupian` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '货物图片',
  `huowuguige` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '货物规格',
  `huowushuliang` int(0) NOT NULL COMMENT '货物数量',
  `huowuxiangqing` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '货物详情',
  `cangkubianhao` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '仓库编号',
  `cangkumingcheng` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '仓库名称',
  `cangkuweizhi` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '仓库位置',
  `sijixingming` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '司机姓名',
  `sijishouji` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '司机手机',
  `shenfenzheng` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '身份证',
  `mendianbianhao` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '门店编号',
  `mendianmingcheng` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '门店名称',
  `mendiandizhi` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '门店地址',
  `zixundianhua` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '咨询电话',
  `chukushijian` datetime(0) NOT NULL COMMENT '出库时间',
  `yuangonggonghao` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '员工工号',
  `yuangongxingming` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '员工姓名',
  `chukubeizhu` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '出库备注',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1713516552706 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '货物出库' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of huowuchuku
-- ----------------------------
INSERT INTO `huowuchuku` VALUES (81, '2024-05-18 14:45:34', '牙膏', '日用品', 'upload/huowuchuku_huowutupian1.jpg', '', 5, '<p>货物详情1</p>', '仓库编号1', '仓库名称1', '仓库位置1', '储沛芹', '13823888883', '440300199303030003', '3333333333', '乐购超市', '深圳市福田区福华路789号', '13823888883', '2024-08-23 09:16:00', '2', '李四', '');
INSERT INTO `huowuchuku` VALUES (83, '2024-05-18 14:45:34', '毛巾', '日用品', 'upload/huowuchuku_huowutupian3.jpg', '', 39, '<p>货物详情3</p>', '仓库编号3', '仓库名称3', '仓库位置3', '朱从蓉', '13823888885', '440300199505050005', '3333333333', '乐购超市', '深圳市福田区福华路789号', '13823888883', '2024-05-18 14:45:00', '3', '小明', '');
INSERT INTO `huowuchuku` VALUES (84, '2024-05-18 14:45:34', '货物名称4', '货物类型4', 'upload/huowuchuku_huowutupian4.jpg', '货物规格4', 4, '<p>货物详情4</p>', '仓库编号4', '仓库名称4', '仓库位置4', '储沛芹', '13823888883', '440300199303030003', '4444444444', '快乐宠物店', '杭州市西湖区莫干山路789号', '13823888884', '2024-12-27 08:25:00', '员工工号4', '员工姓名4', '出库备注4');
INSERT INTO `huowuchuku` VALUES (85, '2024-05-18 14:45:34', '货物名称5', '货物类型5', 'upload/huowuchuku_huowutupian5.jpg', '货物规格5', 5, '<p>货物详情5</p>', '55555555', '仓库名称5', '仓库位置5', '毛慧颖', '13823273882', '440300199202020002', '2222222222', '鲜花小店', '上海市浦东新区陆家嘴环路456号', '13823888882', '2024-05-18 14:45:00', '员工工号5', '员工姓名5', '出库备注5');
INSERT INTO `huowuchuku` VALUES (1713516552705, '2024-04-19 16:49:11', '抽纸', '日用品', 'upload/huowuxinxi_huowutupian3.jpg', '', 30, '<p><span class=\"text_fofZk\" style=\"box-sizing: content-box; margin: 0px; padding: 0px; position: relative;\">抽纸又叫</span><span class=\"text_fofZk\" style=\"box-sizing: content-box; margin: 0px; padding: 0px; position: relative;\">盒抽</span><span class=\"text_fofZk\" style=\"box-sizing: content-box; margin: 0px; padding: 0px; position: relative;\">、</span><span class=\"text_fofZk\" style=\"box-sizing: content-box; margin: 0px; padding: 0px; position: relative;\"><a class=\"innerLink_QXnyA\" href=\"https://baike.baidu.com/item/%E7%BA%B8%E6%8A%BD/0?fromModule=lemma_inlink\" target=\"_blank\" style=\"box-sizing: content-box; margin: 0px; padding: 0px; color: rgb(19, 110, 194); text-decoration-line: none;\">纸抽</a></span><span class=\"text_fofZk\" style=\"box-sizing: content-box; margin: 0px; padding: 0px; position: relative;\">、</span><span class=\"text_fofZk\" style=\"box-sizing: content-box; margin: 0px; padding: 0px; position: relative;\">盒装面巾纸</span><span class=\"text_fofZk\" style=\"box-sizing: content-box; margin: 0px; padding: 0px; position: relative;\">、</span><span class=\"text_fofZk\" style=\"box-sizing: content-box; margin: 0px; padding: 0px; position: relative;\">纸巾抽</span><span class=\"text_fofZk\" style=\"box-sizing: content-box; margin: 0px; padding: 0px; position: relative;\">、</span><span class=\"text_fofZk\" style=\"box-sizing: content-box; margin: 0px; padding: 0px; position: relative;\">抽纸巾</span><span class=\"text_fofZk\" style=\"box-sizing: content-box; margin: 0px; padding: 0px; position: relative;\">等，在不同的省市，有不同的叫法，是一个集实用与美观于一体的发明。</span></p><p><span class=\"text_fofZk\" style=\"box-sizing: content-box; margin: 0px; padding: 0px; position: relative;\">人们为了不浪费造价较高的卫生纸，将其分成正方形或长方形状，互相叠放，然后放入有小口的纸盒子里，每次可以从小口中抽出一张就会带出另一张，抽纸因此得名。</span></p><p><span class=\"text_fofZk\" style=\"box-sizing: content-box; margin: 0px; padding: 0px; position: relative;\">从2005年开始抽纸开始出现专用的盒子，并且制作都很精美，形状也很漂亮。盒子的材质主要有白卡纸、白板纸、</span><span class=\"text_fofZk\" style=\"box-sizing: content-box; margin: 0px; padding: 0px; position: relative;\"><a class=\"innerLink_QXnyA\" href=\"https://baike.baidu.com/item/%E5%A1%91%E6%96%99/0?fromModule=lemma_inlink\" target=\"_blank\" style=\"box-sizing: content-box; margin: 0px; padding: 0px; color: rgb(19, 110, 194); text-decoration-line: none;\">塑料</a></span><span class=\"text_fofZk\" style=\"box-sizing: content-box; margin: 0px; padding: 0px; position: relative;\">、木头、竹条等等。而且将一盒设计精美的抽纸盒放在家中也是很好的一个装饰。</span></p><p><span class=\"text_fofZk\" style=\"box-sizing: content-box; margin: 0px; padding: 0px; position: relative;\">而抽纸也成为一种新的广告形式，成为广大商户的喜爱！适合餐饮业、娱乐业、</span><span class=\"text_fofZk\" style=\"box-sizing: content-box; margin: 0px; padding: 0px; position: relative;\"><a class=\"innerLink_QXnyA\" href=\"https://baike.baidu.com/item/%E4%BF%9D%E9%99%A9%E4%B8%9A/0?fromModule=lemma_inlink\" target=\"_blank\" style=\"box-sizing: content-box; margin: 0px; padding: 0px; color: rgb(19, 110, 194); text-decoration-line: none;\">保险业</a></span><span class=\"text_fofZk\" style=\"box-sizing: content-box; margin: 0px; padding: 0px; position: relative;\">、汽车业、酒水业、教育行业等多种行业的赠品及促销品，它包装精美，用途广泛，所以在车内、办公桌上、家居卧室、酒店客房等随处可见。纸抽还可以有利于提升企业品牌形象，方便客户记住企业电话，从而提高企业营业额。</span></p><p><span class=\"text_fofZk\" style=\"box-sizing: content-box; margin: 0px; padding: 0px; position: relative;\">抽纸所采用材料一般为100%纯木浆，不添加任何化学漂白剂，纸的形状一般为方形对折，抽第一张后带出第二张。</span></p><p><br/></p>', '5555555555', '仓库名称5', '仓库位置5', '毛慧颖', '13823273882', '440300199202020002', '2222222222', '鲜花小店', '上海市浦东新区陆家嘴环路456号', '13823888882', '2024-02-13 05:13:00', '1', '张三', '');

-- ----------------------------
-- Table structure for huowuruku
-- ----------------------------
DROP TABLE IF EXISTS `huowuruku`;
CREATE TABLE `huowuruku`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `huowumingcheng` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '货物名称',
  `huowuleixing` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '货物类型',
  `huowutupian` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '货物图片',
  `huowuguige` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '货物规格',
  `huowushuliang` int(0) NOT NULL COMMENT '货物数量',
  `huowuxiangqing` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '货物详情',
  `cangkubianhao` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '仓库编号',
  `cangkumingcheng` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '仓库名称',
  `cangkuweizhi` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '仓库位置',
  `changshangbianhao` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '厂商编号',
  `changshangmingcheng` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '厂商名称',
  `fuzeren` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '负责人',
  `changshangdizhi` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '厂商地址',
  `lianxifangshi` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '联系方式',
  `rukushijian` datetime(0) NOT NULL COMMENT '入库时间',
  `yuangonggonghao` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '员工工号',
  `yuangongxingming` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '员工姓名',
  `rukubeizhu` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '入库备注',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1713450080562 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '货物入库' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of huowuruku
-- ----------------------------
INSERT INTO `huowuruku` VALUES (71, '2024-05-18 14:45:34', '抽纸', '日用品', 'upload/huowuruku_huowutupian1.jpg', '', 10, '<p>货物详情1</p>', '仓库编号1', '仓库名称1', '仓库位置1', '2', '大电百货', '小李', '白云大街389号', '13848394782', '2019-07-23 02:29:00', '1', '张三', '');
INSERT INTO `huowuruku` VALUES (72, '2024-05-18 14:45:34', '球拍', '运动品', 'upload/1713506811444.jpg', '', 20, '<p><span class=\"text_fofZk\" style=\"box-sizing: content-box; margin: 0px; padding: 0px; position: relative; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; font-size: 14px; text-indent: 28px; text-wrap: wrap; background-color: rgb(255, 255, 255);\">羽毛球拍一般由拍头、拍杆、拍柄及拍框与拍杆的接头构成。一支球拍的长度不超过68厘米，其中球拍柄与球拍杆长度不超过42厘米，拍框长度不超过25厘米，宽为20厘米，随着科学技术的发展，球拍的发展向着重量越来越轻、拍框越来越硬、拍杆弹性越来越好、</span><span class=\"text_fofZk\" style=\"box-sizing: content-box; margin: 0px; padding: 0px; position: relative; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; font-size: 14px; text-indent: 28px; text-wrap: wrap; background-color: rgb(255, 255, 255);\"><a class=\"innerLink_QXnyA\" href=\"https://baike.baidu.com/item/%E7%A9%BA%E6%B0%94%E9%98%BB%E5%8A%9B/1245819?fromModule=lemma_inlink\" target=\"_blank\" style=\"box-sizing: content-box; margin: 0px; padding: 0px; color: rgb(19, 110, 194); text-decoration-line: none;\">空气阻力</a></span><span class=\"text_fofZk\" style=\"box-sizing: content-box; margin: 0px; padding: 0px; position: relative; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; font-size: 14px; text-indent: 28px; text-wrap: wrap; background-color: rgb(255, 255, 255);\">越来越小的方向发展。</span></p>', '仓库编号2', '仓库名称2', '仓库位置2', '5', '西南商场', '大民', '明灯路378号', '18394588885', '2024-01-04 05:16:00', '2', '李四', '');
INSERT INTO `huowuruku` VALUES (73, '2024-05-18 14:45:34', '垃圾袋', '日用品', 'upload/huowuruku_huowutupian3.jpg', '', 30, '<p>货物详情3</p>', '仓库编号3', '仓库名称3', '仓库位置3', '5', '西南商场', '大民', '明灯路378号', '18394588885', '2024-01-12 14:18:00', '员工工号3', '小明', '');
INSERT INTO `huowuruku` VALUES (1713450080561, '2024-04-18 22:21:20', '医用棉签', '医疗用品', 'upload/huowuxinxi_huowutupian2.jpg', '', 55, '<p><span style=\"color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; font-size: 14px; text-indent: 28px; text-wrap: wrap; background-color: rgb(255, 255, 255);\">医用棉签一般直接接触患者伤口，对灭菌环节方面要求比较高。另外就是针对制作棉签的脱脂棉原材料的选择，必须选用符合国家标准、行业标准要求的原材料</span><span style=\"color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; font-size: 14px; text-indent: 28px; text-wrap: wrap; background-color: rgb(255, 255, 255);\">。</span></p>', '3333333333', '仓库名称3', '仓库位置3', '1', '小明制药', '小明', '白云大街468号B区', '13823432288', '2024-04-09 14:08:00', '1', '张三', '');

-- ----------------------------
-- Table structure for huowuxinxi
-- ----------------------------
DROP TABLE IF EXISTS `huowuxinxi`;
CREATE TABLE `huowuxinxi`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `huowumingcheng` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '货物名称',
  `huowuleixing` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '货物类型',
  `huowutupian` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '货物图片',
  `huowuguige` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '货物规格',
  `huowushuliang` int(0) NOT NULL COMMENT '货物数量',
  `huowuxiangqing` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '货物详情',
  `youxiaoqizhi` date NOT NULL COMMENT '有效期至',
  `cangkubianhao` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '仓库编号',
  `cangkumingcheng` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '仓库名称',
  `cangkuweizhi` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '仓库位置',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 67 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '货物信息' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of huowuxinxi
-- ----------------------------
INSERT INTO `huowuxinxi` VALUES (62, '2024-05-18 14:45:34', '医用棉签', '日用品', 'upload/huowuxinxi_huowutupian2.jpg', '', 110, '<p><span style=\"color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; font-size: 14px; text-indent: 28px; text-wrap: wrap; background-color: rgb(255, 255, 255);\">医用棉签一般直接接触患者伤口，对灭菌环节方面要求比较高。另外就是针对制作棉签的脱脂棉原材料的选择，必须选用符合国家标准、行业标准要求的原材料</span><span style=\"color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; font-size: 14px; text-indent: 28px; text-wrap: wrap; background-color: rgb(255, 255, 255);\">。</span></p>', '2030-06-17', '3333333333', '仓库名称3', '仓库位置3');
INSERT INTO `huowuxinxi` VALUES (63, '2024-05-18 14:45:34', '抽纸', '日用品', 'upload/huowuxinxi_huowutupian3.jpg', '', 100, '<p><span class=\"text_fofZk\" style=\"box-sizing: content-box; margin: 0px; padding: 0px; position: relative;\">抽纸又叫</span><span class=\"text_fofZk\" style=\"box-sizing: content-box; margin: 0px; padding: 0px; position: relative;\">盒抽</span><span class=\"text_fofZk\" style=\"box-sizing: content-box; margin: 0px; padding: 0px; position: relative;\">、</span><span class=\"text_fofZk\" style=\"box-sizing: content-box; margin: 0px; padding: 0px; position: relative;\"><a class=\"innerLink_QXnyA\" href=\"https://baike.baidu.com/item/%E7%BA%B8%E6%8A%BD/0?fromModule=lemma_inlink\" target=\"_blank\" style=\"box-sizing: content-box; margin: 0px; padding: 0px; color: rgb(19, 110, 194); text-decoration-line: none;\">纸抽</a></span><span class=\"text_fofZk\" style=\"box-sizing: content-box; margin: 0px; padding: 0px; position: relative;\">、</span><span class=\"text_fofZk\" style=\"box-sizing: content-box; margin: 0px; padding: 0px; position: relative;\">盒装面巾纸</span><span class=\"text_fofZk\" style=\"box-sizing: content-box; margin: 0px; padding: 0px; position: relative;\">、</span><span class=\"text_fofZk\" style=\"box-sizing: content-box; margin: 0px; padding: 0px; position: relative;\">纸巾抽</span><span class=\"text_fofZk\" style=\"box-sizing: content-box; margin: 0px; padding: 0px; position: relative;\">、</span><span class=\"text_fofZk\" style=\"box-sizing: content-box; margin: 0px; padding: 0px; position: relative;\">抽纸巾</span><span class=\"text_fofZk\" style=\"box-sizing: content-box; margin: 0px; padding: 0px; position: relative;\">等，在不同的省市，有不同的叫法，是一个集实用与美观于一体的发明。</span></p><p><span class=\"text_fofZk\" style=\"box-sizing: content-box; margin: 0px; padding: 0px; position: relative;\">人们为了不浪费造价较高的卫生纸，将其分成正方形或长方形状，互相叠放，然后放入有小口的纸盒子里，每次可以从小口中抽出一张就会带出另一张，抽纸因此得名。</span></p><p><span class=\"text_fofZk\" style=\"box-sizing: content-box; margin: 0px; padding: 0px; position: relative;\">从2005年开始抽纸开始出现专用的盒子，并且制作都很精美，形状也很漂亮。盒子的材质主要有白卡纸、白板纸、</span><span class=\"text_fofZk\" style=\"box-sizing: content-box; margin: 0px; padding: 0px; position: relative;\"><a class=\"innerLink_QXnyA\" href=\"https://baike.baidu.com/item/%E5%A1%91%E6%96%99/0?fromModule=lemma_inlink\" target=\"_blank\" style=\"box-sizing: content-box; margin: 0px; padding: 0px; color: rgb(19, 110, 194); text-decoration-line: none;\">塑料</a></span><span class=\"text_fofZk\" style=\"box-sizing: content-box; margin: 0px; padding: 0px; position: relative;\">、木头、竹条等等。而且将一盒设计精美的抽纸盒放在家中也是很好的一个装饰。</span></p><p><span class=\"text_fofZk\" style=\"box-sizing: content-box; margin: 0px; padding: 0px; position: relative;\">而抽纸也成为一种新的广告形式，成为广大商户的喜爱！适合餐饮业、娱乐业、</span><span class=\"text_fofZk\" style=\"box-sizing: content-box; margin: 0px; padding: 0px; position: relative;\"><a class=\"innerLink_QXnyA\" href=\"https://baike.baidu.com/item/%E4%BF%9D%E9%99%A9%E4%B8%9A/0?fromModule=lemma_inlink\" target=\"_blank\" style=\"box-sizing: content-box; margin: 0px; padding: 0px; color: rgb(19, 110, 194); text-decoration-line: none;\">保险业</a></span><span class=\"text_fofZk\" style=\"box-sizing: content-box; margin: 0px; padding: 0px; position: relative;\">、汽车业、酒水业、教育行业等多种行业的赠品及促销品，它包装精美，用途广泛，所以在车内、办公桌上、家居卧室、酒店客房等随处可见。纸抽还可以有利于提升企业品牌形象，方便客户记住企业电话，从而提高企业营业额。</span></p><p><span class=\"text_fofZk\" style=\"box-sizing: content-box; margin: 0px; padding: 0px; position: relative;\">抽纸所采用材料一般为100%纯木浆，不添加任何化学漂白剂，纸的形状一般为方形对折，抽第一张后带出第二张。</span></p><p><br/></p>', '2029-05-13', '5555555555', '仓库名称5', '仓库位置5');
INSERT INTO `huowuxinxi` VALUES (64, '2024-05-18 14:45:34', '洗发水', '日用品', 'upload/1713449802622.webp', '', 45, '<h1 style=\"font-size: 32px; font-weight: bold; border-bottom: 2px solid rgb(204, 204, 204); padding: 0px 4px 0px 0px; text-align: center; margin: 0px 0px 20px;\"><span class=\"text_fofZk\" style=\"box-sizing: content-box; margin: 0px; padding: 0px; position: relative; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; font-size: 14px; text-indent: 28px; text-wrap: wrap; background-color: rgb(255, 255, 255);\">洗发水，又名香波、洗发露，是应用最为广泛的洗发用品，也是最常用的发用化妆品之一。</span><span class=\"supWrap_by0iz J-supWrap\" style=\"box-sizing: content-box; margin: 0px; padding: 0px; cursor: pointer; display: inline; position: relative; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; font-size: 14px; text-indent: 28px; text-wrap: wrap; background-color: rgb(255, 255, 255);\"><span style=\"box-sizing: content-box; margin: 0px 0px 0px 2px; padding: 0px 2px; color: rgb(51, 102, 204); cursor: pointer; position: relative; top: -0.5em; vertical-align: baseline; text-wrap: nowrap;\">&nbsp;[1]<em style=\"box-sizing: content-box; margin: 0px; padding: 0px; font-size: 0px; line-height: 0; position: relative; top: -100px;\"></em></span></span><span class=\"text_fofZk\" style=\"box-sizing: content-box; margin: 0px; padding: 0px; position: relative; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; font-size: 14px; text-indent: 28px; text-wrap: wrap; background-color: rgb(255, 255, 255);\">用于洗净附着在头皮和头发上的人体分泌的油脂，汗垢，头皮上脱落的细胞以及外来的灰尘、微生物、定型产品的残留物和不良气味等，保持头皮和头发清洁及头发美观。</span></h1>', '2025-06-15', '1111111111', '仓库名称1', '仓库位置1');
INSERT INTO `huowuxinxi` VALUES (65, '2024-05-18 14:45:34', '垃圾袋', '日用品', 'upload/huowuxinxi_huowutupian5.jpg', '', 100, '<p><span class=\"text_fofZk\" style=\"box-sizing: content-box; margin: 0px; padding: 0px; position: relative; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; font-size: 14px; text-indent: 28px; text-wrap: wrap; background-color: rgb(255, 255, 255);\">垃圾袋，顾名思义是装垃圾的袋子，小小一个袋子，却给千家万户带来不小的方便，更是为环境保护提供了重要的</span><span class=\"text_fofZk\" style=\"box-sizing: content-box; margin: 0px; padding: 0px; position: relative; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; font-size: 14px; text-indent: 28px; text-wrap: wrap; background-color: rgb(255, 255, 255);\"><a class=\"innerLink_QXnyA\" href=\"https://baike.baidu.com/item/%E4%BF%9D%E9%9A%9C/10877790?fromModule=lemma_inlink\" target=\"_blank\" style=\"box-sizing: content-box; margin: 0px; padding: 0px; color: rgb(19, 110, 194); text-decoration-line: none;\">保障</a></span><span class=\"text_fofZk\" style=\"box-sizing: content-box; margin: 0px; padding: 0px; position: relative; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; font-size: 14px; text-indent: 28px; text-wrap: wrap; background-color: rgb(255, 255, 255);\">，甚至有利于垃圾回收分类</span></p>', '2030-05-13', '5555555555', '仓库名称5', '仓库位置5');
INSERT INTO `huowuxinxi` VALUES (66, '2024-05-18 14:45:34', '碘伏', '医用品', 'upload/1713450010238.webp', '', 60, '<p><span class=\"text_fofZk\" style=\"box-sizing: content-box; margin: 0px; padding: 0px; position: relative;\">碘伏是单质碘与聚乙烯吡咯烷酮（Povidone）的不定型结合物。聚乙烯吡咯烷酮可溶解分散9%~12%的碘，此时呈现紫黑色液体。但医用碘伏通常浓度较低（1%或以下），呈现浅棕色。</span></p><p><span class=\"text_fofZk\" style=\"box-sizing: content-box; margin: 0px; padding: 0px; position: relative;\">碘伏具有广谱杀菌作用，可杀灭细菌繁殖体、真菌、原虫和部分病毒。在医疗上用作杀菌消毒剂，可用于皮肤、粘膜的消毒，也可处理烫伤、治疗滴虫性阴道炎、霉菌性阴道炎、皮肤霉菌感染等。也可用于手术前和其它皮肤的消毒、各种注射部位皮肤消毒、器械浸泡消毒以及阴道手术前消毒等。</span></p><p><br/></p>', '2025-06-08', '6666666666', '仓库名称6', '仓库位置6');

-- ----------------------------
-- Table structure for mendianxinxi
-- ----------------------------
DROP TABLE IF EXISTS `mendianxinxi`;
CREATE TABLE `mendianxinxi`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `mendianbianhao` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '门店编号',
  `mendianmingcheng` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '门店名称',
  `mendiandizhi` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '门店地址',
  `zixundianhua` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '咨询电话',
  `mendianxiangqing` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '门店详情',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `mendianbianhao`(`mendianbianhao`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 47 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '门店信息' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of mendianxinxi
-- ----------------------------
INSERT INTO `mendianxinxi` VALUES (41, '2024-05-18 14:45:34', '1111111111', '阳光超市', '北京市朝阳区朝阳路123号', '15867393388', '<h1 style=\"font-size: 32px; font-weight: bold; border-bottom: 2px solid rgb(204, 204, 204); padding: 0px 4px 0px 0px; text-align: center; margin: 0px 0px 20px;\"><br/></h1><ol style=\"margin-top: 1em; margin-bottom: 1em; padding: 0px; list-style-position: initial; list-style-image: initial; color: rgb(51, 51, 51); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, Oxygen, Ubuntu, Cantarell, &quot;Fira Sans&quot;, &quot;Droid Sans&quot;, &quot;Helvetica Neue&quot;, sans-serif; text-wrap: wrap; background-color: rgb(238, 238, 238);\" class=\" list-paddingleft-2\"><li><p style=\"margin-top: 0px; margin-bottom: 1.25em; padding: 0px; white-space-collapse: preserve;\">门店名称：阳光超市</p></li><ul style=\"list-style-type: disc;\" class=\" list-paddingleft-2\"><li><p>地址：北京市朝阳区朝阳路123号</p></li><li><p>联系电话：010-87654321</p></li><li><p>营业时间：周一至周日 8:00 - 21:00</p></li></ul></ol><h1 style=\"font-size: 32px; font-weight: bold; border-bottom: 2px solid rgb(204, 204, 204); padding: 0px 4px 0px 0px; text-align: center; margin: 0px 0px 20px;\"><br/></h1>');
INSERT INTO `mendianxinxi` VALUES (42, '2024-05-18 14:45:34', '2222222222', '鲜花小店', '上海市浦东新区陆家嘴环路456号', '13823888882', '<ol style=\"margin-top: 1em; margin-bottom: 1em; padding: 0px; list-style-position: initial; list-style-image: initial; color: rgb(51, 51, 51); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, Oxygen, Ubuntu, Cantarell, &quot;Fira Sans&quot;, &quot;Droid Sans&quot;, &quot;Helvetica Neue&quot;, sans-serif; text-wrap: wrap; background-color: rgb(238, 238, 238);\" class=\" list-paddingleft-2\"><li><p style=\"margin-top: 0px; margin-bottom: 1.25em; padding: 0px; white-space-collapse: preserve;\">门店名称：鲜花小店</p></li><ul style=\"list-style-type: disc;\" class=\" list-paddingleft-2\"><li><p>地址：上海市浦东新区陆家嘴环路456号</p></li><li><p>联系电话：021-98765432</p></li><li><p>营业时间：周一至周日 10:00 - 20:00</p></li></ul></ol>');
INSERT INTO `mendianxinxi` VALUES (43, '2024-05-18 14:45:34', '3333333333', '乐购超市', '深圳市福田区福华路789号', '13823888883', '<ol style=\"margin-top: 1em; margin-bottom: 1em; padding: 0px; list-style-position: initial; list-style-image: initial; color: rgb(51, 51, 51); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, Oxygen, Ubuntu, Cantarell, &quot;Fira Sans&quot;, &quot;Droid Sans&quot;, &quot;Helvetica Neue&quot;, sans-serif; text-wrap: wrap; background-color: rgb(238, 238, 238);\" class=\" list-paddingleft-2\"><li><p style=\"margin-top: 0px; margin-bottom: 1.25em; padding: 0px; white-space-collapse: preserve;\">门店名称：乐购超市</p></li><ul style=\"list-style-type: disc;\" class=\" list-paddingleft-2\"><li><p>地址：深圳市福田区福华路789号</p></li><li><p>联系电话：0755-13579246</p></li><li><p>营业时间：周一至周日 7:30 - 23:00</p></li></ul></ol><p><br/></p>');
INSERT INTO `mendianxinxi` VALUES (44, '2024-05-18 14:45:34', '4444444444', '快乐宠物店', '杭州市西湖区莫干山路789号', '13823888884', '<ol style=\"margin-top: 1em; margin-bottom: 1em; padding: 0px; list-style-position: initial; list-style-image: initial; color: rgb(51, 51, 51); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, Oxygen, Ubuntu, Cantarell, &quot;Fira Sans&quot;, &quot;Droid Sans&quot;, &quot;Helvetica Neue&quot;, sans-serif; text-wrap: wrap; background-color: rgb(238, 238, 238);\" class=\" list-paddingleft-2\"><li><p style=\"margin-top: 0px; margin-bottom: 1.25em; padding: 0px; white-space-collapse: preserve;\">门店名称：快乐宠物店</p></li><ul style=\"list-style-type: disc;\" class=\" list-paddingleft-2\"><li><p>地址：杭州市西湖区莫干山路789号</p></li><li><p>联系电话：0571-36925814</p></li><li><p>营业时间：周一至周日 9:30 - 20:00</p></li></ul></ol><p><br/></p>');
INSERT INTO `mendianxinxi` VALUES (45, '2024-05-18 14:45:34', '5555555555', '品味咖啡屋', '成都市武侯区人民南路789号', '13823888885', '<ol style=\"margin-top: 1em; margin-bottom: 1em; padding: 0px; list-style-position: initial; list-style-image: initial; color: rgb(51, 51, 51); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, Oxygen, Ubuntu, Cantarell, &quot;Fira Sans&quot;, &quot;Droid Sans&quot;, &quot;Helvetica Neue&quot;, sans-serif; text-wrap: wrap; background-color: rgb(238, 238, 238);\" class=\" list-paddingleft-2\"><li><p style=\"margin-top: 0px; margin-bottom: 1.25em; padding: 0px; white-space-collapse: preserve;\">门店名称：品味咖啡屋</p></li><ul style=\"list-style-type: disc;\" class=\" list-paddingleft-2\"><li><p>地址：成都市武侯区人民南路789号</p></li><li><p>联系电话：028-75395146</p></li><li><p>营业时间：周一至周日 8:00 - 22:00</p></li></ul></ol><p><br/></p>');
INSERT INTO `mendianxinxi` VALUES (46, '2024-05-18 14:45:34', '6666666666', '家居精品馆', '重庆市渝中区解放碑步行街101号', '13823888886', '<ol style=\"margin-top: 1em; margin-bottom: 1em; padding: 0px; list-style-position: initial; list-style-image: initial; color: rgb(51, 51, 51); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, Oxygen, Ubuntu, Cantarell, &quot;Fira Sans&quot;, &quot;Droid Sans&quot;, &quot;Helvetica Neue&quot;, sans-serif; text-wrap: wrap; background-color: rgb(238, 238, 238);\" class=\" list-paddingleft-2\"><li><p style=\"margin-top: 0px; margin-bottom: 1.25em; padding: 0px; white-space-collapse: preserve;\">门店名称：家居精品馆</p></li><ul style=\"list-style-type: disc;\" class=\" list-paddingleft-2\"><li><p>地址：重庆市渝中区解放碑步行街101号</p></li><li><p>联系电话：023-58476932</p></li><li><p>营业时间：周一至周日 9:00 - 21:30</p></li></ul></ol><p><br/></p>');

-- ----------------------------
-- Table structure for sijixinxi
-- ----------------------------
DROP TABLE IF EXISTS `sijixinxi`;
CREATE TABLE `sijixinxi`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `sijixingming` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '司机姓名',
  `xingbie` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '性别',
  `nianling` int(0) NULL DEFAULT NULL COMMENT '年龄',
  `jialing` int(0) NULL DEFAULT NULL COMMENT '驾龄',
  `sijishouji` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '司机手机',
  `shenfenzheng` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '身份证',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 37 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '司机信息' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sijixinxi
-- ----------------------------
INSERT INTO `sijixinxi` VALUES (31, '2024-05-18 14:45:34', '宁雨莲', '男', 38, 10, '19382788881', '440300199339423345');
INSERT INTO `sijixinxi` VALUES (32, '2024-05-18 14:45:34', '毛慧颖', '女', 29, 8, '13823273882', '440300199202020002');
INSERT INTO `sijixinxi` VALUES (33, '2024-05-18 14:45:34', '储沛芹', '女', 34, 5, '13823888883', '440300199303030003');
INSERT INTO `sijixinxi` VALUES (34, '2024-05-18 14:45:34', '杨思美', '男', 45, 13, '13823888884', '440300199404040004');
INSERT INTO `sijixinxi` VALUES (35, '2024-05-18 14:45:34', '朱从蓉', '男', 51, 15, '13823888885', '440300199505050005');
INSERT INTO `sijixinxi` VALUES (36, '2024-05-18 14:45:34', '高迎秋', '男', 55, 18, '13823888886', '440300199606060006');

-- ----------------------------
-- Table structure for token
-- ----------------------------
DROP TABLE IF EXISTS `token`;
CREATE TABLE `token`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(0) NOT NULL COMMENT '用户id',
  `username` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户名',
  `tablename` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '表名',
  `role` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '角色',
  `token` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '密码',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '新增时间',
  `expiratedtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '过期时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'token表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of token
-- ----------------------------
INSERT INTO `token` VALUES (1, 1, 'abo', 'users', '管理员', '8azr28c9xume71g0aqeriayym35v3f9t', '2024-05-18 14:47:54', '2024-07-01 09:30:51');
INSERT INTO `token` VALUES (2, 11, '1', 'yuangong', '员工', 'mk22038jy9qp68r8kbgirmpgwgk7v0oz', '2024-04-18 19:51:20', '2024-07-01 09:29:00');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户名',
  `password` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '密码',
  `role` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '新增时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, 'admin', '123456', '管理员', '2024-05-18 14:45:34');

-- ----------------------------
-- Table structure for yuangong
-- ----------------------------
DROP TABLE IF EXISTS `yuangong`;
CREATE TABLE `yuangong`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `yuangonggonghao` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '员工工号',
  `mima` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '密码',
  `yuangongxingming` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '员工姓名',
  `xingbie` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '性别',
  `bumen` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '部门',
  `zhiwei` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '职位',
  `ruzhishijian` date NULL DEFAULT NULL COMMENT '入职时间',
  `lianxifangshi` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '联系方式',
  `youxiang` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邮箱',
  `shenfenzheng` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '身份证',
  `zhaopian` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '照片',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `yuangonggonghao`(`yuangonggonghao`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '员工' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of yuangong
-- ----------------------------
INSERT INTO `yuangong` VALUES (11, '2024-05-18 14:45:34', '00001', '123456', '张三', '男', '业务部门', '经理', '2024-05-16', '13823888881', '773890001@qq.com', '440300199101010001', 'upload/yuangong_zhaopian1.jpg');
INSERT INTO `yuangong` VALUES (12, '2024-05-18 14:45:34', '00002', '123456', '李四', '女', '销售部', '订单管理员', '2023-06-04', '13823824382', '773890432132@qq.com', '440300485702020002', 'upload/yuangong_zhaopian2.jpg');
INSERT INTO `yuangong` VALUES (13, '2024-05-18 14:45:34', '00003', '123456', '小明', '男', '数据部', '数据分析师', '2024-01-11', '13823843793', '778300003@qq.com', '440300483903030003', 'upload/yuangong_zhaopian3.jpg');
INSERT INTO `yuangong` VALUES (14, '2024-05-18 14:45:34', '00004', '123456', '小廖', '男', '物流部', '物流管理员', '2024-03-24', '13823847389', '4138932004@qq.com', '440300194138989413', 'upload/yuangong_zhaopian4.jpg');
INSERT INTO `yuangong` VALUES (15, '2024-05-18 14:45:34', '00005', '123456', '小红', '女', '外联部', '订单管理员', '2019-06-26', '13824839285', '384913335@qq.com', '372844455738290013', 'upload/yuangong_zhaopian5.jpg');

SET FOREIGN_KEY_CHECKS = 1;
