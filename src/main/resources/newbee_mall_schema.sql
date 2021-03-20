

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for tb_newbee_mall_admin_user
-- ----------------------------
DROP TABLE IF EXISTS `tb_newbee_mall_admin_user`;
CREATE TABLE `tb_newbee_mall_admin_user`  (
  `admin_user_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '管理员id',
  `login_user_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '管理员登陆名称',
  `login_password` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '管理员登陆密码',
  `nick_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '管理员显示昵称',
  `locked` tinyint(4) NULL DEFAULT 0 COMMENT '是否锁定 0未锁定 1已锁定无法登陆',
  PRIMARY KEY (`admin_user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_newbee_mall_admin_user
-- ----------------------------
INSERT INTO `tb_newbee_mall_admin_user` VALUES (1, 'admin', 'e10adc3949ba59abbe56e057f20f883e', '十三', 0);
INSERT INTO `tb_newbee_mall_admin_user` VALUES (2, 'newbee-admin1', 'e10adc3949ba59abbe56e057f20f883e', '新蜂01', 0);
INSERT INTO `tb_newbee_mall_admin_user` VALUES (3, 'newbee-admin2', 'e10adc3949ba59abbe56e057f20f883e', '新蜂02', 0);

-- ----------------------------
-- Table structure for tb_newbee_mall_carousel
-- ----------------------------
DROP TABLE IF EXISTS `tb_newbee_mall_carousel`;
CREATE TABLE `tb_newbee_mall_carousel`  (
  `carousel_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '首页轮播图主键id',
  `carousel_url` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '轮播图',
  `redirect_url` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '\'##\'' COMMENT '点击后的跳转地址(默认不跳转)',
  `carousel_rank` int(11) NOT NULL DEFAULT 0 COMMENT '排序值(字段越大越靠前)',
  `is_deleted` tinyint(4) NOT NULL DEFAULT 0 COMMENT '删除标识字段(0-未删除 1-已删除)',
  `create_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `create_user` int(11) NOT NULL DEFAULT 0 COMMENT '创建者id',
  `update_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '修改时间',
  `update_user` int(11) NOT NULL DEFAULT 0 COMMENT '修改者id',
  PRIMARY KEY (`carousel_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_newbee_mall_carousel
-- ----------------------------
INSERT INTO `tb_newbee_mall_carousel` VALUES (2, 'https://newbee-mall.oss-cn-beijing.aliyuncs.com/images/banner1.png', 'https://juejin.im/book/5da2f9d4f265da5b81794d48/section/5da2f9d6f265da5b794f2189', 13, 0, '2019-11-29 00:00:00', 0, '2019-11-29 00:00:00', 0);
INSERT INTO `tb_newbee_mall_carousel` VALUES (5, 'https://newbee-mall.oss-cn-beijing.aliyuncs.com/images/banner2.png', 'https://juejin.im/book/5da2f9d4f265da5b81794d48/section/5da2f9d6f265da5b794f2189', 0, 0, '2019-11-29 00:00:00', 0, '2019-11-29 00:00:00', 0);

-- ----------------------------
-- Table structure for tb_newbee_mall_goods_category
-- ----------------------------
DROP TABLE IF EXISTS `tb_newbee_mall_goods_category`;
CREATE TABLE `tb_newbee_mall_goods_category`  (
  `category_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '分类id',
  `category_level` tinyint(4) NOT NULL DEFAULT 0 COMMENT '分类级别(1-一级分类 2-二级分类 3-三级分类)',
  `parent_id` bigint(20) NOT NULL DEFAULT 0 COMMENT '父分类id',
  `category_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '分类名称',
  `category_rank` int(11) NOT NULL DEFAULT 0 COMMENT '排序值(字段越大越靠前)',
  `is_deleted` tinyint(4) NOT NULL DEFAULT 0 COMMENT '删除标识字段(0-未删除 1-已删除)',
  `create_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `create_user` int(11) NOT NULL DEFAULT 0 COMMENT '创建者id',
  `update_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '修改时间',
  `update_user` int(11) NULL DEFAULT 0 COMMENT '修改者id',
  PRIMARY KEY (`category_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 107 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_newbee_mall_goods_category
-- ----------------------------
INSERT INTO `tb_newbee_mall_goods_category` (`category_id`, `category_level`, `parent_id`, `category_name`, `category_rank`, `is_deleted`, `create_time`, `create_user`, `update_time`, `update_user`)
VALUES
	(112, 1, 0, '教材', 0, 0, '2021-03-20 17:32:48', 0, '2021-03-20 17:32:48', 0),
	(113, 1, 0, '经济', 0, 0, '2021-03-20 17:32:59', 0, '2021-03-20 17:32:59', 0),
	(114, 1, 0, '考试', 0, 0, '2021-03-20 17:33:06', 0, '2021-03-20 17:33:06', 0),
	(115, 1, 0, '文学', 0, 0, '2021-03-20 17:33:14', 0, '2021-03-20 17:33:14', 0),
	(116, 1, 0, '小说', 0, 0, '2021-03-20 17:33:22', 0, '2021-03-20 17:33:22', 0),
	(117, 1, 0, '政治', 0, 0, '2021-03-20 17:33:30', 0, '2021-03-20 17:33:30', 0),
	(118, 2, 112, '小学', 0, 0, '2021-03-20 17:34:18', 0, '2021-03-20 17:34:18', 0),
	(121, 2, 112, '初中', 0, 0, '2021-03-20 17:40:41', 0, '2021-03-20 17:40:41', 0),
	(122, 2, 112, '高中', 0, 0, '2021-03-20 17:40:49', 0, '2021-03-20 17:40:49', 0),
	(123, 2, 112, '大学', 0, 0, '2021-03-20 17:40:54', 0, '2021-03-20 17:40:54', 0),
	(124, 2, 112, '研究生', 0, 0, '2021-03-20 17:41:02', 0, '2021-03-20 17:41:02', 0),
	(125, 2, 113, '国内', 0, 0, '2021-03-20 17:35:57', 0, '2021-03-20 17:35:57', 0),
	(126, 2, 113, '国外', 0, 0, '2021-03-20 17:41:57', 0, '2021-03-20 17:41:57', 0),
	(127, 2, 114, '国家考试', 0, 0, '2021-03-20 17:42:29', 0, '2021-03-20 17:42:29', 0),
	(128, 2, 114, '学校考试资料', 0, 0, '2021-03-20 17:42:39', 0, '2021-03-20 17:42:39', 0),
	(130, 2, 115, '情感', 0, 0, '2021-03-20 17:43:21', 0, '2021-03-20 17:43:21', 0),
	(131, 2, 115, '史籍', 0, 0, '2021-03-20 17:43:41', 0, '2021-03-20 17:43:41', 0),
	(132, 2, 115, '诗歌', 0, 0, '2021-03-20 17:43:49', 0, '2021-03-20 17:43:49', 0),
	(133, 2, 116, '悬疑', 0, 0, '2021-03-20 17:43:59', 0, '2021-03-20 17:43:59', 0),
	(134, 2, 116, '科幻', 0, 0, '2021-03-20 17:44:05', 0, '2021-03-20 17:44:05', 0),
	(135, 2, 116, '恐怖', 0, 0, '2021-03-20 17:44:13', 0, '2021-03-20 17:44:13', 0),
	(136, 2, 116, '武侠', 0, 0, '2021-03-20 17:44:20', 0, '2021-03-20 17:44:20', 0),
	(137, 2, 117, '红色系列', 0, 0, '2021-03-20 17:44:35', 0, '2021-03-20 17:44:35', 0),
	(138, 2, 117, '教育系列', 0, 0, '2021-03-20 17:44:42', 0, '2021-03-20 17:44:42', 0),
	(139, 3, 118, '语文', 0, 0, '2021-03-20 17:44:53', 0, '2021-03-20 17:44:53', 0),
	(140, 3, 118, '数学', 0, 0, '2021-03-20 17:45:23', 0, '2021-03-20 17:45:23', 0),
	(141, 3, 118, '其他', 0, 0, '2021-03-20 17:45:34', 0, '2021-03-20 17:45:34', 0),
	(142, 3, 121, '数学', 0, 0, '2021-03-20 17:45:39', 0, '2021-03-20 17:45:39', 0),
	(143, 3, 121, '语文', 0, 0, '2021-03-20 17:46:03', 0, '2021-03-20 17:46:03', 0),
	(144, 3, 121, '英语', 0, 0, '2021-03-20 17:46:10', 0, '2021-03-20 17:46:10', 0),
	(145, 3, 121, '初中物理', 0, 0, '2021-03-20 17:46:18', 0, '2021-03-20 17:46:18', 0),
	(146, 3, 122, '英语', 0, 0, '2021-03-20 17:46:28', 0, '2021-03-20 17:46:28', 0),
	(147, 3, 122, '化学', 0, 0, '2021-03-20 17:46:38', 0, '2021-03-20 17:46:38', 0),
	(148, 3, 122, '生物', 0, 0, '2021-03-20 17:46:44', 0, '2021-03-20 17:46:44', 0),
	(149, 3, 122, '政治', 0, 0, '2021-03-20 17:46:56', 0, '2021-03-20 17:46:56', 0),
	(150, 3, 123, '解剖学', 0, 0, '2021-03-20 17:47:09', 0, '2021-03-20 17:47:09', 0),
	(151, 3, 123, '高等数学', 0, 0, '2021-03-20 17:47:15', 0, '2021-03-20 17:47:15', 0),
	(152, 3, 123, '中国茶文化', 0, 0, '2021-03-20 17:47:24', 0, '2021-03-20 17:47:24', 0),
	(153, 3, 124, '量子化学', 0, 0, '2021-03-20 17:47:40', 0, '2021-03-20 17:47:40', 0),
	(154, 3, 124, '物理学', 0, 0, '2021-03-20 17:47:57', 0, '2021-03-20 17:47:57', 0),
	(155, 3, 125, '薛兆丰', 0, 0, '2021-03-20 17:48:15', 0, '2021-03-20 17:48:15', 0),
	(156, 3, 125, '其他', 0, 0, '2021-03-20 17:48:21', 0, '2021-03-20 17:48:21', 0),
	(157, 3, 126, '微观经济学', 0, 0, '2021-03-20 17:48:36', 0, '2021-03-20 17:48:36', 0),
	(158, 3, 127, '英语四级', 0, 0, '2021-03-20 17:48:48', 0, '2021-03-20 17:48:48', 0),
	(159, 3, 127, '英语六级', 0, 0, '2021-03-20 17:48:55', 0, '2021-03-20 17:48:55', 0),
	(160, 3, 127, '公务员考试', 0, 0, '2021-03-20 17:49:05', 0, '2021-03-20 17:49:05', 0),
	(161, 3, 128, '考试资料', 0, 0, '2021-03-20 17:49:16', 0, '2021-03-20 17:49:16', 0),
	(162, 3, 129, '情感', 0, 0, '2021-03-20 17:49:34', 0, '2021-03-20 17:49:34', 0),
	(163, 3, 133, '盗墓笔记', 0, 0, '2021-03-20 17:50:28', 0, '2021-03-20 17:50:28', 0),
	(164, 3, 137, '习近平', 0, 0, '2021-03-20 17:50:50', 0, '2021-03-20 17:50:50', 0);
-- ----------------------------
-- Table structure for tb_newbee_mall_goods_info
-- ----------------------------
DROP TABLE IF EXISTS `tb_newbee_mall_goods_info`;
CREATE TABLE `tb_newbee_mall_goods_info`  (
  `goods_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '商品表主键id',
  `goods_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '商品名',
  `goods_intro` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '商品简介',
  `goods_category_id` bigint(20) NOT NULL DEFAULT 0 COMMENT '关联分类id',
  `goods_cover_img` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '/admin/dist/img/no-img.png' COMMENT '商品主图',
  `goods_carousel` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '/admin/dist/img/no-img.png' COMMENT '商品轮播图',
  `goods_detail_content` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '商品详情',
  `original_price` int(11) NOT NULL DEFAULT 1 COMMENT '商品价格',
  `selling_price` int(11) NOT NULL DEFAULT 1 COMMENT '商品实际售价',
  `stock_num` int(11) NOT NULL DEFAULT 0 COMMENT '商品库存数量',
  `tag` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '商品标签',
  `goods_sell_status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '商品上架状态 0-下架 1-上架',
  `create_user` int(11) NOT NULL DEFAULT 0 COMMENT '添加者主键id',
  `create_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '商品添加时间',
  `update_user` int(11) NOT NULL DEFAULT 0 COMMENT '修改者主键id',
  `update_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '商品修改时间',
  PRIMARY KEY (`goods_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10896 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_newbee_mall_goods_info
-- ----------------------------
INSERT INTO `tb_newbee_mall_goods_info` (`goods_id`, `goods_name`, `goods_intro`, `goods_category_id`, `goods_cover_img`, `goods_carousel`, `goods_detail_content`, `original_price`, `selling_price`, `stock_num`, `tag`, `goods_sell_status`, `create_user`, `create_time`, `update_user`, `update_time`)
VALUES
	(1, '基础有机化学', '北大第4版 基础有机化学 邢其毅 第四版 上下册+基础有机化学习题解析 基础有机化学教材 考研教材可搭无机化学竞赛北京大学出版社', 124, '/mall/image/goods/基础有机化学.jpg', '/mall/image/goods/基础有机化学.jpg', '', 1, 1, 0, '1', 0, 0, '2021-03-19 23:00:46', 0, '2021-03-19 23:00:46'),
	(2, '外科学', '外科学（第9版） 第九版本科西医临床教材书籍第8八版第九9版 可搭配内科学妇产科本科临床教材第八版人民卫生出版社', 123, '/mall/image/goods/外科学.jpg', '/mall/image/goods/外科学.jpg', '', 1, 1, 0, '4', 0, 0, '2021-03-19 23:20:56', 0, '2021-03-19 23:20:56'),
	(3, '电磁学', '大学物理通用教程.电磁学(第二版)', 123, '/mall/image/goods/电磁学.jpg', '/mall/image/goods/电磁学.jpg', '', 1, 1, 0, '', 0, 0, '2021-03-20 20:01:45', 0, '2021-03-20 20:01:45'),
	(4, '细胞生物学', '细胞生物学 翟中和王喜忠丁明孝 9787040321753 高等教育出版社', 123, '/mall/image/goods/细胞生物学.jpg', '/mall/image/goods/细胞生物学.jpg', '', 1, 1, 0, '', 0, 0, '2021-03-20 20:04:42', 0, '2021-03-20 20:04:42'),
	(6, '刑法学', '张明楷教授代表作，新增刑九相关内容，增删、修改与全新阐释犯罪论、法律后果论、罪刑各论等方面的诸多重大问题', 124, '/mall/image/goods/刑法学.jpg', '/mall/image/goods/刑法学.jpg', '', 1, 1, 0, '1', 0, 0, '2021-03-20 20:11:59', 0, '2021-03-20 20:11:59'),
	(7, '宏观经济学', '哈佛大学曼昆教授扛鼎之作，***受欢迎的经济学入门读物，带你迈进经济学的殿堂！', 124, '/mall/image/goods/宏观经济学.jpg', '/mall/image/goods/宏观经济学.jpg', '', 1, 1, 0, '1', 0, 0, '2021-03-20 20:11:59', 0, '2021-03-20 20:11:59'),
	(8, '货币金融学', '货币金融学（第十一版）（经济科学译丛）', 124, '/mall/image/goods/货币金融学.jpg', '/mall/image/goods/货币金融学.jpg', '', 1, 1, 0, '1', 0, 0, '2021-03-20 20:11:59', 0, '2021-03-20 20:11:59'),
	(9, '经济学原理', '经济学原理 （第7版）(套装微观经济学分册+宏观经济学分册 曼昆）', 124, '/mall/image/goods/经济学原理.jpg', '/mall/image/goods/经济学原理.jpg', '', 1, 1, 0, '1', 0, 0, '2021-03-20 20:11:59', 0, '2021-03-20 20:11:59'),
	(10, '微观经济学', '微观经济学（第九版）（经济科学译丛；“十三五”国家重点出版物出版规划项目）', 124, '/mall/image/goods/微观经济学.jpg', '/mall/image/goods/微观经济学.jpg', '', 1, 1, 0, '1', 0, 0, '2021-03-20 20:11:59', 0, '2021-03-20 20:11:59'),
	(11, '证券分析', '投资经典 巴菲特亲自作序 投资者的圣经 巴菲特灵魂导师、“华尔街教父”本杰明·格雷厄姆不朽巨著 高瓴资本创始人张磊专文推荐', 124, '/mall/image/goods/证券分析.jpg', '/mall/image/goods/证券分析.jpg', '', 1, 1, 0, '1', 0, 0, '2021-03-20 20:15:59', 0, '2021-03-20 20:15:59'),
	(12, '2020公务员教材', '国家公务员考试中公2020国家公务员录用考试专业教材套装 行政职业能力测验+申论+历年真题精解行政职业能力测验+历年真题精解申论', 124, '/mall/image/goods/2020公务员教材.jpg', '/mall/image/goods/2020公务员教材.jpg', '', 1, 1, 0, '1', 0, 0, '2021-03-20 20:15:59', 0, '2021-03-20 20:15:59'),
	(13, '国家公务员制度', '国家公务员制度（第四版）（数字教材版）（新编21世纪公共管理系列教材；“十二五”普通高等教育本科国家级规划教材）', 124, '/mall/image/goods/国家公务员制度.jpg', '/mall/image/goods/国家公务员制度.jpg', '', 1, 1, 0, '1', 0, 0, '2021-03-20 20:15:59', 0, '2021-03-20 20:15:59'),
	(14, '申论的规矩', '【正版现货】粉笔公考2021国考公务员考试教材 申论的规矩 粉笔', 124, '/mall/image/goods/申论的规矩.jpg', '/mall/image/goods/申论的规矩.jpg', '', 1, 1, 0, '1', 0, 0, '2021-03-20 20:15:59', 0, '2021-03-20 20:15:59'),
	(15, '申论范文宝典', '申论范文宝典(2020版)半月谈申论范文宝典公务员考试用书', 124, '/mall/image/goods/申论范文宝典.jpg', '/mall/image/goods/申论范文宝典.jpg', '', 1, 1, 0, '1', 0, 0, '2021-03-20 20:15:59', 0, '2021-03-20 20:15:59'),
	(16, '鲁迅全集', '鲁迅全集（全20卷，纪念鲁迅先生逝世80周年！）', 124, '/mall/image/goods/鲁迅全集.jpg', '/mall/image/goods/鲁迅全集.jpg', '', 1, 1, 0, '1', 0, 0, '2021-03-20 20:19:03', 0, '2021-03-20 20:19:03'),
	(17, '毛泽东诗词全编鉴赏', '集大成的翔实资料，全方位、多视角的权威解读，新颖精美的装帧设计，铸就了*诗词研究的上乘之作。', 124, '/mall/image/goods/毛泽东诗词全编鉴赏.jpg', '/mall/image/goods/毛泽东诗词全编鉴赏.jpg', '', 1, 1, 0, '1', 0, 0, '2021-03-20 20:19:03', 0, '2021-03-20 20:19:03'),
	(18, '宋词鉴赏辞典', '开风气之先的新型工具书，长销不衰的中国文学普及读物', 124, '/mall/image/goods/宋词鉴赏辞典.jpg', '/mall/image/goods/宋词鉴赏辞典.jpg', '', 1, 1, 0, '1', 0, 0, '2021-03-20 20:19:03', 0, '2021-03-20 20:19:03'),
	(19, '苏轼十讲', '一部内容丰富、新见迭出的“苏轼新传”', 124, '/mall/image/goods/苏轼十讲.jpg', '/mall/image/goods/苏轼十讲.jpg', '', 1, 1, 0, '1', 0, 0, '2021-03-20 20:19:03', 0, '2021-03-20 20:19:03'),
	(20, '白夜行', '东野圭吾：白夜行（易烊千玺、孟非推荐，东野圭吾作品无冕之王）', 124, '/mall/image/goods/白夜行.jpg', '/mall/image/goods/白夜行.jpg', '', 1, 1, 0, '1', 0, 0, '2021-03-20 20:19:03', 0, '2021-03-20 20:19:03'),
	(21, '平凡的世界', '平凡的世界：全三册（故事里的中国推荐，八年级下册自主阅读推荐）', 124, '/mall/image/goods/平凡的世界.jpg', '/mall/image/goods/平凡的世界.jpg', '', 1, 1, 0, '1', 0, 0, '2021-03-20 20:22:31', 0, '2021-03-20 20:22:31'),
	(22, '射雕英雄传', '金庸作品集（彩图平装旧版）金庸全集(05－08)－射雕英雄传(全四册)', 124, '/mall/image/goods/射雕英雄传.jpg', '/mall/image/goods/射雕英雄传.jpg', '', 1, 1, 0, '1', 0, 0, '2021-03-20 20:22:31', 0, '2021-03-20 20:22:31'),
	(23, '嫌疑人X的献身', '东野圭吾：嫌疑人X的献身（易烊千玺、王凯推荐，至为纯粹的爱情，绝好的诡计）', 124, '/mall/image/goods/嫌疑人X的献身.jpg', '/mall/image/goods/嫌疑人X的献身.jpg', '', 1, 1, 0, '1', 0, 0, '2021-03-20 20:22:31', 0, '2021-03-20 20:22:31'),
	(24, '邓小平时代', '（《邓小平时代》是傅高义先生在三联书店出版的图书，被评为2014年年度十大好书，完整回顾了邓小平的一生，全景式地描述了中国改革开放之路，通过一系列大事件，深入分析了邓小平个人执政风格及其开创的时代。）', 124, '/mall/image/goods/邓小平时代.jpg', '/mall/image/goods/邓小平时代.jpg', '', 1, 1, 0, '1', 0, 0, '2021-03-20 20:22:31', 0, '2021-03-20 20:22:31');

-- ----------------------------
-- Table structure for tb_newbee_mall_index_config
-- ----------------------------
DROP TABLE IF EXISTS `tb_newbee_mall_index_config`;
CREATE TABLE `tb_newbee_mall_index_config`  (
  `config_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '首页配置项主键id',
  `config_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '显示字符(配置搜索时不可为空，其他可为空)',
  `config_type` tinyint(4) NOT NULL DEFAULT 0 COMMENT '1-搜索框热搜 2-搜索下拉框热搜 3-(首页)热销商品 4-(首页)新品上线 5-(首页)为你推荐',
  `goods_id` bigint(20) NOT NULL DEFAULT 0 COMMENT '商品id 默认为0',
  `redirect_url` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '##' COMMENT '点击后的跳转地址(默认不跳转)',
  `config_rank` int(11) NOT NULL DEFAULT 0 COMMENT '排序值(字段越大越靠前)',
  `is_deleted` tinyint(4) NOT NULL DEFAULT 0 COMMENT '删除标识字段(0-未删除 1-已删除)',
  `create_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `create_user` int(11) NOT NULL DEFAULT 0 COMMENT '创建者id',
  `update_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '最新修改时间',
  `update_user` int(11) NULL DEFAULT 0 COMMENT '修改者id',
  PRIMARY KEY (`config_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 25 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_newbee_mall_index_config
-- ----------------------------
INSERT INTO `tb_newbee_mall_index_config` (`config_id`, `config_name`, `config_type`, `goods_id`, `redirect_url`, `config_rank`, `is_deleted`, `create_time`, `create_user`, `update_time`, `update_user`)
VALUES
	(25, '基础有机化学', 3, 1, '##', 0, 0, '2021-03-20 20:23:26', 0, '2021-03-20 20:23:26', 0),
	(34, '外科学', 5, 2, '##', 0, 0, '2021-03-20 20:26:35', 0, '2021-03-20 20:26:35', 0),
	(30, '电磁学', 4, 3, '##', 0, 0, '2021-03-20 20:25:10', 0, '2021-03-20 20:25:10', 0),
	(42, '刑法学', 5, 6, '##', 0, 0, '2021-03-20 20:28:35', 0, '2021-03-20 20:28:35', 0),
	(35, '宏观经济学', 5, 7, '##', 0, 0, '2021-03-20 20:26:54', 0, '2021-03-20 20:26:54', 0),
	(26, '微观经济学', 3, 10, '##', 0, 0, '2021-03-20 20:23:57', 0, '2021-03-20 20:23:57', 0),
	(36, '证券分析', 5, 11, '##', 0, 0, '2021-03-20 20:27:08', 0, '2021-03-20 20:27:08', 0),
	(27, '2020公务员教材', 3, 12, '##', 0, 0, '2021-03-20 20:24:00', 0, '2021-03-20 20:24:00', 0),
	(28, '申论范文宝典', 3, 15, '##', 0, 0, '2021-03-20 20:24:05', 0, '2021-03-20 20:24:05', 0),
	(29, '鲁迅全集', 4, 16, '##', 0, 0, '2021-03-20 20:24:44', 0, '2021-03-20 20:24:44', 0),
	(41, '毛泽东诗词全编鉴赏', 5, 17, '##', 0, 0, '2021-03-20 20:28:22', 0, '2021-03-20 20:28:22', 0),
	(40, '宋词鉴赏辞典', 5, 18, '##', 0, 0, '2021-03-20 20:27:57', 0, '2021-03-20 20:27:57', 0),
	(31, '苏轼十讲', 4, 19, '##', 0, 0, '2021-03-20 20:25:41', 0, '2021-03-20 20:25:41', 0),
	(37, '白夜行', 5, 20, '##', 0, 0, '2021-03-20 20:27:19', 0, '2021-03-20 20:27:19', 0),
	(38, '嫌疑人X的献身', 5, 23, '##', 0, 0, '2021-03-20 20:27:30', 0, '2021-03-20 20:27:30', 0),
	(32, '邓小平时代', 4, 24, '##', 0, 0, '2021-03-20 20:25:41', 0, '2021-03-20 20:25:41', 0),
	(39, '邓小平时代', 5, 24, '##', 0, 0, '2021-03-20 20:27:47', 0, '2021-03-20 20:27:47', 0),
	(33, '毛泽东选集', 5, 25, '##', 0, 0, '2021-03-20 20:26:10', 0, '2021-03-20 20:26:10', 0);

-- ----------------------------
-- Table structure for tb_newbee_mall_order
-- ----------------------------
DROP TABLE IF EXISTS `tb_newbee_mall_order`;
CREATE TABLE `tb_newbee_mall_order`  (
  `order_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '订单表主键id',
  `order_no` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '订单号',
  `user_id` bigint(20) NOT NULL DEFAULT 0 COMMENT '用户主键id',
  `total_price` int(11) NOT NULL DEFAULT 1 COMMENT '订单总价',
  `pay_status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '支付状态:0.未支付,1.支付成功,-1:支付失败',
  `pay_type` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0.无 1.支付宝支付 2.微信支付',
  `pay_time` datetime(0) NULL DEFAULT NULL COMMENT '支付时间',
  `order_status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '订单状态:0.待支付 1.已支付 2.配货完成 3:出库成功 4.交易成功 -1.手动关闭 -2.超时关闭 -3.商家关闭',
  `extra_info` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '订单body',
  `user_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '收货人姓名',
  `user_phone` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '收货人手机号',
  `user_address` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '收货人收货地址',
  `is_deleted` tinyint(4) NOT NULL DEFAULT 0 COMMENT '删除标识字段(0-未删除 1-已删除)',
  `create_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '最新修改时间',
  PRIMARY KEY (`order_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 21 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_newbee_mall_order
-- ----------------------------
INSERT INTO `tb_newbee_mall_order` VALUES (1, '15688187285093508', 1, 2492, 1, 2, '2019-09-18 23:00:18', -1, '', '', '', 'xafsdufhpwe', 0, '2019-09-18 22:53:07', '2019-09-18 22:55:32');
INSERT INTO `tb_newbee_mall_order` VALUES (2, '15688188616936181', 1, 135, 1, 1, '2019-09-18 23:01:06', 1, '', '', '', 'xafsdufhpwe', 0, '2019-09-18 22:55:20', '2019-09-18 23:01:06');
INSERT INTO `tb_newbee_mall_order` VALUES (3, '15689089426956979', 1, 15487, 1, 1, '2019-09-20 00:16:03', 3, '', '', '', '杭州市西湖区xx小区x幢419 十三 137xxxx2703', 0, '2019-09-19 23:56:40', '2019-09-20 00:10:39');
INSERT INTO `tb_newbee_mall_order` VALUES (4, '15689090398492576', 1, 8499, 0, 0, NULL, 0, '', '', '', '杭州市西湖区xx小区x幢419 十三 137xxxx2703', 0, '2019-09-19 23:58:18', '2019-09-19 23:58:18');
INSERT INTO `tb_newbee_mall_order` VALUES (5, '15689096266448452', 1, 115, 1, 2, '2019-09-20 00:13:52', 1, '', '', '', '杭州市西湖区xx小区x幢419 十三 137xxxx2703', 0, '2019-09-20 00:08:04', '2019-09-20 00:13:52');
INSERT INTO `tb_newbee_mall_order` VALUES (6, '15691645776131562', 7, 7998, 1, 1, '2019-09-22 23:05:53', 1, '', '', '', '杭州市西湖区xx小区x幢419 十三 137xxxx2703', 0, '2019-09-22 22:57:15', '2019-09-22 23:05:53');
INSERT INTO `tb_newbee_mall_order` VALUES (7, '15691648465397435', 7, 13998, 1, 2, '2019-09-22 23:07:38', -1, '', '', '', '杭州市西湖区xx小区x幢419 十三 137xxxx2703', 0, '2019-09-22 23:01:44', '2019-09-22 23:02:10');
INSERT INTO `tb_newbee_mall_order` VALUES (8, '15691649071896878', 7, 1246, 1, 1, '2019-09-22 23:08:31', 1, '', '', '', '杭州市西湖区xx小区x幢419 十三 137xxxx2703', 0, '2019-09-22 23:02:45', '2019-09-22 23:08:31');
INSERT INTO `tb_newbee_mall_order` VALUES (9, '15691649748362177', 7, 25656, 1, 1, '2019-09-22 23:09:39', 4, '', '', '', '杭州市西湖区xx小区x幢419 十三 137xxxx2703', 0, '2019-09-22 23:03:52', '2019-09-22 23:50:45');
INSERT INTO `tb_newbee_mall_order` VALUES (10, '15691652286194502', 7, 16197, 0, 0, NULL, 0, '', '', '', '杭州市西湖区xx小区x幢419 十三 137xxxx2703', 0, '2019-09-22 23:08:06', '2019-09-22 23:08:06');
INSERT INTO `tb_newbee_mall_order` VALUES (11, '15692210075967186', 6, 5999, 1, 2, '2019-09-23 17:03:05', 1, '', '', '', '杭州市西湖区xx小区x幢419 十三 137xxxx2703', 0, '2019-09-23 14:43:27', '2019-09-23 17:03:05');
INSERT INTO `tb_newbee_mall_order` VALUES (12, '15692218454123239', 6, 7245, 0, 0, NULL, 0, '', '', '', '杭州市西湖区xx小区x幢419 十三 137xxxx2703', 0, '2019-09-23 14:57:25', '2019-09-23 14:57:25');
INSERT INTO `tb_newbee_mall_order` VALUES (13, '15692225252983527', 6, 5488, 1, 2, '2019-09-23 15:38:54', 1, '', '', '', '杭州市西湖区xx小区x幢419 十三 137xxxx2703', 0, '2019-09-23 15:08:45', '2019-09-23 15:38:54');
INSERT INTO `tb_newbee_mall_order` VALUES (14, '15692291639125640', 6, 9046, 1, 2, '2019-09-23 16:59:32', -1, '', '', '', '杭州市西湖区xx小区x幢419 十三 137xxxx2709', 0, '2019-09-23 16:59:23', '2019-09-23 16:59:40');
INSERT INTO `tb_newbee_mall_order` VALUES (15, '15692295348262843', 6, 65, 1, 2, '2019-09-23 17:06:17', 1, '', '', '', '杭州市西湖区xx小区x幢419 十三 137xxxx2709', 0, '2019-09-23 17:05:34', '2019-09-23 17:06:17');
INSERT INTO `tb_newbee_mall_order` VALUES (16, '15692298037679052', 6, 15233, 1, 2, '2019-09-23 17:10:08', 1, '', '', '', '上海浦东新区XX路XX号 999 137xxxx7797', 0, '2019-09-23 17:10:03', '2019-09-23 17:10:08');
INSERT INTO `tb_newbee_mall_order` VALUES (17, '15694781962831307', 7, 1246, 1, 2, '2019-09-26 14:10:12', -1, '', '', '', '杭州市西湖区xx小区x幢419 十三 137xxxx2703', 0, '2019-09-26 14:09:56', '2019-09-26 14:10:22');
INSERT INTO `tb_newbee_mall_order` VALUES (18, '15698039249771093', 7, 3199, 0, 0, NULL, 0, '', '', '', '杭州市西湖区xx小区x幢419 十三 137xxxx2703', 0, '2019-09-30 08:38:26', '2019-09-30 08:38:26');
INSERT INTO `tb_newbee_mall_order` VALUES (19, '15702783557537865', 7, 6819, 0, 0, NULL, 0, '', '', '', '杭州市西湖区xx小区x幢419 十三 137xxxx2703', 0, '2019-10-05 20:20:10', '2019-10-05 20:20:10');
INSERT INTO `tb_newbee_mall_order` VALUES (20, '15702847670935185', 6, 3999, 1, 2, '2019-10-05 22:13:03', 1, '', '', '', '上海浦东新区XX路XX号 999 137xxxx7797', 0, '2019-10-05 22:12:47', '2019-10-05 22:13:03');

-- ----------------------------
-- Table structure for tb_newbee_mall_order_item
-- ----------------------------
DROP TABLE IF EXISTS `tb_newbee_mall_order_item`;
CREATE TABLE `tb_newbee_mall_order_item`  (
  `order_item_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '订单关联购物项主键id',
  `order_id` bigint(20) NOT NULL DEFAULT 0 COMMENT '订单主键id',
  `goods_id` bigint(20) NOT NULL DEFAULT 0 COMMENT '关联商品id',
  `goods_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '下单时商品的名称(订单快照)',
  `goods_cover_img` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '下单时商品的主图(订单快照)',
  `selling_price` int(11) NOT NULL DEFAULT 1 COMMENT '下单时商品的价格(订单快照)',
  `goods_count` int(11) NOT NULL DEFAULT 1 COMMENT '数量(订单快照)',
  `create_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`order_item_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 35 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_newbee_mall_order_item
-- ----------------------------
INSERT INTO `tb_newbee_mall_order_item` VALUES (1, 1, 10180, 'Apple AirPods 配充电盒', '/goods-img/64768a8d-0664-4b29-88c9-2626578ffbd1.jpg', 1246, 2, '2019-09-18 22:53:07');
INSERT INTO `tb_newbee_mall_order_item` VALUES (2, 2, 10147, 'MUJI 羽毛 靠垫', '/goods-img/0f701215-b782-40c7-8bbd-97b51be56461.jpg', 65, 1, '2019-09-18 22:55:20');
INSERT INTO `tb_newbee_mall_order_item` VALUES (3, 2, 10158, '无印良品 女式粗棉线条纹长袖T恤', 'http://localhost:28089/goods-img/5488564b-8335-4b0c-a5a4-52f3f03ee728.jpg', 70, 1, '2019-09-18 22:55:20');
INSERT INTO `tb_newbee_mall_order_item` VALUES (4, 3, 10742, '华为 HUAWEI P30 Pro', '/goods-img/dda1d575-cdac-4eb4-a118-3834490166f7.jpg', 5488, 1, '2019-09-19 23:56:40');
INSERT INTO `tb_newbee_mall_order_item` VALUES (5, 3, 10320, 'Apple iPhone 11 Pro', '/goods-img/0025ad55-e260-4a00-be79-fa5b8c5ac0de.jpg', 9999, 1, '2019-09-19 23:56:40');
INSERT INTO `tb_newbee_mall_order_item` VALUES (6, 4, 10254, 'Apple 2019款 MacBook Air 13.3', '/goods-img/7810bc9d-236f-4386-a0ef-45a831b49bf2.jpg', 8499, 1, '2019-09-19 23:58:18');
INSERT INTO `tb_newbee_mall_order_item` VALUES (7, 5, 10104, '无印良品 MUJI 修正带', '/goods-img/98ce17e1-890e-4eaf-856a-7fce8ffebc4c.jpg', 15, 1, '2019-09-20 00:08:04');
INSERT INTO `tb_newbee_mall_order_item` VALUES (8, 5, 10110, '无印良品 MUJI 基础润肤乳霜', '/goods-img/30036561-a150-4ea7-9106-29bbea278909.jpg', 100, 1, '2019-09-20 00:08:04');
INSERT INTO `tb_newbee_mall_order_item` VALUES (9, 6, 10895, 'HUAWEI Mate 30 4000万超感光徕卡影像', '/goods-img/mate30-3.png', 3999, 2, '2019-09-22 22:57:15');
INSERT INTO `tb_newbee_mall_order_item` VALUES (10, 7, 10895, 'HUAWEI Mate 30 4000万超感光徕卡影像', '/goods-img/mate30-3.png', 3999, 1, '2019-09-22 23:01:44');
INSERT INTO `tb_newbee_mall_order_item` VALUES (11, 7, 10320, 'Apple iPhone 11 Pro', '/goods-img/0025ad55-e260-4a00-be79-fa5b8c5ac0de.jpg', 9999, 1, '2019-09-22 23:01:44');
INSERT INTO `tb_newbee_mall_order_item` VALUES (12, 8, 10180, 'Apple AirPods 配充电盒', '/goods-img/64768a8d-0664-4b29-88c9-2626578ffbd1.jpg', 1246, 1, '2019-09-22 23:02:45');
INSERT INTO `tb_newbee_mall_order_item` VALUES (13, 9, 10237, 'MAC 雾面丝绒哑光子弹头口红', 'http://localhost:28089/goods-img/1930d79b-88bd-4c5c-8510-0697c9ad2578.jpg', 165, 4, '2019-09-22 23:03:52');
INSERT INTO `tb_newbee_mall_order_item` VALUES (14, 9, 10254, 'Apple 2019款 MacBook Air 13.3', '/goods-img/7810bc9d-236f-4386-a0ef-45a831b49bf2.jpg', 8499, 2, '2019-09-22 23:03:52');
INSERT INTO `tb_newbee_mall_order_item` VALUES (15, 9, 10195, '索尼 WH-1000XM3 头戴式耳机', 'http://localhost:28089/goods-img/0dc503b2-90a2-4971-9723-c085a1844b76.jpg', 2599, 1, '2019-09-22 23:03:52');
INSERT INTO `tb_newbee_mall_order_item` VALUES (16, 9, 10894, 'HUAWEI Mate 30 Pro', '/goods-img/mate30p3.png', 5399, 1, '2019-09-22 23:03:52');
INSERT INTO `tb_newbee_mall_order_item` VALUES (17, 10, 10894, 'HUAWEI Mate 30 Pro', '/goods-img/mate30p3.png', 5399, 3, '2019-09-22 23:08:06');
INSERT INTO `tb_newbee_mall_order_item` VALUES (18, 11, 10279, 'Apple iPhone 11 (A2223)', '/goods-img/a0d09f94-9c46-4ee1-aaef-dfd132e7543e.jpg', 5999, 1, '2019-09-23 14:43:27');
INSERT INTO `tb_newbee_mall_order_item` VALUES (19, 12, 10279, 'Apple iPhone 11 (A2223)', '/goods-img/a0d09f94-9c46-4ee1-aaef-dfd132e7543e.jpg', 5999, 1, '2019-09-23 14:57:26');
INSERT INTO `tb_newbee_mall_order_item` VALUES (20, 12, 10159, 'Apple AirPods 配充电盒', '/goods-img/53c9f268-7cd4-4fac-909c-2dc066625655.jpg', 1246, 1, '2019-09-23 14:57:26');
INSERT INTO `tb_newbee_mall_order_item` VALUES (21, 13, 10742, '华为 HUAWEI P30 Pro', '/goods-img/dda1d575-cdac-4eb4-a118-3834490166f7.jpg', 5488, 1, '2019-09-23 15:08:46');
INSERT INTO `tb_newbee_mall_order_item` VALUES (22, 14, 10158, '无印良品 女式粗棉线条纹长袖T恤', '/goods-img/5488564b-8335-4b0c-a5a4-52f3f03ee728.jpg', 70, 1, '2019-09-23 16:59:24');
INSERT INTO `tb_newbee_mall_order_item` VALUES (23, 14, 10704, '华为 HUAWEI P30 超感光徕卡三摄麒麟980AI...', '/goods-img/b9e6d770-06dd-40f4-9ae5-31103cec6e5f.jpg', 3988, 1, '2019-09-23 16:59:24');
INSERT INTO `tb_newbee_mall_order_item` VALUES (24, 14, 10739, '华为 HUAWEI P30 Pro', '/goods-img/65c8e729-aeca-4780-977b-4d0d39d4aa2e.jpg', 4988, 1, '2019-09-23 16:59:24');
INSERT INTO `tb_newbee_mall_order_item` VALUES (25, 15, 10147, 'MUJI 羽毛 靠垫', '/goods-img/0f701215-b782-40c7-8bbd-97b51be56461.jpg', 65, 1, '2019-09-23 17:05:34');
INSERT INTO `tb_newbee_mall_order_item` VALUES (26, 16, 10742, '华为 HUAWEI P30 Pro', '/goods-img/dda1d575-cdac-4eb4-a118-3834490166f7.jpg', 5488, 1, '2019-09-23 17:10:03');
INSERT INTO `tb_newbee_mall_order_item` VALUES (27, 16, 10159, 'Apple AirPods 配充电盒', '/goods-img/53c9f268-7cd4-4fac-909c-2dc066625655.jpg', 1246, 1, '2019-09-23 17:10:03');
INSERT INTO `tb_newbee_mall_order_item` VALUES (28, 16, 10254, 'Apple 2019款 MacBook Air 13.3', '/goods-img/7810bc9d-236f-4386-a0ef-45a831b49bf2.jpg', 8499, 1, '2019-09-23 17:10:03');
INSERT INTO `tb_newbee_mall_order_item` VALUES (29, 17, 10180, 'Apple AirPods 配充电盒', '/goods-img/64768a8d-0664-4b29-88c9-2626578ffbd1.jpg', 1246, 1, '2019-09-26 14:09:56');
INSERT INTO `tb_newbee_mall_order_item` VALUES (30, 18, 10779, '华为 HUAWEI Mate 20', '/goods-img/08f9a912-f049-4cf8-a839-115fc6582398.jpg', 3199, 1, '2019-09-30 08:38:26');
INSERT INTO `tb_newbee_mall_order_item` VALUES (31, 19, 10742, '华为 HUAWEI P30 Pro', '/goods-img/dda1d575-cdac-4eb4-a118-3834490166f7.jpg', 5488, 1, '2019-10-05 20:20:10');
INSERT INTO `tb_newbee_mall_order_item` VALUES (32, 19, 10154, '无印良品 MUJI 塑料浴室座椅', '/goods-img/15395057-94e9-4545-a8ee-8aee025f40c5.jpg', 85, 1, '2019-10-05 20:20:10');
INSERT INTO `tb_newbee_mall_order_item` VALUES (33, 19, 10159, 'Apple AirPods 配充电盒', '/goods-img/53c9f268-7cd4-4fac-909c-2dc066625655.jpg', 1246, 1, '2019-10-05 20:20:10');
INSERT INTO `tb_newbee_mall_order_item` VALUES (34, 20, 10895, 'HUAWEI Mate 30 4000万超感光徕卡影像', '/goods-img/mate30-3.png', 3999, 1, '2019-10-05 22:12:47');

-- ----------------------------
-- Table structure for tb_newbee_mall_shopping_cart_item
-- ----------------------------
DROP TABLE IF EXISTS `tb_newbee_mall_shopping_cart_item`;
CREATE TABLE `tb_newbee_mall_shopping_cart_item`  (
  `cart_item_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '购物项主键id',
  `user_id` bigint(20) NOT NULL COMMENT '用户主键id',
  `goods_id` bigint(20) NOT NULL DEFAULT 0 COMMENT '关联商品id',
  `goods_count` int(11) NOT NULL DEFAULT 1 COMMENT '数量(最大为5)',
  `is_deleted` tinyint(4) NOT NULL DEFAULT 0 COMMENT '删除标识字段(0-未删除 1-已删除)',
  `create_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '最新修改时间',
  PRIMARY KEY (`cart_item_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 69 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for tb_newbee_mall_user
-- ----------------------------
DROP TABLE IF EXISTS `tb_newbee_mall_user`;
CREATE TABLE `tb_newbee_mall_user`  (
  `user_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '用户主键id',
  `nick_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '用户昵称',
  `login_name` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '登陆名称(默认为手机号)',
  `password_md5` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT 'MD5加密后的密码',
  `introduce_sign` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '个性签名',
  `address` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '收货地址',
  `is_deleted` tinyint(4) NOT NULL DEFAULT 0 COMMENT '注销标识字段(0-正常 1-已注销)',
  `locked_flag` tinyint(4) NOT NULL DEFAULT 0 COMMENT '锁定标识字段(0-未锁定 1-已锁定)',
  `create_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '注册时间',
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_newbee_mall_user
-- ----------------------------
INSERT INTO `tb_newbee_mall_user` VALUES (1, '十三', '13700002703', 'e10adc3949ba59abbe56e057f20f883e', '我不怕千万人阻挡，只怕自己投降', '杭州市西湖区xx小区x幢419 十三 137xxxx2703', 0, 0, '2019-09-22 08:44:57');
INSERT INTO `tb_newbee_mall_user` VALUES (6, '测试用户1', '13711113333', 'dda01dc6d334badcd031102be6bee182', '测试用户1', '上海浦东新区XX路XX号 999 137xxxx7797', 0, 0, '2019-08-29 10:51:39');
INSERT INTO `tb_newbee_mall_user` VALUES (7, '测试用户2测试用户2测试用户2测试用户2', '13811113333', 'dda01dc6d334badcd031102be6bee182', '测试用户2', '杭州市西湖区xx小区x幢419 十三 137xxxx2703', 0, 0, '2019-08-29 10:55:08');
INSERT INTO `tb_newbee_mall_user` VALUES (8, '测试用户3', '13911113333', 'dda01dc6d334badcd031102be6bee182', '测试用户3', '杭州市西湖区xx小区x幢419 十三 137xxxx2703', 0, 0, '2019-08-29 10:55:16');