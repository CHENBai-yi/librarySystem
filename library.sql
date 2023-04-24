/*
 Navicat Premium Data Transfer

 Source Server         : mysql
 Source Server Type    : MySQL
 Source Server Version : 50617
 Source Host           : localhost:3306
 Source Schema         : library

 Target Server Type    : MySQL
 Target Server Version : 50617
 File Encoding         : 65001

 Date: 02/07/2020 13:22:15
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin`  (
  `admin_id` bigint(20) NOT NULL,
  `password` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `username` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`admin_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES (123456, '1234567', 'admin');

-- ----------------------------
-- Table structure for appoint
-- ----------------------------
DROP TABLE IF EXISTS `appoint`;
CREATE TABLE `appoint`  (
  `appoint_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '预约排位',
  `reader_id` bigint(20) NOT NULL COMMENT '预约人id',
  `username` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '预约人的名称',
  `location` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '预约的位置',
  `bookName` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '预约的书本名',
  `appoint_time` date NULL DEFAULT NULL COMMENT '预约时间',
  PRIMARY KEY (`appoint_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of appoint
-- ----------------------------
INSERT INTO `appoint` VALUES (3, 17034480312, '李三', '自习室:二楼02号自习室座位号:3', 'Python3智能数据分析快速入门', '2020-06-11');

-- ----------------------------
-- Table structure for appoint_info
-- ----------------------------
DROP TABLE IF EXISTS `appoint_info`;
CREATE TABLE `appoint_info`  (
  `appoint_info_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '预约信息流水号',
  `appoint_text` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '预约须知',
  `appoint_time` datetime(0) NOT NULL COMMENT '预约截至时间',
  `appoint_num` int(11) NULL DEFAULT NULL COMMENT '预约人数',
  `re_appoint_num` int(11) NULL DEFAULT NULL COMMENT '限制的预约人数',
  `appoint_ins` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '预约说明',
  `appoint_role` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '预约角色',
  `create_time` date NOT NULL COMMENT '发布时间',
  `admin_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '发布人',
  `update_time` date NULL DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`appoint_info_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of appoint_info
-- ----------------------------
INSERT INTO `appoint_info` VALUES (1, '只能预约当天入馆，每位读者每日预约上限为5次；\r\n预约成功后需在15分钟内刷卡入馆，刷卡离馆后再次入馆需要重新预约；离馆时未刷卡将无法再次预约，需先到离馆出口刷卡释放预约权限。\r\n预约成功后15分钟内未能按时刷卡入馆，则预约取消，需要重新预约。\r\n闭馆前30分钟不可预约。', '2020-06-21 00:00:00', 410, 500, ' 图书馆主页预约\r\n\r\n进入图书馆主页→快捷菜单（或服务→空间服务）→空间预约，进入南开大学图书馆IC空间预约系统，用户名/密码为：校园卡号/校园卡查询密码。查看空闲座位→选择时间→跳转个人中心预约记录，即可完成预约。\r\n\r\n\r\n1.1.4 “飞书”预约办法\r\n\r\n采用“SSO登录”认证方式，输入“nankai”，进行南开大学统一身份认证；认证成功后，打开飞书→工作台→南开微应用→图书馆预约。', '在校学生/教职工', '2020-06-18', 'admin', '2020-06-20');

-- ----------------------------
-- Table structure for book_info
-- ----------------------------
DROP TABLE IF EXISTS `book_info`;
CREATE TABLE `book_info`  (
  `book_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `author` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `publish` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `ISBN` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `introduction` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `language` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `price` decimal(10, 2) NOT NULL,
  `pub_date` date NOT NULL,
  `class_id` int(11) NULL DEFAULT NULL,
  `number` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`book_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 20 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of book_info
-- ----------------------------
INSERT INTO `book_info` VALUES (1, '大雪中的山庄', '东野圭吾 ', '北京十月文艺出版社', '9787530216835', '东野圭吾长篇小说杰作，中文简体首次出版。 一出没有剧本的舞台剧，为什么能让七个演员赌上全部人生.东野圭吾就是有这样过人的本领，能从充满悬念的案子写出荡气回肠的情感，在极其周密曲折的同时写出人性的黑暗与美丽。 一家与外界隔绝的民宿里，七个演员被要求住满四天，接受导演的考验，但不断有人失踪。难道这并非正常排练，而是有人布下陷阱要杀他们。 那时候我开始喜欢上戏剧和音乐，《大雪中的山庄》一书的灵感就来源于此。我相信这次的诡计肯定会让人大吃一惊。——东野圭吾', '中文', 35.00, '2017-06-01', 9, 1);
INSERT INTO `book_info` VALUES (2, '三生三世 十里桃花', '唐七公子 ', '沈阳出版社', '9787544138000', '三生三世，她和他，是否注定背负一段纠缠的姻缘？\r\n三生三世，她和他，是否终能互许一个生生世世的承诺？', '中文', 26.80, '2009-01-06', 7, 0);
INSERT INTO `book_info` VALUES (3, '何以笙箫默', '顾漫 ', '朝华出版社', '9787505414709', '一段年少时的爱恋，牵出一生的纠缠。大学时代的赵默笙阳光灿烂，对法学系大才子何以琛一见倾心，开朗直率的她拔足倒追，终于使才气出众的他为她停留驻足。然而，不善表达的他终于使她在一次伤心之下远走他乡……', '中文', 15.00, '2007-04-03', 7, 1);
INSERT INTO `book_info` VALUES (4, '11处特工皇妃', '潇湘冬儿', '江苏文艺出版社', '9787539943893', '《11处特工皇妃(套装上中下册)》内容简介：她是国安局军情十一处惊才绝艳的王牌军师——收集情报、策划部署、进不友好国家布置暗杀任务……她运筹帷幄之中，决胜于千里之外，堪称军情局大厦的定海神针。', '中文', 74.80, '2011-05-05', 7, 0);
INSERT INTO `book_info` VALUES (5, '人类简史', '[以色列] 尤瓦尔·赫拉利 ', '中信出版社', '9787508647357', '十万年前，地球上至少有六种不同的人\r\n但今日，世界舞台为什么只剩下了我们自己？\r\n从只能啃食虎狼吃剩的残骨的猿人，到跃居食物链顶端的智人，\r\n从雪维洞穴壁上的原始人手印，到阿姆斯壮踩上月球的脚印，\r\n从认知革命、农业革命，到科学革命、生物科技革命，\r\n我们如何登上世界舞台成为万物之灵的？\r\n从公元前1776年的《汉摩拉比法典》，到1776年的美国独立宣言，\r\n从帝国主义、资本主义，到自由主义、消费主义，\r\n从兽欲，到物欲，从兽性、人性，到神性，\r\n我们了解自己吗？我们过得更快乐吗？\r\n我们究竟希望自己得到什么、变成什么？', '英文', 68.00, '2014-11-01', 11, 1);
INSERT INTO `book_info` VALUES (6, '明朝那些事儿（1-9）', '当年明月 ', '中国海关出版社', '9787801656087', '《明朝那些事儿》讲述从1344年到1644年，明朝三百年间的历史。作品以史料为基础，以年代和具体人物为主线，运用小说的笔法，对明朝十七帝和其他王公权贵和小人物的命运进行全景展示，尤其对官场政治、战争、帝王心术着墨最多。作品也是一部明朝政治经济制度、人伦道德的演义。', '中文', 358.20, '2009-04-06', 11, 1);
INSERT INTO `book_info` VALUES (7, '经济学原理（上下）', '[美] 曼昆 ', '机械工业出版社', '9787111126768', '此《经济学原理》的第3版把较多篇幅用于应用与政策，较少篇幅用于正规的经济理论。书中主要从供给与需求、企业行为与消费者选择理论、长期经济增长与短期经济波动以及宏观经济政策等角度深入浅出地剖析了经济学家们的世界观。', '英文', 88.00, '2003-08-05', 6, 5);
INSERT INTO `book_info` VALUES (8, '方向', '马克-安托万·马修 ', '后浪丨北京联合出版公司', '9787020125265', '《方向》即便在马修的作品中也算得最独特的：不着一字，尽得风流。原作本无一字，标题只是一个→，出版时才加了个书名Sens——既可以指“方向”，也可以指“意义”。 《方向》没有“字”，但有自己的语言——请读者在尽情释放想象力和独立思考之余，破解作者的密码，听听作者对荒诞的看法。', '中文', 99.80, '2020-01-09', 9, 6);
INSERT INTO `book_info` VALUES (9, '画的秘密', '马克-安托万·马修 ', '北京联合出版公司·后浪出版公司', '9787550265608', '一本关于友情的疗伤图像小说，直击人内心最为隐秘的情感。 一部追寻艺术的纸上悬疑电影，揭示命运宇宙中奇诡的真相。 ★ 《画的秘密》荣获欧洲第二大漫画节“瑞士谢尔漫画节最佳作品奖”。 作者曾两度夺得安古兰国际漫画节重要奖项。 ★ 《画的秘密》是一部罕见的、结合了拼贴、镜像、3D等叙事手法的实验型漫画作品。作者巧妙地调度光线、纬度、时间、记忆，在一个悬念重重又温情治愈的故事中，注入了一个有关命运的哲学议题。', '中文', 60.00, '2016-01-01', 9, 7);
INSERT INTO `book_info` VALUES (10, '造彩虹的人', '东野圭吾 ', '北京十月文艺出版社', '9787530216859', '其实每个人身上都会发光，但只有纯粹渴求光芒的人才能看到。 从那一刻起，人生会发生奇妙的转折。功一高中退学后无所事事，加入暴走族消极度日；政史备战高考却无法集中精神，几近崩溃；辉美因家庭不和对生活失去勇气，决定自杀。面对糟糕的人生，他们无所适从，直到一天夜里，一道如同彩虹的光闯进视野。 凝视着那道光，原本几乎要耗尽的气力，源源不断地涌了出来。一切又开始充满希望。打起精神来，不能输。到这儿来呀，快来呀——那道光低声呼唤着。 他们追逐着呼唤，到达一座楼顶，看到一个人正用七彩绚烂的光束演奏出奇妙的旋律。 他们没想到，这一晚看到的彩虹，会让自己的人生彻底转...', '中文', 39.50, '2017-06-01', 9, 8);
INSERT INTO `book_info` VALUES (11, '控方证人', '阿加莎·克里斯蒂 ', '新星出版社', '9787513325745', '经典同名话剧六十年常演不衰； 比利•怀尔德执导同名电影，获奥斯卡金像奖六项提名！ 阿加莎对神秘事物的向往大约来自于一种女性祖先的遗传，在足不出户的生活里，生出对世界又好奇又恐惧的幻想。 ——王安忆 伦纳德•沃尔被控谋杀富婆艾米丽以图染指其巨额遗产，他却一再表明自己的无辜。伦纳德的妻子是唯一能够证明他无罪的证人，却以控方证人的身份出庭指证其确实犯有谋杀罪。伦纳德几乎陷入绝境，直到一个神秘女人的出现…… 墙上的犬形图案；召唤死亡的收音机；蓝色瓷罐的秘密；一只疯狂的灰猫……十一篇神秘的怪谈，最可怕的不是“幽灵”，而是你心中的魔鬼。', '中文', 35.00, '2017-05-01', 9, 1);
INSERT INTO `book_info` VALUES (12, '少有人走的路', 'M·斯科特·派克 ', '吉林文史出版社', '9787807023777', '这本书处处透露出沟通与理解的意味，它跨越时代限制，帮助我们探索爱的本质，引导我们过上崭新，宁静而丰富的生活；它帮助我们学习爱，也学习独立；它教诲我们成为更称职的、更有理解心的父母。归根到底，它告诉我们怎样找到真正的自我。 正如开篇所言：人生苦难重重。M·斯科特·派克让我们更加清楚：人生是一场艰辛之旅，心智成熟的旅程相当漫长。但是，他没有让我们感到恐惧，相反，他带领我们去经历一系列艰难乃至痛苦的转变，最终达到自我认知的更高境界。', '中文', 26.00, '2007-01-01', 9, 1);
INSERT INTO `book_info` VALUES (13, '追寻生命的意义', '[奥] 维克多·弗兰克 ', '新华出版社', '9787501162734', '《追寻生命的意义》是一个人面对巨大的苦难时，用来拯救自己的内在世界，同时也是一个关于每个人存在的价值和能者多劳们生存的社会所应担负职责的思考。本书对于每一个想要了解我们这个时代的人来说，都是一部必不可少的读物。这是一部令人鼓舞的杰作……他是一个不可思议的人，任何人都可以从他无比痛苦的经历中，获得拯救自己的经验……高度推荐。', '中文', 12.00, '2003-01-01', 9, 0);
INSERT INTO `book_info` VALUES (14, '秘密花园', '乔汉娜·贝斯福 ', '北京联合出版公司', '9787550252585', '欢迎来到秘密花园！ 在这个笔墨编织出的美丽世界中漫步吧 涂上你喜爱的颜色，为花园带来生机和活力 发现隐藏其中的各类小生物，与它们共舞 激活创造力，描绘那些未完成的仙踪秘境 各个年龄段的艺术家和“园丁”都可以来尝试喔！', '中文', 42.00, '2015-06-01', 9, 1);
INSERT INTO `book_info` VALUES (17, '《数据结构与算法》', '严蔚敏', ' 中国铁道出版社', ' 9787113170202', '本书是国家级双语教学示范课程《数据结构》的配套教材，根据教育部高等学校计算机科学与技术教学指导委员会制定的《高等学校计算机科学与技术专业发展战略研究报告暨专业规范》编写。全书每章均以数据的逻辑结构、存储结构和相应的算法实现为主线，并对算法的运算效率进行分析。全书分为8章，涵盖了各种常见数据结构。第1章主要介绍数据结构和算法分析的基本概念，第2～6章主要介绍典型的线性结构、树型结构和图型结构，第7～8章分别介绍查找和排序操作。\r\n　　另外，每章后面附有习题和上机实验内容，上机实验提供了完整的、可运行的程序上机实验供读者参考，以加深读者对所学知识的理解和应用。\r\n　　本书既可作为高等院校计算机及相关专业数据结构课程的教学用书，也可作为从事计算机工程与应用的广大读者的参考书。\r\n该书是国家级双语教学示范课程配套教材，以基本数据结构和算法设计策略为知识单元，系统地介绍了数据结构的知识与应用、计算机算法的设计与分析方法，主要内容包括线性表、树、图和广义表、算法设计策略以及查找与排序算法等。《数据结构与算法》注重理论与实践相结合，内容深入浅出，可以作为高等院校计算机学科相关专业的教材或参考书，同时对计算机科技工作者也有参考价值。', 'C语言', 98.00, '2020-01-11', 0, 3);
INSERT INTO `book_info` VALUES (19, 'Python3智能数据分析快速入门', '李明江 张良均 周东平 张尚佳', ' 机械工业出版社', ' 9787113170202', 'Python 是由 Guido van Rossum 在八十年代末和九十年代初，在荷兰国家数学和计算机科学研究所设计出来的。\r\n\r\nPython 本身也是由诸多其他语言发展而来的,这包括 ABC、Modula-3、C、C++、Algol-68、SmallTalk、Unix shell 和其他的脚本语言等等。\r\n\r\n像 Perl 语言一样，Python 源代码同样遵循 GPL(GNU General Public License)协议。\r\n\r\n现在 Python 是由一个核心开发团队在维护，Guido van Rossum 仍然占据着至关重要的作用，指导其进展。\r\n\r\nPython 2.7 被确定为最后一个 Python 2.x 版本，它除了支持 Python 2.x 语法外，还支持部分 Python 3.1 语法。', '中文', 94.00, '2020-01-11', 0, 1);

-- ----------------------------
-- Table structure for class_info
-- ----------------------------
DROP TABLE IF EXISTS `class_info`;
CREATE TABLE `class_info`  (
  `class_id` int(11) NOT NULL,
  `class_name` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`class_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of class_info
-- ----------------------------
INSERT INTO `class_info` VALUES (1, '马克思主义');
INSERT INTO `class_info` VALUES (2, '哲学');
INSERT INTO `class_info` VALUES (3, '社会科学总论');
INSERT INTO `class_info` VALUES (4, '政治法律');
INSERT INTO `class_info` VALUES (5, '军事');
INSERT INTO `class_info` VALUES (6, '经济');
INSERT INTO `class_info` VALUES (7, '文化');
INSERT INTO `class_info` VALUES (8, '语言');
INSERT INTO `class_info` VALUES (9, '文学');
INSERT INTO `class_info` VALUES (10, '艺术');
INSERT INTO `class_info` VALUES (11, '历史地理');
INSERT INTO `class_info` VALUES (12, '自然科学总论');
INSERT INTO `class_info` VALUES (13, ' 数理科学和化学');
INSERT INTO `class_info` VALUES (14, '天文学、地球科学');
INSERT INTO `class_info` VALUES (15, '生物科学');
INSERT INTO `class_info` VALUES (16, '医药、卫生');
INSERT INTO `class_info` VALUES (17, '农业科学');
INSERT INTO `class_info` VALUES (18, '工业技术');
INSERT INTO `class_info` VALUES (19, '交通运输');
INSERT INTO `class_info` VALUES (20, '航空、航天');
INSERT INTO `class_info` VALUES (21, '环境科学');
INSERT INTO `class_info` VALUES (22, '综合');

-- ----------------------------
-- Table structure for lend_list
-- ----------------------------
DROP TABLE IF EXISTS `lend_list`;
CREATE TABLE `lend_list`  (
  `ser_num` bigint(20) NOT NULL AUTO_INCREMENT,
  `book_id` bigint(20) NOT NULL,
  `reader_id` bigint(20) NOT NULL,
  `lend_date` date NULL DEFAULT NULL,
  `back_date` date NULL DEFAULT NULL,
  PRIMARY KEY (`ser_num`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 53 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of lend_list
-- ----------------------------
INSERT INTO `lend_list` VALUES (26, 17, 17034480312, '2020-06-03', '2020-06-03');
INSERT INTO `lend_list` VALUES (27, 17, 17034480312, '2020-06-03', '2020-06-03');
INSERT INTO `lend_list` VALUES (28, 17, 17034480312, '2020-06-03', '2020-06-03');
INSERT INTO `lend_list` VALUES (29, 17, 17034480312, '2020-06-03', '2020-06-03');
INSERT INTO `lend_list` VALUES (30, 17, 17034480312, '2020-06-03', '2020-06-03');
INSERT INTO `lend_list` VALUES (31, 17, 17034480312, '2020-06-03', '2020-06-03');
INSERT INTO `lend_list` VALUES (37, 19, 17034480312, '2020-06-03', NULL);
INSERT INTO `lend_list` VALUES (38, 8, 17034480312, '2020-06-11', '2020-06-20');
INSERT INTO `lend_list` VALUES (39, 7, 17034480312, '2020-06-11', '2020-06-20');
INSERT INTO `lend_list` VALUES (40, 10, 17034480332, '2020-06-19', '2020-06-20');
INSERT INTO `lend_list` VALUES (44, 9, 17034480842, '2020-06-20', '2020-06-20');
INSERT INTO `lend_list` VALUES (47, 8, 17034480842, '2020-06-20', '2020-06-20');
INSERT INTO `lend_list` VALUES (48, 10, 17034480842, '2020-06-20', '2020-06-20');
INSERT INTO `lend_list` VALUES (50, 2, 17034480842, '2020-06-20', NULL);
INSERT INTO `lend_list` VALUES (51, 4, 17034480842, '2020-06-20', NULL);
INSERT INTO `lend_list` VALUES (52, 3, 17034480494, '2020-06-20', '2020-06-20');

-- ----------------------------
-- Table structure for news
-- ----------------------------
DROP TABLE IF EXISTS `news`;
CREATE TABLE `news`  (
  `news_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '公告通知id',
  `news_admin` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '发布通知人',
  `news_title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '公告标题',
  `news_content` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '公告内容',
  `create_time` date NOT NULL COMMENT '发布公告的时间',
  `update_time` datetime(0) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '公告更新',
  PRIMARY KEY (`news_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of news
-- ----------------------------
INSERT INTO `news` VALUES (2, 'admin', '明天举办图书馆活动？？？？？', '明天即将举办我校2020年度，读书日活动', '2020-06-04', '2020-06-04 21:51:05');
INSERT INTO `news` VALUES (3, 'admin', '明天举办图书馆活动', '家庭教育大讲堂\r\n\r\n孔子说：“不学诗无以言，不学礼无以立”\r\n\r\n何为诗？何为礼？何为家风？\r\n\r\n中国古代诗礼能够传家几千年\r\n\r\n也是传统文化能流传至今的一个重要原因\r\n\r\n就是秉承“诗礼传家”的文化理念\r\n\r\n千百年来中国传统文化以礼兴邦、以礼持家', '2020-06-04', '2020-06-18 21:39:27');
INSERT INTO `news` VALUES (4, 'admin', '关于图书座位预约事宜', '疫情防控期间，图书馆为满足本校师生教学、科研、学习的需求，并减少人员流动和聚集带来的风险，决定开馆后读者入馆需提前网上预约。预约成功后，才能刷卡入馆。\r\n\r\n预约流程如下：\r\n\r\n1.点击链接：http://libbook.shupl.edu.cn，或者扫以下二维码进入预约页面；或登陆图书馆主页--入馆预约进入。\r\n\r\n2.选择入馆日期(今天/明天)，登录预约。\r\n\r\n\r\n提示：\r\n\r\n用户名：学生为学号；教师为满十位的工号(不足十位的，前面加0)。\r\n\r\n密码：“我的图书馆”登录密码。\r\n\r\n未登录过“我的图书馆”的学生，需至图书馆主页-入馆预约-书目查询-我的图书馆，以初始密码登录后修改设置密码。学生登录初始密码为身份证后6位或身份证后8位。忘记密码请至图书馆总服台重置密码。\r\n\r\n未开通校园卡借阅功能的教师需先至图书馆总服务台开通，才能正常登录。\r\n\r\n3.登录成功后，点击“我要预约”按钮。提示预约成功后，可进入“我的中心”，在“我的入馆预约”中查看预约情况。', '2020-06-04', NULL);

-- ----------------------------
-- Table structure for reader_card
-- ----------------------------
DROP TABLE IF EXISTS `reader_card`;
CREATE TABLE `reader_card`  (
  `reader_id` bigint(20) NOT NULL,
  `username` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `password` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`reader_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of reader_card
-- ----------------------------
INSERT INTO `reader_card` VALUES (123456, '', '123456789');

-- ----------------------------
-- Table structure for reader_info
-- ----------------------------
DROP TABLE IF EXISTS `reader_info`;
CREATE TABLE `reader_info`  (
  `reader_id` bigint(20) NOT NULL,
  `name` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `sex` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `birth` date NOT NULL,
  `address` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `phone` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`reader_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for room
-- ----------------------------
DROP TABLE IF EXISTS `room`;
CREATE TABLE `room`  (
  `appoint_room_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '预约位置流水',
  `room` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '预约的教室号',
  `seat_num` int(11) NOT NULL COMMENT '座位号',
  `is_null` tinyint(1) NOT NULL COMMENT '是否被占用',
  PRIMARY KEY (`appoint_room_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of room
-- ----------------------------
INSERT INTO `room` VALUES (3, '一楼05号自习室', 50, 0);
INSERT INTO `room` VALUES (4, '一楼06号自习室', 50, 0);
INSERT INTO `room` VALUES (5, '一楼7号自习室', 50, 0);
INSERT INTO `room` VALUES (6, '一楼05号自习室', 50, 0);
INSERT INTO `room` VALUES (7, '二楼01号自习室', 50, 0);
INSERT INTO `room` VALUES (8, '二楼02号自习室', 50, 0);
INSERT INTO `room` VALUES (9, '二楼03号自习室', 50, 0);
INSERT INTO `room` VALUES (10, '二楼04号自习室', 50, 0);

SET FOREIGN_KEY_CHECKS = 1;
