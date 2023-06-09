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

 Date: 10/06/2023 01:50:03
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
VALUES (123, '123', '管理员：张山');
INSERT INTO `admin`
VALUES (123456, '1234567', 'admin');

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
  AUTO_INCREMENT = 15
  CHARACTER SET = utf8
  COLLATE = utf8_general_ci
  ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of appoint
-- ----------------------------
INSERT INTO `appoint`
VALUES (3, 17034480312, '李三', '自习室:二楼02号自习室座位号:3', 'Python3智能数据分析快速入门', '2020-06-11');

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
  AUTO_INCREMENT = 2
  CHARACTER SET = utf8
  COLLATE = utf8_general_ci
  ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of appoint_info
-- ----------------------------
INSERT INTO `appoint_info`
VALUES (1,
        '只能预约当天入馆，每位读者每日预约上限为5次；\r\n预约成功后需在15分钟内刷卡入馆，刷卡离馆后再次入馆需要重新预约；离馆时未刷卡将无法再次预约，需先到离馆出口刷卡释放预约权限。\r\n预约成功后15分钟内未能按时刷卡入馆，则预约取消，需要重新预约。\r\n闭馆前30分钟不可预约。',
        '2020-06-21 00:00:00', 410, 500,
        ' 图书馆主页预约\r\n\r\n进入图书馆主页→快捷菜单（或服务→空间服务）→空间预约，进入南开大学图书馆IC空间预约系统，用户名/密码为：校园卡号/校园卡查询密码。查看空闲座位→选择时间→跳转个人中心预约记录，即可完成预约。\r\n\r\n\r\n1.1.4 “飞书”预约办法\r\n\r\n采用“SSO登录”认证方式，输入“nankai”，进行南开大学统一身份认证；认证成功后，打开飞书→工作台→南开微应用→图书馆预约。',
        '在校学生/教职工', '2020-06-18', 'admin', '2020-06-20');

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
    PRIMARY KEY (`book_id`) USING BTREE
) ENGINE = InnoDB
  AUTO_INCREMENT = 23
  CHARACTER SET = utf8
  COLLATE = utf8_general_ci
  ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of book_info
-- ----------------------------
INSERT INTO `book_info`
VALUES (1, '大雪中的山庄', '东野圭吾 ', '北京  十月文艺出版社', '9787530216835',
        '东野圭吾长篇小说杰作，中文简体首次出版。 一出没有剧本的舞台剧，为什么能让七个演员赌上全部人生.东野圭吾就是有这样过人的本领，能从充满悬念的案子写出荡气回肠的情感，在极其周密曲折的同时写出人性的黑暗与美丽。 一家与外界隔绝的民宿里，七个演员被要求住满四天，接受导演的考验，但不断有人失踪。难道这并非正常排练，而是有人布下陷阱要杀他们。 那时候我开始喜欢上戏剧和音乐，《大雪中的山庄》一书的灵感就来源于此。我相信这次的诡计肯定会让人大吃一惊。——东野圭吾',
        '中文', 35.00, '2023-01-27', 9, 0, '/static/img/3befcf07d3174ded84d9ec83b4688b44.jpg', 10);
INSERT INTO `book_info`
VALUES (2, '三生三世 十里桃花', '唐七公子 ', '沈阳 出版社', '9787544138000',
        '三生三世，她和他，是否注定背负一段纠缠的姻缘？\r\n三生三世，她和他，是否终能互许一个生生世世的承诺？', '中文', 26.80,
        '2023-05-19', 7, 0,
        'https://cn.bing.com/images/search?view=detailV2&ccid=HTFJQkm9&id=F75FDCA120811C54E40F21E2DDE1152FBA28FC1B&thid=OIP.HTFJQkm99aFQBPVcuevrZAHaLA&mediaurl=https%3a%2f%2fimg.zcool.cn%2fcommunity%2f01f82b5a39fc49a801201a1f366dc3.jpg%401280w_1l_2o_100sh.jpg',
        5);
INSERT INTO `book_info`
VALUES (3, '何以笙箫默', '顾漫 ', '朝华 出版社', '9787505414709',
        '一段年少时的爱恋，牵出一生的纠缠。大学时代的赵默笙阳光灿烂，对法学系大才子何以琛一见倾心，开朗直率的她拔足倒追，终于使才气出众的他为她停留驻足。然而，不善表达的他终于使她在一次伤心之下远走他乡……',
        '中文', 15.00, '2023-05-19', 7, 0, 'https://www.rejuzi.cn/upload/JuJi/20161126452361046.jpg', 0);
INSERT INTO `book_info`
VALUES (4, '11处特工皇妃', '潇湘冬儿', '江苏 文艺出版社', '9787539943893',
        '《11处特工皇妃(套装上中下册)》内容简介：她是国安局军情十一处惊才绝艳的王牌军师——收集情报、策划部署、进不友好国家布置暗杀任务……她运筹帷幄之中，决胜于千里之外，堪称军情局大厦的定海神针。',
        '中文', 74.80, '2023-05-19', 7, 0, 'https://www.rejuzi.cn/upload/JuJi/20161126452361046.jpg', 0);
INSERT INTO `book_info`
VALUES (5, '人类简史', '[以色列] 尤瓦尔·赫拉利 ', '中信出版社', '9787508647357',
        '十万年前，地球上至少有六种不同的人\r\n但今日，世界舞台为什么只剩下了我们自己？\r\n从只能啃食虎狼吃剩的残骨的猿人，到跃居食物链顶端的智人，\r\n从雪维洞穴壁上的原始人手印，到阿姆斯壮踩上月球的脚印，\r\n从认知革命、农业革命，到科学革命、生物科技革命，\r\n我们如何登上世界舞台成为万物之灵的？\r\n从公元前1776年的《汉摩拉比法典》，到1776年的美国独立宣言，\r\n从帝国主义、资本主义，到自由主义、消费主义，\r\n从兽欲，到物欲，从兽性、人性，到神性，\r\n我们了解自己吗？我们过得更快乐吗？\r\n我们究竟希望自己得到什么、变成什么？',
        '英文', 68.00, '2023-05-19', 11, 1, 'https://www.rejuzi.cn/upload/JuJi/20161126452361046.jpg', 0);
INSERT INTO `book_info`
VALUES (6, '明朝那些事儿（1-9）', '当年明月 ', '中国海关出版社', '9787801656087',
        '《明朝那些事儿》讲述从1344年到1644年，明朝三百年间的历史。作品以史料为基础，以年代和具体人物为主线，运用小说的笔法，对明朝十七帝和其他王公权贵和小人物的命运进行全景展示，尤其对官场政治、战争、帝王心术着墨最多。作品也是一部明朝政治经济制度、人伦道德的演义。',
        '中文', 358.20, '2023-01-03', 11, 1,
        'https://wfqqreader-1252317822.image.myqcloud.com/cover/5/22623005/t9_22623005.jpg', 0);
INSERT INTO `book_info`
VALUES (7, '经济学原理（上下）', '[美] 曼昆 ', '机械工业出版社', '9787111126768',
        '此《经济学原理》的第3版把较多篇幅用于应用与政策，较少篇幅用于正规的经济理论。书中主要从供给与需求、企业行为与消费者选择理论、长期经济增长与短期经济波动以及宏观经济政策等角度深入浅出地剖析了经济学家们的世界观。',
        '英文', 88.00, '2003-08-05', 6, 5, 'https://www.rejuzi.cn/upload/JuJi/20161126452361046.jpg', 0);
INSERT INTO `book_info`
VALUES (8, '方向', '马克-安托万·马修 ', '后浪丨北京联合出版公司', '9787020125265',
        '《方向》即便在马修的作品中也算得最独特的：不着一字，尽得风流。原作本无一字，标题只是一个→，出版时才加了个书名Sens——既可以指“方向”，也可以指“意义”。 《方向》没有“字”，但有自己的语言——请读者在尽情释放想象力和独立思考之余，破解作者的密码，听听作者对荒诞的看法。',
        '中文', 99.80, '2020-01-09', 9, 6,
        'https://wfqqreader-1252317822.image.myqcloud.com/cover/5/22623005/t9_22623005.jpg', 0);
INSERT INTO `book_info`
VALUES (9, '画的秘密', '马克-安托万·马修 ', '北京联合出版公司·后浪出版公司', '9787550265608',
        '一本关于友情的疗伤图像小说，直击人内心最为隐秘的情感。 一部追寻艺术的纸上悬疑电影，揭示命运宇宙中奇诡的真相。 ★ 《画的秘密》荣获欧洲第二大漫画节“瑞士谢尔漫画节最佳作品奖”。 作者曾两度夺得安古兰国际漫画节重要奖项。 ★ 《画的秘密》是一部罕见的、结合了拼贴、镜像、3D等叙事手法的实验型漫画作品。作者巧妙地调度光线、纬度、时间、记忆，在一个悬念重重又温情治愈的故事中，注入了一个有关命运的哲学议题。',
        '中文', 60.00, '2016-01-01', 9, 7, 'https://www.rejuzi.cn/upload/JuJi/20161126452361046.jpg', 0);
INSERT INTO `book_info`
VALUES (10, '造彩虹的人', '东野圭吾 ', '北京十月文艺出版社', '9787530216859',
        '其实每个人身上都会发光，但只有纯粹渴求光芒的人才能看到。 从那一刻起，人生会发生奇妙的转折。功一高中退学后无所事事，加入暴走族消极度日；政史备战高考却无法集中精神，几近崩溃；辉美因家庭不和对生活失去勇气，决定自杀。面对糟糕的人生，他们无所适从，直到一天夜里，一道如同彩虹的光闯进视野。 凝视着那道光，原本几乎要耗尽的气力，源源不断地涌了出来。一切又开始充满希望。打起精神来，不能输。到这儿来呀，快来呀——那道光低声呼唤着。 他们追逐着呼唤，到达一座楼顶，看到一个人正用七彩绚烂的光束演奏出奇妙的旋律。 他们没想到，这一晚看到的彩虹，会让自己的人生彻底转...',
        '中文', 39.50, '2017-06-01', 9, 8,
        'https://wfqqreader-1252317822.image.myqcloud.com/cover/5/22623005/t9_22623005.jpg', 0);
INSERT INTO `book_info`
VALUES (11, '控方证人', '阿加莎·克里斯蒂 ', '新星出版社', '9787513325745',
        '经典同名话剧六十年常演不衰； 比利•怀尔德执导同名电影，获奥斯卡金像奖六项提名！ 阿加莎对神秘事物的向往大约来自于一种女性祖先的遗传，在足不出户的生活里，生出对世界又好奇又恐惧的幻想。 ——王安忆 伦纳德•沃尔被控谋杀富婆艾米丽以图染指其巨额遗产，他却一再表明自己的无辜。伦纳德的妻子是唯一能够证明他无罪的证人，却以控方证人的身份出庭指证其确实犯有谋杀罪。伦纳德几乎陷入绝境，直到一个神秘女人的出现…… 墙上的犬形图案；召唤死亡的收音机；蓝色瓷罐的秘密；一只疯狂的灰猫……十一篇神秘的怪谈，最可怕的不是“幽灵”，而是你心中的魔鬼。',
        '中文', 35.00, '2017-05-01', 9, 1, 'https://www.rejuzi.cn/upload/JuJi/20161126452361046.jpg', 9);
INSERT INTO `book_info`
VALUES (12, '少有人走的路', 'M·斯科特·派克 ', '吉林文史出版社', '9787807023777',
        '这本书处处透露出沟通与理解的意味，它跨越时代限制，帮助我们探索爱的本质，引导我们过上崭新，宁静而丰富的生活；它帮助我们学习爱，也学习独立；它教诲我们成为更称职的、更有理解心的父母。归根到底，它告诉我们怎样找到真正的自我。 正如开篇所言：人生苦难重重。M·斯科特·派克让我们更加清楚：人生是一场艰辛之旅，心智成熟的旅程相当漫长。但是，他没有让我们感到恐惧，相反，他带领我们去经历一系列艰难乃至痛苦的转变，最终达到自我认知的更高境界。',
        '中文', 26.00, '2007-01-01', 9, 1, 'https://www.rejuzi.cn/upload/JuJi/20161126452361046.jpg', 0);
INSERT INTO `book_info`
VALUES (13, '追寻生命的意义', '[奥] 维克多·弗兰克 ', '新华出版社', '9787501162734',
        '《追寻生命的意义》是一个人面对巨大的苦难时，用来拯救自己的内在世界，同时也是一个关于每个人存在的价值和能者多劳们生存的社会所应担负职责的思考。本书对于每一个想要了解我们这个时代的人来说，都是一部必不可少的读物。这是一部令人鼓舞的杰作……他是一个不可思议的人，任何人都可以从他无比痛苦的经历中，获得拯救自己的经验……高度推荐。',
        '中文', 12.00, '2003-01-01', 9, 0,
        'https://wfqqreader-1252317822.image.myqcloud.com/cover/5/22623005/t9_22623005.jpg', 0);
INSERT INTO `book_info`
VALUES (14, '秘密花园', '乔汉娜·贝斯福 ', '北京联合出版公司', '9787550252585',
        '欢迎来到秘密花园！ 在这个笔墨编织出的美丽世界中漫步吧 涂上你喜爱的颜色，为花园带来生机和活力 发现隐藏其中的各类小生物，与它们共舞 激活创造力，描绘那些未完成的仙踪秘境 各个年龄段的艺术家和“园丁”都可以来尝试喔！',
        '中文', 42.00, '2015-06-01', 9, 1,
        'https://wfqqreader-1252317822.image.myqcloud.com/cover/5/22623005/t9_22623005.jpg', 0);
INSERT INTO `book_info`
VALUES (17, '《数据结构与算法》', '严蔚敏', ' 中国铁道出版社', ' 9787113170202',
        '本书是国家级双语教学示范课程《数据结构》的配套教材，根据教育部高等学校计算机科学与技术教学指导委员会制定的《高等学校计算机科学与技术专业发展战略研究报告暨专业规范》编写。全书每章均以数据的逻辑结构、存储结构和相应的算法实现为主线，并对算法的运算效率进行分析。全书分为8章，涵盖了各种常见数据结构。第1章主要介绍数据结构和算法分析的基本概念，第2～6章主要介绍典型的线性结构、树型结构和图型结构，第7～8章分别介绍查找和排序操作。\r\n　　另外，每章后面附有习题和上机实验内容，上机实验提供了完整的、可运行的程序上机实验供读者参考，以加深读者对所学知识的理解和应用。\r\n　　本书既可作为高等院校计算机及相关专业数据结构课程的教学用书，也可作为从事计算机工程与应用的广大读者的参考书。\r\n该书是国家级双语教学示范课程配套教材，以基本数据结构和算法设计策略为知识单元，系统地介绍了数据结构的知识与应用、计算机算法的设计与分析方法，主要内容包括线性表、树、图和广义表、算法设计策略以及查找与排序算法等。《数据结构与算法》注重理论与实践相结合，内容深入浅出，可以作为高等院校计算机学科相关专业的教材或参考书，同时对计算机科技工作者也有参考价值。',
        'C语言', 98.00, '2023-01-11', 0, 6, 'https://www.rejuzi.cn/upload/JuJi/20161126452361046.jpg', 19);
INSERT INTO `book_info`
VALUES (19, 'Python3智能数据分析快速入门', '李明江 张良均 周东平 张尚佳', ' 机械工业出版社', ' 9787113170202',
        'Python 是由 Guido van Rossum 在八十年代末和九十年代初，在荷兰国家数学和计算机科学研究所设计出来的。\r\n\r\nPython 本身也是由诸多其他语言发展而来的,这包括 ABC、Modula-3、C、C++、Algol-68、SmallTalk、Unix shell 和其他的脚本语言等等。\r\n\r\n像 Perl 语言一样，Python 源代码同样遵循 GPL(GNU General Public License)协议。\r\n\r\n现在 Python 是由一个核心开发团队在维护，Guido van Rossum 仍然占据着至关重要的作用，指导其进展。\r\n\r\nPython 2.7 被确定为最后一个 Python 2.x 版本，它除了支持 Python 2.x 语法外，还支持部分 Python 3.1 语法。',
        '中文', 94.00, '2023-03-11', 0, 14,
        'https://wfqqreader-1252317822.image.myqcloud.com/cover/5/22623005/t9_22623005.jpg', 0);
INSERT INTO `book_info`
VALUES (20, 'Chen BaiYiChen', 'Chen BaiYiChen', 'dadfa', '123131', 'dsad', '英语', 12.00, '2023-01-03', 12, 12,
        '/static/img/06ca8d1cb33e4f10aff472683c3088bf.png', 0);
INSERT INTO `book_info`
VALUES (21, 'Chen BaiYiChen', 'Chen BaiYiChen', 'dadfa', '123131', 'dsad', '英语', 12.00, '2023-01-03', 12, 12,
        '/static/img/06ca8d1cb33e4f10aff472683c3088bf.png', 0);
INSERT INTO `book_info`
VALUES (22, 'Chen BaiYiChen', 'Chen BaiYiChen', 'dadfa', '123131', 'dsad', '英语', 12.00, '2023-01-03', 12, 12,
        '/static/img/003a7c27510d4b8fac287d6ec29ca7a7.png', 0);

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
    `recommendation_time`   datetime                                              NOT NULL COMMENT '推荐时间',
    PRIMARY KEY (`id`) USING BTREE,
    INDEX `reader_id` (`reader_id` ASC) USING BTREE,
    INDEX `book_id` (`book_id` ASC) USING BTREE,
    CONSTRAINT `book_recommendation_ibfk_1` FOREIGN KEY (`reader_id`) REFERENCES `reader_info` (`reader_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
    CONSTRAINT `book_recommendation_ibfk_2` FOREIGN KEY (`book_id`) REFERENCES `book_info` (`book_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB
  AUTO_INCREMENT = 17
  CHARACTER SET = utf8mb4
  COLLATE = utf8mb4_unicode_ci COMMENT = '图书推荐表'
  ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of book_recommendation
-- ----------------------------
INSERT INTO `book_recommendation`
VALUES (5, 123456, 19, '这本书对我的python学习和数据结构的学习有至大的帮助', '2023-05-18 13:37:02');
INSERT INTO `book_recommendation`
VALUES (6, 123456, 17, '这本书对我的数据结构的学习有至大的帮助', '2023-05-18 13:37:02');
INSERT INTO `book_recommendation`
VALUES (7, 17034480631, 10, 'good', '2023-05-18 15:22:19');
INSERT INTO `book_recommendation`
VALUES (8, 17034480631, 1, 'very good', '2023-05-18 15:23:05');

-- ----------------------------
-- Table structure for book_reviews
-- ----------------------------
DROP TABLE IF EXISTS `book_reviews`;
CREATE TABLE `book_reviews`
(
    `id`          int                                                    NOT NULL AUTO_INCREMENT,
    `review_text` text CHARACTER SET utf8 COLLATE utf8_general_ci        NULL,
    `book_id`     bigint                                                 NOT NULL,
    `reader_id`   bigint                                                 NULL DEFAULT NULL,
    `review_date` timestamp                                              NULL DEFAULT NULL,
    `author`      varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    PRIMARY KEY (`id`) USING BTREE,
    INDEX `book_id` (`book_id` ASC) USING BTREE,
    INDEX `reader_id` (`reader_id` ASC) USING BTREE,
    INDEX `author_username` (`author` ASC) USING BTREE,
    CONSTRAINT `author_username` FOREIGN KEY (`author`) REFERENCES `reader_card` (`username`) ON DELETE RESTRICT ON UPDATE RESTRICT,
    CONSTRAINT `book_reviews_ibfk_1` FOREIGN KEY (`book_id`) REFERENCES `book_info` (`book_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
    CONSTRAINT `book_reviews_ibfk_2` FOREIGN KEY (`reader_id`) REFERENCES `reader_info` (`reader_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB
  AUTO_INCREMENT = 37
  CHARACTER SET = utf8
  COLLATE = utf8_general_ci
  ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of book_reviews
-- ----------------------------
INSERT INTO `book_reviews`
VALUES (29, '西昌学院', 17, NULL, '2023-05-31 11:46:38', '乱臣贼子');
INSERT INTO `book_reviews`
VALUES (30, '666[g=xu]', 17, NULL, '2023-06-01 11:48:22', '乱臣贼子');
INSERT INTO `book_reviews`
VALUES (32, 'xcadsc[g=wunai]', 17, NULL, '2023-06-01 20:10:00', '乱臣贼子');
INSERT INTO `book_reviews`
VALUES (33, 'OKOK[g=fanu][g=zhouma]', 17, NULL, '2023-06-01 20:55:56', '乱臣贼子');
INSERT INTO `book_reviews`
VALUES (35, '[g=ciya][g=ganga]adsdasd扭扭捏捏', 10, NULL, '2023-06-02 17:16:45', '乱臣贼子');
INSERT INTO `book_reviews`
VALUES (36, '[g=daku]very goodadas[g=fendou]', 13, NULL, '2023-06-05 16:12:29', '乱臣贼子');

-- ----------------------------
-- Table structure for chat
-- ----------------------------
DROP TABLE IF EXISTS `chat`;
CREATE TABLE `chat`
(
    `message_id`    varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci                 NOT NULL,
    `sender_id`     bigint                                                                  NOT NULL,
    `receiver_id`   bigint                                                                  NOT NULL,
    `sender_name`   varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci                  NOT NULL,
    `receiver_name` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci                  NOT NULL,
    `content`       text CHARACTER SET utf8 COLLATE utf8_general_ci                         NOT NULL,
    `send_time`     varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci                 NOT NULL,
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
VALUES ('14906f83-a64d-38bf-cef4-3ecc8b8c47ec', 123456, 123, '乱臣贼子', 'admin', 'b', '2023-06-08 21:53:29', 'TEXT');
INSERT INTO `chat`
VALUES ('4f65e36b-e1e1-6d13-a965-f3860f6d5cde', 123456, 123, '乱臣贼子', 'admin', 'a', '2023-06-08 21:52:07', 'TEXT');
INSERT INTO `chat`
VALUES ('6defbef4-fe21-1091-0c71-2f400c2f67cb', 123456, 123, '乱臣贼子', 'admin', 'bb', '2023-06-08 21:53:53', 'TEXT');
INSERT INTO `chat`
VALUES ('6defbef4-fe21-1091-0c71-2f400c2f67cb', 123456, 123, '乱臣贼子', 'admin', 'aaa', '2023-06-08 21:55:32', 'TEXT');
INSERT INTO `chat`
VALUES ('6defbef4-fe21-1091-0c71-2f400c2f67cb', 123456, 123, '乱臣贼子', 'admin', 'addad', '2023-06-08 21:55:45',
        'TEXT');
INSERT INTO `chat`
VALUES ('6defbef4-fe21-1091-0c71-2f400c2f67cb', 123456, 123, '乱臣贼子', 'admin', 'adadfasdf', '2023-06-08 21:55:48',
        'TEXT');
INSERT INTO `chat`
VALUES ('bc6152fd-05a0-cc23-ff9b-8829f1c0527f', 123456, 123, '乱臣贼子', 'admin', 'asdfasdf', '2023-06-08 21:55:58',
        'TEXT');
INSERT INTO `chat`
VALUES ('ad59636e-8d6f-ee46-adb8-cfd05666b95a', 123, 123456, 'admin', '乱臣贼子', 'asfasf', '2023-06-08 21:56:10',
        'TEXT');
INSERT INTO `chat`
VALUES ('ad59636e-8d6f-ee46-adb8-cfd05666b95a', 123, 123456, 'admin', '乱臣贼子', 'asdfasdf', '2023-06-08 21:56:12',
        'TEXT');
INSERT INTO `chat`
VALUES ('ad59636e-8d6f-ee46-adb8-cfd05666b95a', 123, 123456, 'admin', '乱臣贼子', 'fasdfasdf', '2023-06-08 21:56:14',
        'TEXT');
INSERT INTO `chat`
VALUES ('07b13333-23ac-7ebb-e9bd-daf406f69316', 123, 123456, 'admin', '乱臣贼子', 'a', '2023-06-08 21:56:52', 'TEXT');
INSERT INTO `chat`
VALUES ('07b13333-23ac-7ebb-e9bd-daf406f69316', 123, 123456, 'admin', '乱臣贼子', 'a', '2023-06-08 21:56:54', 'TEXT');
INSERT INTO `chat`
VALUES ('07b13333-23ac-7ebb-e9bd-daf406f69316', 123, 123456, 'admin', '乱臣贼子', 'vv', '2023-06-08 21:56:57', 'TEXT');
INSERT INTO `chat`
VALUES ('480f8f3e-b51f-304d-7043-9e493a57a155', 123456, 123, '乱臣贼子', 'admin', 'a', '2023-06-08 21:57:00', 'TEXT');
INSERT INTO `chat`
VALUES ('480f8f3e-b51f-304d-7043-9e493a57a155', 123456, 123, '乱臣贼子', 'admin', 'asdf', '2023-06-08 21:57:02',
        'TEXT');
INSERT INTO `chat`
VALUES ('bbfd1971-1ae1-4b59-9edc-b365a373b556', 123456, 123, '乱臣贼子', 'admin', 'asdfasdf', '2023-06-08 21:57:07',
        'TEXT');
INSERT INTO `chat`
VALUES ('07b13333-23ac-7ebb-e9bd-daf406f69316', 123, 123456, 'admin', '乱臣贼子', 'asdfasdf', '2023-06-08 21:57:11',
        'TEXT');
INSERT INTO `chat`
VALUES ('5b231327-dfc7-1f2c-2114-0f467c49f028', 123456, 123, '乱臣贼子', 'admin', 'a', '2023-06-08 21:57:37', 'TEXT');
INSERT INTO `chat`
VALUES ('5b231327-dfc7-1f2c-2114-0f467c49f028', 123456, 123, '乱臣贼子', 'admin', 'aa', '2023-06-08 21:57:47', 'TEXT');
INSERT INTO `chat`
VALUES ('6a4740f4-3e31-595f-8faf-ee6471297cd6', 123, 123456, 'admin', '乱臣贼子', 'a', '2023-06-08 23:46:54', 'TEXT');
INSERT INTO `chat`
VALUES ('bf17313a-1c1d-8b1c-ca7f-0b757d1031a3', 123456, 123, '乱臣贼子', 'admin', 'a', '2023-06-09 00:56:03', 'TEXT');
INSERT INTO `chat`
VALUES ('bf17313a-1c1d-8b1c-ca7f-0b757d1031a3', 123456, 123, '乱臣贼子', 'admin', 'aasas', '2023-06-09 00:56:10',
        'TEXT');
INSERT INTO `chat`
VALUES ('3503f5f2-83c2-1bfd-1815-b1d6efb23b23', 123456, 123, '乱臣贼子', 'admin', 'sdf', '2023-06-09 00:58:05', 'TEXT');
INSERT INTO `chat`
VALUES ('b6cce37b-7cc2-afa1-1c74-78e1b5d23e54', 123, 123456, 'admin', '乱臣贼子', 'a', '2023-06-09 01:08:29', 'TEXT');
INSERT INTO `chat`
VALUES ('b6cce37b-7cc2-afa1-1c74-78e1b5d23e54', 123, 123456, 'admin', '乱臣贼子', 'a', '2023-06-09 01:08:34', 'TEXT');
INSERT INTO `chat`
VALUES ('4aeaef73-38cf-43a9-20f5-2c407463ffe6', 123456, 123, '乱臣贼子', 'admin', 'aa', '2023-06-09 01:08:37', 'TEXT');
INSERT INTO `chat`
VALUES ('0ec04e41-4259-62d3-0003-ae81785d5f0a', 123456, 123, '乱臣贼子', 'admin', '你好', '2023-06-09 01:19:30',
        'TEXT');
INSERT INTO `chat`
VALUES ('0ec04e41-4259-62d3-0003-ae81785d5f0a', 123456, 123, '乱臣贼子', 'admin', '你好', '2023-06-09 01:20:05',
        'TEXT');
INSERT INTO `chat`
VALUES ('99dd6b5d-1183-b0bc-818f-31194409a629', 123456, 123, '乱臣贼子', 'admin', '你好', '2023-06-09 01:28:01',
        'TEXT');
INSERT INTO `chat`
VALUES ('de8ac2e6-7bcc-4af2-1810-0b171ce5988a', 123456, 123, '乱臣贼子', 'admin', '你好', '2023-06-09 01:43:52',
        'TEXT');
INSERT INTO `chat`
VALUES ('de8ac2e6-7bcc-4af2-1810-0b171ce5988a', 123456, 123, '乱臣贼子', 'admin', 'ni hao q', '2023-06-09 01:44:06',
        'TEXT');
INSERT INTO `chat`
VALUES ('e298671c-a594-98fd-f71b-8b3b93ad0f6e', 123456, 123, '乱臣贼子', 'admin', 'a', '2023-06-09 02:16:09', 'TEXT');
INSERT INTO `chat`
VALUES ('e298671c-a594-98fd-f71b-8b3b93ad0f6e', 123456, 123, '乱臣贼子', 'admin', '嗷嗷', '2023-06-09 02:16:14',
        'TEXT');
INSERT INTO `chat`
VALUES ('117.136.62.201', 123, 123456, 'admin', '乱臣贼子', 'p', '2023-06-09 02:29:33', 'TEXT');
INSERT INTO `chat`
VALUES ('239c8dbd-9d47-663e-c892-6013aa8a582f', 123456, 123, '乱臣贼子', 'admin', '事实上', '2023-06-09 02:29:39',
        'TEXT');
INSERT INTO `chat`
VALUES ('117.136.62.201', 123, 123456, 'admin', '乱臣贼子', 'kjkj', '2023-06-09 02:29:45', 'TEXT');
INSERT INTO `chat`
VALUES ('117.136.62.201', 123, 123456, 'admin', '乱臣贼子', 'l;;l;', '2023-06-09 02:29:47', 'TEXT');
INSERT INTO `chat`
VALUES ('117.136.62.201', 123, 123456, 'admin', '乱臣贼子', ';\';\'', '2023-06-09 02:29:49', 'TEXT');
INSERT INTO `chat`
VALUES ('117.136.62.201', 123, 123456, 'admin', '乱臣贼子', 'p', '2023-06-09 02:29:55', 'TEXT');
INSERT INTO `chat`
VALUES ('117.136.62.201', 123, 123456, 'admin', '乱臣贼子', 'op', '2023-06-09 02:30:04', 'TEXT');
INSERT INTO `chat`
VALUES ('117.136.62.201', 123, 123456, 'admin', '乱臣贼子', 'opop', '2023-06-09 02:30:06', 'TEXT');
INSERT INTO `chat`
VALUES ('ebe1f486-2e27-5ba6-f281-9fea7be955b2', 123456, 123, '乱臣贼子', 'admin', '觉得浩瀚的话', '2023-06-09 02:30:11',
        'TEXT');
INSERT INTO `chat`
VALUES ('ebe1f486-2e27-5ba6-f281-9fea7be955b2', 123456, 123, '乱臣贼子', 'admin', '你的奶奶的', '2023-06-09 02:30:19',
        'TEXT');
INSERT INTO `chat`
VALUES ('117.136.62.201', 123, 123456, 'admin', '乱臣贼子', 'jhj', '2023-06-09 02:30:30', 'TEXT');
INSERT INTO `chat`
VALUES ('117.136.62.201', 123, 123456, 'admin', '乱臣贼子', 'lkl', '2023-06-09 02:30:32', 'TEXT');
INSERT INTO `chat`
VALUES ('e2036d2e-df6d-acbf-d485-cf1aa083df79', 123456, 123, '乱臣贼子', '管理员：张山', 'OK', '2023-06-09 02:38:30',
        'TEXT');
INSERT INTO `chat`
VALUES ('117.136.62.201', 123, 123456, '管理员：张山', '乱臣贼子', 'jkj', '2023-06-09 02:38:37', 'TEXT');
INSERT INTO `chat`
VALUES ('117.136.62.201', 123, 123456, '管理员：张山', '乱臣贼子', 'lkmll', '2023-06-09 02:38:38', 'TEXT');
INSERT INTO `chat`
VALUES ('117.136.62.201', 123, 123456, '管理员：张山', '乱臣贼子', 'lklkl', '2023-06-09 02:38:40', 'TEXT');
INSERT INTO `chat`
VALUES ('117.136.62.201', 123, 123456, '管理员：张山', '乱臣贼子', 'l;l;', '2023-06-09 02:38:42', 'TEXT');
INSERT INTO `chat`
VALUES ('117.136.62.201', 123, 123456, '管理员：张山', '乱臣贼子', 'l;l;', '2023-06-09 02:38:44', 'TEXT');
INSERT INTO `chat`
VALUES ('117.136.62.201', 123, 123456, '管理员：张山', '乱臣贼子', ';l;l', '2023-06-09 02:38:45', 'TEXT');
INSERT INTO `chat`
VALUES ('b48df08b-ce09-f08e-c16e-ccc25097f468', 123456, 123, '乱臣贼子', '管理员：张山', '事实上', '2023-06-09 02:39:06',
        'TEXT');
INSERT INTO `chat`
VALUES ('117.136.62.201', 123, 123456, '管理员：张山', '乱臣贼子', 'pp', '2023-06-09 02:39:09', 'TEXT');
INSERT INTO `chat`
VALUES ('117.136.62.201', 123, 123456, '管理员：张山', '乱臣贼子', 'l;l.;', '2023-06-09 02:39:11', 'TEXT');
INSERT INTO `chat`
VALUES ('117.136.62.201', 123, 123456, '管理员：张山', '乱臣贼子', ';\';', '2023-06-09 02:39:12', 'TEXT');
INSERT INTO `chat`
VALUES ('223.85.60.48', 123, 333, '管理员：张山', '西门飘雪', 'a', '2023-06-09 11:47:54', 'TEXT');
INSERT INTO `chat`
VALUES ('c7ce01de-053f-9da4-cc92-e9edc81a4e71', 123, 123, '管理员：张山', '管理员：张山', 'a', '2023-06-09 12:25:20',
        'TEXT');
INSERT INTO `chat`
VALUES ('223.85.60.48', 123, 123456, '管理员：张山', '乱臣贼子', '你好', '2023-06-09 12:45:29', 'TEXT');
INSERT INTO `chat`
VALUES ('6e8874bb-5741-1d5b-0d74-05324e1da7db', 123456, 123, '乱臣贼子', '管理员：张山', 'jkh', '2023-06-09 12:45:35',
        'TEXT');
INSERT INTO `chat`
VALUES ('223.85.60.48', 123, 123456, '管理员：张山', '乱臣贼子', '你啊哈', '2023-06-09 12:45:38', 'TEXT');
INSERT INTO `chat`
VALUES ('2c4fd5f6-29f4-8690-8693-1df5d663ff73', 333, 123, '西门飘雪', '管理员：张山', 'a', '2023-06-09 12:47:31',
        'TEXT');
INSERT INTO `chat`
VALUES ('dc02a8dd-7eee-b8d0-0b1c-88a1585078e6', 123456, 123, '乱臣贼子', '管理员：张山', ';', '2023-06-09 12:48:41',
        'TEXT');
INSERT INTO `chat`
VALUES ('221.182.38.197', 123, 333, '管理员：张山', '西门飘雪', '好地方的浩瀚的', '2023-06-09 12:52:58', 'TEXT');
INSERT INTO `chat`
VALUES ('221.182.38.197', 123, 333, '管理员：张山', '西门飘雪', ' 好的好地方', '2023-06-09 12:53:02', 'TEXT');
INSERT INTO `chat`
VALUES ('221.182.38.197', 123, 333, '管理员：张山', '西门飘雪', '好的好地方', '2023-06-09 12:53:05', 'TEXT');
INSERT INTO `chat`
VALUES ('221.182.38.197', 123, 333, '管理员：张山', '西门飘雪', '变6666', '2023-06-09 12:53:10', 'TEXT');
INSERT INTO `chat`
VALUES ('7bb1953f-e619-ea73-fcb6-b1c4943cacf0', 333, 123, '西门飘雪', '管理员：张山', 'sb', '2023-06-09 12:53:17',
        'TEXT');
INSERT INTO `chat`
VALUES ('223.85.60.48', 123, 123456, '管理员：张山', '乱臣贼子', '很时尚', '2023-06-09 12:53:47', 'TEXT');
INSERT INTO `chat`
VALUES ('ca20920c-1dc0-c052-cfbe-2f45537ab5f4', 123456, 123, '乱臣贼子', '管理员：张山', 'jj', '2023-06-09 12:53:52',
        'TEXT');
INSERT INTO `chat`
VALUES ('221.182.38.197', 123, 333, '管理员：张山', '西门飘雪', '111', '2023-06-09 12:54:07', 'TEXT');
INSERT INTO `chat`
VALUES ('223.85.60.48', 123, 123456, '管理员：张山', '乱臣贼子', '嗷嗷', '2023-06-09 12:54:21', 'TEXT');
INSERT INTO `chat`
VALUES ('5092a9b1-26af-275f-fae9-eea1d68c0347', 333, 123, '西门飘雪', '管理员：张山', '煞笔', '2023-06-09 12:54:25',
        'TEXT');
INSERT INTO `chat`
VALUES ('5092a9b1-26af-275f-fae9-eea1d68c0347', 123456, 123, '乱臣贼子', '管理员：张山', 'jjj', '2023-06-09 12:54:29',
        'TEXT');
INSERT INTO `chat`
VALUES ('117.136.62.201', 123, 123456, '管理员：张山', '乱臣贼子', '123', '2023-06-09 13:42:03', 'TEXT');
INSERT INTO `chat`
VALUES ('1c615fa0-f8c7-f365-0296-69bf6d2d82b9', 123456, 123, '乱臣贼子', '管理员：张山', '弟弟的', '2023-06-09 13:42:05',
        'TEXT');
INSERT INTO `chat`
VALUES ('02b4fee1-d5b2-aaaf-3fca-8b4d7b6d5285', 123456, 123, '乱臣贼子', '管理员：张山', '发动机型号',
        '2023-06-09 21:48:49', 'TEXT');
INSERT INTO `chat`
VALUES ('117.136.62.201', 123, 123456, '管理员：张山', '乱臣贼子', 'klk', '2023-06-09 21:48:54', 'TEXT');
INSERT INTO `chat`
VALUES ('117.136.62.201', 123, 123456, '管理员：张山', '乱臣贼子', 'lk,l', '2023-06-09 21:48:58', 'TEXT');
INSERT INTO `chat`
VALUES ('117.136.62.201', 123, 123456, '管理员：张山', '乱臣贼子', ';l;', '2023-06-09 21:49:00', 'TEXT');
INSERT INTO `chat`
VALUES ('117.136.62.201', 123, 123456, '管理员：张山', '乱臣贼子', ';;', '2023-06-09 21:49:01', 'TEXT');
INSERT INTO `chat`
VALUES ('117.136.62.201', 123, 123456, '管理员：张山', '乱臣贼子', '\'', '2023-06-09 21:49:02', 'TEXT');
INSERT INTO `chat`
VALUES ('02b4fee1-d5b2-aaaf-3fca-8b4d7b6d5285', 123456, 123, '乱臣贼子', '管理员：张山', '裁缝店', '2023-06-09 21:49:06',
        'TEXT');
INSERT INTO `chat`
VALUES ('117.136.62.201', 123, 123456, '管理员：张山', '乱臣贼子', '\'', '2023-06-09 21:49:08', 'TEXT');
INSERT INTO `chat`
VALUES ('117.136.62.201', 123, 123456, '管理员：张山', '乱臣贼子', '/；、', '2023-06-09 21:49:12', 'TEXT');

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
  AUTO_INCREMENT = 252
  CHARACTER SET = utf8
  COLLATE = utf8_general_ci
  ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of lend_list
-- ----------------------------
INSERT INTO `lend_list`
VALUES (26, 17, 17034480312, '2020-06-03', '2023-06-08');
INSERT INTO `lend_list`
VALUES (27, 17, 17034480312, '2020-06-03', '2023-06-08');
INSERT INTO `lend_list`
VALUES (28, 17, 17034480312, '2020-06-03', '2023-06-08');
INSERT INTO `lend_list`
VALUES (29, 17, 17034480312, '2020-06-03', '2023-06-08');
INSERT INTO `lend_list`
VALUES (30, 17, 17034480312, '2020-06-03', '2023-06-08');
INSERT INTO `lend_list`
VALUES (31, 17, 17034480312, '2020-06-03', '2023-06-08');
INSERT INTO `lend_list`
VALUES (37, 19, 17034480312, '2020-06-03', '2023-05-29');
INSERT INTO `lend_list`
VALUES (38, 8, 17034480312, '2020-06-11', '2020-06-20');
INSERT INTO `lend_list`
VALUES (39, 7, 17034480312, '2020-06-11', '2020-06-20');
INSERT INTO `lend_list`
VALUES (40, 10, 17034480332, '2020-06-19', '2023-06-02');
INSERT INTO `lend_list`
VALUES (44, 9, 17034480842, '2020-06-20', '2020-06-20');
INSERT INTO `lend_list`
VALUES (47, 8, 17034480842, '2020-06-20', '2020-06-20');
INSERT INTO `lend_list`
VALUES (48, 10, 17034480842, '2020-06-20', '2023-06-02');
INSERT INTO `lend_list`
VALUES (50, 2, 17034480842, '2020-06-20', NULL);
INSERT INTO `lend_list`
VALUES (51, 4, 17034480842, '2020-06-20', '2023-05-25');
INSERT INTO `lend_list`
VALUES (52, 3, 17034480494, '2020-06-20', '2023-05-31');
INSERT INTO `lend_list`
VALUES (53, 1, 123456, '2023-04-30', '2023-05-29');
INSERT INTO `lend_list`
VALUES (54, 1, 123456, '2023-05-16', '2023-05-29');
INSERT INTO `lend_list`
VALUES (55, 1, 123456, '2023-05-16', '2023-05-29');
INSERT INTO `lend_list`
VALUES (56, 3, 123456, '2023-05-16', '2023-05-31');
INSERT INTO `lend_list`
VALUES (57, 1, 123456, '2023-05-16', '2023-05-29');
INSERT INTO `lend_list`
VALUES (58, 1, 123456, '2023-05-16', '2023-05-29');
INSERT INTO `lend_list`
VALUES (59, 17, 123456, '2023-05-16', '2023-06-08');
INSERT INTO `lend_list`
VALUES (60, 19, 123456, '2023-05-16', '2023-05-29');
INSERT INTO `lend_list`
VALUES (61, 19, 123456, '2023-05-16', '2023-05-29');
INSERT INTO `lend_list`
VALUES (62, 19, 123456, '2023-05-16', '2023-05-29');
INSERT INTO `lend_list`
VALUES (63, 19, 123456, '2023-05-17', '2023-05-29');
INSERT INTO `lend_list`
VALUES (64, 19, 123456, '2023-05-17', '2023-05-29');
INSERT INTO `lend_list`
VALUES (65, 19, 123456, '2023-05-17', '2023-05-29');
INSERT INTO `lend_list`
VALUES (66, 19, 123456, '2023-05-17', '2023-05-29');
INSERT INTO `lend_list`
VALUES (67, 19, 123456, '2023-05-17', '2023-05-29');
INSERT INTO `lend_list`
VALUES (68, 19, 123456, '2023-05-17', '2023-05-29');
INSERT INTO `lend_list`
VALUES (69, 19, 123456, '2023-05-17', '2023-05-29');
INSERT INTO `lend_list`
VALUES (70, 19, 123456, '2023-05-17', '2023-05-29');
INSERT INTO `lend_list`
VALUES (71, 19, 123456, '2023-05-17', '2023-05-29');
INSERT INTO `lend_list`
VALUES (72, 19, 123456, '2023-05-17', '2023-05-29');
INSERT INTO `lend_list`
VALUES (73, 19, 123456, '2023-05-17', '2023-05-29');
INSERT INTO `lend_list`
VALUES (74, 19, 123456, '2023-05-17', '2023-05-29');
INSERT INTO `lend_list`
VALUES (75, 19, 123456, '2023-05-17', '2023-05-29');
INSERT INTO `lend_list`
VALUES (76, 19, 123456, '2023-05-17', '2023-05-29');
INSERT INTO `lend_list`
VALUES (77, 19, 123456, '2023-05-17', '2023-05-29');
INSERT INTO `lend_list`
VALUES (78, 19, 123456, '2023-05-17', '2023-05-29');
INSERT INTO `lend_list`
VALUES (79, 17, 123456, '2023-05-17', '2023-06-08');
INSERT INTO `lend_list`
VALUES (80, 17, 123456, '2023-05-17', '2023-06-08');
INSERT INTO `lend_list`
VALUES (81, 17, 123456, '2023-05-17', '2023-06-08');
INSERT INTO `lend_list`
VALUES (82, 17, 123456, '2023-05-17', '2023-06-08');
INSERT INTO `lend_list`
VALUES (83, 17, 123456, '2023-05-17', '2023-06-08');
INSERT INTO `lend_list`
VALUES (84, 17, 123456, '2023-05-17', '2023-06-08');
INSERT INTO `lend_list`
VALUES (85, 17, 123456, '2023-05-17', '2023-06-08');
INSERT INTO `lend_list`
VALUES (86, 17, 123456, '2023-05-17', '2023-06-08');
INSERT INTO `lend_list`
VALUES (87, 17, 123456, '2023-05-17', '2023-06-08');
INSERT INTO `lend_list`
VALUES (88, 17, 123456, '2023-05-17', '2023-06-08');
INSERT INTO `lend_list`
VALUES (89, 17, 123456, '2023-05-17', '2023-06-08');
INSERT INTO `lend_list`
VALUES (90, 17, 123456, '2023-05-17', '2023-06-08');
INSERT INTO `lend_list`
VALUES (91, 17, 123456, '2023-05-17', '2023-06-08');
INSERT INTO `lend_list`
VALUES (92, 17, 123456, '2023-05-17', '2023-06-08');
INSERT INTO `lend_list`
VALUES (93, 17, 123456, '2023-05-17', '2023-06-08');
INSERT INTO `lend_list`
VALUES (94, 17, 123456, '2023-05-17', '2023-06-08');
INSERT INTO `lend_list`
VALUES (95, 17, 123456, '2023-05-17', '2023-06-08');
INSERT INTO `lend_list`
VALUES (96, 17, 123456, '2023-05-17', '2023-06-08');
INSERT INTO `lend_list`
VALUES (97, 19, 123456, '2023-05-17', '2023-05-29');
INSERT INTO `lend_list`
VALUES (98, 19, 123456, '2023-05-17', '2023-05-29');
INSERT INTO `lend_list`
VALUES (99, 19, 123456, '2023-05-17', '2023-05-29');
INSERT INTO `lend_list`
VALUES (100, 19, 123456, '2023-05-17', '2023-05-29');
INSERT INTO `lend_list`
VALUES (101, 19, 123456, '2023-05-17', '2023-05-29');
INSERT INTO `lend_list`
VALUES (102, 19, 123456, '2023-05-17', '2023-05-29');
INSERT INTO `lend_list`
VALUES (103, 19, 123456, '2023-05-17', '2023-05-29');
INSERT INTO `lend_list`
VALUES (104, 19, 123456, '2023-05-17', '2023-05-29');
INSERT INTO `lend_list`
VALUES (105, 19, 123456, '2023-05-17', '2023-05-29');
INSERT INTO `lend_list`
VALUES (106, 19, 123456, '2023-05-17', '2023-05-29');
INSERT INTO `lend_list`
VALUES (107, 19, 123456, '2023-05-17', '2023-05-29');
INSERT INTO `lend_list`
VALUES (108, 17, 123456, '2023-05-17', '2023-06-08');
INSERT INTO `lend_list`
VALUES (109, 17, 123456, '2023-05-17', '2023-06-08');
INSERT INTO `lend_list`
VALUES (110, 17, 123456, '2023-05-17', '2023-06-08');
INSERT INTO `lend_list`
VALUES (111, 17, 123456, '2023-05-17', '2023-06-08');
INSERT INTO `lend_list`
VALUES (112, 17, 123456, '2023-05-17', '2023-06-08');
INSERT INTO `lend_list`
VALUES (113, 17, 123456, '2023-05-17', '2023-06-08');
INSERT INTO `lend_list`
VALUES (114, 19, 123456, '2023-05-17', '2023-05-29');
INSERT INTO `lend_list`
VALUES (115, 19, 123456, '2023-05-17', '2023-05-29');
INSERT INTO `lend_list`
VALUES (116, 19, 123456, '2023-05-17', '2023-05-29');
INSERT INTO `lend_list`
VALUES (117, 19, 123456, '2023-05-17', '2023-05-29');
INSERT INTO `lend_list`
VALUES (118, 19, 123456, '2023-05-17', '2023-05-29');
INSERT INTO `lend_list`
VALUES (119, 19, 123456, '2023-05-17', '2023-05-29');
INSERT INTO `lend_list`
VALUES (120, 17, 123456, '2023-05-17', '2023-06-08');
INSERT INTO `lend_list`
VALUES (121, 17, 123456, '2023-05-17', '2023-06-08');
INSERT INTO `lend_list`
VALUES (122, 19, 123456, '2023-05-17', '2023-05-29');
INSERT INTO `lend_list`
VALUES (123, 19, 123456, '2023-05-17', '2023-05-29');
INSERT INTO `lend_list`
VALUES (124, 19, 123456, '2023-05-17', '2023-05-29');
INSERT INTO `lend_list`
VALUES (125, 19, 123456, '2023-05-17', '2023-05-29');
INSERT INTO `lend_list`
VALUES (126, 19, 123456, '2023-05-17', '2023-05-29');
INSERT INTO `lend_list`
VALUES (127, 19, 123456, '2023-05-17', '2023-05-29');
INSERT INTO `lend_list`
VALUES (128, 19, 123456, '2023-05-17', '2023-05-29');
INSERT INTO `lend_list`
VALUES (129, 19, 123456, '2023-05-17', '2023-05-29');
INSERT INTO `lend_list`
VALUES (130, 19, 123456, '2023-05-17', '2023-05-29');
INSERT INTO `lend_list`
VALUES (131, 19, 123456, '2023-05-17', '2023-05-29');
INSERT INTO `lend_list`
VALUES (132, 19, 123456, '2023-05-17', '2023-05-29');
INSERT INTO `lend_list`
VALUES (133, 19, 123456, '2023-05-17', '2023-05-29');
INSERT INTO `lend_list`
VALUES (134, 19, 123456, '2023-05-17', '2023-05-29');
INSERT INTO `lend_list`
VALUES (135, 19, 123456, '2023-05-17', '2023-05-29');
INSERT INTO `lend_list`
VALUES (136, 19, 123456, '2023-05-17', '2023-05-29');
INSERT INTO `lend_list`
VALUES (137, 19, 123456, '2023-05-17', '2023-05-29');
INSERT INTO `lend_list`
VALUES (138, 19, 123456, '2023-05-17', '2023-05-29');
INSERT INTO `lend_list`
VALUES (139, 19, 123456, '2023-05-17', '2023-05-29');
INSERT INTO `lend_list`
VALUES (140, 19, 123456, '2023-05-17', '2023-05-29');
INSERT INTO `lend_list`
VALUES (141, 19, 123456, '2023-05-17', '2023-05-29');
INSERT INTO `lend_list`
VALUES (142, 19, 123456, '2023-05-17', '2023-05-29');
INSERT INTO `lend_list`
VALUES (143, 19, 123456, '2023-05-17', '2023-05-29');
INSERT INTO `lend_list`
VALUES (144, 19, 123456, '2023-05-17', '2023-05-29');
INSERT INTO `lend_list`
VALUES (145, 19, 123456, '2023-05-17', '2023-05-29');
INSERT INTO `lend_list`
VALUES (146, 19, 123456, '2023-05-17', '2023-05-29');
INSERT INTO `lend_list`
VALUES (147, 19, 123456, '2023-05-17', '2023-05-29');
INSERT INTO `lend_list`
VALUES (148, 19, 123456, '2023-05-17', '2023-05-29');
INSERT INTO `lend_list`
VALUES (149, 19, 123456, '2023-05-17', '2023-05-29');
INSERT INTO `lend_list`
VALUES (150, 19, 123456, '2023-05-17', '2023-05-29');
INSERT INTO `lend_list`
VALUES (151, 19, 123456, '2023-05-17', '2023-05-29');
INSERT INTO `lend_list`
VALUES (152, 19, 123456, '2023-05-17', '2023-05-29');
INSERT INTO `lend_list`
VALUES (153, 19, 123456, '2023-05-17', '2023-05-29');
INSERT INTO `lend_list`
VALUES (154, 19, 123456, '2023-05-17', '2023-05-29');
INSERT INTO `lend_list`
VALUES (155, 19, 123456, '2023-05-17', '2023-05-29');
INSERT INTO `lend_list`
VALUES (156, 19, 123456, '2023-05-17', '2023-05-29');
INSERT INTO `lend_list`
VALUES (157, 19, 123456, '2023-05-17', '2023-05-29');
INSERT INTO `lend_list`
VALUES (158, 19, 123456, '2023-05-17', '2023-05-29');
INSERT INTO `lend_list`
VALUES (159, 19, 123456, '2023-05-17', '2023-05-29');
INSERT INTO `lend_list`
VALUES (160, 19, 123456, '2023-05-17', '2023-05-29');
INSERT INTO `lend_list`
VALUES (161, 19, 123456, '2023-05-17', '2023-05-29');
INSERT INTO `lend_list`
VALUES (162, 19, 123456, '2023-05-17', '2023-05-29');
INSERT INTO `lend_list`
VALUES (163, 19, 123456, '2023-05-17', '2023-05-29');
INSERT INTO `lend_list`
VALUES (164, 19, 123456, '2023-05-17', '2023-05-29');
INSERT INTO `lend_list`
VALUES (165, 19, 123456, '2023-05-17', '2023-05-29');
INSERT INTO `lend_list`
VALUES (166, 19, 123456, '2023-05-17', '2023-05-29');
INSERT INTO `lend_list`
VALUES (167, 19, 123456, '2023-05-17', '2023-05-29');
INSERT INTO `lend_list`
VALUES (168, 19, 123456, '2023-05-17', '2023-05-29');
INSERT INTO `lend_list`
VALUES (169, 19, 123456, '2023-05-17', '2023-05-29');
INSERT INTO `lend_list`
VALUES (170, 19, 123456, '2023-05-17', '2023-05-29');
INSERT INTO `lend_list`
VALUES (171, 19, 123456, '2023-05-17', '2023-05-29');
INSERT INTO `lend_list`
VALUES (172, 19, 123456, '2023-05-17', '2023-05-29');
INSERT INTO `lend_list`
VALUES (173, 19, 123456, '2023-05-17', '2023-05-29');
INSERT INTO `lend_list`
VALUES (174, 19, 123456, '2023-05-17', '2023-05-29');
INSERT INTO `lend_list`
VALUES (175, 19, 123456, '2023-05-17', '2023-05-29');
INSERT INTO `lend_list`
VALUES (176, 17, 123456, '2023-05-17', '2023-06-08');
INSERT INTO `lend_list`
VALUES (177, 19, 123456, '2023-05-17', '2023-05-29');
INSERT INTO `lend_list`
VALUES (178, 19, 123456, '2023-05-17', '2023-05-29');
INSERT INTO `lend_list`
VALUES (179, 17, 123456, '2023-05-17', '2023-06-08');
INSERT INTO `lend_list`
VALUES (180, 17, 123456, '2023-05-17', '2023-06-08');
INSERT INTO `lend_list`
VALUES (181, 19, 123456, '2023-05-17', '2023-05-29');
INSERT INTO `lend_list`
VALUES (182, 19, 123456, '2023-05-17', '2023-05-29');
INSERT INTO `lend_list`
VALUES (183, 17, 123456, '2023-05-17', '2023-06-08');
INSERT INTO `lend_list`
VALUES (184, 17, 123456, '2023-05-17', '2023-06-08');
INSERT INTO `lend_list`
VALUES (185, 19, 123456, '2023-05-17', '2023-05-29');
INSERT INTO `lend_list`
VALUES (186, 17, 123456, '2023-05-17', '2023-06-08');
INSERT INTO `lend_list`
VALUES (187, 17, 123456, '2023-05-17', '2023-06-08');
INSERT INTO `lend_list`
VALUES (188, 17, 123456, '2023-05-17', '2023-06-08');
INSERT INTO `lend_list`
VALUES (189, 17, 123456, '2023-05-17', '2023-06-08');
INSERT INTO `lend_list`
VALUES (190, 19, 123456, '2023-05-17', '2023-05-29');
INSERT INTO `lend_list`
VALUES (191, 17, 123456, '2023-05-17', '2023-06-08');
INSERT INTO `lend_list`
VALUES (192, 19, 123456, '2023-05-17', '2023-05-29');
INSERT INTO `lend_list`
VALUES (193, 19, 123456, '2023-05-17', '2023-05-29');
INSERT INTO `lend_list`
VALUES (194, 17, 123456, '2023-05-17', '2023-06-08');
INSERT INTO `lend_list`
VALUES (195, 17, 123456, '2023-05-17', '2023-06-08');
INSERT INTO `lend_list`
VALUES (196, 19, 123456, '2023-05-17', '2023-05-29');
INSERT INTO `lend_list`
VALUES (197, 19, 123456, '2023-05-17', '2023-05-29');
INSERT INTO `lend_list`
VALUES (198, 17, 123456, '2023-05-17', '2023-06-08');
INSERT INTO `lend_list`
VALUES (199, 19, 123456, '2023-05-18', '2023-05-29');
INSERT INTO `lend_list`
VALUES (200, 19, 123456, '2023-05-18', '2023-05-29');
INSERT INTO `lend_list`
VALUES (201, 19, 123456, '2023-05-18', '2023-05-29');
INSERT INTO `lend_list`
VALUES (202, 17, 123456, '2023-05-18', '2023-06-08');
INSERT INTO `lend_list`
VALUES (203, 17, 123456, '2023-05-18', '2023-06-08');
INSERT INTO `lend_list`
VALUES (204, 13, 123456, '2023-05-18', '2023-05-25');
INSERT INTO `lend_list`
VALUES (205, 13, 123456, '2023-05-18', '2023-05-25');
INSERT INTO `lend_list`
VALUES (206, 12, 123456, '2023-05-19', '2023-05-19');
INSERT INTO `lend_list`
VALUES (207, 13, 123456, '2023-05-19', '2023-05-25');
INSERT INTO `lend_list`
VALUES (208, 19, 123456, '2023-05-19', '2023-05-29');
INSERT INTO `lend_list`
VALUES (209, 19, 123456, '2023-05-19', '2023-05-29');
INSERT INTO `lend_list`
VALUES (210, 19, 123456, '2023-05-19', '2023-05-29');
INSERT INTO `lend_list`
VALUES (211, 12, 123456, '2023-05-19', '2023-05-19');
INSERT INTO `lend_list`
VALUES (212, 1, 123456, '2023-05-21', '2023-05-29');
INSERT INTO `lend_list`
VALUES (213, 17, 123456, '2023-05-24', '2023-06-08');
INSERT INTO `lend_list`
VALUES (214, 4, 123456, '2023-05-25', '2023-05-25');
INSERT INTO `lend_list`
VALUES (215, 3, 123456, '2023-05-25', '2023-05-31');
INSERT INTO `lend_list`
VALUES (216, 3, 123456, '2023-05-25', '2023-05-31');
INSERT INTO `lend_list`
VALUES (217, 10, 123456, '2023-05-25', '2023-06-02');
INSERT INTO `lend_list`
VALUES (218, 10, 123456, '2023-05-25', '2023-06-02');
INSERT INTO `lend_list`
VALUES (219, 1, 123456, '2023-05-25', '2023-05-29');
INSERT INTO `lend_list`
VALUES (220, 3, 123456, '2023-05-25', '2023-05-31');
INSERT INTO `lend_list`
VALUES (221, 13, 123456, '2023-05-25', '2023-05-25');
INSERT INTO `lend_list`
VALUES (222, 13, 123456, '2023-05-25', '2023-05-25');
INSERT INTO `lend_list`
VALUES (223, 1, 123456, '2023-05-25', '2023-05-29');
INSERT INTO `lend_list`
VALUES (224, 1, 123456, '2023-05-26', '2023-05-29');
INSERT INTO `lend_list`
VALUES (225, 1, 123456, '2023-05-26', '2023-05-29');
INSERT INTO `lend_list`
VALUES (226, 17, 123456, '2023-05-26', '2023-06-08');
INSERT INTO `lend_list`
VALUES (227, 10, 123456, '2023-05-26', '2023-06-02');
INSERT INTO `lend_list`
VALUES (228, 17, 123456, '2023-05-26', '2023-06-08');
INSERT INTO `lend_list`
VALUES (229, 17, 123456, '2023-05-26', '2023-06-08');
INSERT INTO `lend_list`
VALUES (230, 17, 123456, '2023-05-26', '2023-06-08');
INSERT INTO `lend_list`
VALUES (231, 5, 123456, '2023-05-26', '2023-05-26');
INSERT INTO `lend_list`
VALUES (232, 17, 123456, '2023-05-26', '2023-06-08');
INSERT INTO `lend_list`
VALUES (233, 17, 123456, '2023-05-27', '2023-06-08');
INSERT INTO `lend_list`
VALUES (234, 17, 123456, '2023-05-27', '2023-06-08');
INSERT INTO `lend_list`
VALUES (235, 17, 123456, '2023-05-27', '2023-06-08');
INSERT INTO `lend_list`
VALUES (236, 19, 123456, '2023-05-27', '2023-05-29');
INSERT INTO `lend_list`
VALUES (237, 17, 123456, '2023-05-27', '2023-06-08');
INSERT INTO `lend_list`
VALUES (238, 1, 123456, '2023-05-27', '2023-05-29');
INSERT INTO `lend_list`
VALUES (239, 17, 123456, '2023-05-29', '2023-06-08');
INSERT INTO `lend_list`
VALUES (240, 17, 123456, '2023-05-29', '2023-06-08');
INSERT INTO `lend_list`
VALUES (241, 17, 123456, '2023-05-29', '2023-06-08');
INSERT INTO `lend_list`
VALUES (242, 3, 123456, '2023-05-29', '2023-05-31');
INSERT INTO `lend_list`
VALUES (243, 17, 123456, '2023-05-31', '2023-06-08');
INSERT INTO `lend_list`
VALUES (244, 17, 123456, '2023-05-31', '2023-06-08');
INSERT INTO `lend_list`
VALUES (245, 17, 123456, '2023-06-01', '2023-06-08');
INSERT INTO `lend_list`
VALUES (246, 10, 123456, '2023-06-02', '2023-06-02');
INSERT INTO `lend_list`
VALUES (247, 19, 123456, '2023-06-05', NULL);
INSERT INTO `lend_list`
VALUES (248, 19, 123456, '2023-06-05', NULL);
INSERT INTO `lend_list`
VALUES (249, 17, 123456, '2023-06-05', '2023-06-08');
INSERT INTO `lend_list`
VALUES (250, 17, 123456, '2023-06-08', '2023-06-08');
INSERT INTO `lend_list`
VALUES (251, 1, 123456, '2023-06-08', NULL);

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
  AUTO_INCREMENT = 28
  CHARACTER SET = utf8
  COLLATE = utf8_general_ci
  ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of news
-- ----------------------------
INSERT INTO `news`
VALUES (2, 'admin', '华迪实训15天', '华迪科技有限责任公司', '2023-04-04', '2023-04-30 08:40:55', 0);
INSERT INTO `news`
VALUES (3, 'admin', '明天举办图书馆活动',
        '家庭教育大讲堂\r\n\r\n孔子说：“不学诗无以言，不学礼无以立”\r\n\r\n何为诗？何为礼？何为家风？\r\n\r\n中国古代诗礼能够传家几千年\r\n\r\n也是传统文化能流传至今的一个重要原因\r\n\r\n就是秉承“诗礼传家”的文化理念\r\n\r\n千百年来中国传统文化以礼兴邦、以礼持家',
        '2023-04-04', '2023-04-27 11:13:09', 1);
INSERT INTO `news`
VALUES (4, 'admin', '关于图书座位预约事宜',
        '疫情防控期间，图书馆为满足本校师生教学、科研、学习的需求，并减少人员流动和聚集带来的风险，决定开馆后读者入馆需提前网上预约。预约成功后，才能刷卡入馆。\r\n\r\n预约流程如下：\r\n\r\n1.点击链接：http://libbook.shupl.edu.cn，或者扫以下二维码进入预约页面；或登陆图书馆主页--入馆预约进入。\r\n\r\n2.选择入馆日期(今天/明天)，登录预约。\r\n\r\n\r\n提示：\r\n\r\n用户名：学生为学号；教师为满十位的工号(不足十位的，前面加0)。\r\n\r\n密码：“我的图书馆”登录密码。\r\n\r\n未登录过“我的图书馆”的学生，需至图书馆主页-入馆预约-书目查询-我的图书馆，以初始密码登录后修改设置密码。学生登录初始密码为身份证后6位或身份证后8位。忘记密码请至图书馆总服台重置密码。\r\n\r\n未开通校园卡借阅功能的教师需先至图书馆总服务台开通，才能正常登录。\r\n\r\n3.登录成功后，点击“我要预约”按钮。提示预约成功后，可进入“我的中心”，在“我的入馆预约”中查看预约情况。',
        '2020-06-04', '2023-04-27 15:36:50', 1);
INSERT INTO `news`
VALUES (5, 'admin', '9999', '今天放假，喜提五天假期', '2023-04-27', '2023-05-02 09:48:43', 1);
INSERT INTO `news`
VALUES (6, 'admin', '《国文天地》数据库', '《国文天地》数据库', '2023-04-27', '2023-04-27 15:36:40', 1);
INSERT INTO `news`
VALUES (7, 'admin', '“数学之美”第三讲举行：杨磊解读五次方程与正二十面体',
        '“数学之美”第三讲举行：杨磊解读五次方程与正二十面体', '2023-04-27', '2020-04-27 11:13:17', 2);
INSERT INTO `news`
VALUES (8, 'admin', '欢迎参加BALIS馆际互借与原文传递宣传月活动（4-5月）',
        '欢迎参加BALIS馆际互借与原文传递宣传月活动（4-5月）', '2023-04-27', '2023-04-27 15:58:39', 1);
INSERT INTO `news`
VALUES (9, 'admin',
        ' “同人民一起开拓 同祖国一起奋进——北京大学学习贯彻习近平总书记‘5·2’重要讲话精神五周年暨庆祝建校125周年主题展览”开展',
        ' “同人民一起开拓 同祖国一起奋进——北京大学学习贯彻习近平总书记‘5·2’重要讲话精神五周年暨庆祝建校125周年主题展览”开展',
        '2022-01-27', '2023-04-28 15:21:06', 0);
INSERT INTO `news`
VALUES (10, 'admin', '信息素质工作坊|“学术写作自习室”活动开始', '信息素质工作坊|“学术写作自习室”活动开始啦',
        '2019-04-27', '2023-04-29 07:35:56', 1);
INSERT INTO `news`
VALUES (11, 'admin', '关于图书座位预约事宜',
        '疫情防控期间，图书馆为满足本校师生教学、科研、学习的需求，并减少人员流动和聚集带来的风险，决定开馆后读者入馆需提前网上预约。预约成功后，才能刷卡入馆。 预约流程如下： 1.点击链接：http://libbook.shupl.edu.cn，或者扫以下二维码进入预约页面；或登陆图书馆主页--入馆预约进入。 2.选择入馆日期(今天/明天)，登录预约。 提示： 用户名：学生为学号；教师为满十位的工号(不足十位的，前面加0)。 密码：“我的图书馆”登录密码。 未登录过“我的图书馆”的学生，需至图书馆主页-入馆预约-书目查询-我的图书馆，以初始密码登录后修改设置密码。学生登录初始密码为身份证后6位或身份证后8位。忘记密码请至图书馆总服台重置密码。 未开通校园卡借阅功能的教师需先至图书馆总服务台开通，才能正常登录。 3.登录成功后，点击“我要预约”按钮。提示预约成功后，可进入“我的中心”，在“我的入馆预约”中查看预约情况。',
        '2023-04-30', NULL, 1);
INSERT INTO `news`
VALUES (25, 'admin', ' 创作中心 ', '123', '2023-05-27', '2023-05-28 06:11:18', 0);
INSERT INTO `news`
VALUES (27, 'admin', 'aasdfas', 'adsdaf dsfxxx', '2023-05-31', '2023-05-31 23:39:52', 0);

-- ----------------------------
-- Table structure for reader_card
-- ----------------------------
DROP TABLE IF EXISTS `reader_card`;
CREATE TABLE `reader_card`
(
    `reader_id` bigint                                                 NOT NULL,
    `username`  varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `password`  varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
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
VALUES (333, '西门飘雪', '123');
INSERT INTO `reader_card`
VALUES (123456, '乱臣贼子', '123');

-- ----------------------------
-- Table structure for reader_info
-- ----------------------------
DROP TABLE IF EXISTS `reader_info`;
CREATE TABLE `reader_info`
(
    `reader_id` bigint                                                 NOT NULL,
    `name`      varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `sex`       varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci  NOT NULL,
    `birth`     date                                                   NOT NULL,
    `address`   varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `phone`     varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    PRIMARY KEY (`reader_id`) USING BTREE
) ENGINE = InnoDB
  CHARACTER SET = utf8
  COLLATE = utf8_general_ci
  ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of reader_info
-- ----------------------------
INSERT INTO `reader_info`
VALUES (123456, '坤哥', '男', '2023-01-08', '美国', '12010554');
INSERT INTO `reader_info`
VALUES (17034480631, '校企航', '男', '2023-01-17', '西昌', '110');

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
  AUTO_INCREMENT = 37
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
