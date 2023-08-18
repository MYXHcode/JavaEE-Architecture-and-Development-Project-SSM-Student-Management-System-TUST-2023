/*
 student_management_system 数据库

 Source Server         : 本地
 Source Server Type    : MySQL
 Source Server Version : 8.0.31
 Source Host           : localhost:3306
 Source Schema         : student_management_system

 Target Server Type    : MySQL
 Target Server Version : 8.0.31
 File Encoding         : UTF-8

 Date: 2023/06/04 18:15:00
*/

-- 创建数据库 student_management_system
CREATE DATABASE if not exists student_management_system;

USE student_management_system;

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- class_info 的表结构
DROP TABLE IF EXISTS `class_info`;
CREATE TABLE `class_info`
(
    `class_name`      varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
    `student_num`     int                                                          NOT NULL,
    `monitor`         varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
    `study_committee` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
    `life_committee`  varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
    PRIMARY KEY (`class_name`) USING BTREE
) ENGINE = InnoDB
  CHARACTER SET = utf8mb4
  COLLATE = utf8mb4_0900_ai_ci
  ROW_FORMAT = Dynamic;

-- class_info 的记录
INSERT INTO `class_info` (class_name, student_num, monitor, study_committee, life_committee)
VALUES ('1班', 30, '王小明', '张丽', '李华'),
       ('2班', 30, '陈志华', '林岚', '黄翔'),
       ('3班', 30, '刘洋', '邓磊', '孙雨'),
       ('4班', 30, '周尚斌', '钱佳怡', '吴启华');

-- stu_curriculum 的表结构
DROP TABLE IF EXISTS `stu_curriculum`;
CREATE TABLE `stu_curriculum`
(
    `id`                  int                                                           NOT NULL AUTO_INCREMENT,
    `course_id`           int                                                           NULL DEFAULT NULL,
    `course_name`         varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
    `course_nature`       varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci  NULL DEFAULT NULL,
    `course_selected_ID`  varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci  NULL DEFAULT NULL,
    `course_selected_stu` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
    `course_status`       varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci  NULL DEFAULT NULL,
    `grade`               int                                                           NULL DEFAULT NULL,
    PRIMARY KEY (`id`) USING BTREE,
    INDEX `course_name` (`course_name`) USING BTREE,
    INDEX `course_selected_ID` (`course_selected_ID`) USING BTREE,
    INDEX `course_id` (`course_id`) USING BTREE,
    CONSTRAINT `stu_curriculum_ibfk_2` FOREIGN KEY (`course_selected_ID`) REFERENCES `student` (`ID`) ON DELETE RESTRICT ON UPDATE RESTRICT,
    CONSTRAINT `stu_curriculum_ibfk_3` FOREIGN KEY (`course_id`) REFERENCES `training_program` (`course_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB
  AUTO_INCREMENT = 150
  CHARACTER SET = utf8mb4
  COLLATE = utf8mb4_0900_ai_ci
  ROW_FORMAT = Dynamic;

-- stu_curriculum 的记录
INSERT INTO `stu_curriculum` (`course_id`, `course_name`, `course_nature`, `course_selected_ID`, `course_selected_stu`,
                              `course_status`, `grade`)
VALUES (1, 'JavaEE架构及开发', '必修课', '20101330', '邓磊', '已修', 90),
       (2, '数据库原理与应用', '必修课', '20101343', '李华', '已修', 85),
       (3, '操作系统原理', '必修课', '20101341', '王小明', '未修', null),
       (4, '计算机网络技术', '必修课', '20101344', '陈志华', '未修', null),
       (5, '数据结构与算法', '必修课', '20101347', '刘洋', '已修', 92),
       (6, '软件工程实践', '必修课', '20101349', '孙雨', '未修', null),
       (7, 'Web前端开发', '选修课', '20101346', '黄翔', '已修', 88),
       (8, '人工智能导论', '选修课', '20101401', '周尚斌', '未修', null),
       (9, 'Java基础', '必修课', '20101350', '钱佳怡', '已修', 94),
       (10, 'Python编程', '选修课', '20101402', '吴启华', '已修', 96),
       (11, '计算机组成原理', '必修课', '20101348', '陈志华', '未修', null),
       (12, '数据挖掘与分析', '选修课', '20101403', '李华', '未修', null),
       (13, '软件测试基础', '选修课', '20101404', '王小明', '已修', 87),
       (14, '计算机图形学', '选修课', '20101405', '刘洋', '未修', null),
       (15, '机器学习导论', '选修课', '20101406', '孙雨', '已修', 91),
       (16, 'C++程序设计', '选修课', '20101407', '钱佳怡', '未修', null),
       (17, '计算机科学前沿技术', '选修课', '20101408', '周尚斌', '未修', null),
       (18, '操作系统实验', '必修课', '20101351', '吴启华', '已修', 89),
       (19, 'JavaWeb开发', '必修课', '20101352', '黄翔', '未修', null),
       (20, '云计算与大数据技术', '选修课', '20101409', '邓磊', '未修', null),
       (21, '计算机网络安全', '选修课', '20101410', '王小明', '未修', null),
       (22, '软件工程管理', '选修课', '20101411', '孙雨', '已修', 93),
       (23, 'Web应用开发', '必修课', '20101353', '钱佳怡', '未修', null),
       (24, 'Java实践技能', '必修课', '20101354', '周尚斌', '已修', 86),
       (25, 'Python数据分析', '选修课', '20101412', '陈志华', '未修', null),
       (26, '计算机视觉基础', '选修课', '20101413', '吴启华', '已修', 95),
       (27, '计算机组成原理实验', '必修课', '20101355', '刘洋', '未修', null),
       (28, '操作系统原理实验', '必修课', '20101356', '李华', '已修', 84),
       (29, '大数据分析导论', '选修课', '20101414', '邓磊', '未修', null),
       (30, '人工智能编程', '选修课', '20101415', '黄翔', '已修', 90);

-- student 的表结构
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student`
(
    `ID`             varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
    `student_name`   varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
    `ID_card`        varchar(18) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
    `phone_number`   varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
    `start_year`     year                                                         NULL DEFAULT NULL,
    `student_source` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
    `major`          varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
    `class_name`     varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
    PRIMARY KEY (`ID`) USING BTREE,
    INDEX `class_name` (`class_name`) USING BTREE,
    CONSTRAINT `student_ibfk_1` FOREIGN KEY (`class_name`) REFERENCES `class_info` (`class_name`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB
  CHARACTER SET = utf8mb4
  COLLATE = utf8mb4_0900_ai_ci
  ROW_FORMAT = Dynamic;

-- student 的记录
INSERT INTO `student` (ID, student_name, ID_card, phone_number, start_year, student_source, major, class_name)
VALUES ('20101330', '邓磊', '63010220030109XXXX', '18812612826', 2020, '天津', '计算机科学与技术', '3班'),
       ('20101341', '王小明', '71010220031212XXXX', '13811112222', 2020, '北京', '计算机科学与技术', '1班'),
       ('20101342', '张丽', '72010220040202XXXX', '13922223333', 2020, '上海', '软件工程', '2班'),
       ('20101343', '李华', '73010220040303XXXX', '13633334444', 2020, '广州', '数据科学与大数据技术', '3班'),
       ('20101344', '陈志华', '74010220050404XXXX', '15044445555', 2020, '深圳', '网络工程', '4班'),
       ('20101345', '林岚', '75010220050606XXXX', '15255556666', 2020, '重庆', '信息安全', '1班'),
       ('20101346', '黄翔', '76010220060707XXXX', '17866667777', 2020, '武汉', '软件工程', '2班'),
       ('20101347', '刘洋', '77010220070808XXXX', '18877778888', 2020, '成都', '计算机科学与技术', '3班'),
       ('20101349', '孙雨', '79010220091010XXXX', '13699990000', 2020, '南京', '数字媒体技术', '1班'),
       ('20101350', '钱佳怡', '80010220101111XXXX', '13900001111', 2020, '杭州', '软件工程', '2班'),
       ('20101351', '吴启华', '81010220111212XXXX', '13611112222', 2020, '广东', '计算机科学与技术', '4班'),
       ('20101352', '黄宇', '82010220121212XXXX', '13922223333', 2020, '湖南', '软件工程', '3班'),
       ('20101353', '王鑫', '83010220131111XXXX', '13833334444', 2020, '江苏', '数据科学与大数据技术', '2班'),
       ('20101354', '李峰', '84010220140404XXXX', '15044445555', 2020, '陕西', '网络工程', '1班'),
       ('20101355', '张强', '85010220150505XXXX', '15255556666', 2020, '湖北', '信息安全', '4班'),
       ('20101356', '刘健', '86010220160606XXXX', '17866667777', 2020, '四川', '软件工程', '3班'),
       ('20101357', '王丽', '87010220170707XXXX', '18877778888', 2020, '山东', '计算机科学与技术', '2班'),
       ('20101358', '孙文', '88010220180808XXXX', '13699990000', 2020, '江西', '数字媒体技术', '1班'),
       ('20101359', '李秀', '89010220190909XXXX', '13900001111', 2020, '浙江', '软件工程', '3班'),
       ('20101360', '陈艳', '90010220202020XXXX', '13811112222', 2020, '福建', '计算机科学与技术', '4班'),
       ('20101361', '黄龙', '91010220212121XXXX', '13922223333', 2020, '湖南', '软件工程', '2班'),
       ('20101362', '王雨', '92010220222222XXXX', '13833334444', 2020, '天津', '数据科学与大数据技术', '1班'),
       ('20101363', '张宇', '93010220333333XXXX', '15044445555', 2020, '山东', '网络工程', '3班'),
       ('20101364', '吴凡', '94010220444444XXXX', '15255556666', 2020, '广东', '信息安全', '4班'),
       ('20101365', '刘勇', '95010220555555XXXX', '17866667777', 2020, '河南', '软件工程', '2班'),
       ('20101366', '王明', '96010220666666XXXX', '18877778888', 2020, '湖北', '计算机科学与技术', '1班'),
       ('20101367', '黄飞', '97010220777777XXXX', '13699990000', 2020, '湖南', '数字媒体技术', '3班'),
       ('20101368', '赵云', '98010220888888XXXX', '13900001111', 2020, '山西', '软件工程', '4班'),
       ('20101369', '刘备', '99010220999999XXXX', '13811112222', 2020, '河北', '数据科学与大数据技术', '2班'),
       ('20101370', '关羽', '00110221010101XXXX', '13922223333', 2020, '四川', '网络工程', '1班');

-- training_program 的表结构
DROP TABLE IF EXISTS `training_program`;
CREATE TABLE `training_program`
(
    `course_id`          int                                                           NOT NULL AUTO_INCREMENT,
    `course_name`        varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
    `course_nature`      varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci  NULL DEFAULT NULL,
    `course_major`       varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
    `course_teacher`     varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci  NULL DEFAULT NULL,
    `course_attributes`  varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
    `preliminary_course` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
    `followup_course`    varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
    PRIMARY KEY (`course_id`) USING BTREE,
    INDEX `id` (`course_id`) USING BTREE
) ENGINE = InnoDB
  AUTO_INCREMENT = 25
  CHARACTER SET = utf8mb4
  COLLATE = utf8mb4_0900_ai_ci
  ROW_FORMAT = Dynamic;

-- training_program 的记录
INSERT INTO `training_program` (`course_name`, `course_nature`, `course_major`, `course_teacher`, `course_attributes`,
                                `preliminary_course`, `followup_course`)
VALUES ('JavaEE架构及开发', '必修课', '计算机科学与技术', '张老师', '1', 'Java基础', 'Web前端开发'),
       ('数据库原理与应用', '必修课', '计算机科学与技术', '张老师', '1', 'Java基础', '操作系统原理'),
       ('操作系统原理', '必修课', '计算机科学与技术', '李老师', '1', '计算机组成原理', '计算机网络技术'),
       ('计算机网络技术', '必修课', '计算机科学与技术', '王老师', '1', '操作系统原理', 'Web前端开发'),
       ('数据结构与算法', '必修课', '计算机科学与技术', '陈老师', '1', 'Java基础', '人工智能导论'),
       ('软件工程实践', '必修课', '软件工程', '张老师', '1', 'Java基础', 'Web前端开发'),
       ('Web前端开发', '选修课', '计算机科学与技术', '林老师', '2', 'HTML/CSS', 'JavaScript高级编程'),
       ('人工智能导论', '选修课', '计算机科学与技术', '黄老师', '2', 'Python编程', '深度学习'),
       ('Java基础', '必修课', '计算机科学与技术', '张老师', '1', null, 'JavaEE架构及开发'),
       ('Python编程', '选修课', '计算机科学与技术', '李老师', '2', null, '数据科学与大数据技术'),
       ('计算机组成原理', '必修课', '计算机科学与技术', '孙老师', '1', '数字电路', '操作系统原理'),
       ('操作系统实验', '必修课', '计算机科学与技术', '刘老师', '1', '操作系统原理', '计算机网络技术'),
       ('JavaWeb开发', '必修课', '计算机科学与技术', '刘老师', '1', 'Java基础', '数据库原理与应用'),
       ('云计算与大数据技术', '选修课', '计算机科学与技术', '张老师', '2', '数据库原理与应用', '大数据分析'),
       ('计算机网络安全', '选修课', '计算机科学与技术', '任老师', '2', '计算机网络技术', 'Web安全'),
       ('软件工程管理', '选修课', '软件工程', '赵老师', '2', '软件工程实践', '项目管理'),
       ('Web应用开发', '必修课', '计算机科学与技术', '李老师', '1', 'JavaWeb开发', '数据库原理与应用'),
       ('Java实践技能', '必修课', '计算机科学与技术', '王老师', '1', 'Java基础', 'JavaEE架构及开发'),
       ('Python数据分析', '选修课', '计算机科学与技术', '吴老师', '2', 'Python编程', 'R语言'),
       ('计算机组成原理实验', '必修课', '计算机科学与技术', '孙老师', '1', '计算机组成原理', '操作系统原理实验'),
       ('操作系统原理实验', '必修课', '计算机科学与技术', '刘老师', '1', '操作系统原理', '计算机网络技术'),
       ('大数据分析导论', '选修课', '计算机科学与技术', '陈老师', '2', '数据库原理与应用', '数据挖掘'),
       ('人工智能编程', '选修课', '计算机科学与技术', '杨老师', '2', '人工智能导论', '深度学习'),
       ('计算机视觉基础', '选修课', '计算机科学与技术', '郑老师', '2', '矩阵代数', '理解图像'),
       ('C++程序设计', '选修课', '计算机科学与技术', '彭老师', '2', null, '程序设计实践'),
       ('计算机科学前沿技术', '选修课', '计算机科学与技术', '冯老师', '2', null, '科普讲座'),
       ('物联网技术', '选修课', '通信工程', '陈老师', '2', '计算机网络技术', '智能硬件系统'),
       ('移动开发', '选修课', '软件工程', '张老师', '2', 'JavaWeb开发', 'Android开发'),
       ('Web安全', '选修课', '网络工程', '李老师', '2', '计算机网络技术', '网络安全'),
       ('软件测试', '选修课', '软件工程', '刘老师', '2', '软件开发过程', '测试方法与工具'),
       ('数据挖掘与分析', '选修课', '数据科学与大数据技术', '陈老师', '2', '数据库原理与应用', '机器学习');

-- u_student 的表结构
DROP TABLE IF EXISTS `u_student`;
CREATE TABLE `u_student`
(
    `ID`       varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci  NOT NULL,
    `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
    PRIMARY KEY (`ID`) USING BTREE,
    CONSTRAINT `u_student_ibfk_1` FOREIGN KEY (`ID`) REFERENCES `student` (`ID`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB
  CHARACTER SET = utf8mb4
  COLLATE = utf8mb4_0900_ai_ci
  ROW_FORMAT = Dynamic;

-- u_student 的记录
INSERT INTO `u_student` (ID, password)
VALUES ('20101330', '520.ILY!');

-- u_teacher 的表结构
DROP TABLE IF EXISTS `u_teacher`;
CREATE TABLE `u_teacher`
(
    `ID`       varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci  NOT NULL,
    `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
    `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
    PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB
  CHARACTER SET = utf8mb4
  COLLATE = utf8mb4_0900_ai_ci
  ROW_FORMAT = Dynamic;

-- u_teacher 的记录
INSERT INTO `u_teacher`
VALUES ('teacher', '张老师', '123456');

-- u_tsecretary 的表结构
DROP TABLE IF EXISTS `u_tsecretary`;
CREATE TABLE `u_tsecretary`
(
    `ID`       varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci  NOT NULL,
    `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
    `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
    PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB
  CHARACTER SET = utf8mb4
  COLLATE = utf8mb4_0900_ai_ci
  ROW_FORMAT = Dynamic;

-- u_tsecretary 的记录
INSERT INTO `u_tsecretary`
VALUES ('admin', '教秘', '000000');

SET FOREIGN_KEY_CHECKS = 1;
