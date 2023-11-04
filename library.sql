/*
 Navicat Premium Data Transfer

 Source Server         : chen_by@47.108.227.146
 Source Server Type    : MySQL
 Source Server Version : 80027
 Source Host           : 47.108.227.146:3306
 Source Schema         : library

 Target Server Type    : MySQL
 Target Server Version : 80027
 File Encoding         : 65001

 Date: 04/11/2023 11:25:05
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin`
(
    `admin_id` bigint                                                 NOT NULL,
    `password` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `username` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
    PRIMARY KEY (`admin_id`) USING BTREE
) ENGINE = InnoDB
  CHARACTER SET = utf8
  COLLATE = utf8_general_ci
  ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin`
VALUES (123, 'admin123', '管理员:狗蛋');
INSERT INTO `admin`
VALUES (123456, '123', 'admin');

-- ----------------------------
-- Table structure for appoint
-- ----------------------------
DROP TABLE IF EXISTS `appoint`;
CREATE TABLE `appoint`
(
    `appoint_id`   bigint                                                 NOT NULL AUTO_INCREMENT COMMENT '预约排位',
    `reader_id`    bigint                                                 NOT NULL COMMENT '预约人id',
    `username`     varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '预约人的名称',
    `location`     varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '预约的位置',
    `bookName`     varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '预约的书本名',
    `appoint_time` date                                                   NULL DEFAULT NULL COMMENT '预约时间',
    PRIMARY KEY (`appoint_id`) USING BTREE
) ENGINE = InnoDB
  AUTO_INCREMENT = 21
  CHARACTER SET = utf8
  COLLATE = utf8_general_ci
  ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of appoint
-- ----------------------------
INSERT INTO `appoint`
VALUES (3, 17034480312, '李三', '自习室:二楼02号自习室座位号:3', 'Python3智能数据分析快速入门', '2020-06-11');
INSERT INTO `appoint`
VALUES (15, 123456, '乱臣贼子', '自习室:一楼05号自习室座位号:1', '三生三世 十里桃花', '2023-06-12');
INSERT INTO `appoint`
VALUES (17, 1703448012, '李明', '自习室:一楼05号自习室座位号:3', '11处特工皇妃', '2023-11-02');
INSERT INTO `appoint`
VALUES (18, 17034480531, 'Reader 82', '自习室:一楼05号自习室座位号:2', '11处特工皇妃', '2023-11-02');
INSERT INTO `appoint`
VALUES (19, 17034480453, 'Reader 4', '自习室:二楼02号自习室座位号:1', '大雪中的山庄', '2023-11-03');
INSERT INTO `appoint`
VALUES (20, 17034480650, 'aaa', '自习室:一楼06号自习室座位号:2', '大雪中的山庄', '2023-11-04');

-- ----------------------------
-- Table structure for appoint_info
-- ----------------------------
DROP TABLE IF EXISTS `appoint_info`;
CREATE TABLE `appoint_info`
(
    `appoint_info_id` bigint                                                  NOT NULL AUTO_INCREMENT COMMENT '预约信息流水号',
    `appoint_text`    varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '预约须知',
    `appoint_time`    datetime                                                NOT NULL COMMENT '预约截至时间',
    `appoint_num`     int                                                     NULL DEFAULT NULL COMMENT '预约人数',
    `re_appoint_num`  int                                                     NULL DEFAULT NULL COMMENT '限制的预约人数',
    `appoint_ins`     varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '预约说明',
    `appoint_role`    varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '预约角色',
    `create_time`     date                                                    NOT NULL COMMENT '发布时间',
    `admin_name`      varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci  NOT NULL COMMENT '发布人',
    `update_time`     date                                                    NULL DEFAULT NULL COMMENT '修改时间',
    PRIMARY KEY (`appoint_info_id`) USING BTREE
) ENGINE = InnoDB
  AUTO_INCREMENT = 4
  CHARACTER SET = utf8
  COLLATE = utf8_general_ci
  ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of appoint_info
-- ----------------------------
INSERT INTO `appoint_info`
VALUES (1,
        '只能预约当天入馆，每位读者每日预约上限为5次；\r\n预约成功后需在15分钟内刷卡入馆，刷卡离馆后再次入馆需要重新预约；离馆时未刷卡将无法再次预约，需先到离馆出口刷卡释放预约权限。\r\n预约成功后15分钟内未能按时刷卡入馆，则预约取消，需要重新预约。\r\n闭馆前30分钟不可预约。',
        '2023-06-21 00:00:00', 419, 500,
        ' 图书馆主页预约\r\n\r\n进入图书馆主页→快捷菜单（或服务→空间服务）→空间预约，进入南开大学图书馆IC空间预约系统，用户名/密码为：校园卡号/校园卡查询密码。查看空闲座位→选择时间→跳转个人中心预约记录，即可完成预约。\r\n\r\n\r\n1.1.4 “飞书”预约办法\r\n\r\n采用“SSO登录”认证方式，输入“nankai”，进行南开大学统一身份认证；认证成功后，打开飞书→工作台→南开微应用→图书馆预约。',
        '在校学生/教职工', '2020-06-18', 'admin', '2023-06-21');

-- ----------------------------
-- Table structure for book_info
-- ----------------------------
DROP TABLE IF EXISTS `book_info`;
CREATE TABLE `book_info`
(
    `book_id`      bigint                                                  NOT NULL AUTO_INCREMENT,
    `name`         varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci  NOT NULL,
    `author`       varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci  NOT NULL,
    `publish`      varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci  NOT NULL,
    `ISBN`         varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci  NOT NULL,
    `introduction` text CHARACTER SET utf8 COLLATE utf8_general_ci         NULL,
    `language`     varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci   NOT NULL,
    `price`        decimal(10, 2)                                          NOT NULL,
    `pub_date`     date                                                    NOT NULL,
    `class_id`     int                                                     NULL DEFAULT NULL,
    `number`       int                                                     NULL DEFAULT NULL,
    `cover_img`    varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
    `score`        bigint                                                  NULL DEFAULT 0,
    PRIMARY KEY (`book_id`) USING BTREE,
    INDEX `name` (`name` ASC) USING BTREE
) ENGINE = InnoDB
  AUTO_INCREMENT = 24
  CHARACTER SET = utf8
  COLLATE = utf8_general_ci
  ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of book_info
-- ----------------------------
INSERT INTO `book_info`
VALUES (1, '大雪中的山庄', '东野圭吾 ', '北京  十月文艺出版社', '9787530216835',
        '东野圭吾长篇小说杰作，中文简体首次出版。 一出没有剧本的舞台剧，为什么能让七个演员赌上全部人生.东野圭吾就是有这样过人的本领，能从充满悬念的案子写出荡气回肠的情感，在极其周密曲折的同时写出人性的黑暗与美丽。 一家与外界隔绝的民宿里，七个演员被要求住满四天，接受导演的考验，但不断有人失踪。难道这并非正常排练，而是有人布下陷阱要杀他们。 那时候我开始喜欢上戏剧和音乐，《大雪中的山庄》一书的灵感就来源于此。我相信这次的诡计肯定会让人大吃一惊。——东野圭吾',
        '中文', 35.00, '2023-10-28', 9, 10, '/static/image/2b0d626860bb4790b5b6ce7b6afc2589.jpeg', 10);
INSERT INTO `book_info`
VALUES (3, '何以笙箫默', '顾漫 ', '朝华 出版社', '9787505414709',
        '一段年少时的爱恋，牵出一生的纠缠。大学时代的赵默笙阳光灿烂，对法学系大才子何以琛一见倾心，开朗直率的她拔足倒追，终于使才气出众的他为她停留驻足。然而，不善表达的他终于使她在一次伤心之下远走他乡……',
        '中文', 15.00, '2023-10-28', 7, 10, '/static/image/c5dd0df832da46e4a71282ad7481db97.jpg', 0);
INSERT INTO `book_info`
VALUES (4, '11处特工皇妃', '潇湘冬儿', '江苏 文艺出版社', '9787539943893',
        '《11处特工皇妃(套装上中下册)》内容简介：她是国安局军情十一处惊才绝艳的王牌军师——收集情报、策划部署、进不友好国家布置暗杀任务……她运筹帷幄之中，决胜于千里之外，堪称军情局大厦的定海神针。',
        '中文', 74.80, '2023-10-28', 7, 10, '/static/image/f688254bb6a649b4886005099aba8e7a.jpg', 0);
INSERT INTO `book_info`
VALUES (5, '人类简史', '[以色列] 尤瓦尔·赫拉利 ', '中信出版社', '9787508647357',
        '十万年前，地球上至少有六种不同的人但今日，世界舞台为什么只剩下了我们自己？从只能啃食虎狼吃剩的残骨的猿人，到跃居食物链顶端的智人，从雪维洞穴壁上的原始人手印，到阿姆斯壮踩上月球的脚印，从认知革命、农业革命，到科学革命、生物科技革命，我们如何登上世界舞台成为万物之灵的？从公元前1776年的《汉摩拉比法典》，到1776年的美国独立宣言，从帝国主义、资本主义，到自由主义、消费主义，从兽欲，到物欲，从兽性、人性，到神性，我们了解自己吗？我们过得更快乐吗？我们究竟希望自己得到什么、变成什么？',
        '英文', 68.00, '2023-10-28', 11, 10, '/static/image/cb0317c3f3ef4711a9ebe675084733bb.jpg', 0);
INSERT INTO `book_info`
VALUES (6, '明朝那些事儿（1-9）', '当年明月 ', '中国海关出版社', '9787801656087',
        '《明朝那些事儿》讲述从1344年到1644年，明朝三百年间的历史。作品以史料为基础，以年代和具体人物为主线，运用小说的笔法，对明朝十七帝和其他王公权贵和小人物的命运进行全景展示，尤其对官场政治、战争、帝王心术着墨最多。作品也是一部明朝政治经济制度、人伦道德的演义。',
        '中文', 358.20, '2023-10-28', 11, 10, '/static/image/082c6976045d4bdcb7ec8ed48d0004bf.jpg', 0);
INSERT INTO `book_info`
VALUES (7, '经济学原理（上下）', '[美] 曼昆 ', '机械工业出版社', '9787111126768',
        '此《经济学原理》的第3版把较多篇幅用于应用与政策，较少篇幅用于正规的经济理论。书中主要从供给与需求、企业行为与消费者选择理论、长期经济增长与短期经济波动以及宏观经济政策等角度深入浅出地剖析了经济学家们的世界观。',
        '英文', 88.00, '2023-10-27', 6, 10, '/static/image/8aa9153505794fcfaae06d527963de55.png', 0);
INSERT INTO `book_info`
VALUES (8, '方向', '马克-安托万·马修 ', '后浪丨北京联合出版公司', '9787020125265',
        '《方向》即便在马修的作品中也算得最独特的：不着一字，尽得风流。原作本无一字，标题只是一个→，出版时才加了个书名Sens——既可以指“方向”，也可以指“意义”。 《方向》没有“字”，但有自己的语言——请读者在尽情释放想象力和独立思考之余，破解作者的密码，听听作者对荒诞的看法。',
        '中文', 99.80, '2023-10-27', 9, 2, '/static/image/a341eae32fee40588aae1d7bdaba122b.jpeg', 0);
INSERT INTO `book_info`
VALUES (9, '画的秘密', '马克-安托万·马修 ', '北京联合出版公司·后浪出版公司', '9787550265608',
        '一本关于友情的疗伤图像小说，直击人内心最为隐秘的情感。 一部追寻艺术的纸上悬疑电影，揭示命运宇宙中奇诡的真相。 ★ 《画的秘密》荣获欧洲第二大漫画节“瑞士谢尔漫画节最佳作品奖”。 作者曾两度夺得安古兰国际漫画节重要奖项。 ★ 《画的秘密》是一部罕见的、结合了拼贴、镜像、3D等叙事手法的实验型漫画作品。作者巧妙地调度光线、纬度、时间、记忆，在一个悬念重重又温情治愈的故事中，注入了一个有关命运的哲学议题。',
        '中文', 60.00, '2023-10-27', 9, 10, '/static/image/364fb99ab1d7401e81064bf9a1486285.jpeg', 0);
INSERT INTO `book_info`
VALUES (10, '造彩虹的人', '东野圭吾 ', '北京十月文艺出版社', '9787530216859',
        '其实每个人身上都会发光，但只有纯粹渴求光芒的人才能看到。 从那一刻起，人生会发生奇妙的转折。功一高中退学后无所事事，加入暴走族消极度日；政史备战高考却无法集中精神，几近崩溃；辉美因家庭不和对生活失去勇气，决定自杀。面对糟糕的人生，他们无所适从，直到一天夜里，一道如同彩虹的光闯进视野。 凝视着那道光，原本几乎要耗尽的气力，源源不断地涌了出来。一切又开始充满希望。打起精神来，不能输。到这儿来呀，快来呀——那道光低声呼唤着。 他们追逐着呼唤，到达一座楼顶，看到一个人正用七彩绚烂的光束演奏出奇妙的旋律。 他们没想到，这一晚看到的彩虹，会让自己的人生彻底转...',
        '中文', 39.50, '2023-10-27', 9, 10, '/static/image/6c70874124d7473d838cbf08c01bfca2.jpeg', 0);
INSERT INTO `book_info`
VALUES (11, '控方证人', '阿加莎·克里斯蒂 ', '新星出版社', '9787513325745',
        '经典同名话剧六十年常演不衰； 比利•怀尔德执导同名电影，获奥斯卡金像奖六项提名！ 阿加莎对神秘事物的向往大约来自于一种女性祖先的遗传，在足不出户的生活里，生出对世界又好奇又恐惧的幻想。 ——王安忆 伦纳德•沃尔被控谋杀富婆艾米丽以图染指其巨额遗产，他却一再表明自己的无辜。伦纳德的妻子是唯一能够证明他无罪的证人，却以控方证人的身份出庭指证其确实犯有谋杀罪。伦纳德几乎陷入绝境，直到一个神秘女人的出现…… 墙上的犬形图案；召唤死亡的收音机；蓝色瓷罐的秘密；一只疯狂的灰猫……十一篇神秘的怪谈，最可怕的不是“幽灵”，而是你心中的魔鬼。',
        '中文', 35.00, '2023-10-27', 9, 11, '/static/image/f1ff21b8747149a183d190fce3516959.jpeg', 9);
INSERT INTO `book_info`
VALUES (12, '少有人走的路', 'M·斯科特·派克 ', '吉林文史出版社', '9787807023777',
        '这本书处处透露出沟通与理解的意味，它跨越时代限制，帮助我们探索爱的本质，引导我们过上崭新，宁静而丰富的生活；它帮助我们学习爱，也学习独立；它教诲我们成为更称职的、更有理解心的父母。归根到底，它告诉我们怎样找到真正的自我。 正如开篇所言：人生苦难重重。M·斯科特·派克让我们更加清楚：人生是一场艰辛之旅，心智成熟的旅程相当漫长。但是，他没有让我们感到恐惧，相反，他带领我们去经历一系列艰难乃至痛苦的转变，最终达到自我认知的更高境界。',
        '中文', 26.00, '2023-10-27', 9, 10, '/static/image/782ca611e2fc459796bf78769297cf65.jpeg', 0);
INSERT INTO `book_info`
VALUES (13, '追寻生命的意义', '[奥] 维克多·弗兰克 ', '新华出版社', '9787501162734',
        '《追寻生命的意义》是一个人面对巨大的苦难时，用来拯救自己的内在世界，同时也是一个关于每个人存在的价值和能者多劳们生存的社会所应担负职责的思考。本书对于每一个想要了解我们这个时代的人来说，都是一部必不可少的读物。这是一部令人鼓舞的杰作……他是一个不可思议的人，任何人都可以从他无比痛苦的经历中，获得拯救自己的经验……高度推荐。',
        '中文', 12.00, '2003-01-01', 9, 10, '/static/image/d5516298dc18420b9b6d9ed9f8f97409.jpeg', 0);
INSERT INTO `book_info`
VALUES (14, '秘密花园', '乔汉娜·贝斯福 ', '北京联合出版公司', '9787550252585',
        '欢迎来到秘密花园！ 在这个笔墨编织出的美丽世界中漫步吧 涂上你喜爱的颜色，为花园带来生机和活力 发现隐藏其中的各类小生物，与它们共舞 激活创造力，描绘那些未完成的仙踪秘境 各个年龄段的艺术家和“园丁”都可以来尝试喔！',
        '中文', 42.00, '2015-06-01', 9, 10, '/static/image/0da692229cb2486aaf5ebe667164f2e3.jpeg', 0);
INSERT INTO `book_info`
VALUES (17, '《数据结构与算法》', '严蔚敏', ' 中国铁道出版社', ' 9787113170202',
        '本书是国家级双语教学示范课程《数据结构》的配套教材，根据教育部高等学校计算机科学与技术教学指导委员会制定的《高等学校计算机科学与技术专业发展战略研究报告暨专业规范》编写。全书每章均以数据的逻辑结构、存储结构和相应的算法实现为主线，并对算法的运算效率进行分析。全书分为8章，涵盖了各种常见数据结构。第1章主要介绍数据结构和算法分析的基本概念，第2～6章主要介绍典型的线性结构、树型结构和图型结构，第7～8章分别介绍查找和排序操作。　　另外，每章后面附有习题和上机实验内容，上机实验提供了完整的、可运行的程序上机实验供读者参考，以加深读者对所学知识的理解和应用。　　本书既可作为高等院校计算机及相关专业数据结构课程的教学用书，也可作为从事计算机工程与应用的广大读者的参考书。该书是国家级双语教学示范课程配套教材，以基本数据结构和算法设计策略为知识单元，系统地介绍了数据结构的知识与应用、计算机算法的设计与分析方法，主要内容包括线性表、树、图和广义表、算法设计策略以及查找与排序算法等。《数据结构与算法》注重理论与实践相结合，内容深入浅出，可以作为高等院校计算机学科相关专业的教材或参考书，同时对计算机科技工作者也有参考价值。',
        'C语言', 98.00, '2023-01-11', 0, 10, '/static/image/88b38e5cca894762916c6f8c62a3b8db.jpeg', 19);
INSERT INTO `book_info`
VALUES (19, 'Python3智能数据分析快速入门', '李明江 张良均 周东平 张尚佳', ' 机械工业出版社', ' 9787113170202',
        'Python 是由 Guido van Rossum 在八十年代末和九十年代初，在荷兰国家数学和计算机科学研究所设计出来的。Python 本身也是由诸多其他语言发展而来的,这包括 ABC、Modula-3、C、C++、Algol-68、SmallTalk、Unix shell 和其他的脚本语言等等。像 Perl 语言一样，Python 源代码同样遵循 GPL(GNU General Public License)协议。现在 Python 是由一个核心开发团队在维护，Guido van Rossum 仍然占据着至关重要的作用，指导其进展。Python 2.7 被确定为最后一个 Python 2.x 版本，它除了支持 Python 2.x 语法外，还支持部分 Python 3.1 语法。',
        '中文', 94.00, '2023-03-11', 0, 9, '/static/image/ea45ca942d7f468ea4f0ec6469dc32f7.jpeg', 0);

-- ----------------------------
-- Table structure for book_recommendation
-- ----------------------------
DROP TABLE IF EXISTS `book_recommendation`;
CREATE TABLE `book_recommendation`
(
    `id`                    int                                                   NOT NULL AUTO_INCREMENT COMMENT '推荐ID',
    `reader_id`             bigint                                                NOT NULL COMMENT '读者ID',
    `book_id`               bigint                                                NOT NULL COMMENT '图书ID',
    `recommendation_reason` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '推荐理由',
    `recommendation_time`   datetime                                              NOT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '推荐时间',
    PRIMARY KEY (`id`) USING BTREE,
    INDEX `book_recommendation_ibfk_1` (`reader_id` ASC) USING BTREE,
    INDEX `book_recommendation_ibfk_2` (`book_id` ASC) USING BTREE,
    CONSTRAINT `book_recommendation_ibfk_1` FOREIGN KEY (`reader_id`) REFERENCES `reader_info` (`reader_id`) ON DELETE CASCADE ON UPDATE RESTRICT,
    CONSTRAINT `book_recommendation_ibfk_2` FOREIGN KEY (`book_id`) REFERENCES `book_info` (`book_id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB
  AUTO_INCREMENT = 49
  CHARACTER SET = utf8mb4
  COLLATE = utf8mb4_unicode_ci COMMENT = '图书推荐表'
  ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of book_recommendation
-- ----------------------------
INSERT INTO `book_recommendation`
VALUES (46, 17034480531, 11, 'asasdfs', '2023-11-02 22:32:48');
INSERT INTO `book_recommendation`
VALUES (47, 17034480453, 11, '推荐', '2023-11-02 18:06:51');
INSERT INTO `book_recommendation`
VALUES (48, 17034480453, 12, 'ggg', '2023-11-02 18:07:32');

-- ----------------------------
-- Table structure for book_reviews
-- ----------------------------
DROP TABLE IF EXISTS `book_reviews`;
CREATE TABLE `book_reviews`
(
    `id`          int                                                     NOT NULL AUTO_INCREMENT,
    `review_text` text CHARACTER SET utf8 COLLATE utf8_general_ci         NULL,
    `book_id`     bigint                                                  NOT NULL,
    `reader_id`   bigint                                                  NULL DEFAULT NULL,
    `review_date` timestamp                                               NULL DEFAULT NULL,
    `author`      varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    PRIMARY KEY (`id`) USING BTREE,
    INDEX `author_name` (`author` ASC) USING BTREE,
    INDEX `book_reviews_ibfk_1` (`book_id` ASC) USING BTREE,
    INDEX `book_reviews_ibfk_2` (`reader_id` ASC) USING BTREE,
    CONSTRAINT `author_name` FOREIGN KEY (`author`) REFERENCES `reader_card` (`username`) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT `book_reviews_ibfk_1` FOREIGN KEY (`book_id`) REFERENCES `book_info` (`book_id`) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT `book_reviews_ibfk_2` FOREIGN KEY (`reader_id`) REFERENCES `reader_info` (`reader_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB
  AUTO_INCREMENT = 134
  CHARACTER SET = utf8
  COLLATE = utf8_general_ci
  ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of book_reviews
-- ----------------------------
INSERT INTO `book_reviews`
VALUES (133, '推进', 11, 17034480453, '2023-11-03 02:06:19', 'Reader 4');

-- ----------------------------
-- Table structure for chat
-- ----------------------------
DROP TABLE IF EXISTS `chat`;
CREATE TABLE `chat`
(
    `message_id`    varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci                 NOT NULL,
    `sender_id`     bigint                                                                  NOT NULL,
    `receiver_id`   bigint                                                                  NOT NULL,
    `sender_name`   varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci                 NOT NULL,
    `receiver_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci                 NOT NULL,
    `content`       text CHARACTER SET utf8 COLLATE utf8_general_ci                         NOT NULL,
    `send_time`     varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci                 NOT NULL DEFAULT '',
    `message_type`  enum ('TEXT','IMAGE','FILE') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'TEXT',
    INDEX `b` (`sender_id` ASC) USING BTREE,
    INDEX `d` (`receiver_id` ASC) USING BTREE
) ENGINE = InnoDB
  CHARACTER SET = utf8
  COLLATE = utf8_general_ci
  ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of chat
-- ----------------------------
INSERT INTO `chat`
VALUES ('1703448017', 123456, 1703448017, 'admin', '嗨害嗨', '你好', '2023-10-30 13:47:11', 'TEXT');
INSERT INTO `chat`
VALUES ('3b512d63-39ac-7a9a-82e0-e756c6f571ff', 1703448017, 123456, '嗨害嗨', 'admin', 'test', '2023-10-30 13:47:20',
        'TEXT');
INSERT INTO `chat`
VALUES ('c323e342-b689-70c6-9b6c-0a1b5d2011da', 1703448017, 123456, '嗨害嗨', 'admin', 'aaa', '2023-10-30 15:18:04',
        'TEXT');
INSERT INTO `chat`
VALUES ('1703448017', 123456, 1703448017, 'admin', '嗨害嗨', 'aaa', '2023-10-30 15:18:08', 'TEXT');
INSERT INTO `chat`
VALUES ('1703448017', 123456, 1703448017, 'admin', '嗨害嗨', '你好', '2023-10-30 15:18:16', 'TEXT');
INSERT INTO `chat`
VALUES ('c323e342-b689-70c6-9b6c-0a1b5d2011da', 1703448017, 123456, '嗨害嗨', 'admin', 'aaa', '2023-10-30 15:18:25',
        'TEXT');
INSERT INTO `chat`
VALUES ('062f8eac-8ed6-2916-6078-cd97cb3746d1', 1703448017, 123456, '嗨害嗨', 'admin', 'adadad', '2023-10-30 15:18:35',
        'TEXT');
INSERT INTO `chat`
VALUES ('d3648684-dc6d-6f25-cdea-01db5ae48b40', 1703448017, 123456, '嗨害嗨', 'admin', '667788', '2023-10-30 15:19:08',
        'TEXT');
INSERT INTO `chat`
VALUES ('d3648684-dc6d-6f25-cdea-01db5ae48b40', 1703448017, 123456, '嗨害嗨', 'admin', 'gggg', '2023-10-30 15:19:11',
        'TEXT');
INSERT INTO `chat`
VALUES ('0ed0cf8e-b5dc-85da-cd81-7411ceef16ad', 1703448017, 123456, '嗨害嗨', 'admin', 'sss', '2023-10-30 15:19:33',
        'TEXT');
INSERT INTO `chat`
VALUES ('0ed0cf8e-b5dc-85da-cd81-7411ceef16ad', 1703448017, 123456, '嗨害嗨', 'admin', 'ssss', '2023-10-30 15:19:40',
        'TEXT');
INSERT INTO `chat`
VALUES ('e944ce76-6ab9-ec03-2c90-aa0e31900b91', 1703448017, 123456, '嗨害嗨', 'admin', 'adadad', '2023-10-30 15:29:15',
        'TEXT');
INSERT INTO `chat`
VALUES ('b9f8e101-9b96-0a93-c8c5-c9cb922bff9d', 1703448017, 123456, '嗨害嗨', 'admin', 'fafaffafasdf',
        '2023-10-30 15:29:45', 'TEXT');
INSERT INTO `chat`
VALUES ('1703448017', 123456, 1703448017, 'admin', '嗨害嗨', 'afadfafd', '2023-10-30 15:29:49', 'TEXT');
INSERT INTO `chat`
VALUES ('f2e44161-be94-292d-8cb3-5532e3010d1f', 1703448017, 123456, '嗨害嗨', 'admin', 'sfsf', '2023-10-30 15:44:00',
        'TEXT');
INSERT INTO `chat`
VALUES ('f2e44161-be94-292d-8cb3-5532e3010d1f', 1703448017, 123456, '嗨害嗨', 'admin', 'asfasfasf',
        '2023-10-30 15:44:05', 'TEXT');
INSERT INTO `chat`
VALUES ('1caabec5-3307-ffd1-bbac-48ec1685ab39', 1703448017, 123456, '嗨害嗨', 'admin', 'aaa', '2023-10-30 15:52:15',
        'TEXT');
INSERT INTO `chat`
VALUES ('1703448017', 123456, 1703448017, 'admin', '嗨害嗨', 'aaa', '2023-10-30 15:52:18', 'TEXT');
INSERT INTO `chat`
VALUES ('1703448017', 123456, 1703448017, 'admin', '嗨害嗨', 'aaaaa', '2023-10-30 15:52:24', 'TEXT');
INSERT INTO `chat`
VALUES ('1caabec5-3307-ffd1-bbac-48ec1685ab39', 1703448017, 123456, '嗨害嗨', 'admin', 'aaabb', '2023-10-30 15:52:31',
        'TEXT');
INSERT INTO `chat`
VALUES ('65e604f3-81e4-634a-8b44-ce54cecf01d0', 1703448017, 123456, '嗨害嗨', 'admin', 'aaa', '2023-10-30 15:52:51',
        'TEXT');
INSERT INTO `chat`
VALUES ('65e604f3-81e4-634a-8b44-ce54cecf01d0', 1703448017, 123456, '嗨害嗨', 'admin', 'aaa', '2023-10-30 15:54:35',
        'TEXT');
INSERT INTO `chat`
VALUES ('fb68b9d1-865e-c237-44fd-963bf6d2053b', 17034480856, 123456, 'ikun', 'admin', '你好', '2023-10-30 23:53:36',
        'TEXT');
INSERT INTO `chat`
VALUES ('17034480856', 123456, 17034480856, 'admin', 'ikun', 'en', '2023-10-30 23:53:41', 'TEXT');
INSERT INTO `chat`
VALUES ('40d2f134-9088-4dc2-2301-6c31edb556fe', 17034480856, 123456, 'ikun', 'admin', '你好', '2023-10-30 23:53:54',
        'TEXT');
INSERT INTO `chat`
VALUES ('40d2f134-9088-4dc2-2301-6c31edb556fe', 17034480856, 123456, 'ikun', 'admin', '这是测试数据',
        '2023-10-30 23:54:04', 'TEXT');
INSERT INTO `chat`
VALUES ('17034480856', 123456, 17034480856, 'admin', 'ikun', 'nni', '2023-10-30 23:54:12', 'TEXT');
INSERT INTO `chat`
VALUES ('1fba7ad0-5fe2-5cc7-c46b-67c481cebc68', 17034480449, 123456, '王豹', 'admin', 'Nihao', '2023-10-31 22:09:52',
        'TEXT');
INSERT INTO `chat`
VALUES ('f75f0e76-368a-045c-3889-08beb3d84405', 17034480449, 123456, '王豹', 'admin', '999', '2023-10-31 22:10:14',
        'TEXT');
INSERT INTO `chat`
VALUES ('c171178e-40b8-50d7-62b1-8d2c93b18bfb', 17034480449, 123456, '王豹', 'admin', 'Nihao ', '2023-10-31 22:31:02',
        'TEXT');
INSERT INTO `chat`
VALUES ('6082d28b-88d2-b595-d44c-9359bb983522', 17034480449, 123456, '王豹', 'admin', 'Nihao 666888',
        '2023-10-31 22:31:16', 'TEXT');
INSERT INTO `chat`
VALUES ('6082d28b-88d2-b595-d44c-9359bb983522', 17034480449, 123456, '王豹', 'admin', '22点31分', '2023-10-31 22:31:32',
        'TEXT');
INSERT INTO `chat`
VALUES ('17034480856', 123456, 17034480856, 'admin', 'ikun', 'e', '2023-11-01 10:56:44', 'TEXT');
INSERT INTO `chat`
VALUES ('6bf553f2-a923-0f0a-10c2-3d8eaa53e9f5', 17034480856, 123456, 'ikun', 'admin', 'aa', '2023-11-01 10:56:49',
        'TEXT');
INSERT INTO `chat`
VALUES ('17034480856', 123456, 17034480856, 'admin', 'ikun', 'asdfasdf', '2023-11-01 12:09:48', 'TEXT');
INSERT INTO `chat`
VALUES ('8e6d8687-67d5-d803-1e40-30d91c50469c', 17034480856, 123456, 'ikun', 'admin', 'asdfasdf', '2023-11-01 12:09:53',
        'TEXT');
INSERT INTO `chat`
VALUES ('8e6d8687-67d5-d803-1e40-30d91c50469c', 17034480856, 123456, 'ikun', 'admin', 'asdfasdf', '2023-11-01 12:09:56',
        'TEXT');
INSERT INTO `chat`
VALUES ('17034480856', 123456, 17034480856, 'admin', 'ikun', 'asdfasfdasfd', '2023-11-01 12:09:59', 'TEXT');
INSERT INTO `chat`
VALUES ('17034480856', 123456, 17034480856, 'admin', 'ikun', 'adsfasf', '2023-11-01 12:10:01', 'TEXT');
INSERT INTO `chat`
VALUES ('17034480464', 123456, 17034480464, 'admin', 'Reader 15', '你好', '2023-11-01 13:54:23', 'TEXT');
INSERT INTO `chat`
VALUES ('69ede537-2872-bab1-7256-0878cb262cb7', 17034480464, 123456, 'Reader 15', 'admin', 'mmm', '2023-11-01 13:54:28',
        'TEXT');
INSERT INTO `chat`
VALUES ('68c234d4-de8f-0e53-92a0-141aaa84c907', 17034480464, 123456, 'Reader 15', 'admin', 'lll', '2023-11-01 13:54:50',
        'TEXT');
INSERT INTO `chat`
VALUES ('79b027a7-a577-42cf-2ca1-c3622c12ffcd', 17034480451, 123456, 'Reader 2', 'admin', '—', '2023-11-01 14:51:14',
        'TEXT');
INSERT INTO `chat`
VALUES ('79b027a7-a577-42cf-2ca1-c3622c12ffcd', 17034480451, 123456, 'Reader 2', 'admin', 'za', '2023-11-01 14:51:21',
        'TEXT');
INSERT INTO `chat`
VALUES ('7bae217e-1271-9249-016e-e8fbcad42ac6', 17034480451, 123456, 'Reader 2', 'admin', '1', '2023-11-01 14:51:48',
        'TEXT');
INSERT INTO `chat`
VALUES ('7bae217e-1271-9249-016e-e8fbcad42ac6', 17034480451, 123456, 'Reader 2', 'admin', '2', '2023-11-01 14:51:55',
        'TEXT');
INSERT INTO `chat`
VALUES ('9129c779-1313-fdfd-941e-39c1214a9138', 17034480451, 123456, 'Reader 2', 'admin', '1', '2023-11-01 14:52:06',
        'TEXT');
INSERT INTO `chat`
VALUES ('9129c779-1313-fdfd-941e-39c1214a9138', 17034480451, 123456, 'Reader 2', 'admin', '3', '2023-11-01 14:52:13',
        'TEXT');
INSERT INTO `chat`
VALUES ('6a166ed3-f9b8-262a-facf-532da1c40851', 17034480451, 123456, 'Reader 2', 'admin', '123', '2023-11-01 14:53:04',
        'TEXT');
INSERT INTO `chat`
VALUES ('6a166ed3-f9b8-262a-facf-532da1c40851', 17034480451, 123456, 'Reader 2', 'admin', '123', '2023-11-01 14:53:11',
        'TEXT');
INSERT INTO `chat`
VALUES ('6a166ed3-f9b8-262a-facf-532da1c40851', 17034480451, 123456, 'Reader 2', 'admin', '123', '2023-11-01 14:53:26',
        'TEXT');
INSERT INTO `chat`
VALUES ('e1680b04-7824-11af-bf52-23f814dcbe3f', 17034480451, 123456, 'Reader 2', 'admin', 'm', '2023-11-01 14:53:37',
        'TEXT');
INSERT INTO `chat`
VALUES ('26c16ee8-6e3c-ca02-f109-6e2dbbc4a909', 17034480450, 123456, 'Reader 1', 'admin', 's', '2023-11-01 15:04:26',
        'TEXT');
INSERT INTO `chat`
VALUES ('26d8acd6-a910-586f-5830-553a7b3ced7b', 17034480450, 123456, 'Reader 1', 'admin', 'z', '2023-11-01 15:05:08',
        'TEXT');
INSERT INTO `chat`
VALUES ('26d8acd6-a910-586f-5830-553a7b3ced7b', 17034480450, 123456, 'Reader 1', 'admin', 'zzz', '2023-11-01 15:05:11',
        'TEXT');
INSERT INTO `chat`
VALUES ('26d8acd6-a910-586f-5830-553a7b3ced7b', 17034480450, 123456, 'Reader 1', 'admin', 'aaaa', '2023-11-01 15:05:35',
        'TEXT');
INSERT INTO `chat`
VALUES ('26d8acd6-a910-586f-5830-553a7b3ced7b', 17034480450, 123456, 'Reader 1', 'admin', 'dddd', '2023-11-01 15:05:44',
        'TEXT');
INSERT INTO `chat`
VALUES ('da427f8c-0b65-5433-f02e-6738c0e29daf', 17034480450, 123456, 'Reader 1', 'admin', 's', '2023-11-01 15:06:14',
        'TEXT');
INSERT INTO `chat`
VALUES ('da427f8c-0b65-5433-f02e-6738c0e29daf', 17034480450, 123456, 'Reader 1', 'admin', 's', '2023-11-01 15:06:19',
        'TEXT');
INSERT INTO `chat`
VALUES ('da427f8c-0b65-5433-f02e-6738c0e29daf', 17034480450, 123456, 'Reader 1', 'admin', 'sss', '2023-11-01 15:06:23',
        'TEXT');
INSERT INTO `chat`
VALUES ('8184a83c-b0ee-0b9c-60fd-59866c079327', 17034480450, 123456, 'Reader 1', 'admin', 'h', '2023-11-01 15:07:02',
        'TEXT');
INSERT INTO `chat`
VALUES ('9d1d17c9-d490-257f-3cff-899d0aadf7a8', 17034480449, 123456, '王豹', 'admin', 'Fddnj', '2023-11-01 16:17:39',
        'TEXT');
INSERT INTO `chat`
VALUES ('9d1d17c9-d490-257f-3cff-899d0aadf7a8', 17034480449, 123456, '王豹', 'admin', 'Nnxnd', '2023-11-01 16:17:49',
        'TEXT');
INSERT INTO `chat`
VALUES ('9d1d17c9-d490-257f-3cff-899d0aadf7a8', 17034480449, 123456, '王豹', 'admin', 'Nnmn', '2023-11-01 16:17:53',
        'TEXT');
INSERT INTO `chat`
VALUES ('efd2fbbf-af29-a21c-d4b4-0dbca8076c86', 17034480449, 123456, '王豹', 'admin', 'Sss', '2023-11-01 16:18:38',
        'TEXT');
INSERT INTO `chat`
VALUES ('efd2fbbf-af29-a21c-d4b4-0dbca8076c86', 17034480449, 123456, '王豹', 'admin', 'Snsn ', '2023-11-01 16:18:43',
        'TEXT');
INSERT INTO `chat`
VALUES ('efd2fbbf-af29-a21c-d4b4-0dbca8076c86', 17034480449, 123456, '王豹', 'admin', 'Nihao', '2023-11-01 16:19:56',
        'TEXT');
INSERT INTO `chat`
VALUES ('17034480449', 123456, 17034480449, 'admin', '王豹', 'dd', '2023-11-01 16:20:36', 'TEXT');
INSERT INTO `chat`
VALUES ('17034480449', 123456, 17034480449, 'admin', '王豹', 'dd', '2023-11-01 16:20:39', 'TEXT');
INSERT INTO `chat`
VALUES ('b6b31f29-dbeb-ddcb-964f-2c0c8ab06ea4', 17034480449, 123456, '王豹', 'admin', 'Ss', '2023-11-01 16:20:47',
        'TEXT');
INSERT INTO `chat`
VALUES ('b563595b-e61e-36f8-ee27-f157ce7a4a9a', 17034480449, 123456, '王豹', 'admin', 'Bbb', '2023-11-01 16:20:57',
        'TEXT');
INSERT INTO `chat`
VALUES ('b563595b-e61e-36f8-ee27-f157ce7a4a9a', 17034480449, 123456, '王豹', 'admin', 'Kdkjd', '2023-11-01 16:21:15',
        'TEXT');
INSERT INTO `chat`
VALUES ('9a916095-c2b9-f0a8-f154-35042cee37bd', 17034480449, 123456, '王豹', 'admin', 'Jj', '2023-11-01 16:23:40',
        'TEXT');
INSERT INTO `chat`
VALUES ('c07475e8-b4f3-14c0-898c-3576f9effde3', 17034480449, 123456, '王豹', 'admin', 'Nzn', '2023-11-01 16:23:48',
        'TEXT');
INSERT INTO `chat`
VALUES ('c07475e8-b4f3-14c0-898c-3576f9effde3', 17034480449, 123456, '王豹', 'admin', 'Nj', '2023-11-01 16:23:51',
        'TEXT');
INSERT INTO `chat`
VALUES ('c07475e8-b4f3-14c0-898c-3576f9effde3', 17034480449, 123456, '王豹', 'admin', 'Yh', '2023-11-01 16:24:03',
        'TEXT');
INSERT INTO `chat`
VALUES ('3326cc88-8d71-52f9-dc29-a590c350a08d', 17034480856, 123456, 'ikun', 'admin', 'sdd', '2023-11-01 16:50:40',
        'TEXT');
INSERT INTO `chat`
VALUES ('d3591877-a952-5351-5f20-874ffae6300d', 17034480856, 123456, 'ikun', 'admin', 's', '2023-11-01 17:05:07',
        'TEXT');
INSERT INTO `chat`
VALUES ('d3591877-a952-5351-5f20-874ffae6300d', 17034480856, 123456, 'ikun', 'admin', 'a', '2023-11-01 17:05:14',
        'TEXT');
INSERT INTO `chat`
VALUES ('d3591877-a952-5351-5f20-874ffae6300d', 17034480856, 123456, 'ikun', 'admin', 'bbb', '2023-11-01 17:05:16',
        'TEXT');
INSERT INTO `chat`
VALUES ('be6d1704-cc3d-7968-8305-2bb2d925b7a1', 17034480856, 123456, 'ikun', 'admin', 'ddd', '2023-11-01 17:05:38',
        'TEXT');
INSERT INTO `chat`
VALUES ('be6d1704-cc3d-7968-8305-2bb2d925b7a1', 17034480856, 123456, 'ikun', 'admin', 'ss', '2023-11-01 17:05:46',
        'TEXT');
INSERT INTO `chat`
VALUES ('be6d1704-cc3d-7968-8305-2bb2d925b7a1', 17034480856, 123456, 'ikun', 'admin', '123', '2023-11-01 17:05:56',
        'TEXT');
INSERT INTO `chat`
VALUES ('73901a16-0afd-5101-b4e5-3f1a8853b0d6', 17034480856, 123456, 'ikun', 'admin', 'adadf', '2023-11-01 17:07:13',
        'TEXT');
INSERT INTO `chat`
VALUES ('847591f1-2056-1511-8b5f-3d166fa16482', 17034480856, 123456, 'ikun', 'admin', 'a', '2023-11-01 17:12:04',
        'TEXT');
INSERT INTO `chat`
VALUES ('847591f1-2056-1511-8b5f-3d166fa16482', 17034480856, 123456, 'ikun', 'admin', 'a', '2023-11-01 17:12:11',
        'TEXT');
INSERT INTO `chat`
VALUES ('ed51aa16-5a80-02f0-4272-544c4d21b0e6', 17034480856, 123456, 'ikun', 'admin', 'aa', '2023-11-01 17:13:21',
        'TEXT');
INSERT INTO `chat`
VALUES ('ed51aa16-5a80-02f0-4272-544c4d21b0e6', 17034480856, 123456, 'ikun', 'admin', 'aaa', '2023-11-01 17:13:51',
        'TEXT');
INSERT INTO `chat`
VALUES ('ed51aa16-5a80-02f0-4272-544c4d21b0e6', 17034480856, 123456, 'ikun', 'admin', 'a', '2023-11-01 17:16:07',
        'TEXT');
INSERT INTO `chat`
VALUES ('504ef5e3-4d6d-41be-6bf0-f0b436a8b403', 17034480856, 123456, 'ikun', 'admin', 'a', '2023-11-01 17:21:57',
        'TEXT');
INSERT INTO `chat`
VALUES ('504ef5e3-4d6d-41be-6bf0-f0b436a8b403', 17034480856, 123456, 'ikun', 'admin', 'aaaaa', '2023-11-01 17:22:00',
        'TEXT');
INSERT INTO `chat`
VALUES ('504ef5e3-4d6d-41be-6bf0-f0b436a8b403', 17034480856, 123456, 'ikun', 'admin', 'sdfasdf', '2023-11-01 17:22:02',
        'TEXT');
INSERT INTO `chat`
VALUES ('504ef5e3-4d6d-41be-6bf0-f0b436a8b403', 17034480856, 123456, 'ikun', 'admin', 'asdfasdf', '2023-11-01 17:22:05',
        'TEXT');
INSERT INTO `chat`
VALUES ('09a4ff4c-68c2-e646-a538-4d33e2faa407', 17034480856, 123456, 'ikun', 'admin', 'asdfasf', '2023-11-01 17:22:12',
        'TEXT');
INSERT INTO `chat`
VALUES ('09a4ff4c-68c2-e646-a538-4d33e2faa407', 17034480856, 123456, 'ikun', 'admin', 'asdfasfd', '2023-11-01 17:22:14',
        'TEXT');
INSERT INTO `chat`
VALUES ('09a4ff4c-68c2-e646-a538-4d33e2faa407', 17034480856, 123456, 'ikun', 'admin', 'asfasfdaf',
        '2023-11-01 17:22:16', 'TEXT');
INSERT INTO `chat`
VALUES ('09a4ff4c-68c2-e646-a538-4d33e2faa407', 17034480856, 123456, 'ikun', 'admin', 'asdfasf', '2023-11-01 17:22:19',
        'TEXT');
INSERT INTO `chat`
VALUES ('09a4ff4c-68c2-e646-a538-4d33e2faa407', 17034480856, 123456, 'ikun', 'admin', 'asdfasdf', '2023-11-01 17:22:20',
        'TEXT');
INSERT INTO `chat`
VALUES ('09a4ff4c-68c2-e646-a538-4d33e2faa407', 17034480856, 123456, 'ikun', 'admin', 'asdfasdf', '2023-11-01 17:22:23',
        'TEXT');
INSERT INTO `chat`
VALUES ('f6e7bcdf-6526-19fa-48c7-ab0df3f5bee1', 17034480856, 123456, 'ikun', 'admin', 'asdfasdf', '2023-11-01 17:22:32',
        'TEXT');
INSERT INTO `chat`
VALUES ('f6e7bcdf-6526-19fa-48c7-ab0df3f5bee1', 17034480856, 123456, 'ikun', 'admin', 'asdfasf', '2023-11-01 17:22:34',
        'TEXT');
INSERT INTO `chat`
VALUES ('c9b7dc7a-4eed-ba22-a569-7e978c776194', 17034480856, 123456, 'ikun', 'admin', 'aaa', '2023-11-01 17:34:54',
        'TEXT');
INSERT INTO `chat`
VALUES ('c9b7dc7a-4eed-ba22-a569-7e978c776194', 17034480856, 123456, 'ikun', 'admin', 'aadadfadf',
        '2023-11-01 17:34:57', 'TEXT');
INSERT INTO `chat`
VALUES ('17034480856', 123456, 17034480856, 'admin', 'ikun', 'aa', '2023-11-01 17:35:09', 'TEXT');
INSERT INTO `chat`
VALUES ('23c645fa-a57d-5dbd-c940-24b0ea512e38', 17034480856, 123456, 'ikun', 'admin', 'bb', '2023-11-01 17:35:15',
        'TEXT');
INSERT INTO `chat`
VALUES ('6bb56f81-3198-7712-30bf-f83c95142590', 17034480856, 123456, 'ikun', 'admin', 'aa', '2023-11-01 17:35:27',
        'TEXT');
INSERT INTO `chat`
VALUES ('6bb56f81-3198-7712-30bf-f83c95142590', 17034480856, 123456, 'ikun', 'admin', 'aa', '2023-11-01 17:35:30',
        'TEXT');
INSERT INTO `chat`
VALUES ('eb05e462-4404-4160-8505-e70e2bf53359', 17034480856, 123456, 'ikun', 'admin', 'aa', '2023-11-01 17:35:38',
        'TEXT');
INSERT INTO `chat`
VALUES ('eb05e462-4404-4160-8505-e70e2bf53359', 17034480856, 123456, 'ikun', 'admin', 'ffff', '2023-11-01 17:35:47',
        'TEXT');
INSERT INTO `chat`
VALUES ('eb05e462-4404-4160-8505-e70e2bf53359', 17034480856, 123456, 'ikun', 'admin', 'aaa', '2023-11-01 17:35:59',
        'TEXT');
INSERT INTO `chat`
VALUES ('81cff9cf-d13d-cdbe-a249-f15248843a27', 17034480856, 123456, 'ikun', 'admin', 'a', '2023-11-01 17:36:47',
        'TEXT');
INSERT INTO `chat`
VALUES ('ff7aef5d-0e03-04bb-16f5-e9b7628e8265', 17034480856, 123456, 'ikun', 'admin', 'aa', '2023-11-01 17:44:47',
        'TEXT');
INSERT INTO `chat`
VALUES ('342e8a2f-be3c-3db3-3d14-4e4977774912', 17034480856, 123456, 'ikun', 'admin', 'aa', '2023-11-01 17:45:23',
        'TEXT');
INSERT INTO `chat`
VALUES ('342e8a2f-be3c-3db3-3d14-4e4977774912', 17034480856, 123456, 'ikun', 'admin', 'a', '2023-11-01 17:45:59',
        'TEXT');
INSERT INTO `chat`
VALUES ('2ad3fe16-cd2d-6ba1-d3ad-8bb48c1665f5', 17034480856, 123456, 'ikun', 'admin', 'asdfas', '2023-11-01 17:46:23',
        'TEXT');
INSERT INTO `chat`
VALUES ('2ad3fe16-cd2d-6ba1-d3ad-8bb48c1665f5', 17034480856, 123456, 'ikun', 'admin', 'asdf', '2023-11-01 17:46:53',
        'TEXT');
INSERT INTO `chat`
VALUES ('fe6d0726-4cfb-e7b7-68a6-5982c0d1c2c7', 17034480856, 123456, 'ikun', 'admin', 'asd', '2023-11-01 17:47:21',
        'TEXT');
INSERT INTO `chat`
VALUES ('fe6d0726-4cfb-e7b7-68a6-5982c0d1c2c7', 17034480856, 123456, 'ikun', 'admin', 'af', '2023-11-01 17:47:29',
        'TEXT');
INSERT INTO `chat`
VALUES ('fe6d0726-4cfb-e7b7-68a6-5982c0d1c2c7', 17034480856, 123456, 'ikun', 'admin', 'ad', '2023-11-01 17:47:38',
        'TEXT');
INSERT INTO `chat`
VALUES ('fe6d0726-4cfb-e7b7-68a6-5982c0d1c2c7', 17034480856, 123456, 'ikun', 'admin', 'aa', '2023-11-01 17:47:51',
        'TEXT');
INSERT INTO `chat`
VALUES ('fe6d0726-4cfb-e7b7-68a6-5982c0d1c2c7', 17034480856, 123456, 'ikun', 'admin', 'a', '2023-11-01 17:47:58',
        'TEXT');
INSERT INTO `chat`
VALUES ('fe6d0726-4cfb-e7b7-68a6-5982c0d1c2c7', 17034480856, 123456, 'ikun', 'admin', 'asdfas', '2023-11-01 17:48:03',
        'TEXT');
INSERT INTO `chat`
VALUES ('7ed96bcd-b376-8996-1348-00707f5b0eef', 17034480856, 123456, 'ikun', 'admin', 'a', '2023-11-01 17:53:39',
        'TEXT');
INSERT INTO `chat`
VALUES ('7ed96bcd-b376-8996-1348-00707f5b0eef', 17034480856, 123456, 'ikun', 'admin', 'aa', '2023-11-01 17:53:43',
        'TEXT');
INSERT INTO `chat`
VALUES ('17034480856', 123456, 17034480856, 'admin', 'ikun', 'a', '2023-11-01 17:54:02', 'TEXT');
INSERT INTO `chat`
VALUES ('d9b63cab-f858-2547-8a1f-57999c01a6c6', 17034480856, 123456, 'ikun', 'admin', 'a', '2023-11-01 17:54:23',
        'TEXT');
INSERT INTO `chat`
VALUES ('7a06e025-2514-bb82-5158-3461e448027e', 17034480856, 123456, 'ikun', 'admin', 'aa', '2023-11-01 17:54:53',
        'TEXT');
INSERT INTO `chat`
VALUES ('31781886-10ae-380d-e04a-cc29059ad70a', 17034480856, 123456, 'ikun', 'admin', 'aabbbnnn', '2023-11-01 17:55:34',
        'TEXT');
INSERT INTO `chat`
VALUES ('10e194a3-91e6-decd-f0eb-be12eda6b677', 17034480856, 123456, 'ikun', 'admin', 'a', '2023-11-01 18:04:32',
        'TEXT');
INSERT INTO `chat`
VALUES ('10e194a3-91e6-decd-f0eb-be12eda6b677', 17034480856, 123456, 'ikun', 'admin', 'aa', '2023-11-01 18:04:35',
        'TEXT');
INSERT INTO `chat`
VALUES ('d06bc4c1-ce7c-1a48-1438-91d61018d39b', 17034480856, 123456, 'ikun', 'admin', 'aa', '2023-11-01 18:05:29',
        'TEXT');
INSERT INTO `chat`
VALUES ('d06bc4c1-ce7c-1a48-1438-91d61018d39b', 17034480856, 123456, 'ikun', 'admin', 'aaaa', '2023-11-01 18:05:33',
        'TEXT');
INSERT INTO `chat`
VALUES ('d06bc4c1-ce7c-1a48-1438-91d61018d39b', 17034480856, 123456, 'ikun', 'admin', 'aa', '2023-11-01 18:05:43',
        'TEXT');
INSERT INTO `chat`
VALUES ('d06bc4c1-ce7c-1a48-1438-91d61018d39b', 17034480856, 123456, 'ikun', 'admin', 'aa', '2023-11-01 18:06:01',
        'TEXT');
INSERT INTO `chat`
VALUES ('d06bc4c1-ce7c-1a48-1438-91d61018d39b', 17034480856, 123456, 'ikun', 'admin', 'aa', '2023-11-01 18:06:06',
        'TEXT');
INSERT INTO `chat`
VALUES ('d06bc4c1-ce7c-1a48-1438-91d61018d39b', 17034480856, 123456, 'ikun', 'admin', 'a', '2023-11-01 18:06:12',
        'TEXT');
INSERT INTO `chat`
VALUES ('d06bc4c1-ce7c-1a48-1438-91d61018d39b', 17034480856, 123456, 'ikun', 'admin', 'aa', '2023-11-01 18:06:16',
        'TEXT');
INSERT INTO `chat`
VALUES ('418dbe43-260a-9e91-730e-3b0f5d04d943', 17034480856, 123456, 'ikun', 'admin', '11', '2023-11-01 18:14:01',
        'TEXT');
INSERT INTO `chat`
VALUES ('77f47656-855c-af67-6324-5bc341885a2c', 17034480856, 123456, 'ikun', 'admin', 'a', '2023-11-01 18:14:36',
        'TEXT');
INSERT INTO `chat`
VALUES ('77f47656-855c-af67-6324-5bc341885a2c', 17034480856, 123456, 'ikun', 'admin', 'a', '2023-11-01 18:14:40',
        'TEXT');
INSERT INTO `chat`
VALUES ('54cc24cc-34c8-ef61-f6d7-bbf0daa01f3f', 17034480856, 123456, 'ikun', 'admin', 'aa', '2023-11-01 18:15:13',
        'TEXT');
INSERT INTO `chat`
VALUES ('54cc24cc-34c8-ef61-f6d7-bbf0daa01f3f', 17034480856, 123456, 'ikun', 'admin', 'a', '2023-11-01 18:15:16',
        'TEXT');
INSERT INTO `chat`
VALUES ('54cc24cc-34c8-ef61-f6d7-bbf0daa01f3f', 17034480856, 123456, 'ikun', 'admin', 'ad', '2023-11-01 18:15:27',
        'TEXT');
INSERT INTO `chat`
VALUES ('54cc24cc-34c8-ef61-f6d7-bbf0daa01f3f', 17034480856, 123456, 'ikun', 'admin', 'a', '2023-11-01 18:16:47',
        'TEXT');
INSERT INTO `chat`
VALUES ('54cc24cc-34c8-ef61-f6d7-bbf0daa01f3f', 17034480856, 123456, 'ikun', 'admin', 'a', '2023-11-01 18:16:58',
        'TEXT');
INSERT INTO `chat`
VALUES ('d12c8db5-ca7a-cce2-2f1d-2e282fc51638', 17034480856, 123456, 'ikun', 'admin', 'a', '2023-11-01 18:17:31',
        'TEXT');
INSERT INTO `chat`
VALUES ('d12c8db5-ca7a-cce2-2f1d-2e282fc51638', 17034480856, 123456, 'ikun', 'admin', 'a', '2023-11-01 18:17:37',
        'TEXT');
INSERT INTO `chat`
VALUES ('17034480856', 123456, 17034480856, 'admin', 'ikun', 'b', '2023-11-01 18:17:42', 'TEXT');
INSERT INTO `chat`
VALUES ('d12c8db5-ca7a-cce2-2f1d-2e282fc51638', 17034480856, 123456, 'ikun', 'admin', 'a', '2023-11-01 18:18:19',
        'TEXT');
INSERT INTO `chat`
VALUES ('cf9568bb-33aa-910e-bee4-3fcf788d1b0d', 17034480856, 123456, 'ikun', 'admin', 'aa', '2023-11-01 18:19:07',
        'TEXT');
INSERT INTO `chat`
VALUES ('cf9568bb-33aa-910e-bee4-3fcf788d1b0d', 17034480856, 123456, 'ikun', 'admin', 'dfdsfg', '2023-11-01 18:19:39',
        'TEXT');
INSERT INTO `chat`
VALUES ('1445f6d0-934c-b239-fab3-e3f1f51b67cd', 17034480856, 123456, 'ikun', 'admin', 'a', '2023-11-01 18:25:31',
        'TEXT');
INSERT INTO `chat`
VALUES ('f53da9bd-1bd8-3826-f11b-04607fedac61', 17034480856, 123456, 'ikun', 'admin', 'a', '2023-11-01 18:25:51',
        'TEXT');
INSERT INTO `chat`
VALUES ('f53da9bd-1bd8-3826-f11b-04607fedac61', 17034480856, 123456, 'ikun', 'admin', 'a', '2023-11-01 18:25:58',
        'TEXT');
INSERT INTO `chat`
VALUES ('f53da9bd-1bd8-3826-f11b-04607fedac61', 17034480856, 123456, 'ikun', 'admin', 'a', '2023-11-01 18:26:23',
        'TEXT');
INSERT INTO `chat`
VALUES ('e939e6fa-d6db-1035-9b82-85ba25449d12', 17034480856, 123456, 'ikun', 'admin', 'a', '2023-11-01 18:27:30',
        'TEXT');
INSERT INTO `chat`
VALUES ('c62d18b9-ef00-9b94-4c5e-134aed14705f', 17034480856, 123456, 'ikun', 'admin', 'aa', '2023-11-01 18:29:11',
        'TEXT');
INSERT INTO `chat`
VALUES ('f199646e-71de-e3f3-9d43-35520889627c', 17034480856, 123456, 'ikun', 'admin', 'aa', '2023-11-01 18:31:08',
        'TEXT');
INSERT INTO `chat`
VALUES ('8e5ef93d-ac65-bb5e-76a9-741a6b373e9b', 17034480856, 123456, 'ikun', 'admin', 'a', '2023-11-01 18:31:32',
        'TEXT');
INSERT INTO `chat`
VALUES ('8e5ef93d-ac65-bb5e-76a9-741a6b373e9b', 17034480856, 123456, 'ikun', 'admin', 'a', '2023-11-01 18:32:03',
        'TEXT');
INSERT INTO `chat`
VALUES ('fc07dd55-678a-3048-da86-fa011f9f5b30', 17034480856, 123456, 'ikun', 'admin', 'a', '2023-11-01 18:32:14',
        'TEXT');
INSERT INTO `chat`
VALUES ('da916a9b-8bf0-7b84-c8c8-c6ec35bb7b58', 17034480856, 123456, 'ikun', 'admin', 'a', '2023-11-01 18:41:33',
        'TEXT');
INSERT INTO `chat`
VALUES ('da916a9b-8bf0-7b84-c8c8-c6ec35bb7b58', 17034480856, 123456, 'ikun', 'admin', 'a', '2023-11-01 18:41:36',
        'TEXT');
INSERT INTO `chat`
VALUES ('39242090-dc12-b7d2-dec1-050095af01b7', 17034480856, 123456, 'ikun', 'admin', 'a', '2023-11-01 18:50:24',
        'TEXT');
INSERT INTO `chat`
VALUES ('39242090-dc12-b7d2-dec1-050095af01b7', 17034480856, 123456, 'ikun', 'admin', 'a', '2023-11-01 18:50:27',
        'TEXT');
INSERT INTO `chat`
VALUES ('b35a9210-d884-9c3a-55af-97c27d9d0ef9', 17034480856, 123456, 'ikun', 'admin', 'a', '2023-11-01 18:50:55',
        'TEXT');
INSERT INTO `chat`
VALUES ('17034480856', 123456, 17034480856, 'admin', 'ikun', 'a', '2023-11-01 18:50:59', 'TEXT');
INSERT INTO `chat`
VALUES ('1a6bb8f2-8783-96bc-49f2-110e3d6953d1', 17034480856, 123456, 'ikun', 'admin', 'aa', '2023-11-01 18:51:33',
        'TEXT');
INSERT INTO `chat`
VALUES ('1a6bb8f2-8783-96bc-49f2-110e3d6953d1', 17034480856, 123456, 'ikun', 'admin', 'dadd', '2023-11-01 18:51:36',
        'TEXT');
INSERT INTO `chat`
VALUES ('3d379263-23ff-31e5-bec3-dca920145169', 17034480856, 123456, 'ikun', 'admin', 'aaa', '2023-11-01 19:00:44',
        'TEXT');
INSERT INTO `chat`
VALUES ('3d379263-23ff-31e5-bec3-dca920145169', 17034480856, 123456, 'ikun', 'admin', 'aaa', '2023-11-01 19:00:47',
        'TEXT');
INSERT INTO `chat`
VALUES ('50e6c535-8d76-f0fc-d9e1-fa01a4dc3e30', 17034480449, 123456, '王豹', 'admin', 'aaa', '2023-11-01 19:15:56',
        'TEXT');
INSERT INTO `chat`
VALUES ('50e6c535-8d76-f0fc-d9e1-fa01a4dc3e30', 17034480449, 123456, '王豹', 'admin', 'aa', '2023-11-01 19:16:07',
        'TEXT');
INSERT INTO `chat`
VALUES ('50e6c535-8d76-f0fc-d9e1-fa01a4dc3e30', 17034480856, 123456, 'ikun', 'admin', 'aa', '2023-11-01 19:16:12',
        'TEXT');
INSERT INTO `chat`
VALUES ('50e6c535-8d76-f0fc-d9e1-fa01a4dc3e30', 17034480449, 123456, '王豹', 'admin', 'aa', '2023-11-01 19:16:16',
        'TEXT');
INSERT INTO `chat`
VALUES ('50e6c535-8d76-f0fc-d9e1-fa01a4dc3e30', 17034480449, 123456, '王豹', 'admin', 'aa', '2023-11-01 19:16:24',
        'TEXT');
INSERT INTO `chat`
VALUES ('50e6c535-8d76-f0fc-d9e1-fa01a4dc3e30', 17034480449, 123456, '王豹', 'admin', 'ddd', '2023-11-01 19:16:27',
        'TEXT');
INSERT INTO `chat`
VALUES ('50e6c535-8d76-f0fc-d9e1-fa01a4dc3e30', 17034480449, 123456, '王豹', 'admin', 'aaa', '2023-11-01 19:16:54',
        'TEXT');
INSERT INTO `chat`
VALUES ('50e6c535-8d76-f0fc-d9e1-fa01a4dc3e30', 17034480856, 123456, 'ikun', 'admin', 'dd', '2023-11-01 19:17:43',
        'TEXT');
INSERT INTO `chat`
VALUES ('50e6c535-8d76-f0fc-d9e1-fa01a4dc3e30', 17034480449, 123456, '王豹', 'admin', 'ddd', '2023-11-01 19:17:49',
        'TEXT');
INSERT INTO `chat`
VALUES ('50e6c535-8d76-f0fc-d9e1-fa01a4dc3e30', 17034480449, 123456, '王豹', 'admin', 'aa', '2023-11-01 19:18:15',
        'TEXT');
INSERT INTO `chat`
VALUES ('50e6c535-8d76-f0fc-d9e1-fa01a4dc3e30', 17034480856, 123456, 'ikun', 'admin', 'aaa', '2023-11-01 19:18:36',
        'TEXT');
INSERT INTO `chat`
VALUES ('50e6c535-8d76-f0fc-d9e1-fa01a4dc3e30', 17034480449, 123456, '王豹', 'admin', 'aa', '2023-11-01 19:18:58',
        'TEXT');
INSERT INTO `chat`
VALUES ('61bd0157-9bd8-8d3d-2f10-41619201cda1', 17034480856, 123456, 'ikun', 'admin', 'd', '2023-11-01 19:19:58',
        'TEXT');
INSERT INTO `chat`
VALUES ('61bd0157-9bd8-8d3d-2f10-41619201cda1', 17034480856, 123456, 'ikun', 'admin', 'd', '2023-11-01 19:20:07',
        'TEXT');
INSERT INTO `chat`
VALUES ('61bd0157-9bd8-8d3d-2f10-41619201cda1', 17034480449, 123456, '王豹', 'admin', 'a', '2023-11-01 19:20:11',
        'TEXT');
INSERT INTO `chat`
VALUES ('22b60a16-37f0-d9de-68ec-9ddd8b50e547', 17034480449, 123456, '王豹', 'admin', 'a', '2023-11-01 19:33:00',
        'TEXT');
INSERT INTO `chat`
VALUES ('22b60a16-37f0-d9de-68ec-9ddd8b50e547', 17034480856, 123456, 'ikun', 'admin', 'a', '2023-11-01 19:33:04',
        'TEXT');
INSERT INTO `chat`
VALUES ('22b60a16-37f0-d9de-68ec-9ddd8b50e547', 17034480856, 123456, 'ikun', 'admin', 'a', '2023-11-01 19:33:07',
        'TEXT');
INSERT INTO `chat`
VALUES ('22b60a16-37f0-d9de-68ec-9ddd8b50e547', 17034480449, 123456, '王豹', 'admin', 'a', '2023-11-01 19:33:10',
        'TEXT');
INSERT INTO `chat`
VALUES ('f30d0db4-04c3-fcf1-f0b5-267bc81815ae', 17034480468, 123456, 'Reader 19', 'admin', 'a', '2023-11-01 20:35:41',
        'TEXT');
INSERT INTO `chat`
VALUES ('f30d0db4-04c3-fcf1-f0b5-267bc81815ae', 17034480468, 123456, 'Reader 19', 'admin', '3', '2023-11-01 20:35:50',
        'TEXT');
INSERT INTO `chat`
VALUES ('f30d0db4-04c3-fcf1-f0b5-267bc81815ae', 17034480468, 123456, 'Reader 19', 'admin', 'a', '2023-11-01 20:36:03',
        'TEXT');
INSERT INTO `chat`
VALUES ('347cce70-7156-e058-8697-0e6ca4cd2978', 17034480468, 123456, 'Reader 19', 'admin', '7', '2023-11-01 20:36:32',
        'TEXT');
INSERT INTO `chat`
VALUES ('26c4e2a7-0aa4-8693-2980-2449c243fb75', 17034480453, 123456, 'Reader 4', 'admin', '12', '2023-11-01 21:52:12',
        'TEXT');
INSERT INTO `chat`
VALUES ('17034480453', 123456, 17034480453, 'admin', 'Reader 4', '77', '2023-11-01 21:52:16', 'TEXT');
INSERT INTO `chat`
VALUES ('26c4e2a7-0aa4-8693-2980-2449c243fb75', 17034480453, 123456, 'Reader 4', 'admin', 'z', '2023-11-01 21:52:26',
        'TEXT');
INSERT INTO `chat`
VALUES ('120f7101-7d1a-881a-5638-8b0b3ac4d90a', 17034480453, 123456, 'Reader 4', 'admin', '很久', '2023-11-01 21:53:33',
        'TEXT');
INSERT INTO `chat`
VALUES ('120f7101-7d1a-881a-5638-8b0b3ac4d90a', 17034480453, 123456, 'Reader 4', 'admin', '爽啊', '2023-11-01 21:53:39',
        'TEXT');
INSERT INTO `chat`
VALUES ('120f7101-7d1a-881a-5638-8b0b3ac4d90a', 17034480453, 123456, 'Reader 4', 'admin', '11', '2023-11-01 21:53:46',
        'TEXT');
INSERT INTO `chat`
VALUES ('17034480450', 123456, 17034480450, 'admin', 'Reader 1', 'a', '2023-11-03 14:25:44', 'TEXT');
INSERT INTO `chat`
VALUES ('17034480450', 123456, 17034480450, 'admin', 'Reader 1', 'a', '2023-11-03 14:25:47', 'TEXT');
INSERT INTO `chat`
VALUES ('06450e21-48f9-5a63-8c37-8ca5db8b05d6', 17034480450, 123456, 'Reader 1', 'admin', 'u', '2023-11-03 14:25:53',
        'TEXT');
INSERT INTO `chat`
VALUES ('d07b2dfd-3de9-d2ce-fc81-3f0b8a83a381', 17034480450, 123456, 'Reader 1', 'admin', 'a', '2023-11-03 14:26:06',
        'TEXT');
INSERT INTO `chat`
VALUES ('d07b2dfd-3de9-d2ce-fc81-3f0b8a83a381', 17034480450, 123456, 'Reader 1', 'admin', 'u', '2023-11-03 14:26:14',
        'TEXT');
INSERT INTO `chat`
VALUES ('17034480450', 123456, 17034480450, 'admin', 'Reader 1', 'z', '2023-11-03 14:26:25', 'TEXT');
INSERT INTO `chat`
VALUES ('17034480531', 123456, 17034480531, 'admin', 'Reader 82adfsdf', 'a', '2023-11-03 14:32:26', 'TEXT');
INSERT INTO `chat`
VALUES ('17034480531', 123456, 17034480531, 'admin', 'Reader 82adfsdf', 'a', '2023-11-03 14:32:31', 'TEXT');
INSERT INTO `chat`
VALUES ('17034480531', 123456, 17034480531, 'admin', 'Reader 82adfsdf', 'jj', '2023-11-03 14:32:35', 'TEXT');
INSERT INTO `chat`
VALUES ('a921343a-f1e6-013c-7887-d4be2c639c77', 17034480531, 123456, 'Reader 82adfsdf', 'admin', 'o',
        '2023-11-03 14:32:37', 'TEXT');
INSERT INTO `chat`
VALUES ('17034480531', 123456, 17034480531, 'admin', 'Reader 82adfsdf', '嗷嗷', '2023-11-03 14:32:43', 'TEXT');
INSERT INTO `chat`
VALUES ('3b61d79d-2598-296f-aae3-45f1c4bf603c', 17034480531, 123456, 'Reader 82adfsdf', 'admin', 'p',
        '2023-11-03 14:33:30', 'TEXT');
INSERT INTO `chat`
VALUES ('96845f34-462a-e751-7191-4af47ce24353', 17034480531, 123456, 'Reader 82adfsdf', 'admin', 'p',
        '2023-11-03 14:33:41', 'TEXT');
INSERT INTO `chat`
VALUES ('96845f34-462a-e751-7191-4af47ce24353', 17034480531, 123456, 'Reader 82adfsdf', 'admin', 'p',
        '2023-11-03 14:33:44', 'TEXT');
INSERT INTO `chat`
VALUES ('96845f34-462a-e751-7191-4af47ce24353', 17034480531, 123456, 'Reader 82adfsdf', 'admin', 'p',
        '2023-11-03 14:33:45', 'TEXT');
INSERT INTO `chat`
VALUES ('96845f34-462a-e751-7191-4af47ce24353', 17034480531, 123456, 'Reader 82adfsdf', 'admin', 'p',
        '2023-11-03 14:33:48', 'TEXT');
INSERT INTO `chat`
VALUES ('17034480531', 123456, 17034480531, 'admin', 'Reader 82adfsdf', 'p', '2023-11-03 14:33:59', 'TEXT');

-- ----------------------------
-- Table structure for class_info
-- ----------------------------
DROP TABLE IF EXISTS `class_info`;
CREATE TABLE `class_info`
(
    `class_id`   int                                                    NOT NULL AUTO_INCREMENT,
    `class_name` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    PRIMARY KEY (`class_id`) USING BTREE
) ENGINE = InnoDB
  AUTO_INCREMENT = 24
  CHARACTER SET = utf8
  COLLATE = utf8_general_ci
  ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of class_info
-- ----------------------------
INSERT INTO `class_info`
VALUES (0, '计算机丛书系列');
INSERT INTO `class_info`
VALUES (1, '马克思主义');
INSERT INTO `class_info`
VALUES (2, '哲学');
INSERT INTO `class_info`
VALUES (3, '社会科学总论');
INSERT INTO `class_info`
VALUES (4, '政治法律');
INSERT INTO `class_info`
VALUES (5, '军事');
INSERT INTO `class_info`
VALUES (6, '经济');
INSERT INTO `class_info`
VALUES (7, '文化');
INSERT INTO `class_info`
VALUES (8, '语言');
INSERT INTO `class_info`
VALUES (9, '文学');
INSERT INTO `class_info`
VALUES (10, '艺术');
INSERT INTO `class_info`
VALUES (11, '历史地理');
INSERT INTO `class_info`
VALUES (12, '自然科学总论');
INSERT INTO `class_info`
VALUES (13, ' 数理科学和化学');
INSERT INTO `class_info`
VALUES (14, '天文学、地球科学');
INSERT INTO `class_info`
VALUES (15, '生物科学');
INSERT INTO `class_info`
VALUES (16, '医药、卫生');
INSERT INTO `class_info`
VALUES (17, '农业科学');
INSERT INTO `class_info`
VALUES (18, '工业技术');
INSERT INTO `class_info`
VALUES (19, '交通运输');
INSERT INTO `class_info`
VALUES (20, '航空、航天');
INSERT INTO `class_info`
VALUES (21, '环境科学');
INSERT INTO `class_info`
VALUES (22, '综合');

-- ----------------------------
-- Table structure for ip_info
-- ----------------------------
DROP TABLE IF EXISTS `ip_info`;
CREATE TABLE `ip_info`
(
    `id`         int                                                     NOT NULL AUTO_INCREMENT,
    `ip_address` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci  NOT NULL,
    `country`    varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
    `region`     varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
    `province`   varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
    `city`       varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
    `isp`        varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
    `date`       datetime                                                NOT NULL ON UPDATE CURRENT_TIMESTAMP,
    PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB
  AUTO_INCREMENT = 26
  CHARACTER SET = utf8
  COLLATE = utf8_general_ci
  ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ip_info
-- ----------------------------
INSERT INTO `ip_info`
VALUES (22, '39.144.140.79', '中国', '0', '0', '0', '移动', '2023-11-03 00:00:00');
INSERT INTO `ip_info`
VALUES (23, '39.144.140.79', '中国', '0', '0', '0', '移动', '2023-11-03 00:00:00');
INSERT INTO `ip_info`
VALUES (24, '223.85.60.78', '中国', '0', '四川省', '凉山', '移动', '2023-11-04 00:00:00');
INSERT INTO `ip_info`
VALUES (25, '223.85.60.78', '中国', '0', '四川省', '凉山', '移动', '2023-11-04 00:00:00');

-- ----------------------------
-- Table structure for lend_list
-- ----------------------------
DROP TABLE IF EXISTS `lend_list`;
CREATE TABLE `lend_list`
(
    `ser_num`   bigint NOT NULL AUTO_INCREMENT,
    `book_id`   bigint NOT NULL,
    `reader_id` bigint NOT NULL,
    `lend_date` date   NULL DEFAULT NULL,
    `back_date` date   NULL DEFAULT NULL,
    PRIMARY KEY (`ser_num`) USING BTREE
) ENGINE = InnoDB
  AUTO_INCREMENT = 377
  CHARACTER SET = utf8
  COLLATE = utf8_general_ci
  ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of lend_list
-- ----------------------------
INSERT INTO `lend_list`
VALUES (319, 5, 17034480531, '2023-11-02', '2023-11-02');
INSERT INTO `lend_list`
VALUES (320, 5, 17034480531, '2023-11-02', '2023-11-02');
INSERT INTO `lend_list`
VALUES (321, 5, 17034480531, '2023-11-02', '2023-11-02');
INSERT INTO `lend_list`
VALUES (322, 5, 17034480531, '2023-11-02', '2023-11-02');
INSERT INTO `lend_list`
VALUES (323, 5, 17034480531, '2023-11-02', '2023-11-02');
INSERT INTO `lend_list`
VALUES (324, 5, 17034480531, '2023-11-02', '2023-11-02');
INSERT INTO `lend_list`
VALUES (325, 7, 17034480531, '2023-11-02', '2023-11-02');
INSERT INTO `lend_list`
VALUES (326, 7, 17034480531, '2023-11-02', '2023-11-02');
INSERT INTO `lend_list`
VALUES (327, 7, 17034480531, '2023-11-02', '2023-11-02');
INSERT INTO `lend_list`
VALUES (328, 5, 17034480531, '2023-11-02', '2023-11-02');
INSERT INTO `lend_list`
VALUES (329, 5, 17034480531, '2023-11-02', '2023-11-02');
INSERT INTO `lend_list`
VALUES (330, 7, 17034480531, '2023-11-02', '2023-11-02');
INSERT INTO `lend_list`
VALUES (331, 10, 17034480531, '2023-11-02', '2023-11-02');
INSERT INTO `lend_list`
VALUES (332, 10, 17034480531, '2023-11-02', '2023-11-02');
INSERT INTO `lend_list`
VALUES (333, 10, 17034480531, '2023-11-02', '2023-11-02');
INSERT INTO `lend_list`
VALUES (334, 8, 17034480531, '2023-11-02', '2023-11-02');
INSERT INTO `lend_list`
VALUES (335, 12, 17034480531, '2023-11-02', '2023-11-02');
INSERT INTO `lend_list`
VALUES (336, 9, 17034480531, '2023-11-02', '2023-11-02');
INSERT INTO `lend_list`
VALUES (337, 11, 17034480531, '2023-11-02', '2023-11-02');
INSERT INTO `lend_list`
VALUES (338, 23, 17034480531, '2023-11-02', '2023-11-02');
INSERT INTO `lend_list`
VALUES (339, 10, 17034480531, '2023-11-02', '2023-11-02');
INSERT INTO `lend_list`
VALUES (340, 13, 17034480531, '2023-11-02', '2023-11-02');
INSERT INTO `lend_list`
VALUES (341, 13, 17034480531, '2023-11-02', '2023-11-02');
INSERT INTO `lend_list`
VALUES (342, 14, 17034480531, '2023-11-02', '2023-11-02');
INSERT INTO `lend_list`
VALUES (343, 6, 17034480531, '2023-11-02', '2023-11-02');
INSERT INTO `lend_list`
VALUES (344, 19, 17034480531, '2023-11-02', '2023-11-02');
INSERT INTO `lend_list`
VALUES (345, 11, 17034480531, '2023-11-02', '2023-11-02');
INSERT INTO `lend_list`
VALUES (346, 8, 17034480531, '2023-11-02', '2023-11-02');
INSERT INTO `lend_list`
VALUES (347, 8, 17034480454, '2023-11-02', '2023-11-02');
INSERT INTO `lend_list`
VALUES (348, 8, 17034480531, '2023-11-02', '2023-11-02');
INSERT INTO `lend_list`
VALUES (349, 8, 17034480454, '2023-11-02', '2023-11-02');
INSERT INTO `lend_list`
VALUES (350, 8, 17034480531, '2023-11-02', '2023-11-02');
INSERT INTO `lend_list`
VALUES (351, 8, 17034480454, '2023-11-02', '2023-11-02');
INSERT INTO `lend_list`
VALUES (352, 8, 17034480454, '2023-11-02', '2023-11-02');
INSERT INTO `lend_list`
VALUES (353, 8, 17034480531, '2023-11-02', '2023-11-02');
INSERT INTO `lend_list`
VALUES (354, 8, 17034480454, '2023-11-02', '2023-11-02');
INSERT INTO `lend_list`
VALUES (355, 8, 17034480531, '2023-11-02', '2023-11-02');
INSERT INTO `lend_list`
VALUES (356, 8, 17034480454, '2023-11-02', '2023-11-02');
INSERT INTO `lend_list`
VALUES (357, 8, 17034480454, '2023-11-02', '2023-11-02');
INSERT INTO `lend_list`
VALUES (358, 8, 17034480531, '2023-11-02', '2023-11-02');
INSERT INTO `lend_list`
VALUES (359, 8, 17034480531, '2023-11-02', '2023-11-02');
INSERT INTO `lend_list`
VALUES (360, 8, 17034480454, '2023-11-02', '2023-11-02');
INSERT INTO `lend_list`
VALUES (361, 5, 17034480531, '2023-11-02', '2023-11-02');
INSERT INTO `lend_list`
VALUES (362, 8, 17034480531, '2023-11-02', '2023-11-02');
INSERT INTO `lend_list`
VALUES (363, 8, 17034480531, '2023-11-02', '2023-11-02');
INSERT INTO `lend_list`
VALUES (364, 5, 17034480531, '2023-11-02', NULL);
INSERT INTO `lend_list`
VALUES (365, 11, 17034480531, '2023-11-02', '2023-11-02');
INSERT INTO `lend_list`
VALUES (366, 6, 17034480453, '2023-11-03', '2023-11-03');
INSERT INTO `lend_list`
VALUES (367, 23, 17034480453, '2023-11-03', '2023-11-03');
INSERT INTO `lend_list`
VALUES (368, 19, 17034480453, '2023-11-03', '2023-11-03');
INSERT INTO `lend_list`
VALUES (369, 8, 17034480453, '2023-11-03', '2023-11-03');
INSERT INTO `lend_list`
VALUES (370, 5, 17034480453, '2023-11-03', '2023-11-03');
INSERT INTO `lend_list`
VALUES (371, 11, 17034480453, '2023-11-03', '2023-11-03');
INSERT INTO `lend_list`
VALUES (372, 12, 17034480453, '2023-11-03', '2023-11-03');
INSERT INTO `lend_list`
VALUES (373, 19, 17034480451, '2023-11-04', '2023-11-04');
INSERT INTO `lend_list`
VALUES (374, 5, 17034480451, '2023-11-04', '2023-11-04');
INSERT INTO `lend_list`
VALUES (375, 19, 17034480451, '2023-11-04', NULL);
INSERT INTO `lend_list`
VALUES (376, 1, 17034480650, '2023-11-04', '2023-11-04');

-- ----------------------------
-- Table structure for news
-- ----------------------------
DROP TABLE IF EXISTS `news`;
CREATE TABLE `news`
(
    `news_id`      bigint                                                  NOT NULL AUTO_INCREMENT COMMENT '公告通知id',
    `news_admin`   varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci  NOT NULL COMMENT '发布通知人',
    `news_title`   varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '公告标题',
    `news_content` longtext CHARACTER SET utf8 COLLATE utf8_general_ci     NOT NULL,
    `create_time`  date                                                    NOT NULL COMMENT '发布公告的时间',
    `update_time`  datetime                                                NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '公告更新',
    `news_type`    int                                                     NULL DEFAULT 0 COMMENT '公告类型',
    PRIMARY KEY (`news_id`) USING BTREE
) ENGINE = InnoDB
  AUTO_INCREMENT = 33
  CHARACTER SET = utf8
  COLLATE = utf8_general_ci
  ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of news
-- ----------------------------
INSERT INTO `news`
VALUES (31, '管理员：李狗蛋', '测试数据',
        '（1）SSM框架介绍\r\nSSM（Spring+SpringMVC+MyBatis）框架集由Spring、MyBatis两个开源框架整合而成（SpringMVC是Spring中的部分内容）。常作为数据源较简单的web项目的框架。\r\n\r\nSpring\r\n　　Spring就像是整个项目中装配bean的大工厂，在配置文件中可以指定使用特定的参数去调用实体类的构造方法来实例化对象。也可以称之为项目中的粘合剂。\r\n　　Spring的核心思想是IoC（控制反转），即不再需要程序员去显式地new一个对象，而是让Spring框架帮你来完成这一切。\r\n　　\r\nSpringMVC\r\n　　SpringMVC在项目中拦截用户请求，它的核心Servlet即DispatcherServlet承担中介或是前台这样的职责，将用户请求通过HandlerMapping去匹配Controller，Controller就是具体对应请求所执行的操作。SpringMVC相当于SSH框架中struts。\r\n　　\r\nmybatis\r\n　　mybatis是对jdbc的封装，它让数据库底层操作变的透明。mybatis的操作都是围绕一个sqlSessionFactory实例展开的。mybatis通过配置文件关联到各实体类的Mapper文件，Mapper文件中配置了每个类对数据库所需进行的sql语句映射。在每次与数据库交互时，通过sqlSessionFactory拿到一个sqlSession，再执行sql命令。',
        '2023-07-26', '2023-11-02 00:20:55', 2);
INSERT INTO `news`
VALUES (32, 'admin', '11', ' mybatis  搜索  会员中心  消息 历史 创作中心  mybatis看这一篇就够了，简单全面一发入魂',
        '2023-11-02', NULL, 1);

-- ----------------------------
-- Table structure for reader_card
-- ----------------------------
DROP TABLE IF EXISTS `reader_card`;
CREATE TABLE `reader_card`
(
    `reader_id` bigint                                                  NOT NULL,
    `username`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `password`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    PRIMARY KEY (`reader_id`) USING BTREE,
    INDEX `username` (`username` ASC) USING BTREE
) ENGINE = InnoDB
  CHARACTER SET = utf8
  COLLATE = utf8_general_ci
  ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of reader_card
-- ----------------------------
INSERT INTO `reader_card`
VALUES (17034480450, 'Reader 1', '123123');
INSERT INTO `reader_card`
VALUES (17034480451, 'Reader 2', '123123');
INSERT INTO `reader_card`
VALUES (17034480452, 'Reader 3', '123123');
INSERT INTO `reader_card`
VALUES (17034480453, 'Reader 4', '123123');
INSERT INTO `reader_card`
VALUES (17034480454, 'Reader 5', '123123');
INSERT INTO `reader_card`
VALUES (17034480455, 'Reader 6', '123123');
INSERT INTO `reader_card`
VALUES (17034480456, 'Reader 7', '123123');
INSERT INTO `reader_card`
VALUES (17034480457, 'Reader 8', '123123');
INSERT INTO `reader_card`
VALUES (17034480458, 'Reader 9', '123123');
INSERT INTO `reader_card`
VALUES (17034480459, 'Reader 10', '123123');
INSERT INTO `reader_card`
VALUES (17034480460, 'Reader 11', '123123');
INSERT INTO `reader_card`
VALUES (17034480461, 'Reader 12', '123123');
INSERT INTO `reader_card`
VALUES (17034480462, 'Reader 13', '123123');
INSERT INTO `reader_card`
VALUES (17034480463, 'Reader 14', '123123');
INSERT INTO `reader_card`
VALUES (17034480464, 'Reader 15', '123123');
INSERT INTO `reader_card`
VALUES (17034480465, 'Reader 16', '123123');
INSERT INTO `reader_card`
VALUES (17034480466, 'Reader 17', '123123');
INSERT INTO `reader_card`
VALUES (17034480467, 'Reader 18', '123123');
INSERT INTO `reader_card`
VALUES (17034480468, 'Reader 19', '123123');
INSERT INTO `reader_card`
VALUES (17034480469, 'Reader 20', '123123');
INSERT INTO `reader_card`
VALUES (17034480470, 'Reader 21', '123123');
INSERT INTO `reader_card`
VALUES (17034480471, 'Reader 22', '123123');
INSERT INTO `reader_card`
VALUES (17034480472, 'Reader 23', '123123');
INSERT INTO `reader_card`
VALUES (17034480473, 'Reader 24', '123123');
INSERT INTO `reader_card`
VALUES (17034480474, 'Reader 25', '123123');
INSERT INTO `reader_card`
VALUES (17034480475, 'Reader 26', '123123');
INSERT INTO `reader_card`
VALUES (17034480476, 'Reader 27', '123123');
INSERT INTO `reader_card`
VALUES (17034480477, 'Reader 28', '123123');
INSERT INTO `reader_card`
VALUES (17034480478, 'Reader 29', '123123');
INSERT INTO `reader_card`
VALUES (17034480479, 'Reader 30', '123123');
INSERT INTO `reader_card`
VALUES (17034480480, 'Reader 31', '123123');
INSERT INTO `reader_card`
VALUES (17034480481, 'Reader 32', '123123');
INSERT INTO `reader_card`
VALUES (17034480482, 'Reader 33', '123123');
INSERT INTO `reader_card`
VALUES (17034480483, 'Reader 34', '123123');
INSERT INTO `reader_card`
VALUES (17034480484, 'Reader 35', '123123');
INSERT INTO `reader_card`
VALUES (17034480485, 'Reader 36', '123123');
INSERT INTO `reader_card`
VALUES (17034480486, 'Reader 37', '123123');
INSERT INTO `reader_card`
VALUES (17034480487, 'Reader 38', '123123');
INSERT INTO `reader_card`
VALUES (17034480488, 'Reader 39', '123123');
INSERT INTO `reader_card`
VALUES (17034480489, 'Reader 40', '123123');
INSERT INTO `reader_card`
VALUES (17034480490, 'Reader 41', '123123');
INSERT INTO `reader_card`
VALUES (17034480491, 'Reader 42', '123123');
INSERT INTO `reader_card`
VALUES (17034480492, 'Reader 43', '123123');
INSERT INTO `reader_card`
VALUES (17034480493, 'Reader 44', '123123');
INSERT INTO `reader_card`
VALUES (17034480494, 'Reader 45', '123123');
INSERT INTO `reader_card`
VALUES (17034480495, 'Reader 46', '123123');
INSERT INTO `reader_card`
VALUES (17034480496, 'Reader 47', '123123');
INSERT INTO `reader_card`
VALUES (17034480497, 'Reader 48', '123123');
INSERT INTO `reader_card`
VALUES (17034480498, 'Reader 49', '123123');
INSERT INTO `reader_card`
VALUES (17034480499, 'Reader 50', '123123');
INSERT INTO `reader_card`
VALUES (17034480500, 'Reader 51', '123123');
INSERT INTO `reader_card`
VALUES (17034480501, 'Reader 52', '123123');
INSERT INTO `reader_card`
VALUES (17034480502, 'Reader 53', '123123');
INSERT INTO `reader_card`
VALUES (17034480503, 'Reader 54', '123123');
INSERT INTO `reader_card`
VALUES (17034480504, 'Reader 55', '123123');
INSERT INTO `reader_card`
VALUES (17034480505, 'Reader 56', '123123');
INSERT INTO `reader_card`
VALUES (17034480506, 'Reader 57', '123123');
INSERT INTO `reader_card`
VALUES (17034480507, 'Reader 58', '123123');
INSERT INTO `reader_card`
VALUES (17034480508, 'Reader 59', '123123');
INSERT INTO `reader_card`
VALUES (17034480509, 'Reader 60', '123123');
INSERT INTO `reader_card`
VALUES (17034480510, 'Reader 61', '123123');
INSERT INTO `reader_card`
VALUES (17034480511, 'Reader 62', '123123');
INSERT INTO `reader_card`
VALUES (17034480512, 'Reader 63', '123123');
INSERT INTO `reader_card`
VALUES (17034480513, 'Reader 64', '123123');
INSERT INTO `reader_card`
VALUES (17034480514, 'Reader 65', '123123');
INSERT INTO `reader_card`
VALUES (17034480515, 'Reader 66', '123123');
INSERT INTO `reader_card`
VALUES (17034480516, 'Reader 67', '123123');
INSERT INTO `reader_card`
VALUES (17034480517, 'Reader 68', '123123');
INSERT INTO `reader_card`
VALUES (17034480518, 'Reader 69', '123123');
INSERT INTO `reader_card`
VALUES (17034480519, 'Reader 70', '123123');
INSERT INTO `reader_card`
VALUES (17034480520, 'Reader 71', '123123');
INSERT INTO `reader_card`
VALUES (17034480521, 'Reader 72', '123123');
INSERT INTO `reader_card`
VALUES (17034480522, 'Reader 73', '123123');
INSERT INTO `reader_card`
VALUES (17034480523, 'Reader 74', '123123');
INSERT INTO `reader_card`
VALUES (17034480524, 'Reader 75', '123123');
INSERT INTO `reader_card`
VALUES (17034480525, 'Reader 76', '123123');
INSERT INTO `reader_card`
VALUES (17034480526, 'Reader 77', '123123');
INSERT INTO `reader_card`
VALUES (17034480527, 'Reader 78', '123123');
INSERT INTO `reader_card`
VALUES (17034480528, 'Reader 79', '123123');
INSERT INTO `reader_card`
VALUES (17034480529, 'Reader 80', '123123');
INSERT INTO `reader_card`
VALUES (17034480530, 'Reader 81', '123123');
INSERT INTO `reader_card`
VALUES (17034480531, 'Reader 82adfsdf', '123');
INSERT INTO `reader_card`
VALUES (17034480532, 'Reader 83', '123123');
INSERT INTO `reader_card`
VALUES (17034480533, 'Reader 84', '123123');
INSERT INTO `reader_card`
VALUES (17034480534, 'Reader 85', '123123');
INSERT INTO `reader_card`
VALUES (17034480535, 'Reader 86', '123123');
INSERT INTO `reader_card`
VALUES (17034480536, 'Reader 87', '123123');
INSERT INTO `reader_card`
VALUES (17034480537, 'Reader 88', '123123');
INSERT INTO `reader_card`
VALUES (17034480538, 'Reader 89', '123123');
INSERT INTO `reader_card`
VALUES (17034480539, 'Reader 90', '123123');
INSERT INTO `reader_card`
VALUES (17034480540, 'Reader 91', '123123');
INSERT INTO `reader_card`
VALUES (17034480541, 'Reader 92', '123123');
INSERT INTO `reader_card`
VALUES (17034480542, 'Reader 93', '123123');
INSERT INTO `reader_card`
VALUES (17034480543, 'Reader 94', '123123');
INSERT INTO `reader_card`
VALUES (17034480544, 'Reader 95', '123123');
INSERT INTO `reader_card`
VALUES (17034480545, 'Reader 96', '123123');
INSERT INTO `reader_card`
VALUES (17034480546, 'Reader 97', '123123');
INSERT INTO `reader_card`
VALUES (17034480547, 'Reader 98', '123123');
INSERT INTO `reader_card`
VALUES (17034480548, 'Reader 99', '123123');
INSERT INTO `reader_card`
VALUES (17034480650, 'aaaaa', '123');

-- ----------------------------
-- Table structure for reader_info
-- ----------------------------
DROP TABLE IF EXISTS `reader_info`;
CREATE TABLE `reader_info`
(
    `reader_id` bigint                                                  NOT NULL,
    `name`      varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `sex`       varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci   NOT NULL,
    `birth`     date                                                    NOT NULL,
    `address`   varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci  NOT NULL,
    `phone`     varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci  NOT NULL,
    PRIMARY KEY (`reader_id`) USING BTREE
) ENGINE = InnoDB
  CHARACTER SET = utf8
  COLLATE = utf8_general_ci
  ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of reader_info
-- ----------------------------
INSERT INTO `reader_info`
VALUES (17034480450, 'Reader 1', '女', '2001-01-01', 'Address 1', 'Phone 1');
INSERT INTO `reader_info`
VALUES (17034480451, 'Reader 2', '男', '2001-01-02', 'Address 2', 'Phone 2');
INSERT INTO `reader_info`
VALUES (17034480452, 'Reader 3', '女', '2001-01-03', 'Address 3', 'Phone 3');
INSERT INTO `reader_info`
VALUES (17034480453, 'Reader 4', '男', '2023-11-03', '四川成都', 'Phone 4');
INSERT INTO `reader_info`
VALUES (17034480454, 'Reader 5', '女', '2001-01-05', 'Address 5', 'Phone 5');
INSERT INTO `reader_info`
VALUES (17034480455, 'Reader 6', '男', '2001-01-06', 'Address 6', 'Phone 6');
INSERT INTO `reader_info`
VALUES (17034480456, 'Reader 7', '女', '2001-01-07', 'Address 7', 'Phone 7');
INSERT INTO `reader_info`
VALUES (17034480457, 'Reader 8', '男', '2001-01-08', 'Address 8', 'Phone 8');
INSERT INTO `reader_info`
VALUES (17034480458, 'Reader 9', '女', '2001-01-09', 'Address 9', 'Phone 9');
INSERT INTO `reader_info`
VALUES (17034480459, 'Reader 10', '男', '2001-01-10', 'Address 10', 'Phone 10');
INSERT INTO `reader_info`
VALUES (17034480460, 'Reader 11', '女', '2001-01-11', 'Address 11', 'Phone 11');
INSERT INTO `reader_info`
VALUES (17034480461, 'Reader 12', '男', '2001-01-12', 'Address 12', 'Phone 12');
INSERT INTO `reader_info`
VALUES (17034480462, 'Reader 13', '女', '2001-01-13', 'Address 13', 'Phone 13');
INSERT INTO `reader_info`
VALUES (17034480463, 'Reader 14', '男', '2001-01-14', 'Address 14', 'Phone 14');
INSERT INTO `reader_info`
VALUES (17034480464, 'Reader 15', '女', '2001-01-15', 'Address 15', 'Phone 15');
INSERT INTO `reader_info`
VALUES (17034480465, 'Reader 16', '男', '2001-01-16', 'Address 16', 'Phone 16');
INSERT INTO `reader_info`
VALUES (17034480466, 'Reader 17', '女', '2001-01-17', 'Address 17', 'Phone 17');
INSERT INTO `reader_info`
VALUES (17034480467, 'Reader 18', '男', '2001-01-18', 'Address 18', 'Phone 18');
INSERT INTO `reader_info`
VALUES (17034480468, 'Reader 19', '女', '2001-01-19', 'Address 19', 'Phone 19');
INSERT INTO `reader_info`
VALUES (17034480469, 'Reader 20', '男', '2001-01-20', 'Address 20', 'Phone 20');
INSERT INTO `reader_info`
VALUES (17034480470, 'Reader 21', '女', '2001-01-21', 'Address 21', 'Phone 21');
INSERT INTO `reader_info`
VALUES (17034480471, 'Reader 22', '男', '2001-01-22', 'Address 22', 'Phone 22');
INSERT INTO `reader_info`
VALUES (17034480472, 'Reader 23', '女', '2001-01-23', 'Address 23', 'Phone 23');
INSERT INTO `reader_info`
VALUES (17034480473, 'Reader 24', '男', '2001-01-24', 'Address 24', 'Phone 24');
INSERT INTO `reader_info`
VALUES (17034480474, 'Reader 25', '女', '2001-01-25', 'Address 25', 'Phone 25');
INSERT INTO `reader_info`
VALUES (17034480475, 'Reader 26', '男', '2001-01-26', 'Address 26', 'Phone 26');
INSERT INTO `reader_info`
VALUES (17034480476, 'Reader 27', '女', '2001-01-27', 'Address 27', 'Phone 27');
INSERT INTO `reader_info`
VALUES (17034480477, 'Reader 28', '男', '2001-01-28', 'Address 28', 'Phone 28');
INSERT INTO `reader_info`
VALUES (17034480478, 'Reader 29', '女', '2001-01-29', 'Address 29', 'Phone 29');
INSERT INTO `reader_info`
VALUES (17034480479, 'Reader 30', '男', '2001-01-30', 'Address 30', 'Phone 30');
INSERT INTO `reader_info`
VALUES (17034480480, 'Reader 31', '女', '2001-01-31', 'Address 31', 'Phone 31');
INSERT INTO `reader_info`
VALUES (17034480481, 'Reader 32', '男', '2001-02-01', 'Address 32', 'Phone 32');
INSERT INTO `reader_info`
VALUES (17034480482, 'Reader 33', '女', '2001-02-02', 'Address 33', 'Phone 33');
INSERT INTO `reader_info`
VALUES (17034480483, 'Reader 34', '男', '2001-02-03', 'Address 34', 'Phone 34');
INSERT INTO `reader_info`
VALUES (17034480484, 'Reader 35', '女', '2001-02-04', 'Address 35', 'Phone 35');
INSERT INTO `reader_info`
VALUES (17034480485, 'Reader 36', '男', '2001-02-05', 'Address 36', 'Phone 36');
INSERT INTO `reader_info`
VALUES (17034480486, 'Reader 37', '女', '2001-02-06', 'Address 37', 'Phone 37');
INSERT INTO `reader_info`
VALUES (17034480487, 'Reader 38', '男', '2001-02-07', 'Address 38', 'Phone 38');
INSERT INTO `reader_info`
VALUES (17034480488, 'Reader 39', '女', '2001-02-08', 'Address 39', 'Phone 39');
INSERT INTO `reader_info`
VALUES (17034480489, 'Reader 40', '男', '2001-02-09', 'Address 40', 'Phone 40');
INSERT INTO `reader_info`
VALUES (17034480490, 'Reader 41', '女', '2001-02-10', 'Address 41', 'Phone 41');
INSERT INTO `reader_info`
VALUES (17034480491, 'Reader 42', '男', '2001-02-11', 'Address 42', 'Phone 42');
INSERT INTO `reader_info`
VALUES (17034480492, 'Reader 43', '女', '2001-02-12', 'Address 43', 'Phone 43');
INSERT INTO `reader_info`
VALUES (17034480493, 'Reader 44', '男', '2001-02-13', 'Address 44', 'Phone 44');
INSERT INTO `reader_info`
VALUES (17034480494, 'Reader 45', '女', '2001-02-14', 'Address 45', 'Phone 45');
INSERT INTO `reader_info`
VALUES (17034480495, 'Reader 46', '男', '2001-02-15', 'Address 46', 'Phone 46');
INSERT INTO `reader_info`
VALUES (17034480496, 'Reader 47', '女', '2001-02-16', 'Address 47', 'Phone 47');
INSERT INTO `reader_info`
VALUES (17034480497, 'Reader 48', '男', '2001-02-17', 'Address 48', 'Phone 48');
INSERT INTO `reader_info`
VALUES (17034480498, 'Reader 49', '女', '2001-02-18', 'Address 49', 'Phone 49');
INSERT INTO `reader_info`
VALUES (17034480499, 'Reader 50', '男', '2001-02-19', 'Address 50', 'Phone 50');
INSERT INTO `reader_info`
VALUES (17034480500, 'Reader 51', '女', '2001-02-20', 'Address 51', 'Phone 51');
INSERT INTO `reader_info`
VALUES (17034480501, 'Reader 52', '男', '2001-02-21', 'Address 52', 'Phone 52');
INSERT INTO `reader_info`
VALUES (17034480502, 'Reader 53', '女', '2001-02-22', 'Address 53', 'Phone 53');
INSERT INTO `reader_info`
VALUES (17034480503, 'Reader 54', '男', '2001-02-23', 'Address 54', 'Phone 54');
INSERT INTO `reader_info`
VALUES (17034480504, 'Reader 55', '女', '2001-02-24', 'Address 55', 'Phone 55');
INSERT INTO `reader_info`
VALUES (17034480505, 'Reader 56', '男', '2001-02-25', 'Address 56', 'Phone 56');
INSERT INTO `reader_info`
VALUES (17034480506, 'Reader 57', '女', '2001-02-26', 'Address 57', 'Phone 57');
INSERT INTO `reader_info`
VALUES (17034480507, 'Reader 58', '男', '2001-02-27', 'Address 58', 'Phone 58');
INSERT INTO `reader_info`
VALUES (17034480508, 'Reader 59', '女', '2001-02-28', 'Address 59', 'Phone 59');
INSERT INTO `reader_info`
VALUES (17034480509, 'Reader 60', '男', '2001-03-01', 'Address 60', 'Phone 60');
INSERT INTO `reader_info`
VALUES (17034480510, 'Reader 61', '女', '2001-03-02', 'Address 61', 'Phone 61');
INSERT INTO `reader_info`
VALUES (17034480511, 'Reader 62', '男', '2001-03-03', 'Address 62', 'Phone 62');
INSERT INTO `reader_info`
VALUES (17034480512, 'Reader 63', '女', '2001-03-04', 'Address 63', 'Phone 63');
INSERT INTO `reader_info`
VALUES (17034480513, 'Reader 64', '男', '2001-03-05', 'Address 64', 'Phone 64');
INSERT INTO `reader_info`
VALUES (17034480514, 'Reader 65', '女', '2001-03-06', 'Address 65', 'Phone 65');
INSERT INTO `reader_info`
VALUES (17034480515, 'Reader 66', '男', '2001-03-07', 'Address 66', 'Phone 66');
INSERT INTO `reader_info`
VALUES (17034480516, 'Reader 67', '女', '2001-03-08', 'Address 67', 'Phone 67');
INSERT INTO `reader_info`
VALUES (17034480517, 'Reader 68', '男', '2001-03-09', 'Address 68', 'Phone 68');
INSERT INTO `reader_info`
VALUES (17034480518, 'Reader 69', '女', '2001-03-10', 'Address 69', 'Phone 69');
INSERT INTO `reader_info`
VALUES (17034480519, 'Reader 70', '男', '2001-03-11', 'Address 70', 'Phone 70');
INSERT INTO `reader_info`
VALUES (17034480520, 'Reader 71', '女', '2001-03-12', 'Address 71', 'Phone 71');
INSERT INTO `reader_info`
VALUES (17034480521, 'Reader 72', '男', '2001-03-13', 'Address 72', 'Phone 72');
INSERT INTO `reader_info`
VALUES (17034480522, 'Reader 73', '女', '2001-03-14', 'Address 73', 'Phone 73');
INSERT INTO `reader_info`
VALUES (17034480523, 'Reader 74', '男', '2001-03-15', 'Address 74', 'Phone 74');
INSERT INTO `reader_info`
VALUES (17034480524, 'Reader 75', '女', '2001-03-16', 'Address 75', 'Phone 75');
INSERT INTO `reader_info`
VALUES (17034480525, 'Reader 76', '男', '2001-03-17', 'Address 76', 'Phone 76');
INSERT INTO `reader_info`
VALUES (17034480526, 'Reader 77', '女', '2001-03-18', 'Address 77', 'Phone 77');
INSERT INTO `reader_info`
VALUES (17034480527, 'Reader 78', '男', '2001-03-19', 'Address 78', 'Phone 78');
INSERT INTO `reader_info`
VALUES (17034480528, 'Reader 79', '女', '2001-03-20', 'Address 79', 'Phone 79');
INSERT INTO `reader_info`
VALUES (17034480529, 'Reader 80', '男', '2001-03-21', 'Address 80', 'Phone 80');
INSERT INTO `reader_info`
VALUES (17034480530, 'Reader 81', '女', '2001-03-22', 'Address 81', 'Phone 81');
INSERT INTO `reader_info`
VALUES (17034480531, 'Reader 82adfsdf', '男', '2023-11-02', 'Address 82', 'Phone 82');
INSERT INTO `reader_info`
VALUES (17034480532, 'Reader 83', '女', '2001-03-24', 'Address 83', 'Phone 83');
INSERT INTO `reader_info`
VALUES (17034480533, 'Reader 84', '男', '2001-03-25', 'Address 84', 'Phone 84');
INSERT INTO `reader_info`
VALUES (17034480534, 'Reader 85', '女', '2001-03-26', 'Address 85', 'Phone 85');
INSERT INTO `reader_info`
VALUES (17034480535, 'Reader 86', '男', '2001-03-27', 'Address 86', 'Phone 86');
INSERT INTO `reader_info`
VALUES (17034480536, 'Reader 87', '女', '2001-03-28', 'Address 87', 'Phone 87');
INSERT INTO `reader_info`
VALUES (17034480537, 'Reader 88', '男', '2001-03-29', 'Address 88', 'Phone 88');
INSERT INTO `reader_info`
VALUES (17034480538, 'Reader 89', '女', '2001-03-30', 'Address 89', 'Phone 89');
INSERT INTO `reader_info`
VALUES (17034480539, 'Reader 90', '男', '2001-03-31', 'Address 90', 'Phone 90');
INSERT INTO `reader_info`
VALUES (17034480540, 'Reader 91', '女', '2001-04-01', 'Address 91', 'Phone 91');
INSERT INTO `reader_info`
VALUES (17034480541, 'Reader 92', '男', '2001-04-02', 'Address 92', 'Phone 92');
INSERT INTO `reader_info`
VALUES (17034480542, 'Reader 93', '女', '2001-04-03', 'Address 93', 'Phone 93');
INSERT INTO `reader_info`
VALUES (17034480543, 'Reader 94', '男', '2001-04-04', 'Address 94', 'Phone 94');
INSERT INTO `reader_info`
VALUES (17034480544, 'Reader 95', '女', '2001-04-05', 'Address 95', 'Phone 95');
INSERT INTO `reader_info`
VALUES (17034480545, 'Reader 96', '男', '2001-04-06', 'Address 96', 'Phone 96');
INSERT INTO `reader_info`
VALUES (17034480546, 'Reader 97', '女', '2001-04-07', 'Address 97', 'Phone 97');
INSERT INTO `reader_info`
VALUES (17034480547, 'Reader 98', '男', '2001-04-08', 'Address 98', 'Phone 98');
INSERT INTO `reader_info`
VALUES (17034480548, 'Reader 99', '女', '2001-04-09', 'Address 99', 'Phone 99');
INSERT INTO `reader_info`
VALUES (17034480650, 'aaaaa', '男', '2023-11-04', '美国纽约', '14781409656');

-- ----------------------------
-- Table structure for room
-- ----------------------------
DROP TABLE IF EXISTS `room`;
CREATE TABLE `room`
(
    `appoint_room_id` bigint                                                 NOT NULL AUTO_INCREMENT COMMENT '预约位置流水',
    `room`            varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '预约的教室号',
    `seat_num`        int                                                    NOT NULL COMMENT '座位号',
    `is_null`         tinyint(1)                                             NOT NULL COMMENT '是否被占用',
    PRIMARY KEY (`appoint_room_id`) USING BTREE
) ENGINE = InnoDB
  AUTO_INCREMENT = 11
  CHARACTER SET = utf8
  COLLATE = utf8_general_ci
  ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of room
-- ----------------------------
INSERT INTO `room`
VALUES (3, '一楼05号自习室', 50, 0);
INSERT INTO `room`
VALUES (4, '一楼06号自习室', 50, 0);
INSERT INTO `room`
VALUES (5, '一楼7号自习室', 50, 0);
INSERT INTO `room`
VALUES (6, '一楼05号自习室', 50, 0);
INSERT INTO `room`
VALUES (7, '二楼01号自习室', 50, 0);
INSERT INTO `room`
VALUES (8, '二楼02号自习室', 50, 0);
INSERT INTO `room`
VALUES (9, '二楼03号自习室', 50, 0);
INSERT INTO `room`
VALUES (10, '二楼04号自习室', 50, 0);

-- ----------------------------
-- Table structure for subject
-- ----------------------------
DROP TABLE IF EXISTS `subject`;
CREATE TABLE `subject`
(
    `id`      bigint                                                  NOT NULL AUTO_INCREMENT,
    `subject` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
    PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB
  AUTO_INCREMENT = 8
  CHARACTER SET = utf8
  COLLATE = utf8_general_ci
  ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of subject
-- ----------------------------
INSERT INTO `subject`
VALUES (1, '人文');
INSERT INTO `subject`
VALUES (2, '社会科学');
INSERT INTO `subject`
VALUES (3, '经济与管理');
INSERT INTO `subject`
VALUES (4, '自然科学');
INSERT INTO `subject`
VALUES (6, '信息工程科学');
INSERT INTO `subject`
VALUES (7, '综合');

-- ----------------------------
-- Table structure for subject_relation_class
-- ----------------------------
DROP TABLE IF EXISTS `subject_relation_class`;
CREATE TABLE `subject_relation_class`
(
    `id`         bigint NOT NULL AUTO_INCREMENT,
    `subject_id` bigint NOT NULL,
    `class_id`   int    NOT NULL,
    PRIMARY KEY (`id`) USING BTREE,
    INDEX `subject_id` (`subject_id` ASC) USING BTREE,
    INDEX `class_id` (`class_id` ASC) USING BTREE,
    CONSTRAINT `subject_relation_class_ibfk_1` FOREIGN KEY (`subject_id`) REFERENCES `subject` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
    CONSTRAINT `subject_relation_class_ibfk_2` FOREIGN KEY (`subject_id`) REFERENCES `subject` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
    CONSTRAINT `subject_relation_class_ibfk_3` FOREIGN KEY (`subject_id`) REFERENCES `subject` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
    CONSTRAINT `subject_relation_class_ibfk_4` FOREIGN KEY (`subject_id`) REFERENCES `subject` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
    CONSTRAINT `subject_relation_class_ibfk_5` FOREIGN KEY (`class_id`) REFERENCES `class_info` (`class_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB
  AUTO_INCREMENT = 36
  CHARACTER SET = utf8
  COLLATE = utf8_general_ci
  ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of subject_relation_class
-- ----------------------------
INSERT INTO `subject_relation_class`
VALUES (1, 6, 0);
INSERT INTO `subject_relation_class`
VALUES (2, 1, 1);
INSERT INTO `subject_relation_class`
VALUES (3, 2, 1);
INSERT INTO `subject_relation_class`
VALUES (4, 3, 1);
INSERT INTO `subject_relation_class`
VALUES (5, 1, 2);
INSERT INTO `subject_relation_class`
VALUES (6, 2, 2);
INSERT INTO `subject_relation_class`
VALUES (7, 2, 3);
INSERT INTO `subject_relation_class`
VALUES (8, 2, 4);
INSERT INTO `subject_relation_class`
VALUES (9, 1, 4);
INSERT INTO `subject_relation_class`
VALUES (10, 3, 4);
INSERT INTO `subject_relation_class`
VALUES (11, 3, 5);
INSERT INTO `subject_relation_class`
VALUES (12, 1, 6);
INSERT INTO `subject_relation_class`
VALUES (13, 2, 6);
INSERT INTO `subject_relation_class`
VALUES (14, 3, 6);
INSERT INTO `subject_relation_class`
VALUES (15, 1, 7);
INSERT INTO `subject_relation_class`
VALUES (16, 1, 8);
INSERT INTO `subject_relation_class`
VALUES (17, 2, 8);
INSERT INTO `subject_relation_class`
VALUES (18, 2, 7);
INSERT INTO `subject_relation_class`
VALUES (19, 1, 9);
INSERT INTO `subject_relation_class`
VALUES (20, 2, 9);
INSERT INTO `subject_relation_class`
VALUES (21, 1, 10);
INSERT INTO `subject_relation_class`
VALUES (22, 2, 10);
INSERT INTO `subject_relation_class`
VALUES (23, 1, 11);
INSERT INTO `subject_relation_class`
VALUES (24, 2, 11);
INSERT INTO `subject_relation_class`
VALUES (25, 4, 11);
INSERT INTO `subject_relation_class`
VALUES (26, 1, 12);
INSERT INTO `subject_relation_class`
VALUES (27, 2, 12);
INSERT INTO `subject_relation_class`
VALUES (28, 4, 12);
INSERT INTO `subject_relation_class`
VALUES (29, 4, 13);
INSERT INTO `subject_relation_class`
VALUES (30, 1, 13);
INSERT INTO `subject_relation_class`
VALUES (31, 2, 13);
INSERT INTO `subject_relation_class`
VALUES (32, 6, 13);
INSERT INTO `subject_relation_class`
VALUES (33, 7, 5);
INSERT INTO `subject_relation_class`
VALUES (34, 1, 14);
INSERT INTO `subject_relation_class`
VALUES (35, 2, 14);
INSERT INTO `subject_relation_class`
VALUES (36, 4, 14);

SET FOREIGN_KEY_CHECKS = 1;
