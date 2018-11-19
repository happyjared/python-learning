/*
 Navicat Premium Data Transfer

 Source Server Type    : PostgreSQL
 Date: 19/11/2018 09:46:31
*/


-- ----------------------------
-- Table structure for tb_imooc_course
-- ----------------------------
DROP TABLE IF EXISTS "public"."tb_imooc_course";
CREATE TABLE "public"."tb_imooc_course" (
  "id" int4 NOT NULL DEFAULT nextval('tb_imooc_course_id_seq'::regclass),
  "course_id" int4 NOT NULL,
  "name" varchar(100) COLLATE "pg_catalog"."default" NOT NULL,
  "difficult" varchar(30) COLLATE "pg_catalog"."default" NOT NULL,
  "student" int4 NOT NULL,
  "desc" varchar(250) COLLATE "pg_catalog"."default" NOT NULL,
  "label" varchar(50) COLLATE "pg_catalog"."default" NOT NULL,
  "image_urls" varchar(250) COLLATE "pg_catalog"."default" NOT NULL,
  "detail" varchar(250) COLLATE "pg_catalog"."default" NOT NULL,
  "duration" varchar(50) COLLATE "pg_catalog"."default" NOT NULL,
  "overall_score" float4,
  "content_score" float4,
  "concise_score" float4,
  "logic_score" float4,
  "summary" varchar(800) COLLATE "pg_catalog"."default",
  "teacher_nickname" varchar(30) COLLATE "pg_catalog"."default",
  "teacher_avatar" varchar(250) COLLATE "pg_catalog"."default",
  "teacher_job" varchar(30) COLLATE "pg_catalog"."default",
  "tip" varchar(500) COLLATE "pg_catalog"."default",
  "can_learn" varchar(500) COLLATE "pg_catalog"."default",
  "update_time" timestamp(6) NOT NULL,
  "create_time" timestamp(6) NOT NULL
)
;
COMMENT ON COLUMN "public"."tb_imooc_course"."id" IS '自增主键';
COMMENT ON COLUMN "public"."tb_imooc_course"."course_id" IS '课程id';
COMMENT ON COLUMN "public"."tb_imooc_course"."name" IS '课程名称';
COMMENT ON COLUMN "public"."tb_imooc_course"."difficult" IS '难度级别';
COMMENT ON COLUMN "public"."tb_imooc_course"."student" IS '学习人数';
COMMENT ON COLUMN "public"."tb_imooc_course"."desc" IS '课程描述';
COMMENT ON COLUMN "public"."tb_imooc_course"."label" IS '分类标签';
COMMENT ON COLUMN "public"."tb_imooc_course"."image_urls" IS '封面图片';
COMMENT ON COLUMN "public"."tb_imooc_course"."detail" IS '详情地址';
COMMENT ON COLUMN "public"."tb_imooc_course"."duration" IS '课程时长';
COMMENT ON COLUMN "public"."tb_imooc_course"."overall_score" IS '综合评分';
COMMENT ON COLUMN "public"."tb_imooc_course"."content_score" IS '内容实用';
COMMENT ON COLUMN "public"."tb_imooc_course"."concise_score" IS '简洁易懂';
COMMENT ON COLUMN "public"."tb_imooc_course"."logic_score" IS '逻辑清晰';
COMMENT ON COLUMN "public"."tb_imooc_course"."summary" IS '课程简介';
COMMENT ON COLUMN "public"."tb_imooc_course"."teacher_nickname" IS '教师昵称';
COMMENT ON COLUMN "public"."tb_imooc_course"."teacher_avatar" IS '教师头像';
COMMENT ON COLUMN "public"."tb_imooc_course"."teacher_job" IS '教师职位';
COMMENT ON COLUMN "public"."tb_imooc_course"."tip" IS '课程须知';
COMMENT ON COLUMN "public"."tb_imooc_course"."can_learn" IS '能学什么';
COMMENT ON COLUMN "public"."tb_imooc_course"."update_time" IS '更新时间';
COMMENT ON COLUMN "public"."tb_imooc_course"."create_time" IS '入库时间';
COMMENT ON TABLE "public"."tb_imooc_course" IS '免费课程信息表';

-- ----------------------------
-- Records of tb_imooc_course
-- ----------------------------
INSERT INTO "public"."tb_imooc_course" VALUES (831, 132, 'PHP中的数据传输神器cURL', '中级', 31240, 'cURL就是这样的利器，可以帮助大家操作各种网络资源', 'PHP', 'https://img2.mukewang.com/570762be0001898506000338-240-135.jpg', 'https://www.imooc.com/learn/132', '53分', 9.5, 9.8, 9.5, 9.3, '简介：网络资源千变万化，有网页、图片、脚本、文件数据等。如何通过php程序访问和控制经常成为工作中需要解决的问题？cURL就是这样的利器，可以帮助大家操作各种网络资源。', 'Peter', 'https://img4.mukewang.com/539e65a10001963a01400140-80-80.jpg', '其它', '本课程是PHP中级课程
1、熟练掌握PHP开发语言基础语法', '1、cURL的基本概念			
2、cURL的使用场景			
3、PHP中使用cURL			
4、使用cURL实现网页爬虫、访问WebService、FTP文件操作和HTTPS资源访问			', '2018-09-02 20:37:47.416496', '2018-08-12 23:48:37.523531');
INSERT INTO "public"."tb_imooc_course" VALUES (4, 1032, 'web渗透测试入门', '入门', 4306, '简单轻松入门渗透测试', '安全测试', 'https://img3.mukewang.com/5b62867d0001d91106000338-240-135.jpg', 'https://www.imooc.com/learn/1032', '1小时15分', 9.4, 9.4, 9.7, 9.2, '简介：本课程通过讲解暴力破解，上传漏洞等，并在讲解过程中详细分析漏洞形成原因及手把手带着大家给这些漏洞编写补丁代码。', 'persist213', 'https://img2.mukewang.com/5458501000018e5802200220-80-80.jpg', NULL, '有软件测试基础', '1、常用抓包工具burpsuite使用及google黑语法
2、一句话木马
3、暴力破解及上传漏洞形成原理
4、暴力破解及上传漏洞修复方案（包括修复代码的编写）	
', '2018-09-02 20:36:43.70417', '2018-08-12 23:47:26.584585');
INSERT INTO "public"."tb_imooc_course" VALUES (881, 1031, 'python运维-Socket网络编程', '入门', 4313, 'Socket网络编程入门', 'Python, 运维', 'https://img1.mukewang.com/5b600be10001c67f06000338-240-135.jpg', 'https://www.imooc.com/learn/1031', '1小时27分', 10, 10, 10, 10, '简介：使用Python完成Socket网络通讯，并且使用完成文件上传下载功能', '亦德', 'https://img1.mukewang.com/5b601349000191fa03990559-80-80.jpg', 'Python工程师', NULL, NULL, '2018-09-02 20:36:43.828746', '2018-08-13 09:52:45.714662');
INSERT INTO "public"."tb_imooc_course" VALUES (3, 249, 'C语言入门', '入门', 621617, 'C语言入门视频教程，带你进入编程世界的必修课-C语言', 'C', 'https://img3.mukewang.com/574669dc0001993606000338-240-135.jpg', 'https://www.imooc.com/learn/249', '4小时50分', 9.5, 9.7, 9.4, 9.2, '简介：本C语言教程从以下几个模块来贯穿主要知识点：初始C程序、数据类型、运算符、语句结构、函数和数组。每个阶段都配有练习题同时提供在线编程任务。希望通过本教程帮助C语言入门学习者迅速掌握程序逻辑并开始C语言编程。', 'milanlover', 'https://img.mukewang.com/53df3b7a0001b45c01400140-80-80.jpg', 'JAVA开发工程师', '本教程仅仅是C程序设计的入门教程', '什么是程序;
什么是程序结构;
什么是函数;
什么是数组.', '2018-09-02 20:36:39.778525', '2018-08-12 23:47:26.407986');
INSERT INTO "public"."tb_imooc_course" VALUES (2, 85, 'Java入门第一季', '入门', 864311, '本教程从Java环境搭建、工具使用、基础语法开始，带你入门', 'Java', 'https://img1.mukewang.com/57035ff200014b8a06000338-240-135.jpg', 'https://www.imooc.com/learn/85', '5小时 0分', 9.6, 9.8, 9.5, 9.4, '简介：本教程为Java入门第一季，欢迎来到精彩的Java编程世界！Java语言已经成为当前软件开发行业中主流的开发语言。本教程将介绍Java环境搭建、工具使用、基础语法。带领大家一步一步的踏入Java达人殿堂！Let’s go!', '汤小洋', 'https://img3.mukewang.com/596b71040001ff8206400640-80-80.jpg', '全栈工程师', '此部分为Java入门教程，适合零基础的小伙伴们，赶紧开始学习吧。', '1、会配置Java开发环境，并使用工具进行程序开发
2、掌握Java中基本语法的使用并入门

', '2018-09-02 20:36:40.29769', '2018-08-12 23:47:26.355209');
INSERT INTO "public"."tb_imooc_course" VALUES (900, 1024, '短信验证', '中级', 2834, '带领大家掌握短信发送原理以及实战操作短信验证', 'PHP', 'https://img2.mukewang.com/5b5e8c7b0001e3fe06000338-240-135.jpg', 'https://www.imooc.com/learn/1024', '40分', 10, 10, 10, 10, '简介：本课程的内容特色 ，通过新联建立的独立tp5项目，独立讲解短信验证使用，清晰明了，学会简单快速 实现短信API接口的发送 ，注册会员 登录，找回密码等功能', '小月亮thinkp...', 'https://img1.mukewang.com/5b4336e10001c7ca05000500-80-80.jpg', 'PHP开发工程师', '具备PHP基础，对PHP感兴趣', '1、短信验证
2、短信注册 
3、短信登录 
4、短信找回密码功能', '2018-09-02 20:36:40.822321', '2018-08-24 00:19:26.366504');
INSERT INTO "public"."tb_imooc_course" VALUES (24, 986, 'Android UiAutomator 2.0 入门实战', '入门', 6543, '零基础学习UiAutomator 2.0自动化测试,学会编写 Android 自动化测试用例', 'Android, 自动化测试', 'https://img.mukewang.com/5adecab10001991306000338-240-135.jpg', 'https://www.imooc.com/learn/986', '1小时21分', 10, 10, 10, 10, '简介：零基础学习使用UiAutomator 2.0自动化测试，了解框架知识，环境配置，通过学习UI自动化三要素，通过搜索条件（文件、ID、属性等）找到组件（按钮、图标、文本框等），操作组件（点击、长按、滑动、输入等），快速掌握编写Android 自动化测试用例。', '水复', 'https://img2.mukewang.com/58bcf7a30001302301000100-80-80.jpg', '软件测试工程师', '必备知识：Java 基础/Android 编程基础', '1、认识UiAutomator 2.0，了解框架的优势与为什么要学习此框架；
2、Android 开发环境配置，JDK+SDK+Android Studio 配置；
3、核心定位元素，通过文本、ID、属性搜索到需要操作的UI元素；
4、模拟人操作手机，如点击、滑动、长按、输入等；', '2018-09-02 20:36:44.217597', '2018-08-12 23:47:27.870807');
INSERT INTO "public"."tb_imooc_course" VALUES (12, 1026, 'MongoDB 4.0新特性', '中级', 2624, '介绍MongoDB 4.0推出的核心新特性', 'MongoDB, NoSql', 'https://img3.mukewang.com/5b56e2ab000194d806000338-240-135.jpg', 'https://www.imooc.com/learn/1026', '1小时10分', 10, 10, 10, 10, '简介：本课程介绍了MongoDB 4.0推出的几大核心新特性，通过理论讲解和实例演示，帮助你更好的了解新版本新功能', 'Stannum', 'https://img2.mukewang.com/5b558fd00001ca6207410741-80-80.jpg', '软件工程师', '1.有mongodb数据操作及管理基础
2.开发人员/数据库管理人员', '1. 数据库事务的ACID应用
2.聚合类型转换的应用
3.数据订阅功能的扩展和使用', '2018-09-02 20:36:43.615232', '2018-08-12 23:47:27.056411');
INSERT INTO "public"."tb_imooc_course" VALUES (903, 1037, '低多边形（low poly）设计风格', '初级', 1844, '把工具的认知传递到案例中去，在分析案例的同时讲解工具。', '设计工具, 模型制作', 'https://img1.mukewang.com/5b7239540001c3f006000338-240-135.jpg', 'https://www.imooc.com/learn/1037', '1小时16分', 10, 10, 10, 10, '简介：课程主要讲解减面（放样）工具的认识、基础建模搭建（挤压、循环线的认识）以及后期物理天空渲染的参数调节。', '浩然老师', 'https://img3.mukewang.com/5b0e022600017b5c06000600-80-80.jpg', NULL, '1、具备基础的软件界面认识
2、会基础的软件操作', '1、认识减面（放样）工具
2、基础建模搭建（挤压、循环线的认识）
3、后期物理天空渲染的参数调节', '2018-09-02 20:36:40.809514', '2018-08-24 00:19:29.53916');
INSERT INTO "public"."tb_imooc_course" VALUES (96, 933, 'Spring Boot 2.0深度实践-初遇Spring Boot', '中级', 31256, 'Spring Boot 2.x/Web Flux/多模块化项目实践', 'Java, SpringBoot', 'https://img2.mukewang.com/5a52ee3500016ec706000338-240-135.jpg', 'https://www.imooc.com/learn/933', '1小时55分', 9.4, 9.7, 9.2, 9.3, '简介：目前业界最流行的微服务架构正在或者已被各种规模的互联网公司广泛接受和认可，业已成为互联网开发人员必备技术。无论是互联网、云计算还是大数据Java平台已成为全栈的生态体系，其重要性几乎不可替代。Spring Boot作为微服务的基础设施之一，背靠强大的Spring 生态社区，支撑Spring Cloud技术体系。本课程通过实战的方式，从单一应用开发升级为多模块应用开发。根据不同的部署场景，构建不同格式的打包文件，以及在开发和部署阶段，执行不同的运行方式。', '小马哥mercyb...', 'https://img3.mukewang.com/5b459a7700016d1c06400640-80-80.jpg', 'JAVA开发工程师', '1、具备一定的 Java 编程基础
2、具备Java 企业级开发经验（更佳）
3、熟悉 Spring 框架的从业人员，难度中等以上
', '1、Spring Boot 介绍
2、Spring Boot 2.0 新特性
3、Spring Web MVC 学习案例
4、Spring Web Flux学习案例
5、多模块化项目
6、各种Spring Boot构建方式
7、各种 Spring Boot 运行方式
', '2018-09-02 20:36:47.243189', '2018-08-12 23:47:33.618322');
INSERT INTO "public"."tb_imooc_course" VALUES (127, 901, '使用Google Guice实现依赖注入', '高级', 6769, '谷歌大神带你重新理解依赖注入，示范Guice和Spring Boot如何协作', 'Java, SpringBoot', 'https://img3.mukewang.com/59dc2a180001f0a112010679-240-135.jpg', 'https://www.imooc.com/learn/901', '5小时46分', 9.7, 9.7, 10, 9.4, '简介：本课程将带领大家通过Google Guice来系统的学习DI思想中的绑定，注入，生命周期，aop等方面的技巧。并示范Guice和Spring Boot如何协作。对于熟悉Spring的同学，学完本课后可以了解两者异同，加深对DI和Spring的理解。不只是为了单纯教授Gucie的用法，而是以Guice为媒介，希望使同学们在编程能力上能有所提高。

老师相关实战课程《Java校招面试》也已上线：http://coding.imooc.com/class/132.html
基础知识和编程能力是软件工程师职业生涯中长期受益的。', 'ccmouse', 'https://img2.mukewang.com/598bcaf70001f13309600960-80-80.jpg', '全栈工程师', '本课程需要同学有一定项目经验。动手开发过一定规模的项目，对spring ioc/aop有一定理解的同学食用更佳。', '1.深刻理解依赖注入
2.学习Guice的使用
3.学习如何重构和优化代码
4.示范一般的开发向测试如何编写', '2018-09-02 20:36:48.225401', '2018-08-12 23:47:36.16203');
INSERT INTO "public"."tb_imooc_course" VALUES (41, 999, 'iOS开发之LeanCloud', '中级', 1253, '掌握LeanCloud无须单独为应用开发后台。', 'iOS', 'https://img3.mukewang.com/5b052bca000137c006000338-240-135.jpg', 'https://www.imooc.com/learn/999', '1小时 0分', 8, 4, 10, 10, '简介：学习本课程可以快速开发一款带后台的App，而又无需自己开发后台。并通过实际应用完成SDK的接入，以及相关的使用。', '谦益', 'https://img2.mukewang.com/58b6d557000165a005920591-80-80.jpg', '全栈工程师', '1、熟练掌握UI控件的使用
2、熟悉阅读SDK文档的流程
3、熟悉SDK的接入', '1、两种导入SDK的方式
2、SDK文档的阅读流程
3、LeanCloud的使用', '2018-09-02 20:36:41.948301', '2018-08-12 23:47:29.051169');
INSERT INTO "public"."tb_imooc_course" VALUES (16, 1012, 'mobx入门基础教程', '入门', 5574, 'mobx框架基础入门,使用mobx做状态管理', 'JavaScript, React.JS', 'https://img1.mukewang.com/5b28da010001930906000338-240-135.jpg', 'https://www.imooc.com/learn/1012', '1小时58分', 9.6, 9.6, 9.8, 9.6, '简介：介绍mobx框架的应用定位，基础API的使用，实例化的使用方法以及在工业场景中的最佳实践', '茵风泳月', 'https://img2.mukewang.com/5b2c9c510001309402560256-80-80.jpg', 'Web前端工程师', '适合对React视图工具有一定的实际开发经验，特别是对redux有一定的使用经验，想了解其它类似解决方案的同学', 'mobx的使用方法，对React项目的性能优化经验', '2018-09-02 20:36:42.709191', '2018-08-12 23:47:27.290234');
INSERT INTO "public"."tb_imooc_course" VALUES (11, 1022, '机器学习中的统计学基础', '初级', 4246, '机器学习中的常用统计学知识点', '数学', 'https://img1.mukewang.com/5b470bfe0001cdbf06000338-240-135.jpg', 'https://www.imooc.com/learn/1022', '1小时15分', 9.2, 8, 9.7, 10, '简介：课程讲解机器学习中的必备统计学基础知识，包含统计学基础、统计学的应用、统计学分类、机器学习中的方差和偏差以及案例分析等。', '北极小琪', 'https://img3.mukewang.com/545862800001e2d802200220-80-80.jpg', '算法工程师', '有高中数学基础
统计学基础
机器学习的基础', '1.统计学的基础理论知识
2.机器学习中用到的统计学知识
3.机器学习中算法背后的数学原理和公式推导', '2018-09-02 20:36:43.332837', '2018-08-12 23:47:27.048683');
INSERT INTO "public"."tb_imooc_course" VALUES (10, 1021, '私有区块链，我们一起GO', '中级', 6763, '用Go语言实现一个区块链私有链', 'Go, 区块链', 'https://img3.mukewang.com/5b4705c90001fc9506000338-240-135.jpg', 'https://www.imooc.com/learn/1021', '2小时46分', 9, 9.7, 9.1, 8, '简介：区块链作为当前火爆的新兴技术被广为关注，本课程将使用Go语言带领大家实现一个区块链私有链', '中关村隐士34...', 'https://img1.mukewang.com/574430a100012a1e01000100-80-80.jpg', NULL, 'Go语言基础', '区块链的开发步骤及运用，包含区块链构造，工作量证明，交易及记账，身份标识等等', '2018-09-02 20:36:43.401488', '2018-08-12 23:47:27.015077');
INSERT INTO "public"."tb_imooc_course" VALUES (880, 1030, 'Android性能优化之布局优化', '中级', 1705, '介绍如何从布局角度优化Android app性能', 'Android', 'https://img1.mukewang.com/5b62ccfd0001ba4406000338-240-135.jpg', 'https://www.imooc.com/learn/1030', '34分', 9.5, 9.6, 10, 8.8, '简介：从Android系统屏幕UI刷新机制,布局的选择，优化标签的使用，原生View控件的优化等布局角度去讲解如何提高Android性能', 'Ansen360', 'https://img4.mukewang.com/5458502c00012d4a02200220-80-80.jpg', '移动开发工程师', '需要您掌握Android基础，了解Android布局', '轻松了解Android系统屏幕UI的刷新机制，如何从app性能角度考虑布局的选择、标签的优化、原生View控件的优化', '2018-09-02 20:36:40.748652', '2018-08-13 09:14:37.420408');
INSERT INTO "public"."tb_imooc_course" VALUES (77, 953, 'React响应用户输入', '高级', 7271, '带你了解如何监听事件以及指定事件处理器的知识', 'React.JS', 'https://img4.mukewang.com/5a9e334d0001c8be05400300-240-135.jpg', 'https://www.imooc.com/learn/953', '1小时33分', 9.7, 10, 9.8, 9.2, '简介：本课程将带领大家一起学习如何让数据逻辑与UI的结合使用、react的事件处理机制以及react对DOM模型的操作', 'coding迪斯尼...', 'https://img3.mukewang.com/57a333b400010f6006400478-80-80.jpg', '全栈工程师', '1、掌握HTML、CSS
2、掌握JavaScript
3、学习完《React组件》课程', '1、数据逻辑与UI的结合使用
2、事件处理机制
3、DOM 模型的操作
', '2018-09-02 20:36:44.634794', '2018-08-12 23:47:32.010615');
INSERT INTO "public"."tb_imooc_course" VALUES (21, 977, 'Shiro安全框架入门', '中级', 19052, '从零入门Shiro安全框架', 'Java', 'https://img3.mukewang.com/5acd8d3e0001881a06000338-240-135.jpg', 'https://www.imooc.com/learn/977', '2小时20分', 9.2, 9.4, 9, 9.2, '简介：本课程通过从shiro和spring Security对比入手，进而讲解Shiro整体架构以及认证，授权的过程，通过结合代码带同学更深刻的认识Shiro。同时课程会讲解Shiro其他特性，比如：Session管理，缓存管理等，以及集成Spring在实际项目中应用Shiro，使同学能在未来自己做的项目中更加熟练的使用Shiro。', 'Mark0101', 'https://img2.mukewang.com/592198f00001783801800180-80-80.jpg', 'JAVA开发工程师', '基本必备：Java基础，Spring基础，使用过java web', '认识Shiro的整体架构			
Shiro认证，授权过程及Session管理，缓存管理			
Shiro在项目中的使用			
', '2018-09-02 20:36:45.695327', '2018-08-12 23:47:27.618213');
INSERT INTO "public"."tb_imooc_course" VALUES (905, 1039, 'Redis的Lua脚本编程', '初级', 766, '学会Redis的Lua脚本编程如何使用！', 'Redis', 'https://img2.mukewang.com/5b7f6e6200014f0706000338-240-135.jpg', 'https://www.imooc.com/learn/1039', '1小时22分', 10, 10, 10, 10, '简介：本课程主要讲解Redis的Lua脚本编程是什么，为什么要使用该功能，以及该怎么使用该功能。并通过分布式锁、列表分片两个实战案例带大家学习。', '拿客_三产...', 'https://img2.mukewang.com/5b7cf8b40001a4e503390300-80-80.jpg', 'JAVA开发工程师', '1、想要了解Redis的Lua脚本编程
2、有一定的Redis基础', '1、明白Redis的Lua脚本编程是什么；
2、了解为什么要使用Redis的Lua脚本编程；
3、熟悉如何使用Redis的Lua脚本编程。', '2018-09-02 20:36:40.201733', '2018-09-02 20:15:32.642908');
INSERT INTO "public"."tb_imooc_course" VALUES (904, 1040, 'Caffe实战入门', '中级', 492, '介绍Caffe的理论基础和实战经验，并通过用具体案例带大家快速上手Caffe', '深度学习, 人工智能', 'https://img3.mukewang.com/5b7f737a0001cfb706000336-240-135.jpg', 'https://www.imooc.com/learn/1040', '2小时 5分', 10, 10, 10, 10, '简介：本课程主要包括基础篇和实战篇两部分。基础篇主要介绍Caffe的基本知识点，包括：框架、基本概念、源码解读等；在实战篇中，介绍了标准层、配置文件、网络设计规则等，并通过设计一个卷积神经网来介绍Caffe的训练、测试等。', '会写代码的好...', 'https://img2.mukewang.com/5b8618950001cd9101440146-80-80.jpg', '算法工程师', '1、Python编程基础
2、Linux环境基本知识
', '1、caffe基础知识，包括框架介绍、代码导读环境配置等
2、caffe网络设计规范、caffe网络标准层的设计和使用 
3、caffe实战常用技巧、caffe中常见脚本使用方式
4、pycaffe深度网络设计
5、pycaffe solver文件设计
6、pycaffe lmdb数据打包
7、pycaffe网络训练测试脚本', '2018-09-02 20:36:40.216436', '2018-09-02 20:15:32.584481');
INSERT INTO "public"."tb_imooc_course" VALUES (19, 1005, 'C4D基础入门案例', '入门', 2511, 'C4D，设计师进军三维视界的必备技能', '模型制作', 'https://img3.mukewang.com/5b1dd1fa0001b70d06000338-240-135.jpg', 'https://www.imooc.com/learn/1005', '1小时15分', 9, 10, 10, 7, '简介：C4D三维软件的认知、实践运用、学习难点剖析、渲染的基础设置、模型搭建、材质灯光设置、后期优化调整。', '浩然老师', 'https://img4.mukewang.com/5b0e022600017b5c06000600-80-80.jpg', NULL, '1、认识基本的软件界面', '1、渲染的基础设置
2、模型搭建
3、材质灯光设置
4、后期优化调整。', '2018-09-02 20:36:42.559055', '2018-08-12 23:47:27.486173');
INSERT INTO "public"."tb_imooc_course" VALUES (882, 1009, 'Crontab不知疲倦的时间表', '初级', 2796, 'Crontab不知疲倦的时间表', 'Linux', 'https://img4.mukewang.com/5b1f61150001a20905400300-240-135.jpg', 'https://www.imooc.com/learn/1009', '1小时40分', 8.7, 8.5, 8, 9.5, '简介：本门课程老师通过案例详细讲解如何通过crontab设置周期性执行的任务。课程先从crontab入门讲起，讲解crontab的安装配置以及指令操作等，然后通过日志、备份数据库、备份源码、设置防火墙、调用Python脚本等案例进行讲解，最后讲解crontab在Jenkins上的扩展。', '一路向北1985...', 'https://img1.mukewang.com/5b4dbfc00001ffdd03370300-80-80.jpg', NULL, NULL, NULL, '2018-09-02 20:36:42.643598', '2018-08-13 09:52:49.154989');
INSERT INTO "public"."tb_imooc_course" VALUES (906, 1041, 'Swift之网络常见术语', '初级', 420, '了解Swift网络客户端和服务端！', 'iOS', 'https://img3.mukewang.com/5b7fa5140001018505400300-240-135.jpg', 'https://www.imooc.com/learn/1041', '27分', 9, 10, 7, 10, '简介：本课程主要讲解Swift网络的常见术语，了解HTTPS、网络客户端、服务端以及socket。', 'gix_ic', 'https://img2.mukewang.com/5458626a0001503602200220-80-80.jpg', '移动开发工程师', '1、需要有Swift基础
2、了解网络常见术语的含义', '1、什么是HTTPS
2、了解客户端、服务端
3、了解socket', '2018-09-02 20:36:40.263781', '2018-09-02 20:15:32.742211');
INSERT INTO "public"."tb_imooc_course" VALUES (31, 981, 'Android O(8.0)通知栏解决方案', '初级', 3531, '本课程主要介绍Android 8.0 ChannelNotification的管理。', 'Android', 'https://img2.mukewang.com/5adfee7f0001cbb906000338-240-135.jpg', 'https://www.imooc.com/learn/981', '32分', 9.6, 10, 8.7, 10, '简介：本课程为大家介绍NotificationChannel API，Android8.0兼容适配的重要性，Android 8.0 ChannelNotification的管理，自定义ChannelNotification与交互。', '乔木2018', 'https://img4.mukewang.com/5af93c7b000156ab02600260-80-80.jpg', '移动开发工程师', '需要具备一定的Android基础，并且对Android8.0之前的Notificatio有一定了解。', '1、Android8.0兼容适配处理
2、Android 8.0 ChannelNotification的管理（更新和删除）
3、自定义ChannelNotification与交互', '2018-09-02 20:36:41.30037', '2018-08-12 23:47:28.308301');
INSERT INTO "public"."tb_imooc_course" VALUES (42, 1004, '项目上线流程', '中级', 13166, '带领大家实现一个网站的上线流程。', 'Linux, 前端工具', 'https://img.mukewang.com/5b14b0480001672706000338-240-135.jpg', 'https://www.imooc.com/learn/1004', '46分', 9.8, 9.8, 9.7, 9.9, '简介：本课程主要讲解了一个项目想要发布到公网的流程，包括服务器的购买、以及域名的购买，以及需要注意的事项。', '沂生微笑Fran...', 'https://img1.mukewang.com/5458666300017f2102200220-80-80.jpg', '全栈工程师', '1、有linux基础。
2、对后台web开发有一定的了解。
3、熟悉Nginx。', '1、通过阿里云购买服务，并配置。
2、实现把自己准备好的项目，发布到公网，让大家都能访问。', '2018-09-02 20:36:42.148326', '2018-08-12 23:47:29.15014');
INSERT INTO "public"."tb_imooc_course" VALUES (30, 985, 'MAYA-材质基础入门', '入门', 1340, 'Maya材质制作基础命令详解，并快速入门Maya材质制作', '动效动画', 'https://img4.mukewang.com/5ae4458000016dfe05400300-240-135.jpg', 'https://www.imooc.com/learn/985', '1小时 1分', 9.3, 10, 8, 10, '简介：本课程内容首先阐述了Maya材质在Maya动画制作流程中的位置、作用，然后介绍了Maya超级材质编辑器的使用，最后讲解了Maya材质球的一些基本属性。', '白完人', 'https://img4.mukewang.com/545868f30001886f02200220-80-80.jpg', 'CG影视动画师', '1、有一定的Maya模型制作基础。
2、安装Maya2017软件的计算机。', '1、理解Maya材质制作在Maya动画制作流程中的位置。
2、Maya材质制作的作用。
3、Maya超级材质编辑器的使用。
4、材质球的公共属性。
5、材质球的镜面反射属性。', '2018-09-02 20:36:41.343262', '2018-08-12 23:47:28.280165');
INSERT INTO "public"."tb_imooc_course" VALUES (17, 1002, 'MAYA- NURBS曲线建模', '入门', 745, 'MAYA—2017NURBS曲线以及曲面工具的介绍', '动效动画', 'https://img4.mukewang.com/5b14e8310001197706000338-240-135.jpg', 'https://www.imooc.com/learn/1002', '59分', 10, 10, 10, 10, '简介：本课程主要介绍Maya建模中两大分支
1.多边形建模
2.NURBS建模中的NURBS建模，将带大家简单掠过1.两种建模的区别于联系3.NURBS中的曲线工具以及NURBS的曲面工具
4.判断使用工具的时机与高级设置
 5.简单的快捷键以及视角的教学', 'Alex邹桑', 'https://img1.mukewang.com/5333a08f0001700202000200-80-80.jpg', 'CG影视动画师', '1、maya2017或以上版本
2、Win7以上操作系统
3、一定的英文水平和空间想象力
', '1、Maya2017的NURBS曲线工具的使用
2、Maya2017的NURBS曲面工具的使用
3、maya2017多面体建模以及NURBS建模的区别与联系
4、Maya2017 4种视窗及简单介绍
5、Maya2017快捷键的简单介绍', '2018-09-02 20:36:42.770899', '2018-08-12 23:47:27.324215');
INSERT INTO "public"."tb_imooc_course" VALUES (15, 1023, 'React16.4 快速上手', '初级', 7313, '结合实例带你快速入门React16基础语法，并完成Todolist功能开发。', 'React.JS', 'https://img.mukewang.com/5b4ed6590001d9ee06000338-240-135.jpg', 'https://www.imooc.com/learn/1023', '1小时30分', 9.9, 10, 9.8, 10, '简介：本课程讲给大家介绍React的开发环境搭建，组件化的开发思路以及基础JSX语法，也通过Todolist功能的实现，给大家讲解了React组件间的通信方式，同事，课程中还包括了React中使用ES6对代码进行优化的内容，以及如何对React项目进行样式修饰的内容。', 'DellLee', 'https://img1.mukewang.com/5abe468b0001664107390741-80-80.jpg', 'Web前端工程师', '1、对Javascript基础知识已经掌握。
2、对Es6和webpack有简单了解。', '1、React项目架构搭建
2、JSX语法
3、React组件化开发
4、React组件间通信
5、React中的事件
6、React代码优化
7、React中组件的样式修饰', '2018-09-02 20:36:43.666487', '2018-08-12 23:47:27.249515');
INSERT INTO "public"."tb_imooc_course" VALUES (23, 971, 'React知识点综合运用实例', '高级', 9280, 'react综合案例操作，技能掌握更纯熟', 'React.JS', 'https://img3.mukewang.com/5ab8d27d00010ac006000338-240-135.jpg', 'https://www.imooc.com/learn/971', '1小时37分', 9.4, 10, 8.6, 9.7, '简介：本套课程将带领大家完成一个综合实例操作，对前面所学的知识进行完美综合，使技能掌握更纯熟，对react更加深入的了解与掌握', 'coding迪斯尼...', 'https://img1.mukewang.com/57a333b400010f6006400478-80-80.jpg', '全栈工程师', '1、掌握HTML、CSS
2、掌握JavaScript
3、学习完《React组件》与《React响应用户输入》课程', '1、对react的综合运用', '2018-09-02 20:36:45.920816', '2018-08-12 23:47:27.792232');
INSERT INTO "public"."tb_imooc_course" VALUES (29, 989, 'Unity 3D基础之变体Transform', '初级', 2140, 'Unity 组件Transform控制游戏对象', 'Unity 3D', 'https://img.mukewang.com/5aec13530001805d06000338-240-135.jpg', 'https://www.imooc.com/learn/989', '1小时10分', 9.9, 9.7, 10, 10, '简介：全面讲解 Transform 组件的基础使用方法.通过实践，实现在 Unity 中控制游戏对象移动、缩放、旋转。附带讲解一些优化相关的小知识。', '_RayYang_', 'https://img4.mukewang.com/533e4d00000171e602000200-80-80.jpg', NULL, '1、了解 Unity3D引擎基本操作
2、了解基本 C#语法
', '1、Transform 常用的变量与属性
2、利用 Transform 控制游戏对象移动,旋转,缩放
3、Transform 的子父物体关系的介绍与控制
4、Transform 的坐标系转换', '2018-09-02 20:36:41.259578', '2018-08-12 23:47:28.125989');
INSERT INTO "public"."tb_imooc_course" VALUES (907, 1042, 'RabbitMQ消息中间件极速入门与实战', '入门', 1420, '入门RabbitMQ，并整合SpringBoot2.x，实现100%消息的可靠性投递！', 'Java, SpringBoot', 'https://img3.mukewang.com/5b86566a0001d31106000338-240-135.jpg', 'https://www.imooc.com/learn/1042', '2小时31分', 9.6, 10, 8.7, 10, '简介：本课程主要带大家快速入门RabbitMQ消息中间件基础，会带着小伙伴快速搭建环境，并进行核心基础的学习，之后整合springboot2.x，最后做一个在真正生产环境中的高可靠性投递消息的实战案例（代码详解）。', '阿神_', 'https://img.mukewang.com/5b614d33000131ac03000331-80-80.jpg', 'JAVA开发工程师', '有一定的Linux基础，springboot基础，熟悉JAVA主流框架ssm（spring+mybatis整合）', '1.RabbitMQ安装与使用
2.RabbitMQ核心概念
3.RabbitMQ整合SpringBoot2.x生产端发送消息
4.RabbitMQ整合SpringBoot2.x消费端处理消息
5.RabbitMQ-消息的可靠性投递-实现方案
6.RabbitM整合SpringBoot2.x-消息可靠性投递-实现方案落地代码详解', '2018-09-02 20:36:40.246416', '2018-09-02 20:15:32.914017');
INSERT INTO "public"."tb_imooc_course" VALUES (35, 993, 'MySQL集群（PXC）入门', '入门', 10099, '从入门开始学习完全开源的MySQL高可用性解决方案PXC集群', 'MySQL, 运维', 'https://img4.mukewang.com/5afd3bee0001afdc06000338-240-135.jpg', 'https://www.imooc.com/learn/993', '3小时12分', 9.7, 10, 9.4, 9.7, '简介：本课程以项目演示为例，讲解PXC集群原理、PXC数据同步与Replication同步的区别、PXC的多节点并发写入、Docker虚拟机部署MySQL集群，并以案例验证Replication方案的数据不一致性、PXC方案数据一致性', '神思者l', 'https://img.mukewang.com/5afe3d350001596a02430243-80-80.jpg', '全栈工程师', '具有一定的MySQL及Linux系统基础', '1. 什么是PXC集群
2. PXC集群较其他集群方案的优势在哪里
3. PXC集群的运行原理', '2018-09-02 20:36:41.998342', '2018-08-12 23:47:28.613139');
INSERT INTO "public"."tb_imooc_course" VALUES (20, 974, '入门微信小程序开发', '中级', 73134, '带你入门微信小程序开发，了解微信小程序的基本知识。', 'HTML/CSS', 'https://img3.mukewang.com/5ac3418d0001a9b806000338-240-135.jpg', 'https://www.imooc.com/learn/974', '1小时40分', 9.3, 9.6, 9, 9.3, '简介：讲解微信小程序的基本知识，如何注册，并开发一个自己的小程序，以及小程序开发过程中部分常见的问题。', '连胜', 'https://img3.mukewang.com/5acb0d0a0001f01303200320-80-80.jpg', '全栈工程师', '1、对html基础知识已经掌握。
2、最好是前端开发者，对数据渲染有一定了解。', '1、知道什么是微信小程序
2、小程序的宣传方式
3、小程序的开发流程 
4、注册小程序的方法
5、小程序开发工具的了解
6、新建小程序项目并开发
7、开发中常见的问题', '2018-09-02 20:36:45.572821', '2018-08-12 23:47:27.564201');
INSERT INTO "public"."tb_imooc_course" VALUES (28, 990, '推荐算法理论与实践', '中级', 11149, '想要了解商品推荐背后的原理吗，课程将手把手带你做一个推荐系统！', '机器学习', 'https://img3.mukewang.com/5aeecb1d0001e5ea06000338-240-135.jpg', 'https://www.imooc.com/learn/990', '1小时54分', 9.9, 10, 10, 9.7, '简介：当今推荐系统的应用可以说是十分广泛了，它已经应用到了生活当中的方方面面，比如新闻推荐、音乐推荐、电影推荐、朋友推荐等等，一个性能高效的推荐系统更是帮助商品更好销售的关键。本课分为两部分，前半部分介绍各种常见的推荐系统以及基本概念，后半部分将用基于矩阵分解的协同过滤实现一个电影推荐系统。', '陈家栋', 'https://img3.mukewang.com/5a668edc0001533f02070244-80-80.jpg', 'Python工程师', '掌握python语法，自学能力强！', '1、基于内容的推荐系统的原理
2、基于矩阵分解的推荐系统的原理 
3、基于商品的协同过滤的推荐系统的原理 
4、基于用户的协同过滤的推荐系统的原理 
5、构建基于矩阵分解的电影推荐系统
', '2018-09-02 20:36:41.329248', '2018-08-12 23:47:28.114904');
INSERT INTO "public"."tb_imooc_course" VALUES (36, 995, 'C4D化妆品套装建模', '初级', 2837, '学习建模工具，初探建模流程。', '模型制作', 'https://img4.mukewang.com/5b03c68a000159b506000338-240-135.jpg', 'https://www.imooc.com/learn/995', '1小时 3分', 9.8, 9.3, 10, 10, '简介：以熟悉建模工具为目标，逐步学习建模知识，一边学习工具，一边利用工具创建化妆品模型，即学即用。', 'max一枝花', 'https://img.mukewang.com/5333a1a90001c8d802000200-80-80.jpg', NULL, '1、有基本软件操作常识
2、建模零基础', '1、建模前分析
2、建模流程
3、建模常用工具
4、样条配合生成器建模', '2018-09-02 20:36:41.805061', '2018-08-12 23:47:28.643247');
INSERT INTO "public"."tb_imooc_course" VALUES (157, 919, 'Android节目直播案例开发', '中级', 8558, '手把手带你开发Android节目直播模块', 'Android', 'https://img2.mukewang.com/5a138f3e0001589306000338-240-135.jpg', 'https://www.imooc.com/learn/919', '1小时40分', 9.1, 9.6, 9.4, 8.4, '简介：视频客户端，无外乎点播，直播，其中直播又分互动直播，节目直播，本课程将带大家开发的是一个节目直播的案例，从本课程中可以学习到直播原理及协议，m3u8，直播源以及测试直播源，然后就是界面直播的播放，暂停等界面与逻辑的实现，最后会带大家做关键代码的优化以及总体的梳理与总结，希望大家能掌握节目直播的核心知识，从而向视频点播，互动直播的方向继续发展。', '逆流的鱼yuio...', 'https://img2.mukewang.com/57c558840001f65c01500150-80-80.jpg', '移动开发工程师', '完整视频点播APP开发的实战课程《从零开发Android视频点播APP》，http://coding.imooc.com/class/126.html，以及完整的视频直播APP开发的实战课程《Android互动直播APP开发》http://coding.imooc.com/class/143.html，希望能更系统的帮助到大家。', '1.直播原理及协议
2.m3u8协议
3.直播源以及测试直播源
4.直播的播放，暂停等界面与逻辑的实现
5.代码的优化以及总体的梳理与总结', '2018-09-02 20:36:49.518553', '2018-08-12 23:47:39.218099');
INSERT INTO "public"."tb_imooc_course" VALUES (51, 1018, 'C4D创意字母教程', '初级', 2099, '综合运用C4D知识，完成案例实践，提升设计技能！', '模型制作', 'https://img4.mukewang.com/5b39ca9100014d8605400300-240-135.jpg', 'https://www.imooc.com/learn/1018', '1小时21分', 7.7, 8, 8, 7, '简介：本套课程 主要讲解基础Z字母建模创建、相机部分的模型创建、整体模型细节完善、灯光创建与设置、材质以及渲染。快来一起领略C4D的无穷魅力吧！', 'C4D讲师杨帆...', 'https://img.mukewang.com/5b3209d50001621208000800-80-80.jpg', 'CG影视动画师', '1、自行安装好C4D软件 
2、零基础入门，放松心态
3、具备基本的软件操作技能', '1、掌握造型工具、常用的变形器工具
2、如何建立一个摄像机、几种灯光的使用
3、材质的制作、如何设置渲染', '2018-09-02 20:36:43.063487', '2018-08-12 23:47:29.947776');
INSERT INTO "public"."tb_imooc_course" VALUES (50, 1001, 'MAYA四足动画', '入门', 2966, '根据老师所讲步骤一步一步学会四足动画的创建', '动效动画', 'https://img4.mukewang.com/5b1e49640001904606000338-240-135.jpg', 'https://www.imooc.com/learn/1001', '1小时15分', 10, 10, 10, 10, '简介：掌握四足行走动画的动作分析与制作技巧。寻找四足行走与两足行走的相同之处。如何体现重量感。加深动画原理。', 'Rule_12', 'https://img2.mukewang.com/5acb79a20001c44402730271-80-80.jpg', NULL, '1、有动画基础同学
2、逻辑思维清晰', '1、快速制作四足走路
2、摆pose技巧
3、重量感练习
4、调动画曲线的技巧方法', '2018-09-02 20:36:43.078062', '2018-08-12 23:47:29.81508');
INSERT INTO "public"."tb_imooc_course" VALUES (97, 927, '搭建并行处理管道，感受GO语言魅力', '中级', 9157, '通过搭建并行数据处理管道，展示go语言在并发编程方面的优势			', 'Go', 'https://img3.mukewang.com/5a321bac00013f9506000338-240-135.jpg', 'https://www.imooc.com/learn/927', '2小时17分', 9.7, 9.9, 9.9, 9.4, '简介：go语言目前热度增长非常迅速。许多同学想学却无从下手。本课程将带领没有go语言经验的同学一步步完成一个并行数据处理管道的搭建，涵盖go语言面向接口，函数式编程以及并发编程的特点，让同学对go语言有一个初步的印象，并对进一步学习go语言提供方向。 目前老师go实战课程《Google资深工程师深度讲解go语言》已上线：https://coding.imooc.com/class/180.html', 'ccmouse', 'https://img2.mukewang.com/598bcaf70001f13309600960-80-80.jpg', '全栈工程师', '1.课程难度属于中级
2、了解一门编程语言，对基本算法如排序有了解', '1、go语言的历史和设计初衷
2、go语言的安装与开发环境
3、简单的go语言程序
4、了解go语言并发编程 
5、实现一个并行数据处理管道 ', '2018-09-02 20:36:49.900889', '2018-08-12 23:47:33.721185');
INSERT INTO "public"."tb_imooc_course" VALUES (7, 177, 'Python入门', '入门', 527572, '学python入门视频教程，让你快速入门并能编写简单的Python程序', 'Python', 'https://img2.mukewang.com/540e57300001d6d906000338-240-135.jpg', 'https://www.imooc.com/learn/177', '5小时 0分', 9.4, 9.7, 9.5, 9.1, '简介：Python教程基础分《Python入门》和《Python进阶》两门课程，本视频教程是Python第一门课程，是Python开发的入门教程，将介绍Python语言的特点和适用范围，Python基本的数据类型，条件判断和循环，函数，以及Python特有的切片和列表生成式。希望本python教程能够让您快速入门并编写简单的Python程序。', '廖雪峰', 'https://img.mukewang.com/54091d5500013cf202000200-80-80.jpg', '移动开发工程师', '如果您了解程序设计的基本概念，会简单使用命令行，了解中学数学函数的概念，那么对课程学习会有很大的帮助，让您学起来得心应手，快速进入Python世界。', '通过本课程的学习，您将学会搭建基本的Python开发环境，以函数为基础编写完整的Python代码，熟练掌握Python的基本数据类型以及list和dict的操作。', '2018-09-02 20:36:40.535617', '2018-08-12 23:47:26.727217');
INSERT INTO "public"."tb_imooc_course" VALUES (44, 1006, 'PullToRefresh', '初级', 2744, '介绍APP中刷新和加载数据的解决方案，以及PullToRefresh框架如何使用', 'Android', 'https://img2.mukewang.com/5b14d44b00014f9606000338-240-135.jpg', 'https://www.imooc.com/learn/1006', '1小时 0分', 9.3, 9, 9.8, 9.2, '简介：APP中刷新和加载数据的解决方案，以及PullToRefresh框架的使用', 'LGD_Sunday', 'https://img3.mukewang.com/5b037fb30001534202000199-80-80.jpg', '移动开发工程师', '学习PullToRefresh框架之前，需有Android的基础知识', 'PullToRefresh框架的使用', '2018-09-02 20:36:42.274906', '2018-08-12 23:47:29.215192');
INSERT INTO "public"."tb_imooc_course" VALUES (47, 1000, 'Retrofit网络库', '初级', 3187, '介绍Retrofit网络框架及其使用，并使用Retrofit完成用户登录案例。', 'Android', 'https://img2.mukewang.com/5b289bbe0001fc4906000338-240-135.jpg', 'https://www.imooc.com/learn/1000', '32分', 10, 10, 10, 10, '简介：本门课将介绍什么是Retrofit，从Retrofit集成开始手把手带你学习Retrofit的使用，最后会使用Retrofit完成用户登录案例。', 'Jennynick', 'https://img.mukewang.com/5b06bb6c00017c7c01960196-80-80.jpg', 'JAVA开发工程师', '对Android网络通信有一定基础,了解Okhttp', '使用Retrofit实现网络通信', '2018-09-02 20:36:42.745635', '2018-08-12 23:47:29.584738');
INSERT INTO "public"."tb_imooc_course" VALUES (48, 1015, 'Swift之基于CALayer的图形绘制', '中级', 922, '了解CoreAnimation框架，掌握CALayer绘制实现方式。', 'iOS', 'https://img3.mukewang.com/5b3061210001550306000338-240-135.jpg', 'https://www.imooc.com/learn/1015', '1小时 4分', 2, 2, 2, 2, '简介：本课主要讲解CoreAnimation框架，让大家掌握CALayer绘制实现方式。同时，根据所需知识完成一些圆形进度条的绘制。', '雪的痕迹', 'https://img4.mukewang.com/590c21ca0001431f01000100-80-80.jpg', NULL, '1、掌握OC基础语法
2、熟悉Swift基础语法
3、熟悉UI控件的使用', '1、掌握CALayer绘制实现方式
2、完成圆形进度条的绘制', '2018-09-02 20:36:42.954777', '2018-08-12 23:47:29.687278');
INSERT INTO "public"."tb_imooc_course" VALUES (56, 1013, '《MAYA-场景设置》', '入门', 1220, '快速入门 MAYA场景设置', '动效动画', 'https://img3.mukewang.com/5b33637d00016cbe05400300-240-135.jpg', 'https://www.imooc.com/learn/1013', '1小时23分', 10, 10, 10, 10, '简介：本套教程主要是讲解场景中材质制作的的基础内容，讲解过程当中作者会根据
工作经验以及材质的理解，给大家解释一些CG行业常遇到的问题。
最后的章节，会带领大家制作一个案例，来巩固学习。', '彬杰', 'https://img.mukewang.com/5b6e888a0001cce302000199-80-80.jpg', 'CG影视动画师', '1、需要有一定的maya基础
2、对渲染感兴趣', '1、maya的工作流程
2、maya中调节材质的流程', '2018-09-02 20:36:43.203389', '2018-08-12 23:47:30.217647');
INSERT INTO "public"."tb_imooc_course" VALUES (54, 1014, '《MAYA-Vary 渲染》', '入门', 531, 'Vray For Maya基础教学', '动效动画', 'https://img.mukewang.com/5b3dec540001278406000338-240-135.jpg', 'https://www.imooc.com/learn/1014', '1小时34分', 10, 10, 10, 10, '简介：本套教程主要是讲解Vray渲染器的基础内容，讲解过程当中作者会根据
工作经验和对Vray的理解，给大家解释一些CG行业常遇到的问题。
还有Vray在工作中的常规设置和使用。
最后的章节，会带领大家制作一个案例，来巩固学习。', '彬杰', 'https://img2.mukewang.com/5b6e888a0001cce302000199-80-80.jpg', 'CG影视动画师', '1、需要有一定的maya基础
2、对渲染感兴趣', '1、maya的工作流程
2、Vray For Maya 的基础
3、maya中调节材质的流程
4、maya打灯光的方法和思路
5、Aovs 元素通道的基础知识普及
6、跟我制作一个案例', '2018-09-02 20:36:41.104922', '2018-08-12 23:47:30.066495');
INSERT INTO "public"."tb_imooc_course" VALUES (58, 976, '电商banner设计制作', '入门', 8556, '本堂课讲解一个促销活动类电商banner的设计方法。', '设计基础, 设计工具', 'https://img4.mukewang.com/5ac43bbc0001574b06000338-240-135.jpg', 'https://www.imooc.com/learn/976', '1小时26分', 10, 10, 10, 10, '简介：学习如何设计促销类电商banner，通过真实案例的制作讲解banner的排版规范，构图形式以及图像的色彩搭配原理，以及字体的运用和图像的处理方式，同时会教软件操作的一些方法。更多实战课点击https://coding.imooc.com/class/199.html详细了解', '云中雁大人...', 'https://img.mukewang.com/533e4d660001312002000200-80-80.jpg', 'UI设计师', '1、需要拥有一台电脑。
2、需要安装Photoshop软件。', '1、电商banner的设计规范。
2、促销类banner的设计思考方法。
3、构图及色彩的搭配
4、字体的设计和排版
5、图片处理的方法
6、软件操作的相关知识', '2018-09-02 20:36:45.528582', '2018-08-12 23:47:30.415041');
INSERT INTO "public"."tb_imooc_course" VALUES (53, 1010, '高效测试计划实战', '初级', 2695, '制定好的测试计划，让测试工作更高效。', '功能测试', 'https://img2.mukewang.com/5b20d7dd000124da06000338-240-135.jpg', 'https://www.imooc.com/learn/1010', '54分', 9.1, 9.6, 9.6, 8, '简介：课程从迭代测试常见问题、建立测试计划步骤到高效计划实战，一步步带领大家学习如何高效的写测试计划，从而让测试工作效率更高。', '测试界的老K...', 'https://img2.mukewang.com/5b1f4b840001536212001200-80-80.jpg', '软件测试工程师', '对测试流程有一定的了解', '如何制定和写好测试计划，从而顺利地进行测试工作。', '2018-09-02 20:36:40.765694', '2018-08-12 23:47:29.996467');
INSERT INTO "public"."tb_imooc_course" VALUES (55, 1020, 'UI动效基础与实践', '入门', 4519, '针对于ui工作过程当中所涉及到的动效设计需求及交付流程', '动效动画', 'https://img1.mukewang.com/5b4863e40001a8c506000338-240-135.jpg', 'https://www.imooc.com/learn/1020', '2小时50分', 8.7, 10, 6, 10, '简介：现在来看，UI的本职工作内容随着互联网产品的发展，慢慢的在做横向延伸，产品，交互，动效，建模，视觉，我们都要涉及。这次课程的中心就在于为大家讲解在工作当中，我们遇到的动效交互的需求、设计技巧以及和开发对接过程中的产出交付环节，其中效果的延伸与讲解，主要围绕两方面，第一就是满足当下的工作需求，第二满足本身作品的包装需求', '何小西', 'https://img3.mukewang.com/5a1e1d370001761b04000400-80-80.jpg', 'UI设计师', '1、掌握基本的Ae操作，对Ae软件有一定的了解

2、足够的练习时间', '1、为什么要做动效交互

2、工作中动效需求的理解及分析

3、Ae主流自带插件的应用与拓展

4、动效设计的交付与产出

5、Ae三方插件的延伸', '2018-09-02 20:36:43.23404', '2018-08-12 23:47:30.208536');
INSERT INTO "public"."tb_imooc_course" VALUES (93, 931, 'css定位 position', '初级', 28266, '老师带你了解CSS中定位的知识，并运用到实际案例中。', 'HTML/CSS', 'https://img.mukewang.com/5a43337e0001160006000338-240-135.jpg', 'https://www.imooc.com/learn/931', '1小时18分', 9.4, 9.7, 9.4, 9.1, '简介：本课程，将带领大家了解一下定位的知识，教大家如何通过定位来进行布局。', '袁三日', 'https://img4.mukewang.com/5909d97d00010d0a02000200-80-80.jpg', 'Web前端工程师', '1、需要有HTML基础知识。
2、需要对css基础样式有一定的掌握和了解
', '1、运用定位知识去实现固定定位
2、运用定位的只是实现相对定位', '2018-09-02 20:36:46.954414', '2018-08-12 23:47:33.202196');
INSERT INTO "public"."tb_imooc_course" VALUES (902, 1033, 'MAYA-灯光渲染（上）', '入门', 467, '本课程将会从零基础带你了解MAYA基础默认灯。', '动效动画', 'https://img1.mukewang.com/5b69143200016a1f05400300-240-135.jpg', 'https://www.imooc.com/learn/1033', '1小时38分', 9.7, 10, 10, 9, '简介：本课程内容将从基础带你了解渲染的基础灯光操作及应用，包含了maya默认灯光（聚光灯，平行光，面光源，点光源，环境光），在之后还讲解了当下流行的ar渲染器的应用及设置。', 'CG大魔王', 'https://img1.mukewang.com/5af0043a0001ca7904300430-80-80.jpg', 'CG影视动画师', '1、喜欢渲染、热爱CG
2、自律 持之以恒
3、有maya基础', '1、渲染基础面板的应用
2、渲染基础设置的应用
3、渲染默认灯光的应用（聚光灯，平行光，面光源，点光源，环境光）', '2018-09-02 20:36:43.868018', '2018-08-24 00:19:26.890176');
INSERT INTO "public"."tb_imooc_course" VALUES (52, 1007, 'UE4 基础入门教程', '入门', 2609, '轻松入门虚幻引擎 UE4', 'Unity 3D', 'https://img3.mukewang.com/5b14f0d3000189d206000338-240-135.jpg', 'https://www.imooc.com/learn/1007', '1小时35分', 9.3, 9, 10, 9, '简介：虚幻引擎作为一款出名的游戏引擎，你是否还在为难上手？难入门？而担忧呢？本次课程将会带你轻松入门虚幻引擎，了解虚幻引擎的发展史，熟悉虚幻引擎编辑器并轻松敲出自己的Hello,World', '留人醉___', 'https://img1.mukewang.com/54584f850001c0bc02200220-80-80.jpg', '全栈工程师', '1、热爱3D游戏并对虚幻引擎有一定的了解
2、了解基本的C++知识、游戏开发知识', '1、了解虚幻引擎的发展史
2、了解虚幻引擎可以做什么
3、创建自己的蓝图/C++工程
4、了解虚幻引擎的编辑器界面
5、写出第一个Hello,World项目', '2018-09-02 20:36:43.046701', '2018-08-12 23:47:29.96694');
INSERT INTO "public"."tb_imooc_course" VALUES (37, 984, 'MAYA-贴图基础', '入门', 1338, '二十分钟学懂maya贴图制作流程', '动效动画', 'https://img1.mukewang.com/5afbe5b30001007e06000338-240-135.jpg', 'https://www.imooc.com/learn/984', '28分', 10, 10, 10, 10, '简介：讲解maya模型、UV与贴图三者的关系，介绍UV编辑器的命令，通过鞋子案例讲解模型到贴图完整流程。', '饕餮仔仔', 'https://img2.mukewang.com/545868550001f60202200220-80-80.jpg', 'CG影视动画师', '1、了解建模知识内容
2、动画兴趣爱好者
3、自我跃迁者', '1、理解maya模型、UV与贴图三者的关系
2、了解UV编辑器
3、掌握分UV技巧
4、了解PS绘制贴图流程
5、maya模型如何上贴图', '2018-09-02 20:36:41.871109', '2018-08-12 23:47:28.65164');
INSERT INTO "public"."tb_imooc_course" VALUES (63, 872, 'Android瀑布流图片显示', '初级', 6004, 'Android瀑布流图片显示', 'Android', 'https://img.mukewang.com/598027a90001df8006000338-240-135.jpg', 'https://www.imooc.com/learn/872', '1小时 3分', 8.9, 9.5, 8, 9.2, '简介：Android瀑布流图片显示', 'ALABO', 'https://img1.mukewang.com/5458657e000125a302200220-80-80.jpg', '移动开发工程师', '需要具备安卓四大组件基础', 'Android瀑布流图片显示', '2018-09-02 20:36:46.5337', '2018-08-12 23:47:30.891083');
INSERT INTO "public"."tb_imooc_course" VALUES (82, 960, 'AWS的入门与使用', '初级', 5276, '面向初级架构师介绍AWS，帮助你的项目做初期的云平台选择。', '云计算, AWS', 'https://img4.mukewang.com/5aa730f200015ced05400300-240-135.jpg', 'https://www.imooc.com/learn/960', '1小时11分', 10, 10, 10, 10, '简介：AWS在是云世界中的领头羊之一。这两年在中国区也有很多大动作。随着宁夏的第二个区域的上线，AWS也成为了国内企业的一个云平台的选择。由于AWS的一些设计思路与国内的云有一些区别。因此本课程已普及AWS各种概念为目的，帮你了解AWS的使用方法和架构，为你选择云平台增加一个选项。', '黑影儿', 'https://img2.mukewang.com/5861d3ab0001389402000200-80-80.jpg', '全栈工程师', '1、知道云是什么。
2、如果你负责一个初创项目的云选型，那么本课程是帮你了解AWS的一个不错的机会。。
', '1、云平台选择的基本思路
2、介绍国际区域与中国区AWS的区别
3、介绍AWS的主要功能
4、如果在AWS上部署一个高可用的互联网项目
', '2018-09-02 20:36:44.957159', '2018-08-12 23:47:32.171538');
INSERT INTO "public"."tb_imooc_course" VALUES (64, 975, 'MAYA动画入门课-飞机飞行', '初级', 5768, '掌握Maya动画基础操作命令并制作简单的动画飞机飞行', '动效动画', 'https://img4.mukewang.com/5ac2dec100014aae05400300-240-135.jpg', 'https://www.imooc.com/learn/975', '45分', 8.7, 10, 6.7, 9.3, '简介：学习Maya动画的基本原理，动画规律
学习maya装配的基本原理、基本操作，飞机飞行案例', '铁甲皮卡丘...', 'https://img3.mukewang.com/5ac1fab500013cba09001124-80-80.jpg', '软件工程师', '1、会使用Maya工具
2、有建模基础
3、动画兴趣爱好者
4、坚持不懈练习的毅力', '1、动画基础命令
2、Maya动画基础操作
3、制作简单的飞机飞行动画', '2018-09-02 20:36:45.50011', '2018-08-12 23:47:30.963118');
INSERT INTO "public"."tb_imooc_course" VALUES (14, 1011, '用GO语言构建自己的区块链', '初级', 8463, '区块链自己动手实现一把，啥都明白了。', 'Go, 区块链', 'https://img1.mukewang.com/5b2218750001370806000338-240-135.jpg', 'https://www.imooc.com/learn/1011', '1小时15分', 9.8, 9.9, 9.6, 9.9, '简介：区块链通过将密码学、P2P网络、博弈论等各个学科放在一起，进行化学反应，形成具有去中心化、可追溯、不可攥改等特点的分布式系统。其与生俱来的去信任属性和自激励自金融的运作方式被越来越多的人接受与认可，被称为是价值互联网的基石，生产关系的重塑者。本课程从区块链的发展与现状开始讲起，分理论和实践两大部分，带你深入理解区块链的来龙去脉，为近一步从事区块链相关工作打下坚实的基础。', 'Ashton2018', 'https://img2.mukewang.com/533e4d7c0001828702000200-80-80.jpg', '全栈工程师', '1、对区块链有基本的认知。
2、有基本的开发基础，最好有基本的Go语言语法知识。
', '1、区块链的发展与现状
2、技术人员的机会
3、什么是区块链
4、区块链的架构模型
5、区块链的链式结构
6、如何用 Go 实现一个简单的区块链模型', '2018-09-02 20:36:42.546181', '2018-08-12 23:47:27.192267');
INSERT INTO "public"."tb_imooc_course" VALUES (67, 943, 'Python人工智能常用库Numpy使用入门', '初级', 21883, 'Python人工智能常用库Numpy简单入门', '机器学习, 深度学习', 'https://img.mukewang.com/5a7048580001670506000338-240-135.jpg', 'https://www.imooc.com/learn/943', '51分', 9.8, 9.7, 9.9, 9.7, '简介：人工智能的很多方关于数据的操作，机器学习，深度学习，大数据，数据分析等，或多或少都会用到numpy这一python工具库。本课程从搭建环境开始，从anaconda，jupyter notebook，再到课程重点numpy工具库的使用，让你快速掌握这一热门框架。', '陈家栋', 'https://img.mukewang.com/5a668edc0001533f02070244-80-80.jpg', 'Python工程师', '具备一定的python语法基础最好', 'anaconda安装，jupyter notebook使用简单教程，numpy使用教程。numpy简单教程-数组，索引操作，元素数据类型，数组运算与常用函数，广播', '2018-09-02 20:36:46.728522', '2018-08-12 23:47:31.114383');
INSERT INTO "public"."tb_imooc_course" VALUES (61, 873, 'Android流行下拉菜单UI效果', '初级', 8670, 'Android仿美团流行下拉菜单实现', 'Android', 'https://img2.mukewang.com/598029c40001cbd706000338-240-135.jpg', 'https://www.imooc.com/learn/873', '1小时48分', 9.8, 10, 9.5, 10, '简介：Android仿美团流行下拉菜单实现', 'ALABO', 'https://img2.mukewang.com/5458657e000125a302200220-80-80.jpg', '移动开发工程师', '需要具备安卓四大组件基础知识', 'Android仿美团流行下拉菜单实现', '2018-09-02 20:36:46.828609', '2018-08-12 23:47:30.693358');
INSERT INTO "public"."tb_imooc_course" VALUES (38, 998, 'Unity 3D 翻牌游戏开发', '中级', 5449, 'U3D制作扑克翻牌消除小游戏,玩法类似连连看，快来一起开发吧！', 'Unity 3D', 'https://img4.mukewang.com/5b03eead0001196606000338-240-135.jpg', 'https://www.imooc.com/learn/998', '1小时25分', 8.8, 8.9, 7.4, 10, '简介：本课程结合实例，讲解用Unity3D进行游戏开发的基本使用方法，意在让大家掌握Unity3D的基本设计思想和操作方法，当掌握了所有模块的基本知识和设计方法后，就可以独立开发出自己的游戏了。学习游戏开发，从基础开始学习到案例实战，万事开头难，慢慢的进入状态，关键是要坚持！', 'Jean_dong', 'https://img3.mukewang.com/545863c10001865402200220-80-80.jpg', '移动开发工程师', '1、Unity3D 引擎基本使用
2、C#语言基础', '1、Resources资源加载及使用方法
2、随机牌序实现
3、GridLayout组件的使用
4、UI翻转动画实现
5、重写Unity UI（click）回调事件', '2018-09-02 20:36:41.819577', '2018-08-12 23:47:28.902991');
INSERT INTO "public"."tb_imooc_course" VALUES (74, 949, 'Promise 入门', '中级', 14813, '带你入门 Promise。', 'JavaScript', 'https://img2.mukewang.com/5a93556000017ae906000338-240-135.jpg', 'https://www.imooc.com/learn/949', '2小时 0分', 8.8, 9, 9.1, 8.3, '简介：为解决异步函数的回调陷阱，开发社区不断摸索，终于折腾出 Promise/A+。它的优势非常显著：

1. 不增加新的语法，可以立刻适配几乎所有浏览器
2. 以队列的形式组织代码，易读好改
3. 捕获异常方案也基本可用', 'Meathill', 'https://img2.mukewang.com/5a9387ec0001061005990600-80-80.jpg', 'Web前端工程师', '1. 前端水平：初级、中级
2. 了解 JavaScript
3. 最好有异步开发经历，希望写出更好的代码', '1. Promise 的基础用法
2. Promise 容易出错的地方
3. Promise 怎么处理错误（Error)
4. Promise 的其它用法
5. 简单介绍异步函数', '2018-09-02 20:36:44.600666', '2018-08-12 23:47:31.675138');
INSERT INTO "public"."tb_imooc_course" VALUES (186, 839, 'Redis入门', '中级', 66700, '本课程为Redis和Jedis使用的入门级教程，对Redis有初步了解', 'Java', 'https://img3.mukewang.com/5914272e0001254d06000338-240-135.jpg', 'https://www.imooc.com/learn/839', '2小时26分', 9.6, 9.7, 9.7, 9.5, '简介：Redis和Jedis使用的入门级教程', '慕_神', 'https://img3.mukewang.com/55dbe4f1000115e705680568-80-80.jpg', 'JAVA开发工程师', '初级课程，会java基本语法即可', 'NoSql和Redis是什么？Redis的使用场景，安装和使用。通过Jedis连接到Redis；Redis的通用命令，事务和持久化', '2018-09-02 20:36:56.575787', '2018-08-12 23:47:41.333238');
INSERT INTO "public"."tb_imooc_course" VALUES (72, 875, 'Android多图上传技术实战之多文件封装上传', '中级', 3442, 'Android多图上传技术实战之多文件上传封装', 'Android', 'https://img2.mukewang.com/598146160001c2e506000338-240-135.jpg', 'https://www.imooc.com/learn/875', '3小时 8分', 9.3, 10, 10, 8, '简介：Android多图上传技术实战之多文件上传封装', '严振杰', 'https://img1.mukewang.com/5aa614d00001b50a07500750-80-80.jpg', '移动开发工程师', '建议提前先学习《Android多图上传技术实战之http普通请求封装》这门课', 'Android多图上传技术实战之多文件上传封装', '2018-09-02 20:36:46.422332', '2018-08-12 23:47:31.640785');
INSERT INTO "public"."tb_imooc_course" VALUES (39, 994, 'TensorFlow与Flask结合打造手写体数字识别', '中级', 6426, 'TensorFlow和flask结合识别自己的手写体数字', '深度学习, 计算机视觉', 'https://img2.mukewang.com/5afe7ffa00018fff06000338-240-135.jpg', 'https://www.imooc.com/learn/994', '2小时 1分', 8.3, 8.7, 8, 8.2, '简介：本课程使用TensorFlow技术和flask框架相结合，通过前端html和jQuery框架，利用canvas画布将用户在屏幕上的手写文字传入到后台flask的restful api中，然后flask通过调取模型接口，把数据传入模型中进行手写体识别，形成一个完整的闭环。', 'Mr_Ricky', 'https://img1.mukewang.com/5af01ca20001eb2803260325-80-80.jpg', '算法工程师', '1、Python基础
2、TensorFlow基础', '1、如何使用tensorflow训练一个mnist数据集；
2、如何将mnist数据集使用flask打包成api接口；
3、如何通过前端web框架调用模型接口；', '2018-09-02 20:36:41.975102', '2018-08-12 23:47:28.936731');
INSERT INTO "public"."tb_imooc_course" VALUES (45, 1008, '用Jenkins自动化搭建测试环境', '入门', 9929, '利用Jenkins实现测试环境的一键自动化部署。', '自动化测试', 'https://img1.mukewang.com/5b1e0cfc0001ef7b06000338-240-135.jpg', 'https://www.imooc.com/learn/1008', '1小时21分', 8.7, 8.2, 8.7, 9.3, '简介：本课讲述了如何使用Jenkins做测试环境的自动化构建与部署，课程中的案例会利用Jenkins 配合 Git, Maven, Java, Tomcat, MySQL等语言与工具实现一个典型的互联网应用的自动化构建部署。', '老钱666', 'https://img1.mukewang.com/5ad49f9a0001a74311111111-80-80.jpg', '软件测试工程师', '必备知识：
1.Git, Maven, Java, Tomcat, MySQL的基本操作方法；
2.Linux系统的基本操作方法；
3.会使用MySQL客户端工具 和 Java开发工具', '1.Jenkins的基本用法；
2.Jenkins + Git + Maven + Java + Tomcat  + MySQL从代码到测试Server的一键部署；
3.自动构建测试环境的典型场景；', '2018-09-02 20:36:42.506367', '2018-08-12 23:47:29.439411');
INSERT INTO "public"."tb_imooc_course" VALUES (176, 868, '使用React构建一款音乐播放器', '中级', 24778, '从零开始使用React构建一款音乐播放器', 'React.JS', 'https://img.mukewang.com/597e96f10001c25f06000338-240-135.jpg', 'https://www.imooc.com/learn/868', '2小时39分', 9.4, 9.3, 9.5, 9.4, '简介：本课程从零开始和大家一起完成一款音乐播放器的开发，通过本次课程，我们可以学习到使用React开发项目过程中的各个环节以及一些最佳实践，包括开发环境的搭建、React开发理念、组件化、路由、组件通信等知识点。', 'musiq', 'https://img2.mukewang.com/54fff00100012f2201000100-80-80.jpg', 'Web前端工程师', '1、有一定的前端开发经验
2、熟悉HTML、CSS，精通JavaScript
3、对前端工程化有一定的了解
4、了解ES6一些基本语法', '1、webpack的配置
2、开发环境的搭建
3、React与传统开发的理念差异
4、组件化开发
5、React-Router的使用
6、事件订阅及通信
7、一些最佳实践', '2018-09-02 20:36:51.353416', '2018-08-12 23:47:40.529763');
INSERT INTO "public"."tb_imooc_course" VALUES (84, 958, 'Ruff物联网应用开发入门', '初级', 5062, 'Ruff物联网应用开发入门', 'Android', 'https://img1.mukewang.com/5aa77f4c0001f0a706000338-240-135.jpg', 'https://www.imooc.com/learn/958', '2小时 6分', 9.2, 9.7, 10, 8, '简介：本课程将带大家打开Ruff物联网应用开发之门，首先会介绍Ruff最基础的内容和特性，然后介绍Ruff 开发中的硬件控制部分，接着介绍Ruff 开发中的联网操作， Ruff 开发中如何集成互联网服务，最后对Ruff驱动开发进行简要入门知识讲解。', 'Ruff卫老师...', 'https://img4.mukewang.com/5a9cf6bf0001560c10421042-80-80.jpg', 'JS工程师', '1.需要具有计算机编程基础；
2.需要 Ruff 开发套件；
3.需要注册 Azure 账号；
4.阅读现有 GPIO 设备驱动会更深入的了解 Ruff 驱动开发；', 'Ruff物联网应用开发入门，Ruff最基础的内容和特性，Ruff 开发中的硬件控制部分，Ruff 开发中的联网操作， Ruff 开发中如何集成互联网服务，Ruff驱动开发入门知识。', '2018-09-02 20:36:45.546999', '2018-08-12 23:47:32.393954');
INSERT INTO "public"."tb_imooc_course" VALUES (79, 952, 'C4D零基础入门（下）', '入门', 3217, '带你了解C4D中常用的工具的使用，让你的设计升个维度！', '模型制作', 'https://img1.mukewang.com/5a95227b00014f2206000338-240-135.jpg', 'https://www.imooc.com/learn/952', '1小时26分', 9.8, 10, 10, 9.5, '简介：本套教程为C4D基础教程的第二部分，在这套教程中将教会大家剩余部分工具的使用和更多C4D中非常实用的功能，学完本套教程后就能够对C4D有一个全面的了解。快来跟我继续学习C4D的吧！更多实战课戳https://coding.imooc.com/class/184.html', 'MAZIN_zhao', 'https://img4.mukewang.com/5a52dca2000169ac06180618-80-80.jpg', NULL, '1、自行安装好C4D软件
2、零基础入门，放松心态
3、提前学习完第一部分课程《C4D零基础入门(上)》', '1、常用的变形器工具
2、C4D中场景工具的使用
3、如何建立一个摄像机
4、几种灯光的使用
5、其他常用的工具
6、编辑模式下的工具栏
7、材质的制作
8、如何设置渲染', '2018-09-02 20:36:44.650554', '2018-08-12 23:47:32.083736');
INSERT INTO "public"."tb_imooc_course" VALUES (80, 959, '移动端音频视频入门', '初级', 8228, '移动端音视频开发必备基础知识', 'Android', 'https://img.mukewang.com/5aa63e9600018a7f06000338-240-135.jpg', 'https://www.imooc.com/learn/959', '2小时24分', 9.5, 9.8, 9.5, 9.2, '简介：本课程将首先带大家了解下万人直播架构，然后带大家认知CDN网络是什么，之后会带大家搭建一套简单的直播系统，让大家从整体上对音视频有所了解，然后就是音频知识（包括音频的量化与编码，压缩技术，编解码器选型，AAC），之后是视频知识（包括H264宏块的划分与帧分组，视频压缩技术，H264结构与码流，NAL单元，YUV等），最后会对课程进行总结。', '音视频_李超...', 'https://img2.mukewang.com/59e35e990001337b08521280-80-80.jpg', '全栈工程师', '需要有Linux基础，Java基础，Android基础', '1.万人直播架构；
2.CDN网络是什么；
3.简单的直播系统搭建；
4.音频知识（包括音频的量化与编码，压缩技术，编解码器选型，AAC）；5.视频知识（包括H264宏块的划分与帧分组，视频压缩技术，H264结构与码流，NAL单元，YUV等）；', '2018-09-02 20:36:45.0418', '2018-08-12 23:47:32.1284');
INSERT INTO "public"."tb_imooc_course" VALUES (81, 956, 'SpringBoot开发常用技术整合', '中级', 40426, 'SpringBoot 极简开发的框架整合利器', 'Java, SpringBoot', 'https://img4.mukewang.com/5a9f83e90001f06306000338-240-135.jpg', 'https://www.imooc.com/learn/956', '2小时45分', 9.6, 9.9, 9.3, 9.7, '简介：本课程通过详细的对springboot的各个技能点逐一介绍与演示，可以很迅速的熟悉整个springboot框架体系，并且与springmvc有效的进行对比，理解异同，这样对于后续的springboot开发会非常迅速。同时课程中会针对不同的技术点进行不同的应用场景的讲解，使得学生更好的理解未来自己做项目中如何运用。另外老师的分布式课程课程《ZooKeeper分布式专题与Dubbo微服务入门》已经上线，需要的小伙伴一定不要错过~', '风间影月', 'https://img3.mukewang.com/5a0c5df20001a1cb05800580-80-80.jpg', '全栈工程师', '基本必备：JAVA基础，spring基础，对json，redis有一定的了解', '了解springboot如何从零搭开始搭建一个工程			
springboot系统架构体系			
springboot与各个技术点的整合			
', '2018-09-02 20:36:44.94196', '2018-08-12 23:47:32.13688');
INSERT INTO "public"."tb_imooc_course" VALUES (83, 965, 'C4D创意M字母教程', '初级', 2560, '带你综合运用C4D基础知识，完成案例实践
，让你的设计升个维度！', '模型制作', 'https://img1.mukewang.com/5aaf1f110001a0e105400300-240-135.jpg', 'https://www.imooc.com/learn/965', '1小时12分', 10, 10, 10, 10, '简介：本套教程为C4D基础案例部分，带领大家实际操作，完成C4D基础建模案例以及材质渲染，让你在最短的时间内快速入门。快来一起领略C4D的无穷魅力吧！更多实战课程戳https://coding.imooc.com/class/184.html', 'MAZIN_zhao', 'https://img4.mukewang.com/5a52dca2000169ac06180618-80-80.jpg', NULL, '1、自行安装好C4D软件 
2、零基础入门，放松心态
3、提前学习完前两部分课程《C4D零基础入门(上)》、《C4D零基础入门(下)》', '1、详细了解视图窗口、工具栏、对象浏览器/层属性面板2、掌握参数化对象、掌握样条工具、掌握生成器工具 3、掌握造型工具、常用的变形器工具、C4D中场景工具的使用、如何建立一个摄像机、几种灯光的使用
4、其他常用的工具 编辑模式下的工具栏、材质的制作、如何设置渲染
', '2018-09-02 20:36:45.133643', '2018-08-12 23:47:32.291083');
INSERT INTO "public"."tb_imooc_course" VALUES (68, 942, '移动web开发适配秘籍Rem', '中级', 23246, '移动web不求人，全面掌握移动web开发rem适配方案。', 'HTML/CSS', 'https://img4.mukewang.com/5a71255d0001400e06000338-240-135.jpg', 'https://www.imooc.com/learn/942', '1小时 0分', 9.3, 9.3, 9.3, 9.3, '简介：移动web开发适配的方案有许多，然而最好的方案一定要掌握。本课程主要讲解移动web开发中常见的适配方法，着重讲解使用rem方案的原理和使用方法，来进行移动web开发的适配工作，借助于实战页面让学者更加清晰的掌握实战工作中如何应用rem适配技术。', '吕小鸣', 'https://img4.mukewang.com/5a6f01bc0001a6f405680495-80-80.jpg', 'Web前端工程师', '1、对html，css，javascript基础知识已经掌握。
2、掌握简单的css布局方法和dom的api。', '1、了解移动web常见的调试方法
2、了解移动web常见的适配方案 
3、掌握移动端布局技巧 
4、基本的前端项目构建方法
5、全面掌握rem适配方法  ', '2018-09-02 20:36:47.026837', '2018-08-12 23:47:31.142449');
INSERT INTO "public"."tb_imooc_course" VALUES (88, 972, 'Python实现线性回归', '初级', 15041, '掌握python进行线性回归分析的原理及编程实践', '机器学习, 人工智能', 'https://img.mukewang.com/5abc6159000142f706000338-240-135.jpg', 'https://www.imooc.com/learn/972', '1小时 5分', 9.5, 9.5, 9.5, 9.5, '简介：对于机器学习的入门学习者提供线性回归的原理讲解，在掌握原理的基础上，利用python实现最小二乘法或者梯度下降来进行线性回归分析。', 'Erik_Song', 'https://img3.mukewang.com/5ad95a870001c4b804800480-80-80.jpg', '全栈工程师', '1、有机器学习基础
2、有一定的python基础', '1、线性回归的概念
2、最小二乘法的python实现
3、梯度下降的python实际
4、编程处理线性回归分析的一般方法', '2018-09-02 20:36:45.617968', '2018-08-12 23:47:32.665939');
INSERT INTO "public"."tb_imooc_course" VALUES (66, 944, 'React组件', '中级', 10168, '带你了解如何创建好拥有各自状态的组件，再由组件构成更加复杂的界面', 'React.JS', 'https://img3.mukewang.com/5a73f54f000190d206000338-240-135.jpg', 'https://www.imooc.com/learn/944', '2小时14分', 9.7, 10, 9.6, 9.6, '简介：本课程将带领大家一起学习react的组件与生命周期，并且运用到实例中', 'coding迪斯尼...', 'https://img4.mukewang.com/57a333b400010f6006400478-80-80.jpg', '全栈工程师', '1、掌握HTML、CSS
2、掌握JavaScript', '1、使用React轻松地创建用户交互界面
2、了解JavaScript扩展语法JSX
3、使用JSX简单快速编写界面模板', '2018-09-02 20:36:46.453196', '2018-08-12 23:47:31.079706');
INSERT INTO "public"."tb_imooc_course" VALUES (89, 937, 'Python制作数据分析工具', '初级', 17472, '用Python制作一个高效的数据诊断工具', '机器学习, 深度学习', 'https://img4.mukewang.com/5a5854970001e9a106000338-240-135.jpg', 'https://www.imooc.com/learn/937', '1小时10分', 9.8, 9.8, 9.8, 9.8, '简介：数据诊断是数据挖掘和机器学习的第一步，然而却被很多人忽略掉了。如果对数据本身不了解的话，容易受到严谨的业务人的挑战，同时，如果缺少了数据诊断的步骤，会增加后面数据预处理的难度，从而影响最终模型的效果。因此，本课程教授大家如何制作一个高效的，复用性高的，让人更好地理解数据本身的数据诊断工具。', 'Alex_Cen', 'https://img.mukewang.com/5458475800015cb202200220-80-80.jpg', '产品经理', '适合人群：希望从传统分析人员转型到数据挖掘和机器学习领域的人员；技术储备：python基本知识，统计学基本知识', '1.用Python制作一个高效的数据诊断工具; 2.数据诊断的各种指标;', '2018-09-02 20:36:50.438967', '2018-08-12 23:47:33.153583');
INSERT INTO "public"."tb_imooc_course" VALUES (92, 935, 'Vue+Webpack打造todo应用', '高级', 37257, '用前端最热门框架Vue+最火打包工具Webpack打造todo应用', '前端工具, Vue.js', 'https://img2.mukewang.com/5a56fdb400017d0306000338-240-135.jpg', 'https://www.imooc.com/learn/935', '2小时23分', 9.6, 9.9, 9.5, 9.4, '简介：本课程基于一个TODO示例应用讲解VUE2的基本使用以及如何搭建一个vue的工程。首先通过webpack我们搭建了一个完善的vue的workflow，然后围绕功能实现讲解vue的使用，并介绍了vue的.vue文件以及jsx的开发模式。
对应实战课已经上线：https://coding.imooc.com/class/196.html，欢迎学习', 'Jokcy', 'https://img.mukewang.com/5a697c950001262b05790578-80-80.jpg', 'Web前端工程师', '1、对es6语法有基本了解
2、了解前端工程化
3、了解vuejs', '1、通过webpack搭建vue工程workflow
2、哪些是学习vue的重点
3、.vue文件开发模式
4、vue使用jsx进行开发的方式
5、vue组件间通信的基本方式
6、webpack打包优化的基本点', '2018-09-02 20:36:46.688768', '2018-08-12 23:47:33.193485');
INSERT INTO "public"."tb_imooc_course" VALUES (91, 932, 'Adobe After Effects软件基础入门', '入门', 12421, '用看一部电影的时间学会AE', '设计工具, 动效动画', 'https://img2.mukewang.com/5a4ef7ad0001bdc706000338-240-135.jpg', 'https://www.imooc.com/learn/932', '1小时16分', 9.6, 9.1, 9.9, 9.9, '简介：网上教程琳琅满目，有时跟着一篇教程做下来，也能做出比较不错的东西，但是过了一段时间之后会发现，自己还是有好些地方不明白。“工欲善其事，必先利其器”。建议大家在学习精彩酷炫的效果之前，先把基础学扎实。有了基础之后才能再看其他教程的时候更好的理解分析制作者的方法和思路。相关实战课已出，戳链接带走https://coding.imooc.com/class/184.html', 'MAZIN_zhao', 'https://img4.mukewang.com/5a52dca2000169ac06180618-80-80.jpg', NULL, '1、安装好较新版本的AE（Adobe After Effects）
2、一段不被打扰的时间', '1、AE各个功能面板简介
2、如何导入素材、如何新建合成。
3、通过修改属性制作动画
4、蒙版的功能与用法
5、丰富多彩的效果
6、如何渲染输出、怎么输出GIF动画', '2018-09-02 20:36:47.099241', '2018-08-12 23:47:33.185406');
INSERT INTO "public"."tb_imooc_course" VALUES (62, 941, 'Netty入门之WebSocket初体验', '中级', 14320, '由浅入深了解Java高性能NIO通信首选框架——Netty', 'Java', 'https://img.mukewang.com/5a6946f200017b5c06000338-240-135.jpg', 'https://www.imooc.com/learn/941', '1小时20分', 8.8, 8.8, 8.8, 8.7, '简介：大数据背景下，对我们的系统性能提出了更高的要求，包括我们的数据存储和应用，都提出了性能上的需求，尤其是对IO通信方面，更是成为了大数据通信下的瓶颈，为此，我们对系统进行相关的分布式改造。那么，如何进一步提升我们的系统IO性能呢？这里，就为大家介绍大数据时代构建高可用分布式系统的利器——Netty', '济癫', 'https://img3.mukewang.com/59fadbe700012ced01500150-80-80.jpg', 'JAVA开发工程师', '本课程是Java中高级课程，需熟练掌握Java基本语法和Java IO通信', '1、IO通信			
2、原生IO的缺陷和Netty的优势			
3、WebSocket生命周期			
4、Netty实现WebSocket			
', '2018-09-02 20:36:46.497316', '2018-08-12 23:47:30.882615');
INSERT INTO "public"."tb_imooc_course" VALUES (90, 874, 'Android多图上传技术实战之http普通请求封装', '中级', 3322, 'Android多图上传技术实战之http普通请求封装', 'Android', 'https://img2.mukewang.com/5981462d0001c2e506000338-240-135.jpg', 'https://www.imooc.com/learn/874', '2小时 7分', 9.1, 10, 7.3, 10, '简介：目标：Http实现两种方式的多文件、大文件上传。
案例：仿微信朋友圈多图上传发布。
用途：上传图片，语音、视频等。
场景：淘宝客户端商家发布商品时多图上传。微信、QQ发动态时，多图上传。微信QQ发送语音、视频时传输大文件。
基础知识：流的使用、主线程和子线程的通信。
重点难点：用流写出模拟Http表单的数据。
重要性：★★★★', '严振杰', 'https://img4.mukewang.com/5aa614d00001b50a07500750-80-80.jpg', '移动开发工程师', '需要具备安卓四大组件基础知识', 'Android多图上传技术实战之http普通请求封装', '2018-09-02 20:36:46.925773', '2018-08-12 23:47:33.172049');
INSERT INTO "public"."tb_imooc_course" VALUES (107, 733, 'Android网络框架—AsyncHttpClient和XUtils', '初级', 5105, '介绍两种最常用网络框架的实际使用', 'Android', 'https://img.mukewang.com/59e716e2000167dc06000338-240-135.jpg', 'https://www.imooc.com/learn/733', '1小时19分', 9.4, 9.8, 9, 9.5, '简介：让学生知道不同网络框架的各自特点，并且选择合适的框架进行开发', 'ALABO', 'https://img2.mukewang.com/5458657e000125a302200220-80-80.jpg', '移动开发工程师', '掌握安卓基础理论知识，会熟练掌握四大组件的应用', '让学生知道使用完善高效的网络请求框架的重要性！', '2018-09-02 20:36:48.145428', '2018-08-12 23:47:34.459167');
INSERT INTO "public"."tb_imooc_course" VALUES (95, 918, 'Android-NDK进阶', '高级', 4955, '本课程为NDK开发进阶教程，带领大家掌握在Android Studio中开发NDK的技能', 'Android', 'https://img.mukewang.com/5a405d45000175cb06000338-240-135.jpg', 'https://www.imooc.com/learn/918', '2小时30分', 10, 10, 10, 10, '简介：帮助开发者在Android Studio中快速开发C（或C++）的动态库，并能自动将so和java应用一起打包成apk。包括方法签名的学习，以及常见异常的分析和处理', 'nate', 'https://img.mukewang.com/547697d10001e0b110240679-80-80.jpg', '移动开发工程师', '需要有java,Android，Android Studio基础知识', '环境搭建，目录结构介绍，JNI交互处理,以及常见异常的分析和处理', '2018-09-02 20:36:50.238343', '2018-08-12 23:47:33.340959');
INSERT INTO "public"."tb_imooc_course" VALUES (450, 562, 'MongoDB Day 2015 深圳', '中级', 9449, '深入了解MongoDB技术及成功案例，精彩内容，不容错过', 'MongoDB', 'https://img.mukewang.com/56779555000160d106000338-240-135.jpg', 'https://www.imooc.com/learn/562', '2小时20分', 9.8, 9.7, 9.9, 9.7, '简介：本次年度大会由来自MongoDB内部的专家以及各行业MongoDB大牛关于数据安全、wiredtiger内部机制、OpsManager以及在其它行业方面的成功案例。大会吸引了200多位MongoDB爱好者，会场内座无虚席！', 'MongoDB中文...', 'https://img2.mukewang.com/54bf1a320001cc8802200220-80-80.jpg', NULL, '1.	对MongoDB有基本的了解 
2.	对MongoDB感兴趣
', '1.	MongoDB的数据安全
2.	WiredTiger内部机制及原理
3.	MongoDB OpsManager
4.	在网易实现MongoDB as a service
5.	MongoDB for Oracle DBA
6.	Log Analytic与MongoDB成功案例
7.	MongoDB 在百度云的发展路程
8.	MongoDB 3.2预览
', '2018-09-02 20:37:12.410336', '2018-08-12 23:48:03.041475');
INSERT INTO "public"."tb_imooc_course" VALUES (175, 881, 'HBase入门', '初级', 17676, 'HBase入门教程，从基础概念到实战操作，让初学者快速入门', '大数据, Hbase', 'https://img4.mukewang.com/598986ae0001f07706000338-240-135.jpg', 'https://www.imooc.com/learn/881', '2小时13分', 9.7, 9.9, 9.6, 9.8, '简介：从基础概念到实战操作，目标是让零基础的学习者或者是菜鸟级的初学者都能够快速的入门。', '卡弗卡大数据...', 'https://img3.mukewang.com/5a2bc3b70001764a04800480-80-80.jpg', '数据科学家', 'Hbase是现企业应用中非常流行的分布式数据库，不管是传统软件企业还是互联网企业，基本上HBase作为海量数据存储的首选。本课程由浅入深，从基础概念到安装部署、再到理论实战，一步一步引导式的全流程讲解，课程所设计的其他知识点也都包含其中。', '从基础概念到实战操作，目标是让零基础的学习者或者是菜鸟级的初学者都能够快速的入门。', '2018-09-02 20:36:51.526842', '2018-08-12 23:47:40.521798');
INSERT INTO "public"."tb_imooc_course" VALUES (76, 955, 'ES6快速入门', '初级', 36728, '用最通俗、形象的方法描述ES6的强大并教会你正确的学习方法。', 'JavaScript', 'https://img4.mukewang.com/5a97d4000001d97906000338-240-135.jpg', 'https://www.imooc.com/learn/955', '1小时25分', 9.4, 9.5, 9.5, 9.2, '简介：ES6增加了很多新的语法，很多同学学习起来感觉很别扭，有时候也不理解新增加的语法有什么用，对ES6的学习也没有兴趣进而动力不足、学习效率不高。本课程通过ES3、ES5、ES6的对比去实现同一个问题，学员可以非常容易的理解和掌握ES6的强大并产生学习的兴趣。', '快乐动起来呀...', 'https://img4.mukewang.com/54584cb50001e5b302200220-80-80.jpg', 'Web前端工程师', '了解JS基础知识', '1、通过对比知道为什么要学习ES6
2、快速入门ES6的学习
3、掌握ES3、ES5、ES6的联系和区别
4、学会快速构建ES6的编译环境', '2018-09-02 20:36:44.909531', '2018-08-12 23:47:31.936116');
INSERT INTO "public"."tb_imooc_course" VALUES (448, 563, 'Python开发简单爬虫', '初级', 177622, '本教程带您解开python爬虫这门神奇技术的面纱', 'Python', 'https://img4.mukewang.com/57466ffc00015e2f06000338-240-135.jpg', 'https://www.imooc.com/learn/563', '1小时14分', 9.7, 9.9, 9.7, 9.5, '简介：爬虫技术用来从互联网上自动获取需要的数据。课程从对爬虫的介绍出发，引入一个简单爬虫的技术架构，然后通过是什么、怎么做、现场演示三步骤，解释爬虫技术架构中的三个模块。最后，一套优雅精美的爬虫代码实战编写，向大家演示了实战抓取百度百科1000个页面的数据全过程', '疯狂的蚂蚁cr...', 'https://img4.mukewang.com/55c9d2750001658d05550576-80-80.jpg', 'JAVA开发工程师', '本课程是Python语言开发的高级课程
1、Python编程语法；
2、HTML语言基础知识；
3、正则表达式基础知识；', '1、爬虫技术的含义和存在价值
2、爬虫技术架构
3、组成爬虫的关键模块：URL管理器、HTML下载器和HTML解析器
4、实战抓取百度百科1000个词条页面数据的抓取策略设定、实战代码编写、爬虫实例运行
5、一套极简的可扩展爬虫代码，修改本代码，你就能抓取任何互联网网页！', '2018-09-02 20:37:12.434442', '2018-08-12 23:48:02.915123');
INSERT INTO "public"."tb_imooc_course" VALUES (266, 797, 'iOS开发之Realm数据库', '中级', 3331, '本教程从基础入手，让你短短几分钟轻松掌握Realm数据库的使用', 'iOS', 'https://img4.mukewang.com/587deb6f00013fa006000338-240-135.jpg', 'https://www.imooc.com/learn/797', '43分', 10, 10, 10, 10, '简介：本门课程主要讲解Realm数据库的安装，Realm数据库的基本操作，并且通过一些实例来完成数据的增删改查，以及数据库的基本配置。让你从开始接触到上手使用，只需短短几分钟。', 'zsy78191', 'https://img3.mukewang.com/57b6b50f00019cef01590159-80-80.jpg', NULL, '1、熟悉数据库的相关操作
2、会查阅第三方官方文档
3、熟练掌握OC基础语法', '1、掌握Realm数据库的安装
2、掌握Realm数据库的增、删、改、查操作
3、掌握Realm数据库的基本配置', '2018-09-02 20:36:58.697666', '2018-08-12 23:47:47.607707');
INSERT INTO "public"."tb_imooc_course" VALUES (106, 915, 'Spring Boot热部署', '中级', 26339, 'Spring Boot热部署的原理和实现', 'Java, SpringBoot', 'https://img.mukewang.com/5a0948f900011d3a06000338-240-135.jpg', 'https://www.imooc.com/learn/915', '1小时58分', 9.4, 9.1, 9.5, 9.6, '简介：当今互联网领域，微服务架构越来越火，而组成微服务架构的重要组成部分就是Spring Boot，Spring Boot能够大大提高我们的开发效率，同时另一种提高开发效率的技术就是热部署技术，我们今天的课程就是将这两种提高开发效率的技术做了相应的整合——推出Spring Boot热部署这门课程', '济癫', 'https://img1.mukewang.com/59fadbe700012ced01500150-80-80.jpg', 'JAVA开发工程师', '本课程是Java中高级课程，需熟练掌握Java基本语法和一些Java底层概念', '1、热部署与热加载的联系和区别			
2、热部署的原理与实现			
3、构建Spring Boot项目的流程			
4、Spring Boot热部署的实现与发布方式			
', '2018-09-02 20:36:48.863171', '2018-08-12 23:47:34.37755');
INSERT INTO "public"."tb_imooc_course" VALUES (172, 880, '游戏测试入门', '入门', 22129, '游戏测试就是玩游戏吗？什么是真正的游戏测试！', '功能测试', 'https://img.mukewang.com/598938e20001888e06000338-240-135.jpg', 'https://www.imooc.com/learn/880', '2小时35分', 9.8, 9.8, 10, 9.7, '简介：通过本课程的学习，大家首先会认识到游戏开发团队及流程，然后明白游戏测试主要工作内容，游戏测试基本工作流程，并学会需求文档分析，功能模块划分以及游戏测试用例之用例编写，整理与维护，接着你会了解到什么是Bug，如何鉴定Bug，以及如何在Mac环境下对弱网进行测试，最后你会学习到游戏客户端性能测试（安卓，IOS）以及游戏接口测试，希望通过这门课程的学习，能让你进入你期待的游戏测试领域。', 'ervinzhang', 'https://img.mukewang.com/533e55d10001c34d02000200-80-80.jpg', '软件测试工程师', '面向有志于游戏测试领域的入门课程
', '1.游戏开发团队及流程
2.游戏测试主要工作内容
3.游戏测试基本工作流程
4.游戏测试用例之需求文档分析
5.游戏测试用例之功能模块划分
6.游戏用例编写，整理与维护
7.Bug详解
8.弱网测试－mac环境
9.客户端性能测试－安卓
10.客户端性能测试－ios
11.接口测试', '2018-09-02 20:36:51.379761', '2018-08-12 23:47:40.438016');
INSERT INTO "public"."tb_imooc_course" VALUES (73, 947, 'ajax跨域完全讲解', '中级', 37469, '完全讲解Ajax跨域产生的原因和解决思路，掌握跨域的各种解决方案', 'jQuery, Java', 'https://img.mukewang.com/5a7d64da0001032d06000338-240-135.jpg', 'https://www.imooc.com/learn/947', '1小时40分', 9.6, 9.8, 9.7, 9.5, '简介：通过讲解什么是跨域问题，从系统最常见的部署结构上分析跨域解决的思路，详细讲解jsonp的工作机制，http协议如何支持跨域，以及http服务器nginx和apache的2种不同解决思路，让大家知其然并知其所以然，快速掌握问题本质和分析问题的方法。老师的实战课《SpringBoot2.0不容错过的新特性 WebFlux响应式编程》已上线，喜欢老师的小伙伴可以来支持下~地址：https://coding.imooc.com/class/209.html', '晓风轻', 'https://img1.mukewang.com/5adf1c820001910603200320-80-80.jpg', '全栈工程师', '需要具备基本的前后台开发技术', 'AJAX跨域产生的原因和解决思路			
系统的基本部署架构和跨域的关系			
http服务器nginx和apache的重要作用和跨域的2种解决思路			
jsonp的工作机制和优缺点			
前台测试框架Jasmine的使用			
', '2018-09-02 20:36:44.56482', '2018-08-12 23:47:31.659118');
INSERT INTO "public"."tb_imooc_course" VALUES (126, 902, 'AWS云计算—混合架构&DevOps深度实践', '中级', 2341, 'Amazon、Musically、 Red Hat、上海数慧等架构设计技术干货分享。', '云计算', 'https://img4.mukewang.com/59df1d83000141a306000338-240-135.jpg', 'https://www.imooc.com/learn/902', '3小时 8分', 9.7, 10, 10, 9, '简介：本次架构设计技术专场带你了看Amazon 中国研发中心首席架构师讲解 Microservice & Severless架构；看Musically、 Red Hat、上海数慧等在AWS云上的架构设计技术干货分享。AWS 技术峰会2018 中国站将在上海、北京、深圳三地盛大召开，报名链接：https://awssummit.cn?tc=1s016B2uQi', '亚马逊AWS', 'https://img1.mukewang.com/59c2078900017f7603000300-80-80.jpg', '全栈工程师', 'AWS技术峰会是亚马逊 AWS 每年在全球众多城市巡回举办的大型云服务技术盛会。
该课程对于AWS基础服务需要有一定的了解', '1.了解基于AWS的大规模数据ETL, 存储, 准实时计算与分析
2.如何整合业务数据和用户行为数据，挖掘背后的商业价值
3.如何利用云资源做高性能基因大数据计算
4.通过数据资产化、业务比特化和应用场景化这三方面来诠释TalkingData如何帮助企业智能数据化
', '2018-09-02 20:36:48.209255', '2018-08-12 23:47:36.152162');
INSERT INTO "public"."tb_imooc_course" VALUES (101, 930, '神经网络简介', '初级', 22957, '学习神经网络基本概念，在基本概念的基础上掌握神经网络基本原理', '深度学习, 人工智能', 'https://img.mukewang.com/5a40c6370001d13c06000338-240-135.jpg', 'https://www.imooc.com/learn/930', '50分', 8.3, 8.4, 8.3, 8.1, '简介：通过逻辑回归模型的介绍，讲解激励函数，损失函数，梯度下降等概念，通过一个富有代表性的神经网络模型，结合机器学习基本概念讲解了神经网络的学习训练过程，深入直观的剖析了神经网络中反向传播等核心算法，帮助大家举一反三，深入理解。', 'Erik_Song', 'https://img1.mukewang.com/5ad95a870001c4b804800480-80-80.jpg', '全栈工程师', '1、机器学习基础知识
2、直观讲解神经网络核心原理', '1、神经网络的历史
2、激励函数，损失函数，梯度下降等机器学习概念
3、神经网络的学习训练过程
4、直观分析反向传播算法', '2018-09-02 20:36:50.103867', '2018-08-12 23:47:34.073661');
INSERT INTO "public"."tb_imooc_course" VALUES (102, 912, 'Beanstalkd-带你玩转消息队列', '中级', 5824, 'beanstalkd-轻松驾驭PHP消息队列，带你一起挖掘消息处理的真实逻辑！', 'PHP', 'https://img2.mukewang.com/5a0018470001386b06000338-240-135.jpg', 'https://www.imooc.com/learn/912', '1小时 1分', 9.7, 10, 9.7, 9.5, '简介：本课程为大家详细将为讲解消息队列的本质，让你深入了解它的生产及消费过程，熟悉并掌握消息队列的运用场景及使用方式。', '逆雪寒x', 'https://img1.mukewang.com/545868f30001886f02200220-80-80.jpg', '全栈工程师', '学习该课程需要了解PHP的基本使用，掌握面向对象相关知识', '1 什么是beanstalkd
2 beanstalkd安装
3 消息队列的使用场景及操作原来
4 beanstalkd生产类及消费类', '2018-09-02 20:36:47.335245', '2018-08-12 23:47:34.199297');
INSERT INTO "public"."tb_imooc_course" VALUES (115, 887, 'PHP-面向对象', '初级', 21829, '从面相过程到面向对象，带你深入理解面向对象编程思想，体验编程的奥妙！', 'PHP', 'https://img4.mukewang.com/59acb1650001adce06000338-240-135.jpg', 'https://www.imooc.com/learn/887', '2小时30分', 9.6, 9.8, 9.8, 9.1, '简介：本课程主要带领大家一起认识面向对象，学习面向对象的基础知识，了解面向对象的相关特性和使用规则', '逆雪寒x', 'https://img2.mukewang.com/545868f30001886f02200220-80-80.jpg', '全栈工程师', '学习该课程需要熟悉PHP语法基础，了解PHP的基本使用', '1 对象的基本概念
2 什么是面向对象思想
3 面向对象的特性和规则
4 如何使用面向对象
', '2018-09-02 20:36:52.035799', '2018-08-12 23:47:35.157341');
INSERT INTO "public"."tb_imooc_course" VALUES (116, 867, 'Docker入门', '初级', 37731, '再不学点Docker你就out啦！', 'Docker', 'https://img3.mukewang.com/597e973600011a6e06000338-240-135.jpg', 'https://www.imooc.com/learn/867', '1小时35分', 9.7, 9.7, 9.7, 9.6, '简介：本课程从最基础的安装开始，通过大量的实际操作循序渐进地介绍Docker基本知识。从最基本的镜像、容器开始，学习Dockerfile编写，容器操作，到完成一个多容器的应用。', '西北峰', 'https://img2.mukewang.com/5458655200013d9802200220-80-80.jpg', '学生', '有操作Linux命令行的基本技能', '1、什么是Docker
2、什么是Docker镜像，什么是容器
3、将自己的app打包成容器
4、搭建多容器的环境
5、docker在各个平台上的安装', '2018-09-02 20:36:52.247335', '2018-08-12 23:47:35.357241');
INSERT INTO "public"."tb_imooc_course" VALUES (109, 869, '探秘Spring AOP', '高级', 36700, '让我们一起探秘Spring Aop', 'Java, SpringBoot', 'https://img3.mukewang.com/597fe9340001624e06000338-240-135.jpg', 'https://www.imooc.com/learn/869', '2小时30分', 9.7, 9.9, 9.5, 9.7, '简介：面向切面编程（AOP）提供另外一种角度来思考程序结构，通过这种方式弥补了面向对象编程（OOP）的不足。同时AOP框架也是Spring的一个关键的组件在平时的面试中也是一个容易被询问到的知识点。本课程将带领大家对SpringAop的实现原理，详细用法和经典场景一步步进行解读，让我们一起探秘Spring Aop！', 'apollo_0001', 'https://img4.mukewang.com/533e4c3300019caf02000200-80-80.jpg', 'JAVA开发工程师', '本课程有一定的难度，需要同学较为熟练的掌握Spring和Spring Boot相关知识。熟练配置mysql，mongodb和maven项目。本课程将带领大家对源码进行刨析！不熟悉相关内容的同学可先学习SSM免费路径上的课程和慕课网上Spring Boot的基础课（http://www.imooc.com/learn/767）。', '让学生了解SpringAop的原理，使用，解读SpirngAop的经典代码，再通过案例加深让学生对SpirngAop的理解和掌握的程度', '2018-09-02 20:36:51.651854', '2018-08-12 23:47:34.779189');
INSERT INTO "public"."tb_imooc_course" VALUES (87, 969, 'iOS开发之网络协议', '初级', 3116, '了解HTTP发展历程，熟悉网络工作流程！', 'iOS', 'https://img1.mukewang.com/5aaf826f00017e6306000338-240-135.jpg', 'https://www.imooc.com/learn/969', '1小时 1分', 9.8, 10, 10, 9.5, '简介：本课程主要带大家了解HTTP的发展历程，熟悉HTTP的工作流程。并且还会给大家讲解HTTPS和HTTP的区别，以及HTTPS的安全性，熟悉加密算法的一个流程。', '于海_', 'https://img4.mukewang.com/5678bc7700011e4202000200-80-80.jpg', '移动开发工程师', '1、熟练掌握OC基本语法
2、熟练掌握UI控件的使用
3、了解基本的网络协议', '1、熟悉HTTP的工作流程
2、熟悉加密算法的实现过程
3、掌握HTTPS的实现', '2018-09-02 20:36:45.268919', '2018-08-12 23:47:32.538692');
INSERT INTO "public"."tb_imooc_course" VALUES (110, 878, 'Android图表绘制之直方图', '初级', 6259, 'Android图表绘制技术实战', 'Android', 'https://img3.mukewang.com/599150070001993506000338-240-135.jpg', 'https://www.imooc.com/learn/878', '1小时49分', 9.2, 9.2, 9.5, 9, '简介：Android图表绘制技术实战', '安静的Sunny...', 'https://img2.mukewang.com/5333a0aa000121d702000200-80-80.jpg', '移动开发工程师', '需要具备安卓四大组件基础知识', 'Android图表绘制技术实战', '2018-09-02 20:36:51.973642', '2018-08-12 23:47:34.825004');
INSERT INTO "public"."tb_imooc_course" VALUES (111, 885, '基于websocket的火拼俄罗斯（升级版）', '中级', 16967, '基于H5 websocket的火拼俄罗斯方块升级版，双人对战升级喽！', 'HTML/CSS, JavaScript', 'https://img3.mukewang.com/59ed97230001b1e106000338-240-135.jpg', 'https://www.imooc.com/learn/885', '41分', 9.8, 9.9, 9.9, 9.7, '简介：本课程是基于websocket的火拼俄罗斯的升级版本，课程中在前两个课的基础上实现了用两个浏览器对战模式，完整的实现了游戏的过程。', 'channingbree...', 'https://img2.mukewang.com/55a529c90001205902200220-80-80.jpg', 'Web前端工程师', '1、html、css基础知识
2、JS基础知识
3、会用NodeJS
4、需要学过火拼俄罗斯方块的基础版和单机版两个课程。', '1、实现WebSocket的简单案例
2、俄罗斯方块逻辑实现
3、实现俄罗斯方块的双人模式。', '2018-09-02 20:36:51.830938', '2018-08-12 23:47:34.849721');
INSERT INTO "public"."tb_imooc_course" VALUES (134, 908, 'AWS云服务介绍-Amazon Aurora', '中级', 2003, '本课主要讲解2017年度AWS在中国区的新服务介绍。', '云计算', 'https://img2.mukewang.com/59eebe270001685606000338-240-135.jpg', 'https://www.imooc.com/learn/908', '3小时22分', 9, 9.1, 9.4, 8.3, '简介：本课程主要讲解2017年度AWS在中国区的新服务介绍，包括Amazon Redshift Spectrum、Amazon Aurora、AWS CodeDeploy、Jenkins 等服务。AWS 技术峰会2018 中国站将在上海、北京、深圳三地盛大召开，报名链接：https://awssummit.cn?tc=1s016B2uQi', '亚马逊AWS', 'https://img1.mukewang.com/59c2078900017f7603000300-80-80.jpg', '全栈工程师', 'AWS技术峰会是亚马逊 AWS 每年在全球众多城市巡回举办的大型云服务技术盛会。
本次峰会将设立自动化运维技术、大数据技术、IOT、企业级服务、人工智能等多个技术主题分会场，邀请到涉及以上各领域的行业大咖。
该课程对于AWS基础服务需要有一定的了解', '1. 了解AWS 的最新服务
2.云计算发展和应用的最新技术动向
3.深入了解实际业务应用中利用 AWS 的相关服务', '2018-09-02 20:36:48.556994', '2018-08-12 23:47:36.78763');
INSERT INTO "public"."tb_imooc_course" VALUES (112, 876, '集成MultiDex项目实战', '初级', 3035, '集成MultiDex项目实战', 'Android', 'https://img2.mukewang.com/59af678e00017c3b06000338-240-135.jpg', 'https://www.imooc.com/learn/876', '28分', 9.7, 10, 10, 9.1, '简介：介绍如何在实际项目中运用MultiDex，介绍如何在实际项目中运用代码混淆，介绍如何在实际项目中对单个Dex文件进行设置，介绍如何在实际项目中使用multiDexKeepProguard', 'T_Stonekity', 'https://img1.mukewang.com/54584e390001972002200220-80-80.jpg', '移动开发工程师', '建议提前先学习《Android Multidex原理及实现》这门课', '集成MultiDex项目实战', '2018-09-02 20:36:52.017032', '2018-08-12 23:47:34.857591');
INSERT INTO "public"."tb_imooc_course" VALUES (119, 896, 'AWS云-深度学习&机器学习的AI业务应用', '中级', 6525, '最炙手可热的前沿技术专题--人工智能技术专场。', '机器学习, 深度学习', 'https://img4.mukewang.com/59c32b540001f16f06000338-240-135.jpg', 'https://www.imooc.com/learn/896', '3小时34分', 9.7, 10, 9.2, 9.8, '简介：最炙手可热的前沿技术专题，本次人工智能技术专场带你了解如何将深度学习算法运用于图像识别、语音识别、自然语言处理等等领域，通过AWS运算平台向您的客户提供服务。AWS 技术峰会2018 中国站将在上海、北京、深圳三地盛大召开，报名链接：https://awssummit.cn?tc=1s016B2uQi', '亚马逊AWS', 'https://img4.mukewang.com/59c2078900017f7603000300-80-80.jpg', '全栈工程师', 'AWS技术峰会是亚马逊 AWS 每年在全球众多城市巡回举办的大型云服务技术盛会。
本次峰会将设立自动化运维技术、大数据技术、IOT、企业级服务、人工智能等多个技术主题分会场，邀请到涉及以上各领域的行业大咖。
该课程对于AWS基础服务需要有一定的了解', '1.深度学习技术及其端到端的解决方案
2.深度学习算法的图像识别技术
3.如何基于FPGA的运算平台进行运算加速
4.探讨人工智能的未来最重要的驱动力——“场景驱动”
5.如何更好地将AI技术落地
6.如何利用机器学习技术实现自己的业务转型', '2018-09-02 20:36:47.6342', '2018-08-12 23:47:35.448918');
INSERT INTO "public"."tb_imooc_course" VALUES (117, 892, 'UI版式设计', '入门', 20725, '优秀的版式设计是成长为一名合格的UI设计师的必经之路，基础学习版式设计', '设计基础', 'https://img.mukewang.com/59c083ed0001245e06000338-240-135.jpg', 'https://www.imooc.com/learn/892', '2小时 0分', 9.4, 9.5, 9.1, 9.5, '简介：版式设计原理涉及到UI、网页、电商店铺设计、画册、书籍、海报、报纸、单张、封套、包装等视觉设计领域，其设计原理贯穿于每个设计的始终。掌握如何进行视觉层次、气氛营造、创意体现。活学活用、一通百通，包你终生受用~想成一名被各大公司哄抢的稀缺UI设计师，不做一个只会套模板抄袭的软件操作师，不受领导指点修改、hold住全场、成为设计大神，本课程的知识内容对你来说必不可少。', 'UI王文杰', 'https://img2.mukewang.com/59c8a0930001e61e11101084-80-80.jpg', 'UI设计师', '1.课程难度为初级~中级
2.基础学习', '1、轻松掌握版式设计基础
2、学会表达视觉层次感
3、运用版式构建设计气氛
4、设计创意版式
5、发现让设计高大上N种秘籍 
6、了解版式设计应用场景', '2018-09-02 20:36:47.533551', '2018-08-12 23:47:35.376145');
INSERT INTO "public"."tb_imooc_course" VALUES (121, 889, 'ElasticSearch入门 ', '中级', 30363, 'ElasticSearch轻松入门，Spring Boot集成ES', '大数据, 数据分析&挖掘', 'https://img4.mukewang.com/59b77bac0001985906000338-240-135.jpg', 'https://www.imooc.com/learn/889', '1小时45分', 9.5, 9.7, 9.3, 9.6, '简介：ElasticSearch是一个分布式、可扩展、实时的搜索与数据分析引擎，它能从项目一开始就赋予你的数据以搜索、分析和探索的能力。通过本课程的学习，你可以了解到，ElasticSearch在互联网行业里的火热程度，也可以了解到它的实际应用场景。本课程会通过理论与实践相结合的方式，带领你一步一步走进ElasticSearch的世界，使你轻松掌握ElasticSearch的基本概念，学习ElasticSearch的服务搭建，了解ElasticSearch的常用技巧，并通过案例项目让你拥有实际的应用能力。
老师实战课程已经上线：http://coding.imooc.com/class/167.html
ElasticSearch+MySQL+Kafka强力组合，更有ES结合百度地图，Nginx等高级应用。', '瓦力老师', 'https://img1.mukewang.com/54586333000160de02200220-80-80.jpg', 'JAVA开发工程师', '熟悉maven构建项目，了解RESTful和Spring Boot的基本知识', 'ElasticSearch的基本概念，学习ElasticSearch的服务搭建，了解ElasticSearch的常用技巧', '2018-09-02 20:36:52.436728', '2018-08-12 23:47:35.508289');
INSERT INTO "public"."tb_imooc_course" VALUES (60, 964, 'MAYA-Polygon多边形建模', '入门', 1324, '熟练使用 Polygon多边形建模命令，并能动手制作简单的多边形模型', '动效动画', 'https://img3.mukewang.com/5ab8702c00016cce05400300-240-135.jpg', 'https://www.imooc.com/learn/964', '55分', 10, 10, 10, 10, '简介：过学习本套多边形基础建模教程，让每位学员快速掌握多边形物体的创建方式以及编辑技巧。通过对多边形建模命令的学习。让每个学员在本套教学中学有所获。轻松入门，快速制作出自己满意的作品', '慕凌枫', 'https://img1.mukewang.com/533e4c9c0001975102200220-80-80.jpg', 'CG影视动画师', '1、零基础学员
2、热爱三维动画，兴趣爱好者
3、调整心态，相信自己3D并不难', '1、polygons建模工具的使用，多边形物体的创建
2、多边形物体的编辑方法和技巧，多边形物体三元素
3、学习掌握常用的多边形物体编辑命令
4、台灯的创建', '2018-09-02 20:36:45.439967', '2018-08-12 23:47:30.511399');
INSERT INTO "public"."tb_imooc_course" VALUES (122, 895, 'AWS云计算—AWS云上的大数据分析', '中级', 6455, '带你了解基于AWS的大数据存储、实时计算与分析，以及机器学习相关技术。', '云计算, 大数据', 'https://img1.mukewang.com/59c206f500011c4006000338-240-135.jpg', 'https://www.imooc.com/learn/895', '2小时22分', 10, 10, 10, 10, '简介：本次大数据专场带你了解基于 AWS 的大数据存储、实时计算与分析, 以及机器学习的相关技术，实现业务洞察，用数据驱动业务和技术创新，提高企业的竞争力，并实现数据的变现。AWS 技术峰会2018 中国站将在上海、北京、深圳三地盛大召开，报名链接：https://awssummit.cn?tc=1s016B2uQi', '亚马逊AWS', 'https://img3.mukewang.com/59c2078900017f7603000300-80-80.jpg', '全栈工程师', 'AWS技术峰会是亚马逊 AWS 每年在全球众多城市巡回举办的大型云服务技术盛会。本次峰会将设立自动化运维技术、大数据技术、IOT、企业级服务、人工智能等多个技术主题分会场，邀请到涉及以上各领域的行业大咖。
该课程对于AWS基础服务需要有一定的了解', '1.了解基于AWS的大规模数据ETL,存储,准实时计算与分析
2.如何整合业务数据和用户行为数据，挖掘背后商业价值
3.如何利用云资源做高性能基因大数据计算
4.通过数据资产化、业务比特化和应用场景化这三方面来诠释TalkingData如何帮助企业智能数据化', '2018-09-02 20:36:47.695509', '2018-08-12 23:47:35.724398');
INSERT INTO "public"."tb_imooc_course" VALUES (128, 877, 'RxJava与RxAndroid基础入门', '初级', 15089, 'RxJava与RxAndroid入门', 'Java, Android', 'https://img1.mukewang.com/5981a729000188dc06000338-240-135.jpg', 'https://www.imooc.com/learn/877', '2小时22分', 9.1, 9.2, 9.4, 8.8, '简介：RxJava与RxAndroid入门', 'qq_bluesky_3...', 'https://img1.mukewang.com/539b1a5c0001062601000100-80-80.jpg', NULL, '需要具备Java或者Android基础知识', 'RxJava与RxAndroid入门', '2018-09-02 20:36:47.958764', '2018-08-12 23:47:36.192146');
INSERT INTO "public"."tb_imooc_course" VALUES (224, 820, 'DatePicker组件开发', '中级', 14736, '使用原生JS完成一个日期选择器（datepicker）组件的开发', 'HTML/CSS, JavaScript', 'https://img.mukewang.com/58df52310001cf4506000338-240-135.jpg', 'https://www.imooc.com/learn/820', '1小时30分', 9.9, 10, 9.8, 9.8, '简介：通过原生HTML/CSS/JavaScript完成一个日期选择器（datepicker）组件的开发。主要包括datepicker静态结构的编写、日历数据的计划获取、组件的渲染以及组件事件的处理。

课程基本涵盖一个完整的前端组件的基本要素，掌握后对其它组件的开发有借鉴意义。', 'TooooBug', 'https://img4.mukewang.com/58db28670001430601800180-80-80.jpg', NULL, '需要有HTML/CSS/JavaScript基础', '1、使用HTML和CSS编写组件的静态UI
2、使用原生javascript完成日历数据的获取
3、使用原生javascript实现静态UI和动态数据的结合，完成日历数据的渲染
4、事件绑定处理
5、前端组件的基本构成和编写模式', '2018-09-02 20:36:55.620133', '2018-08-12 23:47:44.420366');
INSERT INTO "public"."tb_imooc_course" VALUES (130, 905, 'iOS之分享集成', '中级', 1731, 'iOS分享功能的实现！', 'iOS', 'https://img4.mukewang.com/59ed66280001374906000338-240-135.jpg', 'https://www.imooc.com/learn/905', '1小时 6分', 9.7, 10, 9.2, 10, '简介：本课程主要带领大家了解集成分享功能的流程，告诉大家如何注册友盟、SDK环境的配置、分享功能的实现。并且让大家掌握该如何集成第三方，后续集成其它第三方功能时就可以轻松搞定。', '青年小Y', 'https://img4.mukewang.com/5820909c000173be02000200-80-80.jpg', '移动开发工程师', '1、掌握OC基础语法；
2、熟练使用UI控件；
3、熟练控制器的相关使用。', '1、学会集成分享功能；
2、学会阅读第三方官方文档；
3、学会如何根据文档实现具体功能。', '2018-09-02 20:36:48.630837', '2018-08-12 23:47:36.578735');
INSERT INTO "public"."tb_imooc_course" VALUES (123, 894, 'Fragment应用上', '初级', 7416, '在项目中，灵活使用Fragment做视图组装，开销比Activity更小。', 'Android', 'https://img.mukewang.com/59c1c80e000193e606000338-240-135.jpg', 'https://www.imooc.com/learn/894', '2小时30分', 10, 10, 10, 9.9, '简介：将带领大家一起学习Fragment的应用场景，以及它的生命周期，最后利用Fragment实现一个小案例。', 'Summer321', 'https://img3.mukewang.com/57ec719d00012e3706400640-80-80.jpg', NULL, '学习本课程之前需要有Android基础知识，如UI，Activity等基础知识', '你将能够学到Fragment是什么，为什么要用Fragment，不用它行不行，在什么场景下使用Fragment，怎么使用Fragment', '2018-09-02 20:36:47.769766', '2018-08-12 23:47:36.034716');
INSERT INTO "public"."tb_imooc_course" VALUES (486, 522, 'Shell典型应用之主控脚本实现', '中级', 32972, '应用shell实现案例主控脚本，握如何编写主控脚本', 'Linux', 'https://img.mukewang.com/562da5410001b40a06000338-240-135.jpg', 'https://www.imooc.com/learn/522', '48分', 9.1, 9.4, 9.2, 8.8, '简介：《shell典型应用》系列主要使用shell脚本来实现企业中的常见应用，包括主控脚本实现、Linux系统信息及运行状态获取、ngnix和mysql应用状态分析、应用日志分析四个部分。本门课程主要介绍主控脚本实现，以及案例的一些准备工作。', 'Jeson老师', 'https://img3.mukewang.com/5510c7a600016ea802200220-80-80.jpg', 'Python工程师', '学习本门课程前需要掌握如下内容：
1、熟悉Linux的常用命令，可以查看课程《Linux达人养成计划I》
2、掌握vim编辑器的应用，可以查看课程《Linux达人养成计划II》的第一章
3、熟悉shell脚本，可以查看学习计划《Tony老师聊shell》', '1、了解shell脚本的应用领域及重要性
2、掌握vim编辑器在生产环境中的常用设置
3、掌握如何编写主控脚本', '2018-09-02 20:37:13.889671', '2018-08-12 23:48:06.007756');
INSERT INTO "public"."tb_imooc_course" VALUES (78, 951, 'MyCAT入门及应用', '初级', 9905, '从实际生产环境应用MyCAT入手，讲解数据库中间件和MyCAT的基础应用。', 'MySQL', 'https://img2.mukewang.com/5a93aa610001eb2706000338-240-135.jpg', 'https://www.imooc.com/learn/951', '1小时12分', 9.6, 9.6, 10, 9.2, '简介：本课程从实际生产环境应用MyCAT入手，讲解MyCAT的基础知识和MyCAT的基本应用操作，本课程的目标就是“看得懂、学得会、做得出”，为后续的学习打下夯实的基础。', 'sqlercn', 'https://img1.mukewang.com/5ad7144100017a5e07410741-80-80.jpg', '数据库工程师', '1．具有一定的MySQL基础知识
2．具有一定的Liunx基础知识
', '1、了解MyCAT的优势及特性 
2、掌握MyCAT的基本应用 
3、掌握如何应用mycat进行读写分离应用 
4、了解MyCAT管理 
', '2018-09-02 20:36:44.548657', '2018-08-12 23:47:32.07114');
INSERT INTO "public"."tb_imooc_course" VALUES (124, 898, 'PHP中的会话控制', '初级', 12041, '带你了解PHP中的会话控制技术。', 'PHP', 'https://img3.mukewang.com/59c3917900011b8106000338-240-135.jpg', 'https://www.imooc.com/learn/898', '2小时 0分', 9.7, 10, 9.9, 9.2, '简介：完整简介：我们都知道HTTP是无状态协议，那在WEB开发中我们如何让服务器知道你是你，就需要用到会话控制技术。本课程带你了解PHP中如何实现会话控制。', 'King', 'https://img4.mukewang.com/567ca60000011fae26501720-80-80.jpg', 'PHP开发工程师', '1.了解HTTP协议
2.对php的基础知识掌握，如数组、类、对象', '1.HTTP协议简介及原理
2.COOKIE的使用
3.SESSIOn的使用', '2018-09-02 20:36:48.455099', '2018-08-12 23:47:36.108532');
INSERT INTO "public"."tb_imooc_course" VALUES (125, 897, 'iOS之FTP上传', '初级', 3134, '轻松了解FTP上传机制！', 'iOS', 'https://img3.mukewang.com/59c360de0001fefe06000338-240-135.jpg', 'https://www.imooc.com/learn/897', '1小时 6分', 10, 10, 10, 10, '简介：本课程会着重给大家讲解FTP的上传机制，从文档介绍，并且会通过上传头像的案例，帮助大家完成相册的获取、ftp上传路径的获取以及具体的操作流程。', '青年小Y', 'https://img1.mukewang.com/5820909c000173be02000200-80-80.jpg', '移动开发工程师', '1、熟练掌握OC语法基础。
2、熟练各种UI控件的使用。
3、对数据存储有一定的了解。', '1、FTP上传机制。
2、FTP上传路径获取。
3、常用的SDK。', '2018-09-02 20:36:47.786714', '2018-08-12 23:47:36.125235');
INSERT INTO "public"."tb_imooc_course" VALUES (153, 848, '星级评分原理和实现（下）', '初级', 10106, '本课程主要讲解如何使用不同的方式来实现星级评分的效果。', 'JavaScript, jQuery', 'https://img.mukewang.com/5a7131f90001e31f06000338-240-135.jpg', 'https://www.imooc.com/learn/848', '1小时41分', 9.8, 9.9, 9.9, 9.4, '简介：本课程总会讲解如何使用纯CSS代码提交评分、js利用雪碧图等来实现星级评分如何点亮半个星星、四分之一课星星。', 'Alex Wang', 'https://img.mukewang.com/558b7aae0001d29105680568-80-80.jpg', NULL, '1、对html，css基础知识已经掌握。
2、对JavaScript和jQuery能够熟练掌握。
3、学习过《星级评分原理和实现（上）》', '1、开发项目的实现思路
2、评分效果的实现
3、js中的开发技巧', '2018-09-02 20:36:53.398867', '2018-08-12 23:47:38.816494');
INSERT INTO "public"."tb_imooc_course" VALUES (542, 446, 'R语言入门', '入门', 72910, 'R语言是大数据分析的强大工具之一，本课程为R语言入门教程', '大数据', 'https://img1.mukewang.com/559e31c80001971406000338-240-135.jpg', 'https://www.imooc.com/learn/446', '1小时 0分', 9.5, 9.6, 9.6, 9.4, '简介：大数据的时代已经到来。R语言随着大数据的爆发而广为人知；其免费、开源、适用于多平台的特点吸引了大量使用者，现已成为大数据分析必不可少的强大工具之一。本课是R语言的入门课程，讲述了R的5大功能、R是如何安装以及在以后的学习中遇到问题怎么办。', 'Angelayuan', 'https://img2.mukewang.com/559e32dd0001631209601280-80-80.jpg', NULL, '本门课程是R的初级课程。
小伙伴们具备耐心去听，去看就好了', '1、R的概念和特点
2、通过举例展示R的用途
3、获取与安装R
4、了解如何在学习R的过程中获取帮助', '2018-09-02 20:37:22.865903', '2018-08-12 23:48:11.360907');
INSERT INTO "public"."tb_imooc_course" VALUES (142, 921, 'AWS云计算—云服务架构深入解析', '中级', 1872, '带你看AWS资深技术大咖讲解云计算在不同应用场景下的深度实践。', '云计算', 'https://img2.mukewang.com/5a1e6e0b000151e706000338-240-135.jpg', 'https://www.imooc.com/learn/921', '2小时30分', 10, 10, 10, 10, '简介：本次深度实践专场带你看AWS资深技术大咖讲解云计算在不同应用场景下的深度实践。包括与AWS一起搭建混合架构、利用DevOps模式转型实现DDoS防护、公有云安全、云上高可用架构、利用Amazon EC2 Container Service (ECS)云服务来运行和维护Docker的容器，做到自动化伸缩等话题。AWS 技术峰会2018 中国站将在上海、北京、深圳三地盛大召开，报名链接：https://awssummit.cn?tc=1s016B2uQi', '亚马逊AWS', 'https://img3.mukewang.com/59c2078900017f7603000300-80-80.jpg', '全栈工程师', 'AWS技术峰会是亚马逊 AWS 每年在全球众多城市巡回举办的大型云服务技术盛会。
本次峰会将设立自动化运维技术、大数据技术、IOT、企业级服务、人工智能等多个技术主题分会场，邀请到涉及以上各领域的行业大咖。
该课程对于AWS基础服务需要有一定的了解。', '1.如何实现跨云的混合部署，混合架构的统一计费，跨云的数据备份等典型的场景。
2.DevOps模式转型
3.如何利用AWS Shield，托管式DDoS防护服务，实现DDoS防护
4.如何与AWS共建安全公有云
5.探讨DynamoDB与AWS其他服务相结合的架构方案，及其新功能', '2018-09-02 20:36:47.084015', '2018-08-12 23:47:37.64719');
INSERT INTO "public"."tb_imooc_course" VALUES (137, 870, 'Android引导页实现的四种方式', '初级', 6785, 'Android引导页实现的四种方式', 'Android', 'https://img.mukewang.com/598023620001774406000338-240-135.jpg', 'https://www.imooc.com/learn/870', '1小时30分', 8.8, 9, 9, 8.5, '简介：Android引导页实现的四种方式', 'ALABO', 'https://img3.mukewang.com/5458657e000125a302200220-80-80.jpg', '移动开发工程师', '需要具备安卓四大组件基础', 'Android引导页实现的四种方式', '2018-09-02 20:36:49.182113', '2018-08-12 23:47:37.250036');
INSERT INTO "public"."tb_imooc_course" VALUES (138, 913, 'Bitmap高效缓存', '中级', 4556, 'Bitmap高效加载及Android缓存策略', 'Android', 'https://img.mukewang.com/5a0154810001029b06000338-240-135.jpg', 'https://www.imooc.com/learn/913', '1小时 0分', 10, 10, 10, 10, '简介：本门课程会介绍Bitmap相关知识点及如何高效加载，还会介绍Android缓存策略，通过综合前面所学模仿ImageLoader实现图片高效加载功能。', 'qndroid', 'https://img.mukewang.com/5333a0350001692e02200220-80-80.jpg', '移动开发工程师', '建议对Android开发有一定基础，并且能够掌握UI、网络连接等基础知识。', '掌握Android高效的Bitmap加载以及合理的使用Android缓存策略', '2018-09-02 20:36:49.458535', '2018-08-12 23:47:37.341287');
INSERT INTO "public"."tb_imooc_course" VALUES (181, 844, '带你开发类似Pokemon Go的AR游戏', '高级', 18809, '用 Unity 3D开发AR游戏，分有卡和脱卡两种情况，并导出Android和iOS平台', 'iOS, Unity 3D', 'https://img1.mukewang.com/592e40830001164306000338-240-135.jpg', 'https://www.imooc.com/learn/844', '1小时36分', 9.9, 9.9, 9.9, 10, '简介：带你开发类似Pokemon Go的AR游戏：课程介绍，开发环境配置，游戏场景一：有卡识别，游戏场景二：无卡识别，游戏菜单场景，导出 iOS 平台并运行，导出 Android 平台并运行，课程总结。', 'Oscar老师', 'https://img.mukewang.com/5a54b58f0001c07902000200-80-80.jpg', '软件工程师', '需要掌握Unity3D的基础操作步骤', '通过这门实战课程，我们学会了基本的 Unity 3D 游戏开发和代码编写，Unity 官方插件使用。基本掌握了Vuforia 这个高通推出的AR/VR SDK 配合Unity 的使用，了解了如何将 Unity 3D 开发的游戏导出主流的两个平台：Android 和 iOS，并在手机端运行', '2018-09-02 20:36:53.557669', '2018-08-12 23:47:41.103919');
INSERT INTO "public"."tb_imooc_course" VALUES (141, 871, 'Android事件分发库的使用', '中级', 3859, 'Android事件分发库的使用', 'Android', 'https://img1.mukewang.com/598025c60001e80c06000338-240-135.jpg', 'https://www.imooc.com/learn/871', '1小时 6分', 10, 10, 10, 10, '简介：Android事件分发库的使用', 'ALABO', 'https://img3.mukewang.com/5458657e000125a302200220-80-80.jpg', '移动开发工程师', '需要掌握安卓四大组件基础知识', 'Android事件分发库的使用', '2018-09-02 20:36:47.184421', '2018-08-12 23:47:37.611499');
INSERT INTO "public"."tb_imooc_course" VALUES (140, 920, 'Elastic Stack入门', '初级', 12588, 'Elasticsearch、Logstash、Beats、Kibana基础知识入门', '大数据, 数据分析&挖掘', 'https://img1.mukewang.com/5a1b74b30001c61f05950337-240-135.jpg', 'https://www.imooc.com/learn/920', '1小时36分', 9.5, 9.9, 8.8, 9.8, '简介：学习 Elastic Stack 架构，掌握 Elasticsearch、Logstash、Beats、Kibana 的基础知识入门课程；
老师相关实战课程《Elastic Stack从入门到实践》已上线：http://coding.imooc.com/class/181.html', 'rockybean', 'https://img4.mukewang.com/5a77d54200019a3c05000369-80-80.jpg', '全栈工程师', '掌握Linux的基本操作', 'Elastic Stack 架构，掌握 Elasticsearch、Logstash、Beats、Kibana 的基础知识，不用一行代码即可实现日志分析、指标分析、数据可视化等大数据领域的常见需求。', '2018-09-02 20:36:49.503756', '2018-08-12 23:47:37.5676');
INSERT INTO "public"."tb_imooc_course" VALUES (108, 934, 'python必学模块-collections', '初级', 12359, '快速理解python中基于基础数据结构的高级数据结构，让代码更精简且高效。', 'Python', 'https://img4.mukewang.com/5a7176a300010c1706000338-240-135.jpg', 'https://www.imooc.com/learn/934', '1小时54分', 9, 9.6, 9, 8.5, '简介：Python的collections模块中提供了很多方便使用且高性能的数据结构，这些数据结构很容易被Python初学者忽略。学习这些数据结构让我们避免重复造轮子的同时还能让代码性能更高并且易读。', '__bobby', 'https://img3.mukewang.com/58d9c48f0001ad0304070270-80-80.jpg', '全栈工程师', 'python基础知识已经掌握。', '1、深入理解python中的tuple的功能
2、namedtuple的功能详解
3、defaultdict的功能详解 
4、deque的功能详解
5、Counter功能详解 
6、OrderedDict功能详解 
7、ChainMap功能详解  ', '2018-09-02 20:36:50.453348', '2018-08-12 23:47:34.734937');
INSERT INTO "public"."tb_imooc_course" VALUES (145, 861, '基于Websocket的火拼俄罗斯（基础）', '中级', 24333, 'HTML5火拼俄罗斯基础讲解。', 'JavaScript, Node.js', 'https://img3.mukewang.com/59ed96eb0001fe3606000338-240-135.jpg', 'https://www.imooc.com/learn/861', '50分', 9.7, 9.7, 9.7, 9.7, '简介：本课程主要带领大家了解要实现火拼俄罗斯的基础知识WebSocket，以及socket.io,为后续实现火拼俄罗斯打下基础。', 'channingbree...', 'https://img3.mukewang.com/55a529c90001205902200220-80-80.jpg', 'Web前端工程师', '1、html、css基础知识
2、JS基础知识
3、会用NodeJS', '1、实现WebSocket的简单案例
2、俄罗斯方块逻辑实现', '2018-09-02 20:36:51.592926', '2018-08-12 23:47:38.143853');
INSERT INTO "public"."tb_imooc_course" VALUES (118, 888, 'Javascript实现二叉树算法', '中级', 28025, '感受JS与数据结构的魅力。', 'JavaScript, 算法与数据结构', 'https://img4.mukewang.com/59ae0e2a0001307706000338-240-135.jpg', 'https://www.imooc.com/learn/888', '3小时40分', 9.5, 9.8, 9.4, 9.2, '简介：Javascript发展越来越快，并且将触角延伸到各个领域，几乎有一统江湖之势。无论是前端，后台服务器，移动开发，Javascript无不占据着重要位置，学习和使用Javascipt这门编程语言是性价比最高的，学习Javascript算法也相当重要的。', 'coding迪斯尼...', 'https://img4.mukewang.com/57a333b400010f6006400478-80-80.jpg', '全栈工程师', '1、对html基础知识已经掌握。
2、对js的基本语法，例如数组，对象有一定的掌握。', '1、二叉树的定义，创建以及js编码实现
2、二叉树中序遍历的算法原理及js编码实现
3、二叉树前序遍历的算法原理及js编码实现
4、二叉树后续遍历的算法原理及js编码实现
5、二叉树节点查找的算法原理和编码实现
 ', '2018-09-02 20:36:52.114114', '2018-08-12 23:47:35.409399');
INSERT INTO "public"."tb_imooc_course" VALUES (148, 882, '基于websocket的火拼俄罗斯（单机版）', '中级', 22403, '前端大牛带你实现单机版俄罗斯方块！', 'JavaScript, 前端工具', 'https://img2.mukewang.com/59ed9710000112b006000338-240-135.jpg', 'https://www.imooc.com/learn/882', '1小时52分', 9.6, 9.8, 9.4, 9.5, '简介：本课程是火拼俄罗斯方块系列的第二个课程，主要是带领大家完成单机版的俄罗斯方块，包括页面的搭建、渲染、代码结构的调整、各种形式的转换、细节的丰富、以及干扰功能的实现。', 'channingbree...', 'https://img1.mukewang.com/55a529c90001205902200220-80-80.jpg', 'Web前端工程师', '1、html、css基础知识
2、JS基础知识
3、会用NodeJS', '你将学会如何使用js实现实现俄罗斯方块的单击模式，并且学会如何优化代码，如何处理细节。', '2018-09-02 20:36:51.779737', '2018-08-12 23:47:38.262106');
INSERT INTO "public"."tb_imooc_course" VALUES (233, 827, 'PHP函数篇', '入门', 16799, '自定义函数，PHP入门教程之必备课程，行业大牛带你飞。', 'PHP', 'https://img2.mukewang.com/58f85fb20001139f06000338-240-135.jpg', 'https://www.imooc.com/learn/827', '1小时42分', 9.6, 9.8, 9.6, 9.5, '简介：本教程结合实例形式分析了PHP关于自定义函数的创建、返回值、默认值、参数、值传递、作用域
以及可变函数、嵌套函数、递归函数、闭包函数的使用等相关技巧。', '顾金鹤', 'https://img4.mukewang.com/5458505c00018e9202200220-80-80.jpg', NULL, '本教程需要有一点点PHP基础，有基本的网络常识', '学完此教程，你能根据自己的业务逻辑实现相关的函数封装及调用。
可以根据不同的需求封装不同层次的递归函数，嵌套函数等。', '2018-09-02 20:36:56.295832', '2018-08-12 23:47:45.102302');
INSERT INTO "public"."tb_imooc_course" VALUES (150, 849, 'iOS推送通知', '中级', 5419, '本教程教你该如何实现iOS推送消息，了解push的相关业务功能', 'iOS', 'https://img4.mukewang.com/593e702e00011cff06000338-240-135.jpg', 'https://www.imooc.com/learn/849', '1小时48分', 9.9, 10, 10, 9.7, '简介：本课程将带你了解iOS的push原理，如何搭建push环境，push的交互设置，以及该如何实现推送消息。并且会给大家分别讲解Local Push的一般用法和高级用法，以及push的相关业务功能介绍。', 'TerryG', 'https://img.mukewang.com/57a991b80001a15406500634-80-80.jpg', '全栈工程师', '学习本课程之前需要掌握如下知识：
1、 熟练掌握iOS基础语法。
2、了解推送的一些基本原理。
3、掌握类与类之间的通信原理。', '1、学会该如何搭建push环境。
2、掌握Local Push的用法。
3、了解push的相关业务功能。', '2018-09-02 20:36:52.957543', '2018-08-12 23:47:38.453083');
INSERT INTO "public"."tb_imooc_course" VALUES (658, 333, '快乐的sublime编辑器', '中级', 96498, '展示sublimeText,讲透它的使用哲学，在功能和速度方面不输给 vim', '前端工具', 'https://img1.mukewang.com/5746720700019b5a06000338-240-135.jpg', 'https://www.imooc.com/learn/333', '1小时15分', 9.6, 9.9, 9.5, 9.6, '简介：sublime 在功能和速度方面不输给 vim ，在界面美观上不输给任何其他编辑器，本课程的目的是带大家高效使用 sublime ，课程中会展示扩展包安装，自定制配置和快捷键等最实用的技巧。同时整体上保证你可以把握她的使用思路，让你在课后做自己的定制的时候不会迷路。', 'happypeter', 'https://img3.mukewang.com/53f55a3c000159c812700952-80-80.jpg', 'JS工程师', '本课程的举例倾向于web开发方向，但是主题内容是使用任何一款代码编辑器所必备的知识和使用思路，所以也适合其他方向的开发者观看。如果是刚学习编程的朋友，建议多把精力放在学习编程本身方面，编辑器的技巧应该是反复用，存到自己的肌肉中的，而不是专门记忆到脑子中的。', '无学习曲线，直接上手。这个要比使用 vim 的新手专门要花时间学习编辑器本身要明智的多，边用边学才是正道。', '2018-09-02 20:37:28.70003', '2018-08-12 23:48:21.633143');
INSERT INTO "public"."tb_imooc_course" VALUES (883, 893, '阿里D2前端技术论坛——2016初心', '中级', 8925, '2016年最前沿最顶端的技术分享', 'JavaScript, 前端工具', 'https://img3.mukewang.com/59bfab740001369a06000338-240-135.jpg', 'https://www.imooc.com/learn/893', '3小时 1分', 9.8, 10, 10, 9.3, '简介：本课程精选第11届阿里D2前端大会论坛分享内容，引领最前沿技术', 'D2前端技术论...', 'https://img4.mukewang.com/545ad0990001ab2802200220-80-80.jpg', NULL, '本课程为大会分享内容，适合有前端经验的工程师', NULL, '2018-09-02 20:36:47.679985', '2018-08-13 09:52:55.47911');
INSERT INTO "public"."tb_imooc_course" VALUES (161, 831, 'Android常用异常集及解决方案', '初级', 6674, '介绍Android常用异常集及常用的几种解决方案', 'Android', 'https://img3.mukewang.com/590a8c9400013c5406000338-240-135.jpg', 'https://www.imooc.com/learn/831', '1小时 9分', 9.3, 9.5, 9.6, 8.6, '简介：介绍Android常见异常的种类及常见发生场景，如何高效的调试，异常捕获，错误日志上报等等', '安静的Sunny...', 'https://img3.mukewang.com/5333a0aa000121d702000200-80-80.jpg', '移动开发工程师', '需要具备安卓基本的四大组件知识', 'Android常用异常集及解决方案', '2018-09-02 20:36:50.512877', '2018-08-12 23:47:39.417594');
INSERT INTO "public"."tb_imooc_course" VALUES (149, 685, 'Android Multidex原理及实现', '中级', 5094, '学会使用Multidex分包解决65535问题', 'Android', 'https://img4.mukewang.com/5785deb30001002b06000338-240-135.jpg', 'https://www.imooc.com/learn/685', '1小时45分', 9.4, 10, 9.4, 8.8, '简介：本课程主要介绍了两种常用的分包方式：ant分包和gradle分包。对Android中常用的类加载器进行对比，讲解如何通过DexClassLoader动态加载分dex。', 'gavin2008', 'https://img.mukewang.com/597610340001a02e04190419-80-80.jpg', '移动开发工程师', '通过学习Android Multidex的基本原理，并使用两种方案实现Multidex分包', '随着项目功能迭代，apk中方法数越来越多，当方法数超过65535个之后，项目无法编译，此时需要借助分包技术，将一个apk中的dex分成多个dex,然后动态加载。', '2018-09-02 20:36:50.551634', '2018-08-12 23:47:38.417633');
INSERT INTO "public"."tb_imooc_course" VALUES (154, 851, 'Angular-cli基础', '中级', 16748, '介绍Angular CLI命令使用，通过Angular CLI构建一个简单的Angular2的应用', 'Angular', 'https://img2.mukewang.com/59437af00001461e06000338-240-135.jpg', 'https://www.imooc.com/learn/851', '1小时 7分', 9.5, 9.7, 9.2, 9.6, '简介：好的工具能让开发更加简单快捷。
Angular CLI是一个命令行界面工具，它可以创建项目、添加文件以及执行一大堆开发任务，比如测试、打包和发布。
在本次课程中，我们的目标是构建并运行一个超级简单的Angular应用，通过开发过程充分展示Angular CLI中的基本操作和开发优势。', 'Erik_Song', 'https://img2.mukewang.com/5ad95a870001c4b804800480-80-80.jpg', '全栈工程师', '1、本课程Angular CLI的入门课程，依赖的前端基础较少
2、课程建议边看边练，从实战中获得真正的提高。', '1 Angular CLI 功能与常用参数
2 使用Angular CLI 高效构建angular 2项目
3 了解前端组件的概念', '2018-09-02 20:36:53.081579', '2018-08-12 23:47:38.932573');
INSERT INTO "public"."tb_imooc_course" VALUES (156, 853, 'python自动化运维篇', '入门', 28916, '如何把运维的工作流程化、标准化、自动化已经是迫在眉睫的问题。', 'Python, 自动化运维', 'https://img1.mukewang.com/598186000001813106000338-240-135.jpg', 'https://www.imooc.com/learn/853', '5小时38分', 9.3, 9.8, 9.1, 8.9, '简介：随着技术的进步、业务需求的快速增长，一个运维人员通常要管理上百、上千台服务器，运维工作也变的重复、繁杂。把运维工作自动化，能够把运维人员从服务器的管理中解放出来，让运维工作变得简单、快速、准确', '七寸法师', 'https://img.mukewang.com/594cdae900018d7400730073-80-80.jpg', 'Python工程师', '1、基础的运维知识
2、python的基础知识
3、linux基础知识
', '1、什么是自动化运维 
2、如何构建自动化运维系统 
3、常见自动化运维工具介绍 
4、常见自动化运维工具使用 
5、常见自动化运维工具高级使用入门
6、python基础知识预习 
', '2018-09-02 20:36:53.630694', '2018-08-12 23:47:39.195254');
INSERT INTO "public"."tb_imooc_course" VALUES (155, 855, '浅谈搜索引擎_SEO', '初级', 23925, '如何使用SEO让大家能更好的搜索到你的网站。', 'HTML/CSS', 'https://img4.mukewang.com/5950ad6f0001903f06000338-240-135.jpg', 'https://www.imooc.com/learn/855', '2小时15分', 9.5, 9.5, 9.7, 9.4, '简介：本课程主要讲解什么是SEO，以及SEO的作用是什么以及在那些方面能够用到SEO。', '袁三日', 'https://img1.mukewang.com/5909d97d00010d0a02000200-80-80.jpg', 'Web前端工程师', '学习本课程之前，您需要掌握HTML基本知识，对网站建设的基本结构有一定的了解。对网站的搜索引擎感兴趣。', '1、了解SEO的基础知识。
2、了解如何使用外链、内联、沙盒等提升网站的权重。
3、了解如何使网站的浏量得到提升。', '2018-09-02 20:36:52.994946', '2018-08-12 23:47:38.977449');
INSERT INTO "public"."tb_imooc_course" VALUES (160, 852, 'PHP消息队列实现及应用', '中级', 20443, '消息队列是个什么玩意儿，使用队列解决秒杀等实际问题概念和使用方法', 'PHP, Redis', 'https://img2.mukewang.com/594b40910001a47e06000338-240-135.jpg', 'https://www.imooc.com/learn/852', '1小时14分', 9.7, 9.9, 9.8, 9.4, '简介：消息队列是个高大上的名词儿，本质上就是如何业务进行排队处理，最常的使用场景就是发送短信的时候使用短信队列。但消息队列可以做的不止是这一类场景，它在解耦、消峰、异步、一致性等方面都有很大的用武之地。因此如何合理使用消息队列来处理一些特殊的业务需求，这就是我们这节课要解决的内容。
课程所需库文件：http://pan.baidu.com/s/1bQg038', 'WiconWang', 'https://img4.mukewang.com/5af8f4d000011a3809000827-80-80.jpg', 'PHP开发工程师', '1.掌握PHP基础知识
2.使用过Redis技术做缓存
3.有简单的Linux命令基础，如cd、sudo、apt、Vim', '1.队列是个什么东西，他能干什么
2.队列的应用场景有哪些
3.如何使用队列对业务进行解耦
4.如何使用Redis队列来消除高压力
5.专业的队列系统RabbitMQ如何来使用
课程所需库文件：http://pan.baidu.com/s/1bQg038', '2018-09-02 20:36:53.022368', '2018-08-12 23:47:39.390029');
INSERT INTO "public"."tb_imooc_course" VALUES (151, 846, 'Java定时任务调度工具详解之Quartz篇', '初级', 22901, 'Java定时任务调度工具详解之Quartz篇', 'Java', 'https://img3.mukewang.com/5940992d0001cae906000338-240-135.jpg', 'https://www.imooc.com/learn/846', '2小时53分', 9.7, 9.6, 9.7, 9.7, '简介：本课程是系列课程Java定时任务调度工具详解中的Quartz篇，旨在通过详细讲述Java定时调度工具的基本概念、工具，和这些工具里面包含的各个组件之间的关系，以及如何使用这些工具来实现定时调度功能，让学生能够对Java定时调度工具有一个清晰准确的认识。结合一些经典使用场景通过手把手的命令行操作进行教学，使同学们得心用手地使用这些定时调度工具来实现自己想要的功能。讲师实战课程已经上线，从0开始部署项目，掌握SSM和SpringBoot两大主流框架。详解SSM无缝迁移到SPRINGBOOT + MYBATIS的框架转换，远程调试项目并与微信结合，利用阿里SUI，实现前后端的全栈开发。详情：http://coding.imooc.com/learn/list/144.html', 'xiangzepro', 'https://img1.mukewang.com/59c8c33700014dd002140206-80-80.jpg', 'JAVA开发工程师', '建议先学习本课程的前置课程Timer篇：
http://www.imooc.com/learn/841', '什么是Quartz，Quartz如何用，如何与Spring合为一体', '2018-09-02 20:36:53.03816', '2018-08-12 23:47:38.700579');
INSERT INTO "public"."tb_imooc_course" VALUES (168, 863, 'iOS界面间传值', '初级', 3858, '本课程将带你玩转界面之间的传值！', 'iOS', 'https://img.mukewang.com/596c81600001bcd806000338-240-135.jpg', 'https://www.imooc.com/learn/863', '1小时27分', 10, 10, 10, 10, '简介：本课程将为大家以案例的方式介绍界面间传值的6种方式，包括属性传值、单例传值、NSUserDefaults传值、代理传值、block传值以及通知传值。界面间传值将不再是问题。', '青年小Y', 'https://img3.mukewang.com/5820909c000173be02000200-80-80.jpg', '移动开发工程师', '1、熟练掌握iOS基础语法；
2、熟悉UI控件的使用；
3、了解控制器之间该如何跳转以及相关属性。', '1、界面间的跳转；
2、单例的实现；
3、界面之间的正向传值；
4、界面之间的反向传值。', '2018-09-02 20:36:50.98068', '2018-08-12 23:47:39.969615');
INSERT INTO "public"."tb_imooc_course" VALUES (167, 859, 'Handlebars模板引擎', '中级', 11123, '使用Handlebars.js模板渲染页面。', 'JavaScript, jQuery', 'https://img4.mukewang.com/5a71321d0001792706000338-240-135.jpg', 'https://www.imooc.com/learn/859', '1小时58分', 9.7, 9.9, 9.7, 9.5, '简介：本课程介绍了Handlebars.js渲染页面的常用方式，如#each、#if等，以及在使用Handlebars.js渲染页面时的写作技巧，不仅有思想的引导，更有代码的优化。', 'channingbree...', 'https://img2.mukewang.com/55a529c90001205902200220-80-80.jpg', 'Web前端工程师', '学习本课程之前，您需要掌握HTML、CSS、JavaScript，jQuery以及ajax和jSon等知识，并且能够熟练运用。', '通过使用模板Handlebars.js来实现页面的渲染，比起以前使用ajax和json来渲染页面要快很多，性能也提高了许多。', '2018-09-02 20:36:51.008071', '2018-08-12 23:47:39.961411');
INSERT INTO "public"."tb_imooc_course" VALUES (762, 174, '商城分类导航效果', '初级', 58971, '两种方法实现分类导航，同时扩展讲解其它商城分类导航的制作方法', 'JavaScript', 'https://img.mukewang.com/5705b8100001154506000338-240-135.jpg', 'https://www.imooc.com/learn/174', '1小时18分', 9.7, 9.8, 9.7, 9.5, '简介：亲爱的朋友们，你知道分类导航效果作为各大商城类网站常见的导航效果之一，是如何制作出来的吗？本课仿京东商城分类导航，详细分析并讲解制作过程，掌握运用CSS技巧及JavaScript动态改变CSS样式的两种实现方法，同时扩展讲解其它商城分类导航的不同及制作方法。', 'zongran', 'https://img4.mukewang.com/5359d6530001fef001400140-80-80.jpg', 'Web前端工程师', '如果您已经掌握了HTML/CSS、JavaScript的基础知识，但又缺乏实践经验或者对案例有兴趣,那么就开启课程的学习吧！', '让您学会开始编程前如何进行分析，让编写代码变的事半功倍；如何运用JavaScipt和CSS制作导航的两种方法,CSS的兼容性问题及修复方法,让您将掌握的基础知识进行综合应用。', '2018-09-02 20:37:41.29438', '2018-08-12 23:48:31.656996');
INSERT INTO "public"."tb_imooc_course" VALUES (163, 860, 'UI入门小锦囊', '入门', 27079, '成为UI设计师的正确打开方式？', '设计基础', 'https://img1.mukewang.com/596366a900010f7e06000338-240-135.jpg', 'https://www.imooc.com/learn/860', '2小时 0分', 9.4, 9.7, 9.3, 9.3, '简介：如果你对UI设计很感兴趣，想要尝试学习UI设计。那么学习本课程将让你更深入的了解UI设计行业，以及明白该从哪里开始入手学习。', '柒染天晴', 'https://img4.mukewang.com/595a542600014c8201600160-80-80.jpg', 'UI设计师', '1、课程难度为初级
2、需简单了解photoshop操作。', '1、我是否适合做UI设计
2、UI入门必会的矢量工具使用
3、什么是图标设计
4、界面设计概念与流程
5、什么是交互设计', '2018-09-02 20:36:50.902958', '2018-08-12 23:47:39.507904');
INSERT INTO "public"."tb_imooc_course" VALUES (164, 856, 'Java消息中间件', '高级', 41066, '使用Java消息中间件处理异步消息', 'Java', 'https://img2.mukewang.com/59632b220001afe505960335-240-135.jpg', 'https://www.imooc.com/learn/856', '2小时40分', 9.6, 9.8, 9.7, 9.3, '简介：大型系统的演变必然的发展方向是分布式，而在分布式系统中应用与应用之间互相连接越来越紧密，在应用之间的消息传递就像家常便饭般普遍。使用Java消息中间件处理异步消息成为了分布式系统中的必修课，通过本门课程可以深入浅出的学习如何在Java中使用消息中间件并且一步一步打造更优雅的最佳实践方案。', 'jovezhao', 'https://img3.mukewang.com/53e791030001410700010001-80-80.jpg', 'JAVA开发工程师', '熟悉java语法，有Java web 和 Spring基础', '理解JMS为连接不同消息中间件带来的代码统一规范，学习JMS规范，并且使用JMS实战连接ActiveMQ收发消息。提出大型分布式系统中常见的事务一致性、消息模式的选择等问题。了解RabbitMQ和Kafka等常见消息中间件在最佳实践中下的集成。', '2018-09-02 20:36:50.917782', '2018-08-12 23:47:39.671397');
INSERT INTO "public"."tb_imooc_course" VALUES (166, 787, 'Requirejs和自动打包', '中级', 11615, '学习requirejs和它的打包优化', '前端工具', 'https://img.mukewang.com/586b64ee0001df7906000338-240-135.jpg', 'https://www.imooc.com/learn/787', '2小时11分', 9.7, 9.9, 9.8, 9.5, '简介：通过本课程的学习，你将学到如何用requirejs来进行模块化开发，以及如何用r.js来打包压缩。怎么避免手动打包动作，在部署的时候自动打包成jar包。', 'Silva Zhou', 'https://img3.mukewang.com/5750088b0001850602200220-80-80.jpg', 'Web前端工程师', '课程主要讲解requirejs和打包优化，主要是工程实践，所以需要你对JavaScript有一定的基础。', '1、AMD规范
2、使用requirejs来模块化开发
3、使用r.js打包
4、利用maven自动打包成jar，无需手动', '2018-09-02 20:36:51.053826', '2018-08-12 23:47:39.910125');
INSERT INTO "public"."tb_imooc_course" VALUES (185, 817, 'Andriod中的马大姐与周大嘴ContentProvider与BroadcastReceiver', '中级', 4929, 'Android中的ContentProvider与BroadcastReceiver介绍。', 'Android', 'https://img1.mukewang.com/593606e60001a6c206000338-240-135.jpg', 'https://www.imooc.com/learn/817', '2小时 0分', 9.2, 9.2, 9.2, 9.2, '简介：ContentProvider与BroadcastReceiver在Android开发中随处可见，在面试中也经常被提及，本课就此展开对它们的述说', '木叶HinaTa', 'https://img.mukewang.com/54584cd10001404b02200220-80-80.jpg', 'Linux系统工程师', '在学习BroadcastReceiver与ContentProvider之前，需要有一定的Android基础知识', '在Android中四大组件中的ContentProvider和BroadcastReceiver的使用方法，以及面试中可能会遇到的问题。', '2018-09-02 20:36:57.004412', '2018-08-12 23:47:41.278512');
INSERT INTO "public"."tb_imooc_course" VALUES (40, 997, 'Java9之模块系统', '初级', 12503, '实例驱动的Java 9平台模块系统实战开发', 'Java', 'https://img1.mukewang.com/5b025dbd00015d1a06000338-240-135.jpg', 'https://www.imooc.com/learn/997', '1小时30分', 9.5, 9.7, 9.4, 9.4, '简介：该课程以一个具体实例为主线，贯穿Java 9平台模块系统实战开发的全过程。所涵盖的内容包括运行和开发环境的搭建和准备，模块系统概述，模块声明中包含的模块导出和依赖和服务，Maven项目构建，以及使用jlink创建自定义运行时镜像。', '成富_AlexChe...', 'https://img.mukewang.com/59f786e50001713801590159-80-80.jpg', '全栈工程师', '需要一定的Java基础', 'Java 9运行和开发环境的搭建和准备			
模块声明中的重要内容			
Maven项目构建			
使用jlink创建自定义运行时镜像			
', '2018-09-02 20:36:41.961415', '2018-08-12 23:47:29.010429');
INSERT INTO "public"."tb_imooc_course" VALUES (901, 1038, '快速入门Web阅读器开发', '中级', 2572, '带你了解电子书阅读器的工作原理，通过Vue.js快速实现Web阅读器', 'Vue.js', 'https://img3.mukewang.com/5b7bfaa20001ec6006000338-240-135.jpg', 'https://www.imooc.com/learn/1038', '2小时10分', 9.8, 10, 9.3, 10, '简介：通过本课程，大家可以了解电子书阅读器的基本工作原理及ePub格式电子书的解析原理，我会手把手带大家用Vue.js来实现一个手机阅读器，实现电子书的阅读功能，以及一些辅助功能，如翻页、字号设置、主题设置、阅读进度调整和电子书目录。本课程浅显易懂，配合实际应用案例，适合初学者和有一定前端知识的同学进行学习。', 'Sam0519', 'https://img2.mukewang.com/5b40c3d8000153d311101084-80-80.jpg', 'Web前端工程师', '1.阅读器的工作原理
2.ePub的工作原理
3.阅读器引擎epub.js的应用
4.Vue.js的基本应用和过渡动画实现
5.阅读器的基本功能实现方法', '本课程是Vue.js的中级课程，适合前端刚入门或有一定基础的同学进行学习，同时本课程包含大量阅读器方面的专业知识，适合想了解阅读器实现原理的同学学习', '2018-09-02 20:36:43.959011', '2018-08-24 00:19:26.694279');
INSERT INTO "public"."tb_imooc_course" VALUES (104, 914, 'UI必学photoshop基础课程和配色', '入门', 25935, '学会制作ui时必须会熟练运用的软件ps工具以及基础颜色运用知识', '设计工具', 'https://img.mukewang.com/5a015e400001914706000338-240-135.jpg', 'https://www.imooc.com/learn/914', '3小时 7分', 9.6, 10, 9.5, 9.3, '简介：学习使用photoshop的形状工具绘制一些基础图形和复杂icon，结合色彩的基础搭配知识丰富图形内容，并且通过图层样式的进一步加工使图形icon更加细致完整。', 'Coraline_D', 'https://img1.mukewang.com/57a6a31a000161aa01000100-80-80.jpg', 'UI设计师', '1、具备一定的ps基础。', '1、如使用ps的形状工具制作一些常用的基础图形。
2、如何使用布尔运算制作特殊的复杂图形。
3、了解颜色的三大要素，掌握简单的基础配色方法。
4、介绍图层样式里的各种功能以及作用。 ', '2018-09-02 20:36:48.950953', '2018-08-12 23:47:34.277288');
INSERT INTO "public"."tb_imooc_course" VALUES (348, 531, 'Java生成二维码', '初级', 72958, '二维码无处不在，自己动手用Java生成二维码，三种生成方式任你选', 'Java', 'https://img1.mukewang.com/562f25980001b1b106000338-240-135.jpg', 'https://www.imooc.com/learn/531', '1小时11分', 9.7, 9.9, 9.6, 9.5, '简介：二维码在现实生活中无处不在，应用越来越广泛。那么小伙伴们想不想知道如何生成二维码，以及如何去解析二维码呢？本门课程中为小伙伴们介绍了Java中三种二维码的实现方式，分为使用ZXing、QRCode以及jquery-qrcode。', 'Fcming', 'https://img1.mukewang.com/545087c60001b78902200220-80-80.jpg', '产品经理', '本门课程是Java的中级课程 ，学习前需要具备Java基础知识，并对Java Web有所了解。', '1、了解二维码的概念
2、掌握如何使用ZXing、QRCode、jquery-qrcode三种方式生成二维码
3、如何解析二维码', '2018-09-02 20:37:04.711599', '2018-08-12 23:47:54.065299');
INSERT INTO "public"."tb_imooc_course" VALUES (380, 518, 'Java 分页原理与实践（下）', '初级', 34345, 'Java 分页原理，用Hibernate实现下拉加载分页效果', 'Java', 'https://img4.mukewang.com/5617949a0001ddb606000338-240-135.jpg', 'https://www.imooc.com/learn/518', '1小时11分', 9.8, 10, 9.8, 9.7, '简介：分页功能是系统和应用最基本的组成部分。本课程是《Java分页原理与实践（上）》的续篇，在本次课程中，会讲解实现异步请求数据的流程以及下拉加载更多数据的原理，并带领小伙伴们使用Hibernate框架，实现下拉加载更多的分页效果。', 'Lenjey Gao', 'https://img.mukewang.com/54110af500018b9601400140-80-80.jpg', NULL, '1、掌握java基本语法
2、具有面向对象的相关知识
3、熟悉servlet，jsp等相关知识
4、熟悉SQL语句，对MySQL数据库有一定的了解
5、了解Hibernate框架。
6、了解Jquery', '1、页面下拉加载更多数据的原理及实现方式
2、如何使用Jquery异步获取数据
3、如何使用Hibernate框架实现分页效果
4、了解面向对象的思想以及代码复用的思想', '2018-09-02 20:37:07.813152', '2018-08-12 23:47:56.433591');
INSERT INTO "public"."tb_imooc_course" VALUES (173, 730, 'Android常见的三种图片加载库', '中级', 6396, '进入网络图片加载库的思考和学习', 'Android', 'https://img1.mukewang.com/57fb629000019d3d06000338-240-135.jpg', 'https://www.imooc.com/learn/730', '1小时29分', 9, 9, 9.2, 8.8, '简介：让学生熟练掌握使用最常见三种图片库框架：Universal-Image-Loader，Picasso，Fresco进行图片加载处理', 'ALABO', 'https://img3.mukewang.com/5458657e000125a302200220-80-80.jpg', '移动开发工程师', '需提前掌握安卓四大组件的基础知识和应用', '使用最常见三种图片库框架：Universal-Image-Loader，Picasso，Fresco进行图片加载处理', '2018-09-02 20:36:51.288638', '2018-08-12 23:47:40.461907');
INSERT INTO "public"."tb_imooc_course" VALUES (34, 991, 'Storm基础入门', '初级', 7569, '带你快速入门Storm,对数据进行实时流式计算', 'Java, Storm', 'https://img4.mukewang.com/5af553c300015fb806000338-240-135.jpg', 'https://www.imooc.com/learn/991', '1小时19分', 9.1, 8.9, 8.4, 10, '简介：Storm作为实时流式计算中的佼佼者，因其良好的特性使其使用场景非常广泛。Zookeeper作为分布式协调服务框架，因其完善的数据一致性保证特性使其成为各框架必备组件。本课分为三大部分：第一部分介绍Storm的起源背景、使用场景及特性；第二部分了解Storm的架构体系及组件作用；第三部分介绍Zookeeper的基础知识及动手实践Zookeeper安装配置与集群搭建；第四部分动手实践Storm安装配置与集群搭建。', 'Coldface', 'https://img3.mukewang.com/5333a0350001692e02200220-80-80.jpg', '全栈工程师', '1、对分布式计算有简单认识。
2、有linux基础知识。
', '1、Storm是什么、使用场景有哪些
2、Storm特性有哪些
3、大数据框架的架构类型
4、Storm架构及各组件作用
5、Zookeeper核心功能
6、安装配置Zookeeper集群
7、安装配置Storm集群
', '2018-09-02 20:36:41.386373', '2018-08-12 23:47:28.529559');
INSERT INTO "public"."tb_imooc_course" VALUES (183, 842, '星级评分原理和实现（上）', '初级', 20535, '本课程主要讲解如何使用不同的方式来实现星级评分的效果.', 'jQuery, CSS3', 'https://img2.mukewang.com/5a71320a000121d706000338-240-135.jpg', 'https://www.imooc.com/learn/842', '2小时10分', 9.7, 9.8, 9.8, 9.5, '简介：本课程主要讲解如何使用不同的方式，来实现星级评分的效果，老师不仅大家如何实现，还教会同学们设计的思路。', 'Alex Wang', 'https://img4.mukewang.com/558b7aae0001d29105680568-80-80.jpg', NULL, '1、对html，css基础知识已经掌握。
2、对JavaScript和jQuery能够熟练掌握。', '1、开发项目的实现思路
2、评分效果的实现
3、js中的开发技巧', '2018-09-02 20:36:56.938832', '2018-08-12 23:47:41.135614');
INSERT INTO "public"."tb_imooc_course" VALUES (180, 845, 'SVN从入门到放弃', '高级', 16246, 'SVN-Ubuntu命令行操作 带你玩转SVN从基础命令深入高级应用', 'PHP', 'https://img3.mukewang.com/5934bac20001a5c906000338-240-135.jpg', 'https://www.imooc.com/learn/845', '3小时17分', 9.7, 9.8, 10, 9.3, '简介：本入门教程详细讲述了SVN产生背景，应用场景以及与其他版本控制工具的区别。如何搭建SVN环境、版本库创建与管理、版本库访问方式、权限分组及多版本库解决方案等。并从最基本的update、add、del、commit命令开始逐步深入到进阶操作以及hooks等高级应用。通过一系列的实例教学伴随你从SVN小白到SVN高手。', '壞大叔badUnc...', 'https://img1.mukewang.com/59311bea0001e93207410741-80-80.jpg', 'PHP开发工程师', '1.了解基本的linux命令
2.了解基本的linux管道操作', '1.版本管理基本概念
2.SVN服务端及客户端环境搭建
3.多平台下的SVN版本库访问
4.SVN的基本管理及操作命令
5.SVN中的hooks应用
6.SVN版本库的维护与迁移
', '2018-09-02 20:36:53.431251', '2018-08-12 23:47:41.015312');
INSERT INTO "public"."tb_imooc_course" VALUES (396, 558, 'SpringMVC数据绑定入门', '中级', 61174, 'Geely带你认识SpringMVC各种数据绑定，学习相关注解的使用
', 'Java', 'https://img4.mukewang.com/578741ae00019a6906000338-240-135.jpg', 'https://www.imooc.com/learn/558', '1小时37分', 9.5, 9.7, 9.5, 9.5, '简介：数据绑定是将用户输入绑定到领域模型的一种特性。在本次课程中，将重点介绍SpringMVC中Controller控制层对数据绑定入门的相关知识。@Geely_Wu将带你深入剖析SpringMVC数据绑定在实际工作中容易踩到的各种坑，学习相关注解的使用，认识格式化工具和类型转换器以及RESTful扩展', 'Geely', 'https://img1.mukewang.com/566f7dd600019fdf06000608-80-80.jpg', 'JAVA开发工程师', '学习本门课程前需要具备SpringMVC的基础知识，可以观看慕课网的《Spring MVC起步》课程；同时小伙伴们需要对Servlet相关知识要有一定掌握；本课程选用SpringMVC4.0版本。', '1、SpringMVC常用数据结构的绑定
2、SpringMVC数据绑定实际工作中容易踩到的坑
3、注解@InitBinder、@RequestParam、@RequestBody、@ResponseBody、@PathVariable注解的使用
4、PropertyEditor、Formatter、Converter。自定义格式化工具和类型转换器
5、RESTful扩展', '2018-09-02 20:37:08.644491', '2018-08-12 23:47:57.518581');
INSERT INTO "public"."tb_imooc_course" VALUES (182, 835, 'UI框架foundation6入门（上）', '中级', 10028, '深入浅出的带你学习Foundation 6框架，结合代码进行讲解。', 'JavaScript', 'https://img2.mukewang.com/5912fca600014c5406000338-240-135.jpg', 'https://www.imooc.com/learn/835', '2小时44分', 9.8, 10, 10, 9.4, '简介：Foundation 6是一款非常流行的开源UI框架， 提供了响应式布局，一系列UI组件，包括按钮，表单，导航等多类现成的控件。适合进行快速原型和产品开发。它基于SASS的实现方式，也方便开发者进行定制化设计和扩展开发。本教程分两部分进行了详细讲解。', 'Brianlicoric...', 'https://img4.mukewang.com/54584d560001571a02200220-80-80.jpg', 'Web前端工程师', '对HTML5，CSS3，JavaScript基础知识已经掌握。', '1、了解Foundation，和搭建开发环境并开始使用 Foundation
2、学习Foundation栅格布局，伸缩栅格布局，常用工具类和表单布局
3、学习多媒体组件，菜单，多种导航条组件', '2018-09-02 20:36:53.543269', '2018-08-12 23:47:41.115471');
INSERT INTO "public"."tb_imooc_course" VALUES (184, 830, '自定义实现顶部粘性下拉刷新效果', '初级', 8751, '构建一个可拉动的自定义View,自定义实现粘性下拉控件', 'Android', 'https://img2.mukewang.com/5908307600015cee06000338-240-135.jpg', 'https://www.imooc.com/learn/830', '3小时37分', 9.7, 10, 9.5, 9.7, '简介：构建一个可拉动的自定义View, 利用贝塞尔曲线，自定义实现粘性下拉控件', 'Qiujuer', 'https://img2.mukewang.com/550aa27c00015c4f01000100-80-80.jpg', '移动开发工程师', '需要具备安卓基本四大组件知识', '完全自定义实现一个下拉效果，熟练掌握自定义View的原理以及完整流程', '2018-09-02 20:36:53.644836', '2018-08-12 23:47:41.25292');
INSERT INTO "public"."tb_imooc_course" VALUES (451, 539, 'Shell典型应用之nginx和mysql应用状态分析', '中级', 27310, '如何监控nginx和mysql运行状态，本教程为您揭开谜底', 'Linux', 'https://img2.mukewang.com/567a67fb00013a2b06000338-240-135.jpg', 'https://www.imooc.com/learn/539', '34分', 9.7, 10, 9.5, 9.7, '简介：本课程是《Shell典型应用》系列课程的第三门，主要介绍如何监控nginx和mysql的运行状态。包括对nginx服务器的响应状态和QPS等的并发响应参数进行分析，以及对mysql服务情况和主从响应状态的监控。', 'Jeson老师', 'https://img1.mukewang.com/5510c7a600016ea802200220-80-80.jpg', 'Python工程师', '学习本课程前需要熟悉Linux的基础知识，熟练使用VIM文本编辑器，并对shell基础有所了解，同时要熟悉nginx和mysql。作为《Shell典型应用》系列的第三门课程，请先学习《Shell典型应用之主控脚本实现》。', '1、能够进一步了解shell基础。
2、能够使用shell分析nginx和mysql的状态。', '2018-09-02 20:37:12.667658', '2018-08-12 23:48:03.140365');
INSERT INTO "public"."tb_imooc_course" VALUES (32, 988, '区块链技术核心概念与原理讲解', '入门', 26657, '登链科技首席技术官(Tiny熊），为你讲解区块链技术核心概念与原理', '区块链, 以太坊', 'https://img4.mukewang.com/5ae3e5b80001818c06000338-240-135.jpg', 'https://www.imooc.com/learn/988', '1小时 0分', 9.3, 9.4, 9, 9.4, '简介：区块链已火遍全球，行业人才急缺，岗位炙手可热，学习正当时，本次特邀登链科技首席技术官(Tiny熊），为你讲解区块链技术核心概念与原理。', 'Tiny熊', 'https://img2.mukewang.com/5af2c02c0001436212391176-80-80.jpg', NULL, '学习一门新技术，最快的办法就是先去了解和掌握他的核心概念和原理，然后尝试去实战这些原理，加深理解，最后通过项目的实战，掌握整套开发流程和思想，再往后那就是根据自己的业务需要或发展方向进行专项的学习和提高了。', '1.比特币概念及原理
2.账本如何验证
3.如何确定账户所有权问题
4.如何保护用户隐私
5.比特币工作量证明（POW）
6.如何形成权威账本
', '2018-09-02 20:36:41.42496', '2018-08-12 23:47:28.513382');
INSERT INTO "public"."tb_imooc_course" VALUES (33, 987, 'C4D地面多边形建模', '初级', 2169, 'C4D初期低面多边形建模', '模型制作', 'https://img.mukewang.com/5ae96be40001e24e06000338-240-135.jpg', 'https://www.imooc.com/learn/987', '2小时36分', 8, 4, 10, 10, '简介：在建模初期我们要观察这个模型，了解它的结构，从大着眼，从小入手，然后改变它的外部结构使之形成低面多边形风格', 'sugar_li', 'https://img.mukewang.com/533e4c3300019caf02000200-80-80.jpg', 'UI设计师', '1、电脑里安装C4DR18版本
2、最好有简单的PS基础', '1、了解C4D的基本用途
2、了解C4D的基本快捷键
3、建出基本外部模型
4、把模型变成低面多边形风格
5、打灯光
6、渲染', '2018-09-02 20:36:41.58491', '2018-08-12 23:47:28.52204');
INSERT INTO "public"."tb_imooc_course" VALUES (191, 823, 'iOS-特效相机(下集)', '高级', 2937, '特效相机课程第二部分，基于iOS打开数字图像处理的“大门”', 'iOS', 'https://img4.mukewang.com/58ec8aa00001d49406000338-240-135.jpg', 'https://www.imooc.com/learn/823', '1小时52分', 9.5, 9.8, 9, 9.8, '简介：本课程为特效相机课程第二部分，重点为大家实现“灰度特效”、“彩色底版特效”、“简单高亮美白特效”算法，并应用在iOS相机上。', 'Jones__', 'https://img4.mukewang.com/5aa23ce700016f2a02560172-80-80.jpg', '算法工程师', '本课程适合对数字图像处理、图像特效感兴趣的IOS开发人员。
', '1：学习“灰度特效”、“彩色底版特效”、“简单高亮美白特效”算法原理及实现方式
2：学习相机简单拍照使用，以及如何为相机拍摄到的照片添加图像特效
', '2018-09-02 20:36:55.718995', '2018-08-12 23:47:41.683983');
INSERT INTO "public"."tb_imooc_course" VALUES (508, 483, 'PHP实现微信公众平台开发—基础篇', '中级', 94372, '由浅入深一起玩转微信公众平台开发，课程由浅入深，内容详实', 'PHP', 'https://img2.mukewang.com/5774d93e0001b6e606000338-240-135.jpg', 'https://www.imooc.com/learn/483', '42分', 9.3, 9.6, 9.4, 8.9, '简介：本课程作为学习微信开发的基础课程，详细介绍了微信开发的准备条件，以及如何申请一个微信公众账号，并在项目应用中如何成功接入微信开发的api接口，课程由浅入深，内容详实，非常适合新手学习。', '_渔夫', 'https://img1.mukewang.com/5333a08f0001700202000200-80-80.jpg', 'PHP开发工程师', '学习本门课程之前，建议先了解以下知识，会更有助于理解和掌握本门课程
1、掌握PHP基本的语法                                                                       2、掌握MySQL的数据库知识
3、有独立的空间或者服务器
4、有可访问的二级域名', '1、了解微信开发的原理，熟练掌握基础的交互功能
2、掌握微信开发的相关接口
3、掌握微信开发的核心技术', '2018-09-02 20:37:19.196329', '2018-08-12 23:48:08.086897');
INSERT INTO "public"."tb_imooc_course" VALUES (188, 502, '图片预加载', '中级', 34398, '预知发生的行为，提前加载需要的图片，获得更好的用户体验', 'JavaScript, jQuery', 'https://img1.mukewang.com/58f848890001cd2206000338-240-135.jpg', 'https://www.imooc.com/learn/502', '1小时24分', 9.8, 9.9, 9.6, 9.9, '简介：图片是Web页面的重要组成部分，也是我们进行项目优化时的重中之重。本课程我们一起来学习图片的一种优化技术--图片预加载，并了解在什么情况下去使用它，以获得更好的用户体验。', 'Alex Wang', 'https://img4.mukewang.com/558b7aae0001d29105680568-80-80.jpg', NULL, '1、HTML和CSS基础知识
2、JS面向对象的基础知识', '1、利用图片的预加载技术获得更好的用户体验
2、什么是有序预加载和无序预加载，以及在什么情况下使用它们
3、jQuery插件的写法', '2018-09-02 20:36:53.604568', '2018-08-12 23:47:41.601431');
INSERT INTO "public"."tb_imooc_course" VALUES (209, 777, 'APP性能优化之内存优化', '中级', 14098, '内存优化的原理，实战并有代码演示', 'Android', 'https://img2.mukewang.com/58577eaf00017b9c06000338-240-135.jpg', 'https://www.imooc.com/learn/777', '1小时15分', 9.7, 9.9, 9.6, 9.4, '简介：1、讲解Android系统内存管理方式里的内存分配回收，并实战演示监控内存的方法。
2、讲解APP优化的几种方法，主要涉及数据结构优化、对象复用优化、内存泄漏优化方法，最后是演示效果。
3、APP内存优化里主要的OOM问题进行剖析，讲解优化方法和方案，并实战代码讲解效果。', 'hexter', 'https://img.mukewang.com/57a058a800012dab02340243-80-80.jpg', NULL, '最好有一定的android开发基础，并有做过一些app项目', '老师能让你知道内存优化的理论，优化的问题，方法等知识', '2018-09-02 20:36:54.361645', '2018-08-12 23:47:43.151823');
INSERT INTO "public"."tb_imooc_course" VALUES (192, 771, 'Android蓝牙本地操作', '中级', 9333, '讲解Android中蓝牙基础知识，掌握蓝牙的功能及使用', 'Android', 'https://img2.mukewang.com/584f71f30001bc2306000338-240-135.jpg', 'https://www.imooc.com/learn/771', '52分', 9.4, 9.7, 9, 9.7, '简介：1.蓝牙概述
2.蓝牙功能
3.如何获取本地蓝牙信息
4.如何绑定蓝牙
5.如何使用蓝牙进行数据传输', 'T-w', 'https://img1.mukewang.com/55f926100001bf3d04000565-80-80.jpg', NULL, '1.必须具备一定的Android基础课程基础
2.掌握Android中的数据存储
3.掌握Android中的通信机制', '1.了解蓝牙的基础知识
2.掌握蓝牙的功能
3.使用蓝牙进行通信', '2018-09-02 20:36:55.508614', '2018-08-12 23:47:41.719717');
INSERT INTO "public"."tb_imooc_course" VALUES (179, 838, 'UI框架foundation6入门（下）', '中级', 5974, '深入浅出的带你学习Foundation 6框架，结合代码进行讲解。', 'JavaScript', 'https://img1.mukewang.com/5913fe4a00014c5406000338-240-135.jpg', 'https://www.imooc.com/learn/838', '3小时48分', 10, 10, 10, 10, '简介：Foundation 6是一款非常流行的开源UI框架， 提供了响应式布局，一系列UI组件，包括按钮，表单，导航等多类现成的控件。适合进行快速原型和产品开发。它基于SASS的实现方式，也方便开发者进行定制化设计和扩展开发。本教程分两部分进行了详细讲解。', 'Brianlicoric...', 'https://img3.mukewang.com/54584d560001571a02200220-80-80.jpg', 'Web前端工程师', '对HTML5，CSS3，JavaScript基础知识已经掌握。', '1、学习Foundation多类容器化组件，如提示面板，下拉框，模态窗口等
2、学习按钮，滑块组件的使用和定制化
3、学习Foundation自带插件的使用
4、了解Foundation的SASS基础
5、了解Foundation的官方资源', '2018-09-02 20:36:57.01965', '2018-08-12 23:47:40.949547');
INSERT INTO "public"."tb_imooc_course" VALUES (70, 948, 'Weex入门', '中级', 15345, '基于weex前端开发框架的使用，开发出一个接近原生应用体验的案例。', 'Vue.js, WEEX', 'https://img.mukewang.com/5a81337f000118a306000338-240-135.jpg', 'https://www.imooc.com/learn/948', '1小时35分', 8.7, 8.8, 8.5, 8.8, '简介：主要带领同学入门weex框架的使用，能够利用这套框架做出一个接近原生应用的案例。', '你好_方老师...', 'https://img3.mukewang.com/5a8110730001ef8d12421242-80-80.jpg', 'Web前端工程师', '1、具备一定的前端开发基础
2、掌握最基本的vue语法', '1、weex开发入门
2、weex开发环境搭建
3、掌握部分weex组件模块
4、了解一些vue基本常见语法
5、制作一个接近原生应用体验的app', '2018-09-02 20:36:44.232204', '2018-08-12 23:47:31.461432');
INSERT INTO "public"."tb_imooc_course" VALUES (85, 968, 'GO语言语法入门篇', '入门', 17327, 'Go编译的程序可以媲美C或C++代码的速度，更加安全、支持并行进程', 'Go', 'https://img.mukewang.com/5aaf5f370001c40306000338-240-135.jpg', 'https://www.imooc.com/learn/968', '3小时 4分', 9.7, 9.6, 9.5, 10, '简介：Go 是一个开源的编程语言，它能让构造简单、可靠且高效的软件变得容易。
Go是从2007年末由Robert Griesemer, Rob Pike, Ken Thompson主持开发，并最终于2009年11月开源，在2012年早些时候发布了Go 1稳定版本。现在Go的开发已经是完全开放的，并且拥有一个活跃的社区。', 'Cap1573', 'https://img4.mukewang.com/5aaf65bc00011c4910791082-80-80.jpg', '全栈工程师', '1、课程难度属于初级
2、面向对象为：对Go 语言感兴趣或者想学习Go语言的同学', '1、Go 语言能做什么及发展历史； 
2、Go 语言环境搭建；
3、Go 语言基础语法；
4、Go 语言数据类型；
5、Go 语言常量和变量；
6、Go 语言中控制语句；', '2018-09-02 20:36:45.108431', '2018-08-12 23:47:32.469027');
INSERT INTO "public"."tb_imooc_course" VALUES (195, 770, 'Java实现邮箱验证', '初级', 27288, '本视频教程主要介绍如何使用JavaMail进行邮箱验证，由浅入深', 'Java', 'https://img4.mukewang.com/587c76150001a0ab06000338-240-135.jpg', 'https://www.imooc.com/learn/770', '1小时20分', 9.5, 9.6, 9.4, 9.6, '简介：本课程主要介绍如何使用JavaMail进行邮箱验证！首先会介绍邮件收发过程和环境搭建；然后介绍如何用代码实现邮箱验证，包括用户注册的实现和发送邮件激活等功能！', '慕_神', 'https://img3.mukewang.com/55dbe4f1000115e705680568-80-80.jpg', 'JAVA开发工程师', '学习本课程需要对Java Web基础知识有所了解！', '1、了解邮件收发相关术语
2、能够进行邮件服务器搭建
3、能够实现用户注册功能
4、能够实现邮件发送代码及激活', '2018-09-02 20:36:54.136275', '2018-08-12 23:47:42.041563');
INSERT INTO "public"."tb_imooc_course" VALUES (198, 792, '自动化测试之selenium工具使用', '初级', 30828, 'web自动化测试selenium从0基础开始。', '自动化测试', 'https://img4.mukewang.com/5873534e0001ecb106000338-240-135.jpg', 'https://www.imooc.com/learn/792', '2小时50分', 9.6, 9.7, 9.7, 9.3, '简介：了解selenium自动化测试没有那么难，本门课程从0开始带你走进自动化测试大门。从怎么做自动化测试到环境的搭建，以及最后对selenium中常用api的熟悉，让你对自动化不再陌生。', 'Mushishi_Xu', 'https://img4.mukewang.com/57df9bcd000195e810231024-80-80.jpg', '软件测试工程师', '针对完全无自动化测试基础的测试小伙伴。', '在没有基础的情况下告诉你什么情况下做自动化，并且通过手把手叫你搭建测试环境，以及常见的定位方式，常用的api讲解，让你对自动化测试不陌生，让你慢慢的步入自动化测试大门。', '2018-09-02 20:36:59.176512', '2018-08-12 23:47:42.213078');
INSERT INTO "public"."tb_imooc_course" VALUES (546, 453, 'H5+JS+CSS3实现七夕言情', '中级', 182608, '为七夕节准备的H5+JS+CSS3特效案例，由浅入深案例拆分讲解', 'JavaScript, jQuery', 'https://img2.mukewang.com/5705d31a00013ca706000338-240-135.jpg', 'https://www.imooc.com/learn/453', '2小时25分', 9.5, 9.8, 9.3, 9.5, '简介：七夕邻近，才子佳人们又要开始约会了，为了心爱的她献上一份不一样的浪漫。本课程中使用面向接口的编程方式，采用H5+JS+CSS3的混合使用实现整个功能。课程当中总共分为3个主题场景图，多个精灵图以及雪碧图，实现了静与动的完美结合，并且由浅入深的将整个案例拆分讲解。', 'Aaron艾伦', 'https://img.mukewang.com/54bf47ea000132d002200220-80-80.jpg', 'Web前端工程师', '本课程为高级案例课程，其中所用的大部分知识点不做深入剖析，只讲解如何使用，部分代码需要由你自己填充。
需要具备如下知识：
1、HTML4、HTML5
2、CSS2、CSS3
3、JavaScript、jQuery
4、面向对象思想', '1、如何实现页面的无缝滚动
2、如何实现视觉差效果
3、异步编程处理
4、CSS3动画过渡
5、JS动画实现
6、H5的音乐效果', '2018-09-02 20:37:22.971553', '2018-08-12 23:48:11.519397');
INSERT INTO "public"."tb_imooc_course" VALUES (159, 857, '基础线性和剪影化icon的制作方法', '入门', 8862, '刚接触UI的小伙伴们从哪里作为切入点？UI设计icon制作必备技能', '设计基础', 'https://img3.mukewang.com/59534c0b00019ea506000338-240-135.jpg', 'https://www.imooc.com/learn/857', '1小时43分', 10, 10, 10, 10, '简介：随着移动互联网的发展，客户端层出不穷，app，web，微信端等等，这些都需要我们UI设计师来制作，更多实战课点击https://coding.imooc.com/?c=photo详细了解', 'Coraline_D', 'https://img2.mukewang.com/57a6a31a000161aa01000100-80-80.jpg', 'UI设计师', '1.ICON是什么以及ICON的分类、作用
2.线性&剪影ICON的制作方法以及一些基础知识，如：icon的常用尺寸，如何修改ICON尺寸等等', '1.ICON简介
2.ICON的分类
3.不同类型的ICON的主要作用
4.不同功能的ICON的设计思路
5.线性和剪影化ICON的制作方法
6.一套完整的ICON的美化', '2018-09-02 20:36:50.639188', '2018-08-12 23:47:39.347406');
INSERT INTO "public"."tb_imooc_course" VALUES (202, 801, 'Java模板引擎之Freemarker', '中级', 30203, '学习Java模板引擎中Freemarker技术，web开发人员必要掌握的技术之一', 'Java', 'https://img2.mukewang.com/589d25820001497206000338-240-135.jpg', 'https://www.imooc.com/learn/801', '1小时57分', 9.9, 10, 9.8, 9.8, '简介：在web开发框架中，MVC模式是最常用的设计模式。企业web应用基本都会用到。Freemarker的设计可以用来生成HTML。它语法简单、功能强大、灵活，宏模板可复用，是互联网前端很常用的技术。而且Spring对Freemarker的整合也很nice。所以是web开发人员必要掌握的技术之一。', 'qicong88', 'https://img.mukewang.com/5aa0e2f90001096002000200-80-80.jpg', '全栈工程师', '会写简单java的代码', '在实战中学习Freemarker基本技术，并了解高级技术。只要你会写简单java的代码，经过简单、轻松的学习之后，保证你会喜欢上它，并掌握它。欢迎同学加群深入讨论学习  慕课网Java讨论群② 297446076
', '2018-09-02 20:36:57.460057', '2018-08-12 23:47:42.594749');
INSERT INTO "public"."tb_imooc_course" VALUES (206, 802, 'webpack深入与实战', '中级', 61627, 'webpack实战教程，用真实项目带你探索 webpack 强大的功能', '前端工具', 'https://img2.mukewang.com/58a14cad0001321c06000338-240-135.jpg', 'https://www.imooc.com/learn/802', '3小时21分', 9.6, 9.8, 9.5, 9.5, '简介：随着模块化开发的普及，webpack 已经越来越成为一个前端项目的标配，本课程介绍了如何在项目中使用 webpack 打包文件，处理各种资源，以及配置开发环境，上线环境等，通过实际的例子来讲解 webpack 的使用方法，带你探索 webpack 强大的功能。', 'qbaty', 'https://img.mukewang.com/54ce31860001b3d201800180-80-80.jpg', 'Web前端工程师', '1、对模块化开发有一些了解
2、使用过 node 对 npm 有基本的了解
3、对打包有一个基本的概念', '1、模块化的开发
2、webpack 的 CLI (命令行)
3、webpack 如何在项目中打包
4、webpack 如何处理项目中的资源文件', '2018-09-02 20:36:57.557096', '2018-08-12 23:47:42.848021');
INSERT INTO "public"."tb_imooc_course" VALUES (207, 793, '不一样的自定义实现轮播图效果', '初级', 13243, 'Android开发自定义实现轮播图效果案例实现，从无到有让你会懂会用', 'Android', 'https://img1.mukewang.com/5874812400013a5106000338-240-135.jpg', 'https://www.imooc.com/learn/793', '2小时21分', 9.4, 9.5, 9.4, 9.3, '简介：实现轮播图效果，从无到有，一步步带你走进自定义布局控件的世界，项目案例穿插知识点去讲解，让你真正会懂会用！
Android大牛齐聚之地，这里总有人为你答疑解惑！慕课网Android讨论群 556384357', '爱好代码', 'https://img3.mukewang.com/575fb756000114e903490349-80-80.jpg', '移动开发工程师', '需掌握安卓四大组件基础知识
Android大牛齐聚之地，这里总有人为你答疑解惑！慕课网Android讨论群 556384357', '掌握自定义控件的通用流程实现，并且有能力实现流行应用的轮播图效果
Android大牛齐聚之地，这里总有人为你答疑解惑！慕课网Android讨论群 556384357', '2018-09-02 20:36:53.948832', '2018-08-12 23:47:42.899718');
INSERT INTO "public"."tb_imooc_course" VALUES (204, 807, 'iOS之ReactiveCocoa框架', '中级', 4792, '本iOS视频教程让你快速上手ReactiveCocoa框架，达到灵活运用', 'iOS', 'https://img.mukewang.com/58afcb3500011bc306000338-240-135.jpg', 'https://www.imooc.com/learn/807', '1小时25分', 10, 10, 10, 10, '简介：ReactiveCocoa为事件提供了很多处理方法，而且利用RAC处理事件很方便，可以把要处理的事情和监听的事情的代码放在一起，这样非常方便我们管理，就不需要跳到对应的方法里。而本门课程就会教大家如何灵活运用ReactiveCocoa。', 'zsy78191', 'https://img.mukewang.com/57b6b50f00019cef01590159-80-80.jpg', NULL, '1、具有很好的面向对象编程思维
2、知道如何导入ReactiveCocoa框架
3、要学会通过框架的学习去了解它的编程思想', '1、ReactiveCocoa框架的基本使用
2、ReactiveCocoa的设计模式
3、ReactiveCocoa函数式编程思想', '2018-09-02 20:36:53.973527', '2018-08-12 23:47:42.753152');
INSERT INTO "public"."tb_imooc_course" VALUES (103, 924, 'IntelliJ IDEA神器使用技巧', '中级', 56453, '充分利用intellij idea各类技巧来提高你的开发效率', 'Java', 'https://img.mukewang.com/5a2f4d7f00012c8106000338-240-135.jpg', 'https://www.imooc.com/learn/924', '2小时20分', 9.7, 9.8, 9.7, 9.6, '简介：程序员每日都会花费数小时使用ide编写和调试代码，其中很多操作都是机械重复且频率非常高，本着"工欲善其事必先利其器"的精神，闷头写代码之外花点时间研究一下自己用的ide，其带来的效率提升非常可观。本课程选择了intellij idea这一java集成工作开发环境，从如何高效定位、代码智能提示、重构、关联、版本控制等全方面展示这款idea发挥的功能，相信同学们在学习并掌握了这款idea的技巧之后，开发效率至少提升两倍以上，你只需要专注于业务逻辑，把更多的重复劳动交给idea吧。老师的《Java读源码之Netty深入剖析》实战课已上线，感兴趣的小伙伴们欢迎来学习', '闪电侠_', 'https://img3.mukewang.com/5b3f44c00001ab1207400740-80-80.jpg', NULL, '有一定的java编程基础即可', '代码生成技术			
批量编辑技术			
代码调试技术			
代码智能修复技术			
智能上下文关联技术			
代码重构技术			
高效的版本控制管理技术			
', '2018-09-02 20:36:49.801661', '2018-08-12 23:47:34.262398');
INSERT INTO "public"."tb_imooc_course" VALUES (215, 786, 'Android语音词典', '初级', 8729, '使用第三方讯飞语音实现中英文语音词典的功能', 'Android', 'https://img1.mukewang.com/58b7b2ed0001cc1506000338-240-135.jpg', 'https://www.imooc.com/learn/786', '1小时29分', 9.2, 9.5, 9.1, 8.9, '简介：讲解第三方讯飞语音如何使用，如何实现数据解析，如何实现中英文词典的查找功能', 'T-w', 'https://img.mukewang.com/55f926100001bf3d04000565-80-80.jpg', NULL, '有一定的Android语法基础', '1.熟练掌握第三方平台的使用
2.熟练掌握数据解析
3.熟练掌握网络请求数据
', '2018-09-02 20:36:54.88329', '2018-08-12 23:47:43.596704');
INSERT INTO "public"."tb_imooc_course" VALUES (210, 803, 'Android记账本', '初级', 13687, '本课程是一个案例课程，主要讲解第三方库图标和数据库的结合使用', 'Android', 'https://img1.mukewang.com/58a150c90001fde806000338-240-135.jpg', 'https://www.imooc.com/learn/803', '1小时57分', 9.7, 9.4, 9.8, 10, '简介：本课程是一个案例课程，主要讲解数据库和第三方库图标的使用', 'eclipse_xu', 'https://img4.mukewang.com/54cb9b5f0001827024483264-80-80.jpg', '移动开发工程师', '1.有一定的Android UI基础
2.熟练Sqlite数据库
3.有一定的编程思想', '1.熟练掌握数据库的各种操作
2.熟练掌握第三方库的引入和使用
3.熟练掌握图标的绘制和数据的显示', '2018-09-02 20:36:54.296452', '2018-08-12 23:47:43.252512');
INSERT INTO "public"."tb_imooc_course" VALUES (227, 742, '带您完成神秘的涟漪按钮效果-提高篇', '初级', 5938, '轻松实现控件涟漪效果，高级篇！', 'Android', 'https://img2.mukewang.com/580714cf0001aa9c06000338-240-135.jpg', 'https://www.imooc.com/learn/742', '2小时26分', 9.3, 10, 8.8, 9.2, '简介：本课程介绍了涟漪Drawable中需要绘制基本要素，并在Drawable中添加涟漪动画的实现。介绍了如何提升整体的扩展性，方便扩展更多的涟漪效果。讲解了如何提取主要的绘制以及动画部分并实现一种新的涟漪效果。同时讲解了如何添加Shader渲染支持。对现有的涟漪效果进行优化等等。', 'Qiujuer', 'https://img1.mukewang.com/550aa27c00015c4f01000100-80-80.jpg', '移动开发工程师', '本课程为涟漪效果高级篇，针对学过涟漪效果入门篇的同学；在课程中详细的讲解了相关的知识点。其中在Drawable中添加涟漪动画等相关知识点尤为重要；并要求学习者能深入理解如何提取主要的绘制以及动画部分并实现一种新的涟漪效果。', '1.如何为动画增加速度支持（高级篇）
2.如何使用工厂模式分解绘制逻辑（高级篇）
3.如何限定涟漪与绘制美女效果（高级篇）
4.如何为View拦截并延迟点击事件（高级篇）
5.添加自定义属性与性能优化（高级篇）', '2018-09-02 20:36:55.521667', '2018-08-12 23:47:44.564722');
INSERT INTO "public"."tb_imooc_course" VALUES (228, 824, '第一个docker化的java应用', '中级', 38901, '逐步学习docker相关知识，制作第一个docker化的java应用', '云计算, Docker', 'https://img1.mukewang.com/58f0a2310001ea1306000338-240-135.jpg', 'https://www.imooc.com/learn/824', '1小时24分', 9.5, 9.9, 9.5, 9.1, '简介：Docker是一个使用Go语言开发的开源的应用容器引擎，让开发者可以打包他们的应用以及依赖包到一个可移植的容器中，然后发布到任何流行的机器上。Docker的发展速度和火爆程度着实令人惊叹，一发不可收拾，形成了席卷整个IT界的新浪潮。学完本课程你将了解到什么是docker，docker的思想以及诸如镜像，仓库，容器等核心概念。你将学会怎样运行一个容器，如何搭建私有仓库，怎么写dockerfile以及怎样把自己的应用放到容器中运行。docker将会是你的IT路上一笔不小的财富。', '刘果国', 'https://img1.mukewang.com/55adc267000134ea05680568-80-80.jpg', '软件工程师', '有一定linux基础，会基本的命令。有至少一种语言的编程基础。', '逐步学习docker是什么，docker的主导思想，以及docker解决了什么问题。了解docker三大核心概念：镜像、仓库、容器。怎样安装docker，运行docker容器。怎样搭建私有仓库、怎样制作自己的镜像、怎样写dockerfile，怎样用docker运行自己的java程序。', '2018-09-02 20:36:56.046956', '2018-08-12 23:47:44.605244');
INSERT INTO "public"."tb_imooc_course" VALUES (600, 371, 'Sass和Compass必备技能之Compass', '中级', 19656, '结实Compass，通过这个工具来帮助你写出更优秀的CSS', 'Sass/Less', 'https://img4.mukewang.com/5705d47f0001b11806000338-240-135.jpg', 'https://www.imooc.com/learn/371', '2小时42分', 9.7, 9.9, 9.7, 9.6, '简介：本课程着眼于介绍Compass扩展工具，通过这个工具来帮助你写出更优秀的CSS。重点聚焦于Compass框架的应用，承接上一门课程《Sass与Compass必备技能之Sass》。课程结束后你会发现之前令你无比头疼的CSS痛点问题都被迎刃而解了。', 'Materliu', 'https://img3.mukewang.com/558f98f00001537842083120-80-80.jpg', 'Web前端工程师', '如果你对CSS一无所知，我建议你先学习CSS的相关知识。如果你想一步登天，那么你必将摔得体无完肤。
', '1.掌握如何使用Compass写出更优秀的CSS。
2.痛殴CSS编写过程中，这么多年的拦路虎，比如说精灵图自动合图，属性的浏览器前缀处理。
3.在项目的开发，生产周期内，使用的样式，图片，字体等内容，如何更好的组织起来。', '2018-09-02 20:37:26.624921', '2018-08-12 23:48:16.151144');
INSERT INTO "public"."tb_imooc_course" VALUES (144, 922, '前端内容的自动化构建', '中级', 15678, '手把手教你如何自动化构建JavaScript和CSS', '前端工具', 'https://img3.mukewang.com/5a2516840001a77006000338-240-135.jpg', 'https://www.imooc.com/learn/922', '2小时30分', 9.4, 9.4, 9.2, 9.6, '简介：随着前端技术的快速发展，前端内容在整个web开发中所占的比例越来越重。本课将为你解答如何自动化构建前端内容，提升我们的前端开发效率。本课程分为三个部分，第一部分讲解什么是构建，为什么需要自动化构建，后面两部分分别讲解如何使用Gulp进行JavaScript和CSS的构建。', 'locktsal', 'https://img3.mukewang.com/5a2a45950001c95f02630262-80-80.jpg', 'Web前端工程师', '1、熟悉HTML，JavaScript和CSS的基本语法
2、了解Angularjs的基本用法', '1.什么是构建？为什么需要自动化构建？
2.构建工具的演进历史
3.Gulp的基本用法
4.JavaScript的构建：模块化、压缩
5.如何将CoffeeScript和ES6编译为JavaScript
6.CSS的构建：压缩和语言编译
7.如何将SASS编译为CSS', '2018-09-02 20:36:47.31818', '2018-08-12 23:47:37.948894');
INSERT INTO "public"."tb_imooc_course" VALUES (219, 816, '如何写好测试用例', '初级', 33743, '一个案例学会如何写好测试用例，如何管理测试用例', '功能测试', 'https://img1.mukewang.com/58d87782000175e006000338-240-135.jpg', 'https://www.imooc.com/learn/816', '1小时25分', 9.6, 9.6, 9.4, 9.8, '简介：本课程首先会对测试用例做一个介绍，然后介绍需求分析与测试点编写，然后编写测试用例，然后对测试用例进行评审，以及教大家如何管理测试用例，最后对课程进行总结。', '浪晋', 'https://img2.mukewang.com/57b570de0001e7f001000100-80-80.jpg', '软件测试工程师', '本课程适合对测试行业感兴趣的但又不知道如何写好测试用例的同学', '测试用例编写流程，需求分析，测试点编写，测试用例编写，测试用例评审，测试用例管理', '2018-09-02 20:36:54.933599', '2018-08-12 23:47:43.714432');
INSERT INTO "public"."tb_imooc_course" VALUES (221, 815, 'WeTest移动测试系列沙龙-手游安全测试', '初级', 4863, '分享腾讯游戏安全测试流程方法，游戏安全测试知识干货', 'Android, 安全测试', 'https://img1.mukewang.com/58d339b7000146bf06000338-240-135.jpg', 'https://www.imooc.com/learn/815', '1小时 1分', 9.7, 10, 9.4, 9.8, '简介：分享腾讯游戏安全测试流程方法，让同行了解安全测试过程中的风险分析方法、安全风险项、测试工具以及测试方案。', '腾讯WeTest', 'https://img4.mukewang.com/58d3a2170001148801480148-80-80.jpg', NULL, '对移动测试知识有所了解。', '1、腾讯游戏安全测试流程方法
2、游戏风险分析方法
3、游戏安全测试工具', '2018-09-02 20:36:55.008175', '2018-08-12 23:47:43.859324');
INSERT INTO "public"."tb_imooc_course" VALUES (220, 814, 'Spark从零开始', '初级', 32165, '本课程旨在让同学们了解Spark基础知识，掌握Spark基础开发.', '大数据, Spark', 'https://img3.mukewang.com/58cf8c2e00014c8406000338-240-135.jpg', 'https://www.imooc.com/learn/814', '2小时18分', 9.8, 9.9, 9.7, 9.8, '简介：Spark作为新一代大数据计算引擎，因为内存计算的特性，具有比hadoop更快的计算速度。本教程涉及Spark基础概念RDD，KeyValueRDD，RDD的常用Transformation和Action操作等', 'Terby', 'https://img3.mukewang.com/58cf4c130001134f04960704-80-80.jpg', 'JAVA开发工程师', '1、 简单Linux的操作 ', '1、了解Spark到底是什么
2、了解Spark和Hadoop的区别
3、了解Spark的基础知识和概念
4、掌握Spark RDD的基本操作和特性
5、掌握Spark程序的开发和部署流程', '2018-09-02 20:36:54.849835', '2018-08-12 23:47:43.759878');
INSERT INTO "public"."tb_imooc_course" VALUES (199, 799, 'RBAC打造通用web管理权限', '中级', 14533, 'RBAC为商业系统安全防范手段，结合理论和实战介绍RBAC', 'PHP', 'https://img3.mukewang.com/5885a1f5000113a506000338-240-135.jpg', 'https://www.imooc.com/learn/799', '2小时43分', 9.7, 9.7, 9.7, 9.7, '简介：RBAC是商业系统中最常见的权限管理技术之一。RBAC是一种思想，任何编程语言都可以实现，其成熟简单的控制思想 越来越受广大开发人员喜欢。本课将通过理论部分和实战部分详细介绍RBAC的基础知识、原理及RBAC的完整实现过程，并演示RBAC的应用场景。', '编_程_浪_子...', 'https://img1.mukewang.com/583e9afa000166c410240770-80-80.jpg', 'PHP开发工程师', '1、对html基础知识已经掌握。
2、掌握php基础知识，如数组、类、对象。
3、对bootsrtap 和 yii2 最好有了解，当然没有也没关系，按照视频一步一步来
4、课程所有源码已经上传到github上
  https://github.com/apanly/mooc  
  http://git.oschina.net/apanly/mooc ', '1、权限的好处 
2、常见的4大权限模型 
3、RBAC权限模型的优势 
4、RBAC架构由来和演变 
5、RBAC功能模块需求 
6、RBAC数据库实现 
7、RBAC功能实现 ', '2018-09-02 20:36:59.274354', '2018-08-12 23:47:42.258276');
INSERT INTO "public"."tb_imooc_course" VALUES (268, 758, 'PHP中的HTTP协议', '中级', 27905, 'PHP视频教程从PHP的角度深度解析HTTP协议知识，例如post、和get请求', 'PHP', 'https://img.mukewang.com/58339ab600019e4206000338-240-135.jpg', 'https://www.imooc.com/learn/758', '1小时26分', 9.5, 9.6, 9.5, 9.3, '简介：本次课程将带领大家学习PHP中的HTTP协议，掌握http交互请求，例如post、和get请求，并用代码方式实现常见的post、get请求，以及防盗链、反向Ajax等高级应用。', 'ghost Wu', 'https://img3.mukewang.com/57e9df8000012cf302410241-80-80.jpg', NULL, '本课程是PHP初级课程
1、熟练掌握基本的PHP语法
2、熟练掌握PHP中数据请求的方式
3、了解get请求和post请求的区别和联系
4、熟悉Ajax请求过程', '1、了解http基本协议
2、掌握http交互请求，例如post、和get请求
3、使用代码实现PHP中的post和get请求
4、防盗链、反向Ajax等http协议高级运用', '2018-09-02 20:37:03.659302', '2018-08-12 23:47:48.5932');
INSERT INTO "public"."tb_imooc_course" VALUES (170, 776, '号码归属地查询实用工具', '初级', 6271, '解析框架不知如何选择？本课程教你', 'Android', 'https://img3.mukewang.com/585778ca0001586306000338-240-135.jpg', 'https://www.imooc.com/learn/776', '1小时 2分', 9.6, 9.8, 9.3, 9.7, '简介：如今越来越多的骚扰电话影响我们的生活，所幸目前很多手机管家都有来电归属地显示，本课程将实现归属地查询，通过OkHttp网络框架请求手机号数据，并能掌握流行的MVP设计模式以及如何使用目前主流的Json解析框架', '邝泉', 'https://img4.mukewang.com/5458458d000181e402200220-80-80.jpg', '移动开发工程师', '学习本门课程之前，需已掌握Android基础知识，会更有助于理解和掌握本门课程', '1、MVP设计模式理念
2、Json解析主流框架的使用
3、OkHttp网络框架使用', '2018-09-02 20:36:51.338689', '2018-08-12 23:47:40.024456');
INSERT INTO "public"."tb_imooc_course" VALUES (152, 854, '快速入门ThinkPHP 5.0 --模型篇', '中级', 17343, 'Thinkphp5.0已发布多时,想了解thinkphp 5.0的新特性吗？老司机点准时出发', 'PHP', 'https://img3.mukewang.com/594cf6120001ddaf06000338-240-135.jpg', 'https://www.imooc.com/learn/854', '3小时 0分', 9.7, 10, 9.6, 9.5, '简介：一个标准的网站一定离不开数据库的操作，在本套课程中我和你一起来揭开ThinkPHP5 数据操作的神秘面纱，和你一起愉快的使用 ThinkPHP5 操作数据库，让数据库操作变的更愉悦。', '乌云龙', 'https://img4.mukewang.com/5a3cc57f0001c78704500405-80-80.jpg', 'PHP开发工程师', '1、有一定的php基础。
2、对ThinkPHP5 有一定的了解。
3、没有接触过tp5 的学生可以先看下我之前录制的 <快速入门 ThinkPHP5 基础篇> ', '1、ThinkPHP5 的数据库操作类 
2、ThinkPHP5 的数据模型
3、使用数据模型快速对数据库进行增删改查的操作
4、ThinkPHP5 的自动完成操作
5、模型的自动时间戳和软删除 ', '2018-09-02 20:36:53.50443', '2018-08-12 23:47:38.760461');
INSERT INTO "public"."tb_imooc_course" VALUES (143, 925, 'AWS物联网前（IoT）沿技术分享', '中级', 2960, '物联网设备、云端计算与存储，以及信息洞察力是物联网的三大支柱。', '云计算, AWS', 'https://img2.mukewang.com/5a2e515200019a0306000338-240-135.jpg', 'https://www.imooc.com/learn/925', '1小时52分', 9.5, 10, 9.7, 8.9, '简介：物联网设备、云端计算与存储，以及信息洞察力是物联网的三大支柱。本次物联网 IOT 专场，深入解析AWS Greengrass 的技术特点以及功能优势；同时分享了物联网安全新趋势，以及在能效管理云平台、智能照明、共享单车、智能家居相关物联网案例分享。AWS 技术峰会2018 中国站将在上海、北京、深圳三地盛大召开，报名链接：https://awssummit.cn?tc=1s016B2uQi', '亚马逊AWS', 'https://img1.mukewang.com/59c2078900017f7603000300-80-80.jpg', '全栈工程师', 'AWS技术峰会是亚马逊 AWS 每年在全球众多城市巡回举办的大型云服务技术盛会。
本次峰会将设立自动化运维技术、大数据技术、IOT、企业级服务、人工智能等多个技术主题分会场，邀请到涉及以上各领域的行业大咖。
该课程对于AWS基础服务需要有一定的了解', '1. 了解AWS Greengrass 的技术特点以及功能优势
2.了解物联网安全新趋势；
3.能效管理云平台；
4.物联网服务的使用案例分析：智能照明、共享单车、智能家居相关', '2018-09-02 20:36:49.480426', '2018-08-12 23:47:37.853361');
INSERT INTO "public"."tb_imooc_course" VALUES (147, 923, 'Android互动直播APP开发入门', '中级', 13482, 'Android互动直播APP开发入门，值得你学习的直播知识！', 'Android', 'https://img.mukewang.com/5a279631000122db06000338-240-135.jpg', 'https://www.imooc.com/learn/923', '1小时36分', 9.6, 10, 9.3, 9.5, '简介：斗鱼，映客，花椒…这些在你生活中不可缺的直播APP的现状是什么？流程是什么？工具有哪些，直播SDK怎么选择，本课程将为你揭秘这些问题，让直播APP开发不再神秘！', '我就是超人...', 'https://img1.mukewang.com/59bfb3bc0001708302240149-80-80.jpg', '移动开发工程师', '《Android互动直播APP开发实战》http://coding.imooc.com/class/143.html，希望能更系统的帮助到大家。', '本课程你将学习到，直播的现状，流程（采集，前处理，编码，推流与优化，服务端，客户端，交互系统，工具，直播SDK对比等直播入门知识）《Android互动直播APP开发实战》http://coding.imooc.com/class/143.html', '2018-09-02 20:36:49.645693', '2018-08-12 23:47:38.236194');
INSERT INTO "public"."tb_imooc_course" VALUES (231, 775, '自定义实现日历控件', '中级', 11413, '从零开始，循序渐进，轻松掌握Android 自定义控件实现', 'Android', 'https://img4.mukewang.com/5857737a0001533406000338-240-135.jpg', 'https://www.imooc.com/learn/775', '1小时16分', 9.6, 9.8, 9.7, 9.4, '简介：从零开始，循序渐进，教你如何搭建Android自定义控件，同时传授背后的理论知识。', 'TerryG', 'https://img1.mukewang.com/57a991b80001a15406500634-80-80.jpg', '全栈工程师', '这是一门基础课程，上课前需要只需要具备最基础的Android知识，同时懂得如何使用Android Studio。 ', '自定义Android控件的方方面面，学完之后能学以致用。', '2018-09-02 20:36:56.070184', '2018-08-12 23:47:44.982125');
INSERT INTO "public"."tb_imooc_course" VALUES (232, 828, 'R语言入门与进阶', '初级', 14874, '这门课将会带领您领略R语言的精髓,打开R语言的大门。', '大数据', 'https://img4.mukewang.com/58fde05a0001014a06000338-240-135.jpg', 'https://www.imooc.com/learn/828', '2小时42分', 9.1, 9.8, 8.7, 8.7, '简介：R语言是数据科学领域中最常用的语言之一。在本教程中，您将学习到R中的基本语法，浏览R数据结构，并且了解如何从本地文件读取和写入数据到云托管的数据库。此外，本节课也可以教会您如何利用R来使用数据，获取数据的摘要信息，并将其转换为适合您的需求的模式。学完了本教程，您将能够完全掌握R的用法，对以后的数据分析工作打下一个很好的基础。', '扬帆远航_...', 'https://img1.mukewang.com/545850bb0001979202200220-80-80.jpg', '数据科学家', '掌握基本R的编程方法。', '1、R语言的基本知识，包括基本语法，变量和类型。 
2、如何在R中构建函数和控制流。 
3、在R中写入和读取数据的细节。
4、在R中操作数据。
', '2018-09-02 20:36:56.089438', '2018-08-12 23:47:45.018803');
INSERT INTO "public"."tb_imooc_course" VALUES (174, 865, '浅析SQLmap', '中级', 9686, '如何开发一个既稳定又安全的web系统？那来学习web安全吧.', 'PHP, 安全测试', 'https://img4.mukewang.com/5977373b0001318505910331-240-135.jpg', 'https://www.imooc.com/learn/865', '1小时 3分', 9.6, 9.8, 9.3, 9.8, '简介：在当前互联网环境下，泄露的数据库已遍布各大互联网公司。如何才能更好地保护我们的数据？本次课程将带你走进web安全的世界，让你了解数据库安全的注入方法。黑客不再变得神秘，攻击技术原来我也会，小网站主自己也能找到正确的安全道路。黑客是怎么做拿走我的数据库的?为什么要选择这样的方案呢？我应该怎么防范黑客的攻击?你或许能再本次课程当中找到答案。通过课程的详细讲解，让你不仅能“知其然”，更加“知其所以然”。', 'idaxia', 'https://img1.mukewang.com/59608c500001d54307410741-80-80.jpg', 'PHP开发工程师', '1.了解mysql的基础知识，如库、表、SQL
2. 知道什么是sql注入漏洞？脱裤是什么意思？', '1. 渗透测试平台搭建 2. sqlmap注入实战 3. 如何防范SQL攻击 ', '2018-09-02 20:36:50.496423', '2018-08-12 23:47:40.469846');
INSERT INTO "public"."tb_imooc_course" VALUES (237, 713, '微信授权登录', '中级', 53549, '教你如何用Java实现微信授权登录，最后介绍公众号和开发平台如何关联', 'Java', 'https://img3.mukewang.com/587c69610001b37b06000338-240-135.jpg', 'https://www.imooc.com/learn/713', '1小时 0分', 9.7, 9.9, 9.4, 9.9, '简介：本课程首先会对微信授权登录的基础知识进行介绍，然后分别介绍基于微信公众号和基于开放平台的登录，最后介绍公众号和开发平台如何关联。', 'LaoBi', 'https://img.mukewang.com/575423d200018abd06400640-80-80.jpg', 'JAVA开发工程师', '学习本课程前，需要对Java Web的基础知识有所了解，熟悉JSP和Servlet。同时需要对JSON有所了解。', '学习完本门课程可以掌握如下知识：
1、了解微信授权登录的概念
2、掌握如何进行基于公众号的登录
3、掌握如何进行基于开放平台的登录', '2018-09-02 20:36:58.633594', '2018-08-12 23:47:45.430411');
INSERT INTO "public"."tb_imooc_course" VALUES (287, 703, 'PHP环境LAMP/LNMP安装与配置', '初级', 36947, '本课程适于PHP初学者，手把手教你LAMP/LNMP环境安装配置', 'PHP, Linux', 'https://img1.mukewang.com/57eb9feb000106ec06000338-240-135.jpg', 'https://www.imooc.com/learn/703', '57分', 8.5, 8.8, 8.2, 8.5, '简介：本课程适于PHP初学者，属于PHP开发环境的安装。LAMP是Linux + Apache/Nginx + Mysql + PHP的简称。本课程和您一起，手把手安装配置LAMP环境。目前，国内外，无论一线互联网企业还是创业公司，LAMP都是Web开发的主流，以其高性能、特稳定、开源免费等特性闻名于世。', 'Lane', 'https://img1.mukewang.com/57f9a8bf0001a9b902740272-80-80.jpg', 'PHP开发工程师', '1、不是计算机纯小白就可以。
2、听过这些LAMP组建的这些名字', '1、LAMP是什么，以及为什么要使用LAMP 
2、安装Linux、配置Linux的网络、Linux的基本操作
3、编译安装PHP
4、编译安装Mysql
5、编译安装Apache，以及PHP和Apache是如何协同工作的
6、编译安装Nginx，以及PHP和Nginx是如何协同工作的
', '2018-09-02 20:37:02.063573', '2018-08-12 23:47:49.937953');
INSERT INTO "public"."tb_imooc_course" VALUES (673, 372, 'Android-打造万能适配器', '中级', 33944, '本课程通过对传统的ListView数据绑定写法，打造万能适配器', 'Android', 'https://img1.mukewang.com/553064540001cfe806000338-240-135.jpg', 'https://www.imooc.com/learn/372', '1小时25分', 9.7, 9.9, 9.6, 9.5, '简介：本课程通过对传统的ListView的数据绑定的写法，进行一步一步的抽取与封装，首先设计出一个万能的ViewHolder，再抽取一个CommonAdapter复用多数重复的代码，最后为ViewHolder添加操作控件的能力。最终成功的将原本一堆代码浓缩至几行。', 'hyman', 'https://img.mukewang.com/54169c430001face18403264-80-80.jpg', '移动开发工程师', '本课程是基于Android开发的案例，需要大家对Android的了解要达到小成的境界：
1、掌握ListView数据绑定的一般写法
2、了解ViewHolder Pattern模式
3、对面向对象程序设计有一定的理解
', '1、如何实现一个万能的ViewHolder。
2、如何巧妙的利用泛型
3、面向对象的一些设计问题
', '2018-09-02 20:37:27.079552', '2018-08-12 23:48:22.630661');
INSERT INTO "public"."tb_imooc_course" VALUES (162, 858, '常用的网页加载进度条', '中级', 27839, '通过课程，让你学习到网页中常见的进度加载的实现方式.', 'JavaScript', 'https://img4.mukewang.com/59560e140001b88606000338-240-135.jpg', 'https://www.imooc.com/learn/858', '1小时 7分', 9.6, 9.8, 9.6, 9.5, '简介：随着HTML5的普及，各种CSS3动画及JS特效在网页中层出不穷，PC端载入数据的速度还算可以，移动端相对要慢很多，如果图片或脚本没有完全载入，用户在操作中可能会发生各种问题，因此我们需要对数据载入进行侦测，以更加人性化的方式给用户展现。', '孙吉星', 'https://img.mukewang.com/5a57068a0001fc0202440244-80-80.jpg', '交互设计师', '1、能够熟练使用HTML布局页面
2、了解JavaScript的语法及书写能力', '1、onreadystatechange事件侦测
2、jquery的animate动画的使用
3、javascript定义Image图像对象
4、CSS3的animation动画', '2018-09-02 20:36:52.983657', '2018-08-12 23:47:39.435069');
INSERT INTO "public"."tb_imooc_course" VALUES (22, 982, 'Go并发编程案例解析', '中级', 6153, '课程带你通过一个真实的线上日志监控系统学习Golang以及并发的编程思想。', 'Go', 'https://img3.mukewang.com/5ad9c04900010ee306000338-240-135.jpg', 'https://www.imooc.com/learn/982', '1小时58分', 9.6, 9.7, 9.2, 10, '简介：Golang作为21世纪的C语言，凭借其简单和高效，如今已经被越来越多的人当成主力编程语言，并发是Golang最大的优势，本门课程将带你一起去探索Golang并发的奥秘，除此之外，你还能学到Golang的面向对象，最终实现一个可在生产环境使用的高性能的日志监控系统。相信完成这门课程之后，你一定也会爱上Golang这门语言！', '麦可同学', 'https://img3.mukewang.com/5ab1d32400019b7c10801080-80-80.jpg', '全栈工程师', '1、课程难度属于中级
2、有一定的编程经验，了解Golang基本语法', '1、常见的并发编程模型 
2、并发与并行的异同
3、Golang的面向对象
4、Golang并发编程知识和设计
5、实现一个简单的日志监控程序', '2018-09-02 20:36:45.972635', '2018-08-12 23:47:27.755613');
INSERT INTO "public"."tb_imooc_course" VALUES (241, 768, 'Linux 智能DNS', '中级', 10156, 'DNS学习进阶教程，智能DNS实现与安全，讲解常见攻击原理和预防手段', 'Linux', 'https://img.mukewang.com/584a8b790001ed1506000338-240-135.jpg', 'https://www.imooc.com/learn/768', '1小时 7分', 9.4, 9.7, 9.7, 8.8, '简介：本课程属于DNS学习课程中的进阶学习阶段，在之前的两部曲《Linux智能DNS之Bind服务》和《Linux Bind负载均衡》的基础内容之上，内容重点之一介绍智能DNS的作用、实现方法。内容重点之二，介绍DNS安全内容，讲解DNS常见攻击的实现原理，和有效预防手段。', 'Jeson老师', 'https://img1.mukewang.com/5510c7a600016ea802200220-80-80.jpg', 'Python工程师', '学习本课程前需要熟悉Linux的常用命令，并需要对智能DNS的Bind服务和负载均衡有所了解，推荐学习《Linux智能DNS之Bind服务》和《Linux Bind负载均衡》两门课程。', '学习完本门课程：
1、能够了解智能DNS的作用、缺陷和实现原理
2、能够掌握如何获取IP库和子网掩码地址
3、能够掌握智能DNS的配置
4、能够掌握智能DNS安全', '2018-09-02 20:36:57.762508', '2018-08-12 23:47:45.754662');
INSERT INTO "public"."tb_imooc_course" VALUES (243, 740, '带你实现别样的Android侧滑菜单', '初级', 11026, '学会熟练使用侧滑菜单之DrawerL，介绍常用菜单开源库SlidingMenu', 'Android', 'https://img1.mukewang.com/57feff6700012aa806000338-240-135.jpg', 'https://www.imooc.com/learn/740', '1小时 1分', 8.8, 9.3, 8.9, 8.1, '简介：引导学生进入侧滑菜单的学习，介绍常用菜单开源库SlidingMenu和安卓自带菜单DrawerLayout的实现
慕课网Android讨论群② 170368200', 'ALABO', 'https://img2.mukewang.com/5458657e000125a302200220-80-80.jpg', '移动开发工程师', '最好有安卓常用侧滑菜单控件基础，比如开源库SlidingMenu', '让学生能大概了解DrawLayout的使用过程、情景，熟练使用DrawerLayout
慕课网Android讨论群② 170368200', '2018-09-02 20:37:00.206183', '2018-08-12 23:47:45.855138');
INSERT INTO "public"."tb_imooc_course" VALUES (245, 698, 'PHP进阶篇-日期时间函数', '入门', 11689, 'PHP开发中常用功能，日期时间函数库的使用，干货满满的教程', 'PHP', 'https://img3.mukewang.com/58329cbf0001357406000338-240-135.jpg', 'https://www.imooc.com/learn/698', '1小时25分', 9.8, 9.9, 9.7, 9.7, '简介：PHP中针对日期和时间的操作也是我们开发中很常用的功能，让我们一起看看PHP如何操作日期时间的吧~。', 'King', 'https://img.mukewang.com/567ca60000011fae26501720-80-80.jpg', 'PHP开发工程师', '1、对PHP基础知识已经掌握。', '1、PHP日期函数库的使用
2、PHP时间函数看的使用 
3、常用日期时间控件的使用
', '2018-09-02 20:36:59.791819', '2018-08-12 23:47:46.006695');
INSERT INTO "public"."tb_imooc_course" VALUES (240, 686, '长连接利器—网络框架解析之mina篇', '初级', 8992, 'apache mina框架如何在android中使用，并能通过mina与服务器进行通信', 'Android', 'https://img3.mukewang.com/57888fbe00012a6b06000338-240-135.jpg', 'https://www.imooc.com/learn/686', '51分', 9.1, 9.5, 8.9, 9, '简介：通过对本课程的学习， 我们要对apache mina框架有深入的了解，并能通过mina与服务器进行通信
慕课网Android讨论群② 170368200', 'qndroid', 'https://img1.mukewang.com/5333a0350001692e02200220-80-80.jpg', '移动开发工程师', '通过代码实战，让学生真正的了解如何使用mina框架搭建一个能与服务器长连接的客户端。', '能通过mina框架与服务器进行通信
慕课网Android讨论群② 170368200', '2018-09-02 20:37:00.038331', '2018-08-12 23:47:45.739946');
INSERT INTO "public"."tb_imooc_course" VALUES (247, 701, 'PHP进阶篇-GD库图像处理', '初级', 8425, '想通过PHP中GD函数库灵活操作图像吗，点击学习本教程可以实现', 'PHP', 'https://img1.mukewang.com/58329bdb00011cca06000338-240-135.jpg', 'https://www.imooc.com/learn/701', '4小时 0分', 9.8, 9.7, 9.9, 9.9, '简介：通过PHP核心函数库GD库的学习,可以掌握在PHP中操作图像的一种方式，掌握常见Web操作中对于图像的相关处理，像产生验证码、缩略图等操作。', 'King', 'https://img2.mukewang.com/567ca60000011fae26501720-80-80.jpg', 'PHP开发工程师', '1、对PHP基础知识已经掌握。
2、掌握面向对象基础，类库的封装
', '1、GD库中常用API的使用
2、通过GD库完成图像的常用操作 
3、图像相关类库的使用
', '2018-09-02 20:36:59.744694', '2018-08-12 23:47:46.23973');
INSERT INTO "public"."tb_imooc_course" VALUES (248, 752, 'Android Apk多渠道打包', '中级', 10769, '本教程主要为学员讲解常用热门第三方实现多渠道打包，多平台打包上线', 'Android', 'https://img2.mukewang.com/5822d2f40001f5c306000338-240-135.jpg', 'https://www.imooc.com/learn/752', '48分', 9.8, 9.9, 10, 9.5, '简介：通过对本课程的学习， 要让学员对多渠道打包有比较深入的了解
慕课网Android讨论群② 170368200', 'qndroid', 'https://img4.mukewang.com/5333a0350001692e02200220-80-80.jpg', '移动开发工程师', '熟练掌握安卓基础知识，有一定完整项目开发加上线经验。针对于中高级用户会好一些', '实现多渠道打包，实现一套代码，多种平台打包上线
慕课网Android讨论群② 170368200', '2018-09-02 20:36:59.840597', '2018-08-12 23:47:46.355902');
INSERT INTO "public"."tb_imooc_course" VALUES (246, 765, 'Ruby语言快速入门', '入门', 12642, 'Ruby基础入门教程，让十一年老兵带你走进ruby入门，了解入门知识', 'Ruby', 'https://img2.mukewang.com/5844cb380001bddf06000338-240-135.jpg', 'https://www.imooc.com/learn/765', '1小时 0分', 9.6, 9.7, 9.4, 9.8, '简介：Ruby的基础语法课, 学习完本教程, 可以让你了解入门知识，为Ruby开发打下基础', '申思维', 'https://img3.mukewang.com/57898c6900011f8f08000600-80-80.jpg', '全栈工程师', '1. 使用Linux , 或者 使用 Ubuntu 虚拟机. 
2. 每一段代码都要动手敲一敲, 这样知识才能学的牢靠.', ' Ruby的基本语法, 流程控制, 定义方法, Class, Module, 特别有特色的语法缩写, 函数式编程的稍微入门.    ', '2018-09-02 20:36:59.966463', '2018-08-12 23:47:46.070245');
INSERT INTO "public"."tb_imooc_course" VALUES (120, 890, 'Hadoop进阶', '中级', 14695, 'MapReduce原理，并实现简单的推荐', 'Hadoop', 'https://img4.mukewang.com/59ba4b200001468906000338-240-135.jpg', 'https://www.imooc.com/learn/890', '3小时 3分', 9.9, 10, 9.8, 10, '简介：本课程首页介绍了hadoop架构体系，包括NameNode和DataNode的作用；然后介绍了MapReduce作业的中间过程和原理，包括缓存的使用，相关参数的性能调优；之后介绍了如何运用MapReduce实现矩阵相乘，并且实现简单的推荐算法', 'mooc小牧', 'https://img2.mukewang.com/59ba5a9000019b1806030504-80-80.jpg', 'JAVA开发工程师', '1、在学习本课程之前，需要学习hadoop课程基础篇，即掌握MapReduce作业的基本步骤。
2、需要掌握线性代数、向量等的基本数学知识', '1、hadoop新旧版本的基本架构
2、mapreduce作业的内部原理
3、mapreduce作业重要参数的调优
4、利用hadoop缓存实现矩阵相乘
5、简单的推荐算法', '2018-09-02 20:36:47.55995', '2018-08-12 23:47:35.476353');
INSERT INTO "public"."tb_imooc_course" VALUES (269, 761, 'iOS基础之搞定多线程', '初级', 7326, 'ios基础教程介绍多线程的四种实现技术方案，搞定多线程，让程序高效执行', 'iOS', 'https://img2.mukewang.com/5836857a00018b5a06000338-240-135.jpg', 'https://www.imooc.com/learn/761', '1小时59分', 9.8, 9.8, 9.8, 9.8, '简介：本课程是iOS基础之搞定多线程，主要针对多线程的基础知识。目前开发过程中多线程是必不可少的，占据着重要的地位。如果想提高程序的执行效率，就必须掌握多线程。本门课程将重点介绍多线程的四种实现技术方案，分别是pThread，NSThread，GCD和NSOperation。', '不死鸟fj', 'https://img4.mukewang.com/56fc68b500014b6911111111-80-80.jpg', '移动开发工程师', '学习本课程之前需要掌握如下知识： 
1、熟练掌握OC基础语法 
2、熟练掌握常用UI控件', '1、什么是进程？什么是线程？
2、学习多线程能干什么？
3、如何实现多线程技术方案？
4、多线程相关属性的使用。', '2018-09-02 20:37:03.570729', '2018-08-12 23:47:48.608042');
INSERT INTO "public"."tb_imooc_course" VALUES (255, 744, '在React中使用Redux数据流', '高级', 25660, '在react中使用redux数据流，通过一个样例工程的开发了解具体原理', 'React.JS', 'https://img3.mukewang.com/580486e6000133fd06000338-240-135.jpg', 'https://www.imooc.com/learn/744', '1小时30分', 8.4, 9.2, 7.7, 8.2, '简介：react是现今非常流行的前端框架，大家在学习的过程中经常会听到react是纯View层框架，需要搭配数据流才能进行完整的前端开发。本门课程带领大家深入了解什么是数据流，并通过一个样例工程的开发，带领大家在实际项目中使用redux数据流开发react工程。', 'Aether_wang', 'https://img.mukewang.com/545868f30001886f02200220-80-80.jpg', NULL, '1、具有基本的前端知识，了解HTML，CSS，JS。
2、react已入门，了解其基本概念。', '1、数据流是什么
2、为什么要使用数据流
3、如何选择合适的数据流框架
4、react和redux的关系
5、如何使用react-redux进行开发', '2018-09-02 20:36:57.943199', '2018-08-12 23:47:46.871261');
INSERT INTO "public"."tb_imooc_course" VALUES (311, 708, 'KVM虚拟化技术', '中级', 14550, '云服务的底层技术－KVM虚拟化介绍', '云计算', 'https://img2.mukewang.com/57bab0140001bdb206000338-240-135.jpg', 'https://www.imooc.com/learn/708', '1小时 0分', 9.2, 9.3, 9.4, 8.9, '简介：云计算是一种全新的企业IT交付方式，是社会进一步精细化分工的结果，是IT运维技术向自动化、服务化和规模化演进的方向。本课程将介绍云服务底层架构中的KVM虚拟化技术。', '美团云', 'https://img.mukewang.com/57e9db8f0001b76d08000800-80-80.jpg', NULL, '想学习本课程，你需要大致了解云服务是什么。本课程适合对云服务底层架构感兴趣的工程师。', 'KVM虚拟化技术的各个板块。', '2018-09-02 20:37:01.748778', '2018-08-12 23:47:51.584326');
INSERT INTO "public"."tb_imooc_course" VALUES (252, 754, 'PHP+AJAX实现表格实时编辑', '初级', 18108, 'PHP和AJAX实现表格动态实时编辑案例，轻松实现最好的用户体验', 'PHP', 'https://img3.mukewang.com/582917110001705506000338-240-135.jpg', 'https://www.imooc.com/learn/754', '1小时36分', 8.3, 8.9, 8.1, 7.9, '简介：php是目前最流行的网络编程语言，ajax是比较酷的一种交互技术，当两者结合在一起，就能轻松实现最好的用户体验。', 'SShaddow', 'https://img3.mukewang.com/581ab8a40001795b02400240-80-80.jpg', NULL, '本课程是ajax实例课程
1. 需要熟悉php基本语法
2. 需要熟悉使用jquery
3. 需要了解ajax的规则
4. 需要熟悉简单的mysql操作', '1、通过实例学习php和javascript之间如何进行异步交互
2、理解ajax运行机制和基本原理
3、清晰的布局javascript代码', '2018-09-02 20:36:57.680702', '2018-08-12 23:47:46.588893');
INSERT INTO "public"."tb_imooc_course" VALUES (253, 774, 'iOS架构初探', '初级', 18132, 'iOS视频教程教你轻松搞定各种架构设计模式的学习，如MVC、MVVM等', 'iOS', 'https://img1.mukewang.com/5857592a000107f806000338-240-135.jpg', 'https://www.imooc.com/learn/774', '1小时30分', 9.5, 9.7, 9.3, 9.5, '简介：本门课程主要给大家讲解设计模式经常所使用到的一些架构，如MVC、MVVM等。它可以小到类和类之间的一个交互，也可以大到不同的模块之间的交互，通过这些架构的学习，能够帮助大家今后在开发中更好的管理和维护代码。', 'TerryG', 'https://img4.mukewang.com/57a991b80001a15406500634-80-80.jpg', '全栈工程师', '学习本课程之前需要掌握如下知识：
1、熟练掌握控制器和常用控件的使用。
2、了解多线程、网络操作。
3、熟悉类与类之间的通信。', '1、不同设计模式的使用。
2、各种设计模式使用时需要注意什么？', '2018-09-02 20:36:57.887592', '2018-08-12 23:47:46.611233');
INSERT INTO "public"."tb_imooc_course" VALUES (105, 899, '从JS到TS开发数独游戏（JS版）', '中级', 11936, '使用JS语言为主的前端开发技术实现数独游戏', 'JavaScript', 'https://img2.mukewang.com/59e5d8fa0001265206000338-240-135.jpg', 'https://www.imooc.com/learn/899', '4小时 2分', 9.7, 10, 9.5, 9.6, '简介：通过前端技术实现一个简单的数独游戏，介绍相对简单的数独生成算法(递归)和检查算法。主要使用的前端技术包括 JavaScript、TypeScript 和 LESS 等。同时会讲到前端构建（打包）技术，使用的工具有 Gulp、Webpack、 Babel 和 TSC(TypeScript Compiler) 等。课程的重点在于关键算法和从 JavaScript 技术实现向 TypeScript 技术实现的转换。', '边城__', 'https://img2.mukewang.com/59e6f3f20001178202800280-80-80.jpg', '全栈工程师', '1、需要了解基本的 HTML、LESS/CSS 相关知识
2、需要熟悉 JavaScript 语言并了解 ES6/ES2015 语法', '1、JavaScript向TypeScript 转换的要点
2、JavaScript ES6/ES2015 部分语法
4、基于Gulp+(TSC)+Babel+Webpack的前端构建技术
5、数据游戏生成和验证算法
6、Fisher-Yates洗牌算法
7、使用手边的工具如Excel进行简单的设计
8、部分前端调试技巧', '2018-09-02 20:36:48.240958', '2018-08-12 23:47:34.285914');
INSERT INTO "public"."tb_imooc_course" VALUES (870, 51, '使用AngularJS开发下一代Web应用', '中级', 84899, '“化繁为简”更简洁的开发体验，并针对企业实战进行技术答疑', 'Angular', 'https://img3.mukewang.com/53143b0a0001e15106000338-240-135.jpg', 'https://www.imooc.com/learn/51', '54分', 9.6, 9.8, 9.5, 9.6, '简介：本课程内容包括AngularJS简介、基本概念与用法实例、核心原理解析，并针对企业实战进行技术答疑。', '大漠穷秋', 'https://img4.mukewang.com/595a210800017ff712801920-80-80.jpg', '学生', '在学习本课程之前，您最好先了解HTML、CSS、JavaScript、jQuery等前端知识。', '通过本课程，您可以学习到AngularJS简洁的开发理念与强大的开发框架。', '2018-09-02 20:37:44.575381', '2018-08-12 23:48:40.601193');
INSERT INTO "public"."tb_imooc_course" VALUES (223, 822, 'php构建即时通讯系统', '中级', 22145, 'PHP不仅可以构建Web项目，还可以构建即时通讯应用:如实时聊天、在线游戏', 'PHP', 'https://img1.mukewang.com/58ec5443000171ca06000338-240-135.jpg', 'https://www.imooc.com/learn/822', '1小时 0分', 9.4, 9.4, 9.5, 9.3, '简介：用PHP构建一个Socket服务，以长链接为基础，开发在线游戏、实时聊天、监控、打点等即时通讯类应用。', 'Lane', 'https://img.mukewang.com/57f9a8bf0001a9b902740272-80-80.jpg', 'PHP开发工程师', '1.有良好的PHP基础。
2.有一定的网络知识。
3.熟悉Linux。', '1、了解即时通讯应用都有哪些，是基于怎样的技术体系实现的
2、学会使用Github和MeepoPS
3、施展开发在线聊天、智能客服等案例 ', '2018-09-02 20:36:55.666052', '2018-08-12 23:47:44.352007');
INSERT INTO "public"."tb_imooc_course" VALUES (258, 762, 'jQuery基础(五)一Ajax应用与常用插件', '中级', 56587, '如何用jquery实现ajax应用，加入学习，有效提高前端开发速度', 'jQuery', 'https://img1.mukewang.com/5858a0370001890306000338-240-135.jpg', 'https://www.imooc.com/learn/762', '3小时20分', 9.5, 9.7, 9.3, 9.5, '简介：本课程介绍如何用jquery实现ajax应用，深入理解jQuery框架提供的各类API与函数的工作原理和自定义jQuery插件的各项技能。', '陶老实', 'https://img3.mukewang.com/53a69d0b0001499907400740-80-80.jpg', '其它', '1、有HTML/CSS基础 
2、有JavaScript基础', '1、jQuery中的ajax应用
2、jQuery中的插件
3、jQuery中的工具类函数', '2018-09-02 20:36:58.046608', '2018-08-12 23:47:47.017957');
INSERT INTO "public"."tb_imooc_course" VALUES (259, 782, 'Android-实用的App换肤功能', '初级', 11611, '本教程从零开始带领大家完成替换手机默认皮肤的功能', 'Android', 'https://img.mukewang.com/5863529b0001b33106000338-240-135.jpg', 'https://www.imooc.com/learn/782', '2小时18分', 10, 10, 10, 10, '简介：默认的皮肤风格看腻了吗？想做一套属于自己的风格吗？那你来对地方了~本课程将从零开始带领大家完成替换手机默认皮肤的功能！', 'hyman', 'https://img.mukewang.com/54169c430001face18403264-80-80.jpg', '移动开发工程师', '本课程为案例课程，小伙伴们请自行预报Android基础的姿势水品哦', '1:插件包替换资源
2:RecouseManager的使用
3:反射的综合运用
4:代码优化', '2018-09-02 20:36:58.104379', '2018-08-12 23:47:47.039044');
INSERT INTO "public"."tb_imooc_course" VALUES (261, 749, 'Android基础教程-SQLite高级操作', '中级', 11435, '本视频教程讲解Sqlite数据库查询和事务操作以及将数据分页加载', 'Android', 'https://img2.mukewang.com/5811cf4700010ea806000338-240-135.jpg', 'https://www.imooc.com/learn/749', '1小时39分', 9.7, 10, 9.6, 9.6, '简介：本课程主要给大家讲解Sqlite数据库中的查询操作，与数据库相关的数据库的适配器，事务的操作以及数据的分页加载', 'Summer321', 'https://img1.mukewang.com/57ec719d00012e3706400640-80-80.jpg', NULL, '1.有一定的sql语句基础
2.学习过ListView控件
3.认识事务及操作
4.逻辑思维', '1.熟练掌握sql语句
2.熟练掌握查询操作
3.熟练掌握SimpleCursorAdpter适配器
4.熟练掌握事务的操作', '2018-09-02 20:36:58.312948', '2018-08-12 23:47:47.330684');
INSERT INTO "public"."tb_imooc_course" VALUES (136, 916, 'AWS云服务助力企业转型升级', '中级', 1322, '带你看企业级客户是如何利用AWS 云服务，实现传统企业转型的。', '云计算', 'https://img1.mukewang.com/5a097b74000104e906000338-240-135.jpg', 'https://www.imooc.com/learn/916', '3小时30分', 9.5, 10, 10, 8.5, '简介：本次企业级服务专场带你看企业级客户是如何利用AWS 云服务，实现传统企业转型的。AWS 技术峰会2018 中国站将在上海、北京、深圳三地盛大召开，报名链接：https://awssummit.cn?tc=1s016B2uQi', '亚马逊AWS', 'https://img4.mukewang.com/59c2078900017f7603000300-80-80.jpg', '全栈工程师', 'AWS技术峰会是亚马逊 AWS 每年在全球众多城市巡回举办的大型云服务技术盛会。
本次峰会将设立自动化运维技术、大数据技术、IOT、企业级服务、人工智能等多个技术主题分会场，邀请到涉及以上各领域的行业大咖。
该课程对于AWS基础服务需要有一定的了解', '1.Microservice架构常见问题及解决方案
2.serverless系统实例和迁移到serverless架构的要点
3.musical.ly在AWS上的架构设计
4.演示基于AWS的公有云paas平台openshift online
5.分享AWS云上的成本优化以及业务架构调整
6.基于AWS构建SaaS服务的最佳实践', '2018-09-02 20:36:49.058021', '2018-08-12 23:47:37.149233');
INSERT INTO "public"."tb_imooc_course" VALUES (203, 798, '重定向和伪静态在网站中的应用', '中级', 12578, '重定向和伪静态,网站安全SEO优化必学，演示各种重定向设置后效果', 'PHP, Linux', 'https://img.mukewang.com/58807245000110e206000338-240-135.jpg', 'https://www.imooc.com/learn/798', '2小时33分', 9.8, 9.9, 9.6, 9.8, '简介：伪静态是SEO重要的方法，通过重定向来实现，并且可以通过重定向来隐藏网站的技术，过滤异常访问。本课分为两部分，前半部分详细介绍Apache重定向的基础知识，后半部分通过多个实际案例再次加深对重定向的理解，并且会演示各种重定向设置后的实际效果。', '夏曹俊', 'https://img1.mukewang.com/588071d8000155a008340708-80-80.jpg', '全栈工程师', '1、掌握apache或者其他web服务器的基础配置。
2、了解http协议。
', '1、什么是伪静态和重定向
2、重定向实现的原理是怎样的
2、如何安装和设置重定向
3、Apache的重定向设置的基本语法 
4、在实践中实现重定向设置
', '2018-09-02 20:36:57.323191', '2018-08-12 23:47:42.635432');
INSERT INTO "public"."tb_imooc_course" VALUES (200, 796, '使用vue2.0实现购物车和地址选配功能', '中级', 80364, '本视频教程结合案例完整贯穿各个知识点，轻松玩转vue2.0框架', 'JavaScript, Vue.js', 'https://img1.mukewang.com/587dd3d50001112f06000338-240-135.jpg', 'https://www.imooc.com/learn/796', '2小时48分', 9.7, 9.9, 9.6, 9.6, '简介：vue2.0是由华人尤雨溪开发的一套MVVM框架，因为它的易用、灵活和超高性能深受开发者喜爱，本文结合案例完整贯穿各个知识点，让大家轻松掌握vue2.0', '河畔一角', 'https://img3.mukewang.com/587dd3db0001488708521136-80-80.jpg', 'Web前端工程师', '1、提前了解和熟悉javascript
2、了解一下ES6相关的知识
', '1、Vue2.0各种指令的学习
2、Vue2.0生命周期的介绍
3、Vue2.0事件绑定、过滤器的使用、组件的介绍
4、Vue-resource插件的讲解
5、ES6语法的介绍
6、结合购物车的案例，更加接近实战
7、在实际项目开发的过程中，开发技巧的讲解', '2018-09-02 20:36:59.259578', '2018-08-12 23:47:42.275641');
INSERT INTO "public"."tb_imooc_course" VALUES (201, 800, 'Android依赖管理与私服搭建', '中级', 7425, '本视频教程主要讲Android依赖管理与私服搭建，实现多平台私服搭建', 'Android', 'https://img.mukewang.com/589a813c0001527a06000338-240-135.jpg', 'https://www.imooc.com/learn/800', '59分', 9.8, 9.6, 9.8, 10, '简介：本课程讲的是Android依赖管理与私服搭建，首先会对Android依赖管理做一个简单介绍，让大家有个初步认识，然后为大家讲解Android依赖的多种引入方式，接着只如何在不同的平台下搭建自己的私服以及如何创建个人代码仓库，最后对课程内容进行总结
傅老师的实战进阶课程《Android通用框架设计与完整电商APP开发》http://coding.imooc.com/class/116.html', '傅猿猿', 'https://img4.mukewang.com/57f89d9a00015d6604190419-80-80.jpg', '全栈工程师', '学习本课程需要有AndroidStudio基础和Linux基础
傅老师的实战进阶课程《Android通用框架设计与完整电商APP开发》http://coding.imooc.com/class/116.html', '1.什么是Android依赖管理
2.Android引入依赖的多种方式
3.多平台私服搭建
4.创建和依赖自己的代码仓库
傅老师的实战进阶课程《Android通用框架设计与完整电商APP开发》http://coding.imooc.com/class/116.html', '2018-09-02 20:36:59.241818', '2018-08-12 23:47:42.542548');
INSERT INTO "public"."tb_imooc_course" VALUES (267, 755, 'CSS深入理解之border', '中级', 48759, '深入讲解border使用方法及应用，以及如何借助border完成布局', 'HTML/CSS, CSS3', 'https://img2.mukewang.com/5829792f00012c1f06000338-240-135.jpg', 'https://www.imooc.com/learn/755', '41分', 9.7, 9.7, 9.8, 9.6, '简介：本课程将深入讲解CSS中的border属性，深入介绍border-color之间的关系，以及border与background定位、border与透明边框，并教你如果使用border进行图形构建，以及如何借助border使用有限标签完成我们的布局。', '张鑫旭', 'https://img4.mukewang.com/549beab90001be9037445616-80-80.jpg', '页面重构设计', '想要学习好本课程，你最好学习过html+css基础课程，并且使用CSS开发过小项目，希望能深入学习CSS中各类属性用法。正在学习CSS基础知识的同学并不适合学习这门课程。工作过一段时间想要在CSS领域有所提高的同学最适合学习这类课程啦！', '了解border-width属性；
深入了解各种border-style类型；
border在某些背景定位需求下的妙用；
border与三角等图形构建；
border与透明边框；
如何借助border使用有限标签完成我们的布局。', '2018-09-02 20:37:03.488596', '2018-08-12 23:47:48.572687');
INSERT INTO "public"."tb_imooc_course" VALUES (270, 734, 'Android数据库解析应用', '初级', 9530, 'Android数据库知识理论加实战。', 'Android', 'https://img3.mukewang.com/57fc918700016c0c06000338-240-135.jpg', 'https://www.imooc.com/learn/734', '2小时21分', 9.6, 9.7, 9.3, 9.8, '简介：本课程分5个课时来讲解sqlite数据库从入门到精通的相关知识。第一课时课程介绍，第二、三课时sqlite数据库常用方法讲解，第四课时讲解sqlite高级功能，第五课时讲解sqlite数据库优化 
慕课网Android讨论群② 170368200', 'hexter', 'https://img.mukewang.com/57a058a800012dab02340243-80-80.jpg', NULL, '最好具备android基础知识；有一定数据库sql知识。', 'sqlite基本使用，高级功能，性能优化方法。
慕课网Android讨论群② 170368200', '2018-09-02 20:37:03.221199', '2018-08-12 23:47:48.665622');
INSERT INTO "public"."tb_imooc_course" VALUES (276, 702, '轻松学会Laravel-高级篇', '高级', 23722, 'Laravel框架高级教程，介绍Laravel提供的工具和功能，快来体验', 'PHP', 'https://img1.mukewang.com/581bec530001202106000338-240-135.jpg', 'https://www.imooc.com/learn/702', '1小时42分', 9.8, 9.9, 9.7, 9.6, '简介：Laravel框架是世界上最流行的PHP开发框架，没有之一。现在Laravel框架已成为大型互联网公司及PHP攻城狮们的首选框架。高级篇中我将向大家介绍Laravel提供的工具和功能，赶快来体验Laravel带给我们的高效开发吧。', '天秤vs永恒...', 'https://img.mukewang.com/57a2e95f0001425607500730-80-80.jpg', '全栈工程师', '1、掌握《基础篇》和《表单篇》的知识
2、掌握基本的HTML相关知识
3、熟悉PHP语言，了解面向对象、命名空间、Traits等特性
4、熟悉关系型数据库Mysql，了解数据库的表、记录、列等概念。', '1、安装和使用Composer
2、使用Composer安装和管理Laravel的依赖包
3、掌握Laravel中的用户认证（Auth）、数据迁移和数据填充的使用
4、掌握文件上传、邮件、缓存、错误&日志和队列的使用
', '2018-09-02 20:37:03.071543', '2018-08-12 23:47:49.195194');
INSERT INTO "public"."tb_imooc_course" VALUES (275, 753, 'python-web.py开发入门', '初级', 44629, 'web.py开发入门入门教程，讲解一个你最快能学会的web开发的框架', 'Python', 'https://img2.mukewang.com/58257a3b000164cd06000338-240-135.jpg', 'https://www.imooc.com/learn/753', '59分', 9.2, 9.3, 9.3, 9.1, '简介：python的简单易学已经出了名了，在python下的web框架中web.py的简小精悍也是出了名了；那么想要快速掌握web开发的最佳选择自然就是python+web.py了。', '上帝De助手...', 'https://img1.mukewang.com/57429c5600014e8901000100-80-80.jpg', '全栈工程师', '1.了解html，css，javascript基础
2.了解python基础知识', '1、python及web.py的环境搭建 
2、web.py的URL映射
3、web.py的请求处理
4、web.py的响应处理
5、web.py的数据库操作
6、以web.py开发的博客站点的解析
', '2018-09-02 20:37:00.231461', '2018-08-12 23:47:49.157501');
INSERT INTO "public"."tb_imooc_course" VALUES (271, 751, 'PHP项目中的Gitflow多人协作开发工作流', '中级', 9013, '一个围绕项目发布的严格git分支模型，让我们一睹Gitflow的风采', 'PHP', 'https://img.mukewang.com/581ad6880001154b06000338-240-135.jpg', 'https://www.imooc.com/learn/751', '35分', 9.8, 9.8, 9.8, 9.9, '简介：在PHP项目开发过程中，版本管理已经是不可或缺的手段和工具，而目前最流行的版本管理工具中，Git无疑是最好的选择。那么如何合理、高效的使用这个工具呢？如果你已经了解了Git的基本用法，就让我们来一睹Gitflow的风采吧。', 'NON-fish', 'https://img3.mukewang.com/581acf530001008400960105-80-80.jpg', NULL, '本课程是gitflow工作流的使用方法，需要你具有以下基础：
1、掌握 git 的基本操作
2、熟悉 git 的版本控制流程
3、熟悉 SourceTree 软件的使用方法', '1、gitflow的基本概念
2、gitflow的分支模型
3、gitflow各种类型分支的使用和交互', '2018-09-02 20:37:03.158235', '2018-08-12 23:47:48.689073');
INSERT INTO "public"."tb_imooc_course" VALUES (278, 737, 'PHP进阶篇-函数', '初级', 18287, 'PHP入门必看教程，带你掌握PHP如何自定义函数和分析常见问题', 'PHP', 'https://img4.mukewang.com/57fdecf80001fb0406000338-240-135.jpg', 'https://www.imooc.com/learn/737', '2小时30分', 9.9, 9.9, 9.8, 9.9, '简介：在PHP中提供了强大的系统函数来帮我们完成功能，但有时候只用系统函数往往还是不够的，还需要根据业务来封装自定义函数，本课程讲解了如何自定义函数，以及自定义函数中常见问题，是PHP入门必看课程。', 'King', 'https://img.mukewang.com/567ca60000011fae26501720-80-80.jpg', 'PHP开发工程师', '对php的基础知识掌握，如变量、常量、数组、流程控制、系统函数等。', '1、如何自定义函数
2、函数的执行原理
3、自定义函数中参数的使用
4、特殊函数的使用(可变函数、递归函数、毁掉函数)
5、封装常用函数
', '2018-09-02 20:37:02.956584', '2018-08-12 23:47:49.272272');
INSERT INTO "public"."tb_imooc_course" VALUES (274, 726, 'PHP进阶篇-字符串操作', '初级', 12536, 'PHP进阶教程，本课程主要讲解php中字符串及常用字符串函数使用', 'PHP', 'https://img2.mukewang.com/57fefb1c000165c306000338-240-135.jpg', 'https://www.imooc.com/learn/726', '2小时21分', 9.7, 9.7, 9.9, 9.6, '简介：PHP中处理字符串是PHP很强大的功能之一，本课程主要分两部分讲解，一个是PHP中的字符串的使用，一个是字符串函数库的使用', 'King', 'https://img1.mukewang.com/567ca60000011fae26501720-80-80.jpg', 'PHP开发工程师', '对php的基础知识掌握，如变量、常量、流程控制等。', '1、字符串的基本使用
2、常用字符串函数库的使用
', '2018-09-02 20:37:03.529119', '2018-08-12 23:47:49.144078');
INSERT INTO "public"."tb_imooc_course" VALUES (238, 843, 'Python数据分析-基础技术篇', '初级', 54920, '使用Python进行数据分析的基础模块简介', 'Python, 大数据', 'https://img2.mukewang.com/5922cc5800011d9e06000338-240-135.jpg', 'https://www.imooc.com/learn/843', '2小时42分', 8.5, 9.3, 8.1, 8, '简介：课程会有系统地介绍使用Python进行数据分析的基本模块。介绍的模块主要为六个：numpy、scipy、matplotlib、pandas、scikit-learn、keras。由于篇幅限制，有些模块可能介绍的不是很全面，但讲师会把该模块的学习方法授予大家', '途索', 'https://img3.mukewang.com/5835154f0001afde06400640-80-80.jpg', NULL, '需要对python语法和基本数据结构有所了解，对数据分析感兴趣！', '1、数据分析的一般步骤

2、numpy简介与基本使用

3、matplotlib简介与基本使用

4、scipy简介与基本使用

5、pandas简介与基本使用

6、机器学习的一般概念

7、scikit-learn的简介、使用示例与学习方法

8、keras的简介与一般用法', '2018-09-02 20:36:56.976206', '2018-08-12 23:47:45.439253');
INSERT INTO "public"."tb_imooc_course" VALUES (277, 756, 'Android饼图账单案例开发', '初级', 7004, '本教程手把手带你打造酷炫对账单效果，提升Android开发专业技能', 'Android', 'https://img3.mukewang.com/582d5f66000106bb06000338-240-135.jpg', 'https://www.imooc.com/learn/756', '1小时21分', 9.8, 10, 10, 9.4, '简介：本课程讲手把手带大家实现一个酷炫的可以显示每月账单的案例，让大家学会相关技术，从而轻松搞定类似功能，提升专业技能，提升行业竞争力。', '林鹏imooc', 'https://img4.mukewang.com/54584f6100019caf02200220-80-80.jpg', '移动开发工程师', '本课程适合已有Android基础，需要进阶学习的同学。而且老师基本是边敲代码边讲解，适合同学们边看视频边跟着老师一起敲代码实现，这样可以更好的提高编程能力。', '1.ViewPager+Fragment打造左右滑动UI架构
2.Json数据解析，封装，与数据传递
3.MPAndroidChart打造酷炫饼状图的功能实现与问题解决', '2018-09-02 20:37:03.512747', '2018-08-12 23:47:49.242451');
INSERT INTO "public"."tb_imooc_course" VALUES (6, 36, 'JavaScript入门篇', '入门', 589093, 'JavaScript做为一名Web工程师的必备技术，本教程让您快速入门', 'JavaScript', 'https://img.mukewang.com/53e1d0470001ad1e06000338-240-135.jpg', 'https://www.imooc.com/learn/36', '1小时35分', 9.6, 9.8, 9.6, 9.4, '简介：本教程让您快速认识JavaScript，熟悉JavaScript基本语法、窗口交互方法和通过DOM进行网页元素的操作，学会如何编写JS代码，如何运用JavaScript去操作HTML元素和CSS样式，本JavaScript教程分为四个章节，能够让您快速入门，为JavaScript深入学习打下基础。', NULL, NULL, NULL, '该课程是针对新手的一个简单基础的课程，让您快速了解JS，通过一些简单的代码编写体会JS。如果您已经对JS有所了解，可以跳过本课程，学习JS进阶课程，进一步学习JS相应的基础知识。学习本课程，希望您至少具备HTML/CSS基础知识，认识常用的标签。', '1. 理解JavaScript基础语法；
2. 掌握常用语句的使用方法；
3. 学会如何获取DOM元素及进行简单操作。', '2018-09-02 20:36:40.693389', '2018-08-12 23:47:26.71931');
INSERT INTO "public"."tb_imooc_course" VALUES (282, 608, 'JS/jQuery宽高的理解和应用', '初级', 31869, 'js/jquery各种宽高的理解，结合实例对宽高做一些简单的应用', 'JavaScript, jQuery', 'https://img1.mukewang.com/56d0180f00019d3506000338-240-135.jpg', 'https://www.imooc.com/learn/608', '2小时30分', 9.7, 10, 9.7, 9.4, '简介：js和jquery中各式各样的宽高有很多。平时用的也蛮多，但是有时候我们会把某些宽高的用法和使用场景混淆，本套课程帮大家理清js和jquery的各种宽高，并和大家一起对宽高做一些简单的应用。', 'haorooms', 'https://img1.mukewang.com/56d01e7600019b7e06740724-80-80.jpg', 'Web前端工程师', '本课程是前端初中级课程
适用于对js/jquery各种宽高理解不是很清晰的同学。有一定前端基础的同学学习此课程更佳！', '1、js各种宽高理解			
2、js宽高的一些应用			
3、jquery各种宽高的理解			
4、jquery各种宽高的应用			
', '2018-09-02 20:37:02.508354', '2018-08-12 23:47:49.739537');
INSERT INTO "public"."tb_imooc_course" VALUES (225, 825, 'JS插件开发之-Tab选项卡', '中级', 16117, 'Tab选项卡，通过教程学习，我们一一剖析它的实现原理', 'jQuery', 'https://img.mukewang.com/58f0b42b0001233106000338-240-135.jpg', 'https://www.imooc.com/learn/825', '2小时 0分', 9.8, 9.9, 9.8, 9.7, '简介：Tab选项卡，作为网页必不可少的展示功能，它的存在不仅可以在页面中合理的展示内容，也符合当下实现无刷新异步展示数据的潮流，它和焦点图轮回相比异曲同工，但本质不同，希望通过这节既简单有普遍的例子，我们一一剖析它的实现原理。', '一只帅蚂蚁...', 'https://img1.mukewang.com/59c87e68000132c509420960-80-80.jpg', 'Web前端工程师', '1、对html，css基础知识已经掌握。
2、对this，prototype，new等关键词的理解。', '1、DOM操作
2、JS OOP思想 
3、组件化的开发过程 
4、如何去设计一个组件 
5、组件的参数分析，配置，扩展等 
6、优化，扩展，渐近增强的开发过程 ', '2018-09-02 20:36:55.570861', '2018-08-12 23:47:44.447213');
INSERT INTO "public"."tb_imooc_course" VALUES (286, 678, 'Servlet+Ajax实现搜索框智能提示', '初级', 33195, 'Java实现搜索框智能提示，熟练掌握使用Servlet和Ajax', 'Java', 'https://img1.mukewang.com/5775e9cb00013c9606000338-240-135.jpg', 'https://www.imooc.com/learn/678', '2小时 0分', 9.5, 9.6, 9.6, 9.3, '简介：搜索框相信大家都不陌生，几乎每天都会在各类网站进行着搜索。有没有注意到，很多的搜索功能，当输入内容时，下面会出现提示。这类提示就叫做搜索框的智能提示，本门课程就为大家介绍如何使用Servlet和Ajax来实现。主要介绍实现原理和代码的前后台实现过程。', '资源库', 'https://img4.mukewang.com/559ccdd7000193f201210075-80-80.jpg', 'JAVA开发工程师', '学习本门课程前，需要对Servlet和Ajax的基础知识有所了解。', '1、了解搜索框智能提示的实现原理
2、能够独立开发搜索框智能提示', '2018-09-02 20:37:00.424239', '2018-08-12 23:47:49.866325');
INSERT INTO "public"."tb_imooc_course" VALUES (283, 719, 'Android Data Binding实战-入门篇', '初级', 13866, 'Android官方数据绑定框架DataBinding入门视频教程', 'Android', 'https://img1.mukewang.com/57d66de200014a7306000338-240-135.jpg', 'https://www.imooc.com/learn/719', '1小时 7分', 9.4, 9.7, 9.6, 9, '简介：本课程将让大家学会如何使用Android官方数据绑定框架DataBinding，为降低大家的学习难度，将课程分成了入门篇和高级篇两门课程，本次给大家带来的是入门篇，大家可以通过入门篇掌握DataBinding的原理，基本用法，以及高级绑定。', 'MarkZhai', 'https://img2.mukewang.com/images/unknow-80.png', '移动开发工程师', '课程适合有Android基础的用户，至少学过Activity/Fragment/Android UI，RecycleView等用户界面相关的技术。', '通过这门课程，大家可以学习到：
1.什么是DataBinding
2.DataBinding基础用法
3.DataBinding原理
4.表达式
5.null检查
6.include&viewstub
7.observable
8.高级绑定', '2018-09-02 20:37:01.13653', '2018-08-12 23:47:49.771716');
INSERT INTO "public"."tb_imooc_course" VALUES (284, 727, 'Python在数据科学中的应用', '中级', 46459, '一门针对数据科学的Python应用教程，打下扎实python功底', 'Python, 大数据', 'https://img3.mukewang.com/57e8afc00001f19d06000338-240-135.jpg', 'https://www.imooc.com/learn/727', '1小时28分', 9.8, 9.6, 9.8, 9.8, '简介：python近年来正在受到越来越广泛的使用，他作为一个通用的脚本语言正在被引用到了各行各业，本课程讲述python在数据科学中的应用，从最基本的语法开始，由浅入深，逐层深入。学员学完本课程后，将会拥有扎实的python功底，能在工作中很快的上手解决实际问题。', '扬帆远航_...', 'https://img1.mukewang.com/545850bb0001979202200220-80-80.jpg', '数据科学家', '热爱编程，对python感兴趣的同学。', '1.python的基本语法
2.数据科学中常用到的python基本数据结构
3.python中常用的数据科学工具包
', '2018-09-02 20:37:01.939672', '2018-08-12 23:47:49.819506');
INSERT INTO "public"."tb_imooc_course" VALUES (279, 735, 'JMeter性能测试入门篇', '初级', 29682, '快速入门jmeter性能测试！', '性能测试', 'https://img2.mukewang.com/57fca93400015baf06000338-240-135.jpg', 'https://www.imooc.com/learn/735', '1小时55分', 9.5, 9.9, 9.8, 8.9, '简介：本课程通过通俗易懂的讲法，非常容易理解的方式去讲解如何使用jmeter进行web应用的性能测试。', '大周16', 'https://img2.mukewang.com/5333a0350001692e02200220-80-80.jpg', '软件测试工程师', '本课程无需任何的基础，属于0基础入门性能测试课程，只需要反复练习，对课程中的技术点能够充分理解就能入门性能测试。', '通过本课程的学习，你能够学习到如何使用jmeter进行性能测试，如何使用badboy以及代理的方式进行脚本的录制。
如何对脚本进行优化以及如何对脚本进行场景设置。
慕课网测试交流群  559506833', '2018-09-02 20:37:00.474409', '2018-08-12 23:47:49.451532');
INSERT INTO "public"."tb_imooc_course" VALUES (194, 818, 'iOS-特效相机(上集)', '高级', 5186, '基于iOS打开数字图像处理的“大门”', 'iOS', 'https://img1.mukewang.com/58da296d0001c7b106000338-240-135.jpg', 'https://www.imooc.com/learn/818', '38分', 9.8, 9.8, 9.8, 9.8, '简介：本课程为特效相机课程第一部分，重点为大家介绍数字图像处理基础知识、使用场景以及常用框架，给大家一个数字图像处理感性的认识，培养对数字图像处理的兴趣。', 'Jones__', 'https://img2.mukewang.com/5aa23ce700016f2a02560172-80-80.jpg', '算法工程师', '本课程适合对数字图像处理、图像特效感兴趣的IOS开发人员。', '（1）了解数字图像处理是什么？
（2）了解数字图像处理能做什么？
（3）了解数字图像处理常用框架
（4）培养对数字图像处理的兴趣', '2018-09-02 20:36:55.479386', '2018-08-12 23:47:42.008233');
INSERT INTO "public"."tb_imooc_course" VALUES (46, 1003, '从零做一个前端开源项目', '高级', 17971, '带你从零开始做一个前端开源项目，创建 github 主页、npm 主页和官网。', 'JavaScript', 'https://img2.mukewang.com/5b14c8690001f5b406000338-240-135.jpg', 'https://www.imooc.com/learn/1003', '2小时 0分', 10, 10, 10, 10, '简介：做出一个优秀的开源作品，是所有前端程序员都引以为豪的事情，本课程将带你从零开始做一个完整的前端开源作品。包括开源作品的内容，做什么方向的项目更容易被关注，如何正确注册 github 账号，如何提交和升级代码，如何写文档并制作官网，最后介绍作者持续运维开源项目的一些经验。', '双越', 'https://img.mukewang.com/5a9fc8070001a82402060220-80-80.jpg', 'Web前端工程师', '1、了解 html javascipt css 和 nodejs 基础知识。
2、了解 git 常用操作。', '1、开源项目包括什么 
2、什么项目更加适合开源 
3、如何正确的注册 github 和 npm 账号 
4、如何搭建前端开发环境
5、如何提交和升级代码，以及如何做版本管理 
6、如何用 markdown 和 gitbook 编写文档
7、如何使用 github 制作官网
8、如何持续迭代升级 ', '2018-09-02 20:36:42.532027', '2018-08-12 23:47:29.44922');
INSERT INTO "public"."tb_imooc_course" VALUES (291, 612, 'Canvas 绘制时钟', '中级', 44077, 'canvas画出漂亮的时钟，通过本教程能重新掌握一些几何知识', 'Html5', 'https://img2.mukewang.com/56d3f49e000136f106000338-240-135.jpg', 'https://www.imooc.com/learn/612', '1小时 0分', 9.8, 9.9, 9.7, 9.7, '简介：canvas画出漂亮的时钟，不含图片,通过本课程的学习，你能重新掌握一些几何知识，在没有学过canvas的情况下，你也能很快的学会怎么画出漂亮的时钟，因为我会对用到的canvas api做详细的介绍', 'Silva Zhou', 'https://img4.mukewang.com/5750088b0001850602200220-80-80.jpg', 'Web前端工程师', 'javascript基础知识', '1、几何知识			
2、从零学习canvas			
', '2018-09-02 20:37:02.097961', '2018-08-12 23:47:50.155906');
INSERT INTO "public"."tb_imooc_course" VALUES (13, 1025, 'GO实现千万级WebSocket消息推送服务', '中级', 4943, '分布式高并发的弹幕架构揭秘，直播弹幕系统技术难点分析', 'Go', 'https://img.mukewang.com/5b55b3f400017b9906000338-240-135.jpg', 'https://www.imooc.com/learn/1025', '1小时10分', 9.5, 9.8, 9.4, 9.4, '简介：随着互联网的发展，网络直播已然成为各大新媒体平台的宠儿。如果，你对直播中的 “弹幕聊天” 服务的实现原理感兴趣，就请进入课程，随着老师的脚步进入他的“主控室”。
在本课程中，老师会依次带领大家分析弹幕系统的技术难点、如何快速掌握WebSocket的协议与交互流程、如何用GO封装一个具有工程化实践意义的WebSocket服务端完成信息交互，并在课程最后，揭秘高并发分布式系统架构技术中难点的解决方案！', '小鱼儿老师...', 'https://img4.mukewang.com/5b56967200018f7a08781240-80-80.jpg', '全栈工程师', '1、课程难度属于中级
2、有一定的编程经验，熟悉Golang基本语法以及网络相关基础知识
3、对GO语言、分布式高并发架构感兴趣', '1、了解高并发系统实现的技术难点
2、学习WebSocket协议原理与交互流程
3、掌握GO语言开发WebSocket的重要设计方法
4、了解高并发分布式系统的架构技术难点及解决方案', '2018-09-02 20:36:43.499587', '2018-08-12 23:47:27.092509');
INSERT INTO "public"."tb_imooc_course" VALUES (289, 696, '从零开始打造自己的PHP框架', '中级', 40314, '和我一起开发一套属于自己的PHP框架，自己开发的才是最好用的', 'PHP', 'https://img1.mukewang.com/57a2aa410001189006000338-240-135.jpg', 'https://www.imooc.com/learn/696', '2小时 9分', 9.6, 9.8, 9.6, 9.5, '简介：你觉得Thinkphp框架很不错？Laravel很优雅？Yii很稳定？CI很高效？哼哼，其实你自己开发的才是最最好用最最适合你的框架', '李虎头', 'https://img4.mukewang.com/562994b10001ad1500940067-80-80.jpg', 'PHP开发工程师', '1、对PHP有一定的了解
2、初步掌握面向对象和MVC的基本概念', '1、开发自己的框架
2、加深面向对象的理解
3、加深MVC的理解
4、了解框架的运行机制', '2018-09-02 20:37:05.50392', '2018-08-12 23:47:50.121122');
INSERT INTO "public"."tb_imooc_course" VALUES (302, 717, '初识机器学习-理论篇', '入门', 102190, '带你认识机器学习，一些经典的算法，最后是Demo演示', 'Python, 机器学习', 'https://img.mukewang.com/57cfa226000150c206000338-240-135.jpg', 'https://www.imooc.com/learn/717', '1小时48分', 9.6, 9.5, 9.7, 9.5, '简介：大数据时代背景下，机器学习在各行各业都有广泛应用。本课对机器学习做入门级介绍，主要介绍机器学习的概念、典型的行业案例，并对比机器学习和传统数据分析的差别，一些经典的算法，最后是Demo演示', 'stonedog', 'https://img1.mukewang.com/5333a0aa000121d702000200-80-80.jpg', '全栈工程师', '1、有一定数据分析经验。
2、对机器学习有热情的同学。
', '1.什么是机器学习
2.机器学习的典型行业案例
3.机器学习和传统数据分析的区别
4.机器学习的经典算法
', '2018-09-02 20:37:00.924323', '2018-08-12 23:47:50.931521');
INSERT INTO "public"."tb_imooc_course" VALUES (296, 707, '2小时搞定移动直播 App 开发', '中级', 36808, '直播App开发视频教程，技术详解如何快速搭建移动直播App', 'iOS', 'https://img3.mukewang.com/57b557fe0001f6f906000338-240-135.jpg', 'https://www.imooc.com/learn/707', '56分', 9.9, 9.9, 9.9, 9.9, '简介：课程从实践角度出发，用理论+实践的讲解方式，让 iOS 前端开发者能够利用直播云快速搭建移动直播 App', '七牛云课堂...', 'https://img.mukewang.com/57b40ac00001c65702200220-80-80.jpg', NULL, '直播相关产品的研发工程师、希望借用直播技术丰富业务形态的互联网从业人员，以及其他对流媒体技术感兴趣的开发人员
服务器端地址：https://github.com/pili-engineering/pilipilid   iOS：https://github.com/pili-engineering/PLLiveCourse', '从直播 App 架构入手，学习直播技术的一些基本概念，iOS 直播 App 推流端和播放端的开发技术，以及视频编解码调优的最佳实践；iOS 直播App开发示例代码请参照，', '2018-09-02 20:37:03.614899', '2018-08-12 23:47:50.609562');
INSERT INTO "public"."tb_imooc_course" VALUES (299, 523, 'JSON快速入门（Java版）', '初级', 88201, 'JSON和GSON的应用，JSON快速入门视频教程，赶快加入吧', 'Java', 'https://img3.mukewang.com/561dfda500011a4325001408-240-135.jpg', 'https://www.imooc.com/learn/523', '1小时12分', 9.6, 9.8, 9.4, 9.5, '简介：当我们把服务器的数据传输到web前端或者移动端进行显示时，一般情况下，会选择JSON格式的数据，因此JSON在开发中的应用还是十分广泛的。本门课程就为大家带来常用的JSON和GSON的使用。包括概念、适用场景、数据的生成和解析等。', '李广L', 'https://img1.mukewang.com/57c411180001347e03720580-80-80.jpg', NULL, '学习本门课程前，需要对Java基础知识有所了解呦！', '1、能够使用JSON进行数据的生成和解析
2、能够使用GSON进行数据的生存和解析', '2018-09-02 20:37:00.787683', '2018-08-12 23:47:50.767108');
INSERT INTO "public"."tb_imooc_course" VALUES (295, 712, 'python遇见数据采集', '初级', 46305, '本教程让你初步掌握Python进行数据采集，创造属于你的价值', 'Python', 'https://img1.mukewang.com/57bd19f40001462006000338-240-135.jpg', 'https://www.imooc.com/learn/712', '2小时 5分', 9.7, 9.8, 9.6, 9.7, '简介：在这个时代，数据越来越重要，数据=金钱，已经成为定理。本课程让你初步掌握使用Python进行数据采集，以及如何从TXT和PDF文档中读取数据，掌握本课程，创造属于你的价值', '秋名山车神...', 'https://img3.mukewang.com/5b235a770001546c09600960-80-80.jpg', '全栈工程师', '熟悉Python语言的语法，掌握Python的正则表达式模块，懂得如何使用Python操作数据库', '使用Python内置urllib模块和第三方BeautifulSoup模块进行数据采集和提取、MySQL数据库的操作、TXT和PDF文档的读取，以及robots协议和相关注意事项', '2018-09-02 20:37:05.722184', '2018-08-12 23:47:50.34572');
INSERT INTO "public"."tb_imooc_course" VALUES (300, 709, '移动端Web组件-Dialog对话框', '中级', 24272, '教你学习移动端web组件开发，优化扩展渐近增强的开发过程', 'JavaScript', 'https://img4.mukewang.com/57badee70001709706000338-240-135.jpg', 'https://www.imooc.com/learn/709', '3小时15分', 9.8, 10, 9.7, 9.8, '简介：今天就给大家完整的讲解一个移动端dialog组件的开发全过程，抽丝剥茧，去分析一个 Dialog 组件的种种功能，通过组件化，参数可配置化的方式，给大家集成封装一个相对完美的 Dialog对话框组件。', '一只帅蚂蚁...', 'https://img4.mukewang.com/59c87e68000132c509420960-80-80.jpg', 'Web前端工程师', '1、对html，css基础知识已经掌握。
2、对移动端html5相关知识的了解。', '1、移动端和PC端开发异同
2、新的CSS3规则的使用 
3、移动端zepto库的使用 
4、如何去设计一个组件 
5、组件的参数分析，配置，扩展等 
6、优化，扩展，渐近增强的开发过程 ', '2018-09-02 20:37:00.661526', '2018-08-12 23:47:50.81378');
INSERT INTO "public"."tb_imooc_course" VALUES (298, 634, 'Linux智能DNS服务搭建之Bind服务', '中级', 13223, 'Bind服务的安装与配置，掌握DNS正向解析客户端的相关命令', 'Linux', 'https://img1.mukewang.com/56e617dd0001583d06000338-240-135.jpg', 'https://www.imooc.com/learn/634', '1小时 5分', 8.7, 9.3, 8.5, 8.3, '简介：《Linux系统下智能DNS服务搭建》系列课程分为三部，分别为Bind服务篇、Bind负载均衡篇和智能DNS篇。本门课程作为系列课程的第一部，首先介绍了DNS的原理和应用，然后自动动手搭建Bind服务，并进行测试，最后还介绍了DNS正向解析工具的使用。', 'Jeson老师', 'https://img1.mukewang.com/5510c7a600016ea802200220-80-80.jpg', 'Python工程师', '学习本门前，需要了解Linux的基本命令并对Linux网络有所了解。可以参看慕课网课程《Linux达人养成计划I》和《Linux网络管理》。', '1、了解Bind服务涉及的相关概念
2、能够进行Bind服务的安装和配置
3、了解Bind服务的应用场景
4、会进行DNS的正向解析和反向解析
5、掌握DNS正向解析客户端的相关命令', '2018-09-02 20:37:03.852325', '2018-08-12 23:47:50.684056');
INSERT INTO "public"."tb_imooc_course" VALUES (301, 697, '轻松学会Laravel-基础篇', '中级', 46006, 'Laravel框架基础视频教程，轻松入门，了解Laravel的优势', 'PHP', 'https://img1.mukewang.com/57a2bd030001018806000338-240-135.jpg', 'https://www.imooc.com/learn/697', '2小时32分', 9.6, 9.9, 9.6, 9.4, '简介：Laravel框架是世界上最流行的PHP开发框架，没有之一。近年来Laravel以强大、安全、优雅等特性迅速占据了PHP开发框架第一份额的宝座。现在Laravel框架已成为大型互联网公司及PHP攻城狮们的首选框架。', '天秤vs永恒...', 'https://img2.mukewang.com/57a2e95f0001425607500730-80-80.jpg', '全栈工程师', '1、掌握基本的HTML相关知识
2、熟悉PHP语言，了解面向对象、命名空间、Traits等特性
3、熟悉关系型数据库Mysql，了解数据库的表、记录、列等概念。	', '1、了解Laravel的优势
2、快速搭建Laravel开发环境
3、掌握Laravel中的路由和MVC
4、掌握Laravel中的数据库操作 
5、掌握Laravel中的模板引擎', '2018-09-02 20:37:00.768103', '2018-08-12 23:47:50.842129');
INSERT INTO "public"."tb_imooc_course" VALUES (424, 540, 'Shell典型应用之应用日志分析', '中级', 26710, '如何应用shell脚本分析系统日志，这门视频教程会给你答案', 'Linux', 'https://img2.mukewang.com/563b150200019d4d06000338-240-135.jpg', 'https://www.imooc.com/learn/540', '37分', 9.9, 10, 9.9, 9.8, '简介：本课程是《Shell典型应用》系列课程的最后一门，主要介绍如何应用shell脚本分析系统日志。包括Linux系统日志的分类和HTTP状态码的介绍，接着又通过分析HTTP状态码在不同区间请求条数的案例，来展示如何分析系统日志。', 'Jeson老师', 'https://img.mukewang.com/5510c7a600016ea802200220-80-80.jpg', 'Python工程师', '学习本课程前需要熟悉Linux的基础知识，熟练使用VIM文本编辑器，并对shell基础有所了解。作为《Shell典型应用》系列的第四门课程，请先学习《Shell典型应用之主控脚本实现》。', '1、了解Linux系统日志的分类
2、了解HTTP状态码
3、掌握如何分析HTTP状态码在不同区间的请求条数', '2018-09-02 20:37:11.094529', '2018-08-12 23:47:59.920376');
INSERT INTO "public"."tb_imooc_course" VALUES (222, 819, '实例妙解Sed和Awk的秘密', '初级', 12602, 'sed和awk是很好的Linux文本处理工具，帮助你提高效率，成为Linux达人。', 'Linux', 'https://img.mukewang.com/58db47420001195706000338-240-135.jpg', 'https://www.imooc.com/learn/819', '3小时 8分', 9.9, 9.9, 9.9, 9.9, '简介：作为本课分为三部分，第一部分介绍了正则表达式的符号规则和组合方法，让你快速学会正则表达式；第二部分通过具体实例讲解sed的各个应用功能，如行处理、替换等；第三部分通过典型案例演示了awk的使用功能，如制表、统计等。', 'annieose', 'https://img2.mukewang.com/533e4d660001312002000200-80-80.jpg', 'Python工程师', '1、有Linux使用基础。
2、有简单的编程基础（如C语言、脚本语言等）。', '1、正则表达式的规则解密与组合方法  
2、sed的行处理原理
3、使用sed进行文本行处理 
4、使用sed进行文本替换 
5、sed的替换使用技巧和高级应用 
6、awk的内置参数包括字段等的使用
7、awk的逻辑处理和内嵌程序使用方法
8、什么时候该用sed或awk
', '2018-09-02 20:36:55.191532', '2018-08-12 23:47:44.133684');
INSERT INTO "public"."tb_imooc_course" VALUES (309, 725, 'Roundtable前端分享专场', '中级', 12467, '美团前端团队最新技术分享，NPM基本用法和实用技巧介绍', 'Html5, Node.js', 'https://img2.mukewang.com/57e0ffc6000194f906000338-240-135.jpg', 'https://www.imooc.com/learn/725', '58分', 9.2, 9.4, 9.3, 8.9, '简介：本课程为现场技术分享实录，为大家带来NPM的基本用法和实用技巧介绍，以及使用Canvas对图片进行类似PS、美图秀秀的图像处理方法！精彩不容错过！', 'RoundTable前...', 'https://img4.mukewang.com/57aa830500017cb603030304-80-80.jpg', NULL, '本分享课程能为大家开阔眼界，需要你学习过前端的基础知识，并实际做过前端开发工作噢！你的经验能帮助你更好的理解讲师分享的最新最前沿技术及经验！', 'NPM的基本用法和实用技巧介绍；使用Canvas对图片进行类似PS、美图秀秀的图像处理方法', '2018-09-02 20:37:01.466009', '2018-08-12 23:47:51.367274');
INSERT INTO "public"."tb_imooc_course" VALUES (310, 724, 'iOS基础之UIImageView知识拓展(下)', '初级', 5376, '轻松掌握操作图片的更多技能，以及更多对UIImage的处理', 'iOS', 'https://img1.mukewang.com/57df595f0001299306000338-240-135.jpg', 'https://www.imooc.com/learn/724', '1小时 7分', 9.7, 10, 10, 9.2, '简介：本课程将学习如何让图片任意角度旋转、图片任意位置的裁剪、图片的圆角剪切、图片任意位置拉伸、屏幕截屏以及图片水印的添加，让我们掌握更多对UIImage的处理。', 'Jones__', 'https://img1.mukewang.com/5aa23ce700016f2a02560172-80-80.jpg', '算法工程师', '1、学习本课程之前可以先学习《iOS基础之UIImageView知识拓展(上)》
2、掌握OC的基本语法 
3、熟悉UIImage的相关属性
4、了解iOS动画', '1、图片任意角度旋转
2、图片任意位置的裁剪
3、图片的圆角剪切
4、图片任意位置拉伸
5、屏幕截屏
6、图片水印的添加', '2018-09-02 20:37:01.650272', '2018-08-12 23:47:51.548429');
INSERT INTO "public"."tb_imooc_course" VALUES (308, 574, 'ps教程之趣味外传', '中级', 50629, '本ps视频教程，将贯穿各种工具,游刃有余地使用ps，案例灵活变通', '设计工具', 'https://img1.mukewang.com/579f2721000128bf06000338-240-135.jpg', 'https://www.imooc.com/learn/574', '2小时15分', 9.8, 9.9, 10, 9.5, '简介：案例灵活变通', 'Oeasy', 'https://img4.mukewang.com/53855e6f0001034501400140-80-80.jpg', '页面重构设计', '了解ps各种课程', '灵活使用各种工具', '2018-09-02 20:37:01.04985', '2018-08-12 23:47:51.245187');
INSERT INTO "public"."tb_imooc_course" VALUES (307, 720, 'Android Data Binding实战-高级篇', '初级', 11801, 'Android官方数据绑定框架DataBinding，了解原理和基本用法', 'Android', 'https://img3.mukewang.com/58009e130001b2a706000338-240-135.jpg', 'https://www.imooc.com/learn/720', '1小时38分', 9, 9.4, 8.9, 8.9, '简介：本课程是Android官方数据绑定框架DataBinding的高级篇，大家会学习到DataBinding的一些复杂用法，比如列表绑定、自定义属性、双向绑定、表达式链、Lambda表达式、动画等', 'MarkZhai', 'https://img3.mukewang.com/images/unknow-80.png', '移动开发工程师', '本课程是Android官方数据绑定框架DataBinding入门篇的提高篇，建议先学习入门篇再学习本课程。', '大家会学习到DataBinding的一些复杂用法，比如列表绑定、自定义属性、双向绑定、表达式链、Lambda表达式、动画等', '2018-09-02 20:37:01.338463', '2018-08-12 23:47:51.220765');
INSERT INTO "public"."tb_imooc_course" VALUES (312, 691, 'Android6.0新特性', '初级', 20340, '代码实战实现App能够适配6.0系统，了解新的特性', 'Android', 'https://img.mukewang.com/57973c660001e3b106000338-240-135.jpg', 'https://www.imooc.com/learn/691', '49分', 9.4, 9.7, 9.4, 9.2, '简介：1.android6.0新境特性概述   2.App Link   3.电量管理  4.指纹识别   5.新的应用权限管理
慕课网Android讨论群② 170368200', 'qndroid', 'https://img2.mukewang.com/5333a0350001692e02200220-80-80.jpg', '移动开发工程师', '权限是6.0系统最大的一个改动对于程序员来说', '让学员先了解一下对程序影响不大的新特性，通过代码实战，让我们的App能够适配6.0系统
慕课网Android讨论群② 170368200', '2018-09-02 20:37:01.699923', '2018-08-12 23:47:51.627313');
INSERT INTO "public"."tb_imooc_course" VALUES (8, 1016, 'Unity3D特效系统之基础篇', '初级', 2044, '华丽酷炫吊炸天的游戏特效究竟是如何做出来的？快让你的游戏DUANG起来~', 'Unity 3D', 'https://img4.mukewang.com/5b36da780001934605400300-240-135.jpg', 'https://www.imooc.com/learn/1016', '1小时20分', 10, 10, 10, 10, '简介：戏的特效就像孔雀的羽翼，总是能够第一时间夺人目光，从而让整个游戏产生极大的吸引力。本套课程就是通过对Unity特效系统由浅入深的分模块教学和诸多案例的讲解实现，来帮助大家理解特效相关的概念和原理，并掌握常见特效的实现方法。', 'keyboardmeow', 'https://img.mukewang.com/5333a2d100019c1d02000200-80-80.jpg', NULL, '需要对C#和Unity有初步的学习和了解', '1、Unity游戏特效的相关概念、各模块组件的功能和所包含的属性
2、常见游戏特效的案例实现及原理、思路和方法
3、特效系统其它高级扩展知识介绍', '2018-09-02 20:36:40.780336', '2018-08-12 23:47:26.760583');
INSERT INTO "public"."tb_imooc_course" VALUES (26, 978, 'Kubernetes基础：开启云原生之门', '中级', 5617, '重新定义了未来十年基础设施承载云原生应用的形式,最为火爆的平台技术。', '云计算, Kubernetes', 'https://img2.mukewang.com/5ad069010001005a06000338-240-135.jpg', 'https://www.imooc.com/learn/978', '1小时43分', 9.1, 9.5, 8.9, 8.9, '简介：在2017年Kubernetes战胜了两个强大的竞争对手Swarm和Mesos，成为容器管理与调度编排领域的首选平台和事实标准。
本门课程共分为五个部分。
第一部分：了解一下应用部署运行模式的变迁，弄清楚每种应用部署运行模式的特点、对开发者的影响以及模式演进的趋势。
第二部分：了解Kubernetes究竟是什么? 我们为什么要使用Kubernetes，它能给开发者带来哪些好处？
第三部分：我们将实际操作如何在Kubernetes集群上部署和管理一个应用。
第四部分：我们来学习一下Kubernetes的架构、组件以及组件功用。
第五部分：我们以Kubernetes对象模型为主线，一起来学习一下Kubernetes的基本概念。', 'tonybai_cn', 'https://img3.mukewang.com/5ad050840001b1d507360981-80-80.jpg', '全栈工程师', '1、熟悉基本Linux操作
2、了解Docker容器概念与原理
3、了解基本docker命令操作
', '1、Kubernetes是什么？
2、为什么要使用Kubernetes? Kubernetes给开发者带来哪些好处？
3、如何在Kubernetes集群上部署和管理一个应用
4、Kubernetes的架构
5、Kubernetes的组件与功用
6、Kubernetes对象模型以及基础概念
', '2018-09-02 20:36:44.203302', '2018-08-12 23:47:28.034621');
INSERT INTO "public"."tb_imooc_course" VALUES (313, 728, '创业公司的Nodejs工程师', '中级', 37558, 'Nodejs工程师在创业团队的种种，如何做合适的技术选型', 'Node.js', 'https://img.mukewang.com/57eb960300014d6606000338-240-135.jpg', 'https://www.imooc.com/learn/728', '46分', 9.5, 9.6, 9.6, 9.1, '简介：万众创业的今天，人才和效率决定着一家互联网公司的生死存亡，作为一名 Nodejs 工程师，如果进入到一个创业团队，面对全新的业务起点，该如何认知自己的技术价值，该如何做合适的技术选型？', 'Scott', 'https://img1.mukewang.com/5344e6d10001867401400140-80-80.jpg', NULL, '本课程是分享课。如果你对Nodejs有兴趣，希望成为Nodejs工程师，或者你在创业公司、创业团队工作，希望进一步提升自己而找不到方向，这个分享都很适合你噢！', '作为Nodejs工程师，如何认知自己在创业团队的技术价值，如何做合适的技术选型。', '2018-09-02 20:37:02.081643', '2018-08-12 23:47:51.707807');
INSERT INTO "public"."tb_imooc_course" VALUES (315, 721, 'php+mysql 模拟队列发送邮件', '中级', 13146, '使用队列方式异步发送邮件防页面卡死，学完就知道强大之处', 'PHP', 'https://img1.mukewang.com/57de28f80001651506000338-240-135.jpg', 'https://www.imooc.com/learn/721', '46分', 9.5, 9.7, 9.6, 9.2, '简介：《php+mysql模拟队列发送邮件》课程，主要解决PHP开发过程中，常见的发送多封邮件时页面卡死的问题，如果需要给网站所有用户发送一封系统通知邮件，假设网站有10000个注册用户，发送每封邮件需要0.1秒，直接发送? NO，当然要用队列，为什么？学完你就知道啦！', 'ghost Wu', 'https://img4.mukewang.com/57e9df8000012cf302410241-80-80.jpg', NULL, '本课程属于PHP中级课程，需熟练掌握PHP开发的基础语法', '1、邮件发送原理	
2、利用phpmailer类实现邮件发送
3、为什么需要队列
4、在phpcli模式下测试队列
5、Ajax异步触发队列', '2018-09-02 20:37:02.167199', '2018-08-12 23:47:51.924239');
INSERT INTO "public"."tb_imooc_course" VALUES (320, 576, '跟我学做变形金刚CG短片', '中级', 35012, '零基础Maya变形金刚制作视频教程，快速入门，轻松玩转
', '动效动画', 'https://img4.mukewang.com/579f26a0000186b706000338-240-135.jpg', 'https://www.imooc.com/learn/576', '10小时40分', 9.6, 10, 9.8, 9, '简介：《变形金刚》系列电影深受广大影迷的喜爱，只要你会简单的电脑操作，你也可以做出酷炫的变形金刚小短片。在本次教程中，导师将教你如何安装一款强大的三维动画制作软件——Maya，讲解快速入门的技巧，让你轻松玩转变形金刚，享受CG电影制作的乐趣。', '巧课力CGmomo...', 'https://img.mukewang.com/579ac1aa0001fd7805000500-80-80.jpg', 'CG影视动画师', 'http://www.imooc.com/course/list?c=maya', '系统学习Maya动画软件，三维动画制作流程，制作变形金刚小短片
', '2018-09-02 20:37:02.564042', '2018-08-12 23:47:52.106578');
INSERT INTO "public"."tb_imooc_course" VALUES (98, 926, 'UI动效入门知识储备', '入门', 9908, '带你快速了解动效设计以及使用动效帮我们提升UX', '动效动画', 'https://img4.mukewang.com/5a2f45cb0001cfd606000338-240-135.jpg', 'https://www.imooc.com/learn/926', '35分', 9.7, 9.8, 9.3, 10, '简介：随着国际大品牌苹果和谷歌的引领，越来越多的国内公司开始关注动效设计，越来越多的团队已经意识到动效在产品用户体验中的重要性，更多的设计师们也开始投身动效设计领域，为什么需要动效设计？本套课程将带领大家了解、学习动效的重要特性，使用动效帮我们提升UX，从而使UI界面显得更加一致和真实，并给整个产品带来创新的感觉。老师相关实战课《高薪设计师必修课 AE移动UI动效设计从入门到实战》也已经上线：https://coding.imooc.com/class/184.html', '墨染ART', 'https://img2.mukewang.com/5b1c1e530001c06c07410719-80-80.jpg', 'UI设计师', '1、有深入体验过移动端产品
2、对动效设计有大致的了解', '1、动效设计应用的场景
2、动效设计的价值
3、新手如何学习动效设计', '2018-09-02 20:36:49.958649', '2018-08-12 23:47:33.783077');
INSERT INTO "public"."tb_imooc_course" VALUES (322, 747, 'Python-面向对象', '中级', 46817, 'Python面向对象教程，带你深入了解python面向对象特性', 'Python', 'https://img3.mukewang.com/580fff7a0001541206000338-240-135.jpg', 'https://www.imooc.com/learn/747', '59分', 9.1, 9.4, 9, 9, '简介：面向对象是目前编程语言里面非常主流的一种思想。Python对于面向对象有非常好的实现。同时，借助Python灵活的语法，可以实现一些很酷的面向对象特性。', '剑圣OMG', 'https://img4.mukewang.com/5403cfbc0001a0a501800180-80-80.jpg', 'Linux系统工程师', '热爱编程，对Python基础知识已经掌握。', '1.面向对象的理论基础
2.Python基本的面向对象特性
3.深入的了解Python面向对象
', '2018-09-02 20:37:00.555473', '2018-08-12 23:47:52.350772');
INSERT INTO "public"."tb_imooc_course" VALUES (305, 699, '轻松学会Laravel-表单篇', '中级', 24888, 'Laravel框架是世界上最流行的PHP框架，没有之一', 'PHP', 'https://img1.mukewang.com/57a2e0600001e30906000338-240-135.jpg', 'https://www.imooc.com/learn/699', '2小时 0分', 9.9, 10, 9.8, 9.8, '简介：Laravel框架是世界上最流行的PHP开发框架，没有之一。近年来Laravel以强大、安全、优雅等特性迅速占据了PHP开发框架第一份额的宝座。现在Laravel框架已成为大型互联网公司及PHP攻城狮们的首选框架。', '天秤vs永恒...', 'https://img1.mukewang.com/57a2e95f0001425607500730-80-80.jpg', '全栈工程师', '1、掌握基本的HTML相关知识
2、熟悉PHP语言，了解面向对象、命名空间、Traits等特性
3、熟悉关系型数据库Mysql，了解数据库的表、记录、列等概念。', '1、掌握Laravel中的请求与响应
2、掌握Laravel中Session的使用
3、掌握Laravel中Middleware的使用
4、玩转Laravel表单', '2018-09-02 20:37:01.10934', '2018-08-12 23:47:51.014136');
INSERT INTO "public"."tb_imooc_course" VALUES (325, 738, '接口测试基础之入门篇', '入门', 44948, '对接口测试说so easy！', '接口测试', 'https://img.mukewang.com/57fdef6c0001ab6b06000338-240-135.jpg', 'https://www.imooc.com/learn/738', '1小时51分', 9.5, 9.8, 9.2, 9.3, '简介：通过学习本课程，可以了解http类型接口之间的不同差异，针对不同类型的接口设计不同的接口测试方案，了解常见工具的特性，根据特性选择适合自己的测试工具，使用合适的测试工具对不同类型的接口进行测试，用高效的方法去做最繁琐的事情。', 'Mushishi_Xu', 'https://img2.mukewang.com/57df9bcd000195e810231024-80-80.jpg', '软件测试工程师', '本课程适用于没有基础或者想要转行做接口测试的小伙伴。', 'http类型的接口测试没有想象中的那么难，通过学习不同类型接口的特性，以及常见工具的特性和差异，使用不同的工具针对不同类型的接口进行测试，让你不再觉得它是多么难以征服。
慕课网测试交流群  559506833', '2018-09-02 20:37:03.139507', '2018-08-12 23:47:52.609105');
INSERT INTO "public"."tb_imooc_course" VALUES (218, 809, 'redis的入门与应用', '中级', 34691, 'redis的入门与应用教程，Redis是php项目中使用的主要缓存服务', 'Redis', 'https://img.mukewang.com/58bea4fe0001bec506000338-240-135.jpg', 'https://www.imooc.com/learn/809', '1小时 3分', 9.7, 9.6, 9.8, 9.6, '简介：Redis是php项目中使用到的主要缓存服务，我们在整个教程中会介绍redis的安装使用，以及PHP如何使用redis，并且介绍了redis最常也是必知必会的五大数据结构及常用命令', '轩脉刃', 'https://img2.mukewang.com/5a9fc5380001e7fb02000200-80-80.jpg', '全栈工程师', '1、课程难度属于初级
2、对php的基础知识掌握，如数组、类、对象
3、对linux的基础知识掌握，如vim命令，ls命令等等。
', '1、redis是什么 
2、redis的安装
3、redis的五种数据类型 
4、php中redis的扩展安装 
5、php如何操作redis的五种数据类型
6、redis五种数据类型的使用场景 ', '2018-09-02 20:36:54.66755', '2018-08-12 23:47:43.696611');
INSERT INTO "public"."tb_imooc_course" VALUES (187, 832, '快速入门ThinkPHP 5.0--基础篇', '中级', 37026, 'ThinkPHP5已发布多时，想了解ThinkPHP5的新特性吗？老司机带你马上出发~', 'PHP', 'https://img.mukewang.com/5908721f0001539606000338-240-135.jpg', 'https://www.imooc.com/learn/832', '5小时20分', 9.7, 9.8, 9.6, 9.7, '简介：ThinkPHP5 是上海顶想信息科技有限公司于2006年创立的，经过长期的升级和维护是目前国内使用最多的PHP框架，2016年thinkPHP发布了5.0版本，ThinkPHP5.0版本是一个颠覆和重构版本，采用全新的架构思想，引入了更多的PHP新特性，优化了核心，减少了依赖，实现了真正的惰性加载，支持composer，并针对API开发做了大量的优化，包括路由、日志、异常、模型、数据库、模板引擎和验证等模块都已经重构。', '乌云龙', 'https://img4.mukewang.com/5a3cc57f0001c78704500405-80-80.jpg', 'PHP开发工程师', '1、有一定的php基础。
2、对git composer 有一定的了解。
3、本机安装好相应的开发环境
4、最好有一定的mvc 框架的使用经验', '1、框架的搭建 
2、目录文件的介绍 
3、环境的配置 (开发 测试 线上环境) 
4、请求对象和数据请求参数获取 
5、相应对象和返回相应类型的数据 
6、模板的使用 比较 判断 循环 ', '2018-09-02 20:36:56.443473', '2018-08-12 23:47:41.419703');
INSERT INTO "public"."tb_imooc_course" VALUES (328, 667, 'Unity 3D音频系统', '初级', 10419, '音效对游戏氛围非常重要，插上音效的翅膀，让游戏活起来', 'Unity 3D', 'https://img.mukewang.com/575126a80001361406000338-240-135.jpg', 'https://www.imooc.com/learn/667', '57分', 9.9, 10, 9.9, 9.7, '简介：本课程从参数到实例全面细致地讲解了Unity3D音频系统的组件和相关专业知识。音效对游戏中营造氛围有着不可或缺的作用，掌握它，让你的游戏活起来。', 'kgd', 'https://img4.mukewang.com/54584c9c0001489602200220-80-80.jpg', 'JAVA开发工程师', '本课程针对Unity初学者，但会涉及到一些声音方面的专业知识，学前需要对UGUI和C#脚本有初步的认识。
', '1、混合器组件mixer的操作
2、各类混响组件的应用
3、通过脚本和GUI对各类声音组件的控制
', '2018-09-02 20:37:06.679145', '2018-08-12 23:47:52.662519');
INSERT INTO "public"."tb_imooc_course" VALUES (335, 480, 'JSP自定义标签', '初级', 25345, 'JSP自定义标签应用，Java Web开发中一个重要的知识点', 'Java', 'https://img3.mukewang.com/5787418d0001543506000338-240-135.jpg', 'https://www.imooc.com/learn/480', '1小时55分', 9.7, 10, 9.7, 9.3, '简介：JSP自定义标签是Java Web开发中一个重要的知识点。本门课程首先介绍什么是自定义标签，并通过一个简单的案例快速的为大家演示自定义标签的开发过程，最后对自定义标签进行详细的介绍。', 'Eleven_Lee', 'https://img3.mukewang.com/551ca92800014b1802200220-80-80.jpg', 'JAVA开发工程师', '学习本门课程前需要对Java Web的基础知识有所了解，并会使用JSP的标准标签库。', '1、什么是自定义标签
2、如何实现自定义标签及应用', '2018-09-02 20:37:06.203381', '2018-08-12 23:47:53.247574');
INSERT INTO "public"."tb_imooc_course" VALUES (285, 705, 'TesterHome2016年移动测试大会', '中级', 10983, '第二届中国移动互联网测试大会', '功能测试', 'https://img4.mukewang.com/57a993e30001681106000338-240-135.jpg', 'https://www.imooc.com/learn/705', '3小时 0分', 9.8, 9.8, 9.6, 9.9, '简介：本次大会主题涉及移动端的自动化、持续集成、性能、安全等一系列测试领域，以及当下移动端最新最热最实用的测试技术交流分享。', 'TesterHome', 'https://img3.mukewang.com/57a98b110001fb1a05690200-80-80.jpg', NULL, '专注于互联网测试技术的分享会，关注移动互联网质量的有志之士的集会。需要有一定测试/开发基础，关注前沿技术', '通过本课程带你了解当下移动端最新最热最实用的测试技术。
慕课网测试交流群  559506833', '2018-09-02 20:37:05.270826', '2018-08-12 23:47:49.847853');
INSERT INTO "public"."tb_imooc_course" VALUES (626, 348, '进击Node.js基础（一）', '中级', 213310, '本视频教程带你揭开Node.js的面纱，带你走进一个全新世界', 'Node.js', 'https://img4.mukewang.com/56f22f3900012d0206000338-240-135.jpg', 'https://www.imooc.com/learn/348', '3小时27分', 9.5, 9.8, 9.5, 9.3, '简介：Node.js 的推出，不仅从工程化的角度自动化掉更多琐碎费时的工作，更打破了前端后端的语言边界，让 JavaScript 流畅的运行在服务器端，本系列教程旨在引导前端开发工程师，以及 Node.js 初学者走进这个活泼而有富有生命力的新世界。', 'Scott', 'https://img1.mukewang.com/5344e6d10001867401400140-80-80.jpg', NULL, '我们的教程面向的同学是：有 JavaScript 基础的同学，如果有过任何后台语言开发的经验更适合，对于有基础的同学，可以快进跳着看教程，不必拘束于每一分钟都听，很多时候其实是思路，思路打通了，很多技术细节也就不用纠结了。
', '从 Node.js 基础知识入手，比如安装，环境配置、开发环境等，进一步熟悉 Node.js API ，一些 HTTP 知识，并且对模块的概念和使用更加熟悉，从而进阶到模块或者插件的开发，最终能够借助 Node.js 快速实现特定的需求。
', '2018-09-02 20:37:30.3553', '2018-08-12 23:48:18.540659');
INSERT INTO "public"."tb_imooc_course" VALUES (330, 614, 'MongoDB复制集—复制集安全', '中级', 3493, '数据库安全是重中之重，认真对待才能守住数据库的大门', 'MongoDB', 'https://img2.mukewang.com/56d7e6a100016a9b06000338-240-135.jpg', 'https://www.imooc.com/learn/614', '1小时 6分', 9.5, 9.9, 9.4, 9.3, '简介：安全这么玄幻的东西，如果你不认真对待的话，它也会让你的工作中充满刺激，肾上腺素激增！但是安全太宏观，我们就从认证的角度来进行学习。守住数据库的大门!', 'SeanZ', 'https://img4.mukewang.com/54bcba130001fc2305680568-80-80.jpg', NULL, '为了更好掌握本课程精髓，掌握以下知识是必要的：
1、MongoDB基本操作
2、mongod配置文件编辑', '1、什么是认证，如何开启认证？
2、auth与keyFile的区别
3、如何创建/删除一个用户
4、权限分类以及权限伸缩', '2018-09-02 20:37:06.238155', '2018-08-12 23:47:52.83265');
INSERT INTO "public"."tb_imooc_course" VALUES (332, 595, '  MongoDB复制集—复制集监控', '中级', 7592, '关于数据库监控，自有人代劳，做到心中有数，处乱不惊', 'MongoDB', 'https://img3.mukewang.com/56a08eed0001fdf319201080-240-135.jpg', 'https://www.imooc.com/learn/595', '1小时32分', 9.7, 9.8, 9.4, 10, '简介：不监控的磁盘一定会满，不监控的数据库一定会出问题！只有实时了解复制集的工作状态，才能做到心中有数，处乱不惊。', 'SeanZ', 'https://img4.mukewang.com/54bcba130001fc2305680568-80-80.jpg', NULL, '为了更好掌握本课程精髓，掌握以下知识是必要的：
1、MongoDB基本操作
2、复制集节点相关知识', '1、如何知晓当前复制集的状态
2、用什么来监控复制集', '2018-09-02 20:37:06.269394', '2018-08-12 23:47:53.074683');
INSERT INTO "public"."tb_imooc_course" VALUES (99, 783, 'Go语言开发微信公众号', '中级', 13471, '想用Go语言做微信公众号的开发么？', 'Go', 'https://img.mukewang.com/5a409d3100019c4406000338-240-135.jpg', 'https://www.imooc.com/learn/783', '1小时20分', 9.9, 10, 9.7, 10, '简介：Go语言因其优秀的性能、强大的跨平台能力，在开发人员中越来越受到欢迎。本课程带领大家从零开始做一个简单的微信公众号后端服务；并且方便我们调试，会带领大家开发一个模拟微信公众号的调试工具。', '黑影儿', 'https://img1.mukewang.com/5861d3ab0001389402000200-80-80.jpg', '全栈工程师', '1、知道微信公众号是什么。
2、有基本的开发基础，最好有基本的Go语言语法知识。', '1、微信公众号怎么选择以及后端开发的基本概念
3、Go语言开发环境的配置
4、如何用Go语言建立一个Web服务
5、如何用Go语言处理微信公众号的接入
6、如何用Go语言的XML包生成一个标准的XML输出用以回复消息
7、如何用Go语言写脚本工具
8、如何用Go语言模拟HTTP请求
', '2018-09-02 20:36:49.943826', '2018-08-12 23:47:33.812747');
INSERT INTO "public"."tb_imooc_course" VALUES (339, 675, 'jQuery实现自定义滚动条', '中级', 36899, '来一次jQuery封装之旅，本教程带你深入理解滚轮事件交互', 'jQuery', 'https://img.mukewang.com/5784503f00017aac06000338-240-135.jpg', 'https://www.imooc.com/learn/675', '1小时 3分', 8.7, 9.2, 8.3, 8.5, '简介：通过本课程，让您掌握鼠标滚轮事件的细节，并能通过掌握细节实现自定义滚动条的效果。我们学完后也可以将鼠标滚轮事件封装成组件，通过封装的组件实现一个复杂的交互效果，深入理解滚轮事件的交互。', '奇舞团', 'https://img.mukewang.com/551b97490001120c02200220-80-80.jpg', 'Web前端工程师', '学习本课程，您要具备以下知识：
1.了解CSS和HTML
2.JavaScript基础知识
3.jQuery的基础使用
', '1.自定义滚动条的组件
2.鼠标拖动事件的处理
3.鼠标滚轮事件的处理', '2018-09-02 20:37:03.952236', '2018-08-12 23:47:53.525037');
INSERT INTO "public"."tb_imooc_course" VALUES (94, 936, '基于SpringBoot  十分钟搞定后台管理平台', '中级', 18602, '大道至简之Guns框架介绍，带你领略代码自动生成', 'Java, SpringBoot', 'https://img4.mukewang.com/5a5824c100019a8506000338-240-135.jpg', 'https://www.imooc.com/learn/936', '1小时46分', 9.6, 9.7, 9.7, 9.4, '简介：大道至简系列课程，旨在为大家指明技术发展路径，以实际项目为背景，阐述“那些年"遇到的"坑"，并从零到实战逐步"排雷"。
本次课程作为大道至简的基础篇，会为大家阐述Guns框架的，并且带领大家，在较短的时间内，快速搭建一个属于个人的后台管理系统，并且帮助大家完成快速开发的过程。老师主讲的进阶课程《Tomcat+Memcached/Redis集群 构建高可用解决方案》已上线，有兴趣的小伙伴可以来学习下', 'Allen_jiang', 'https://img4.mukewang.com/5aa3634800012a1002000200-80-80.jpg', 'JAVA开发工程师', '最好具有一定的Java开发基础', '快速构建属于个人的后台管理系统			
掌握Guns的基本开发流程			
了解Guns的基本结构			
建立完整高效和“时髦”的分布式学习路径规划			
', '2018-09-02 20:36:50.655137', '2018-08-12 23:47:33.329689');
INSERT INTO "public"."tb_imooc_course" VALUES (343, 672, '数据结构探险之图篇', '中级', 45767, '图是众多实际问题解决方案之源，从基础概念入手掌握图的处理', 'C++', 'https://img.mukewang.com/576a0b0a000128b606000338-240-135.jpg', 'https://www.imooc.com/learn/672', '3小时20分', 9.9, 9.9, 9.9, 9.8, '简介：本课程主要以图的存储方式，图的遍历方法，图的最小生成树为内容主体，详细讲述了图的存储方式，图的遍历和最小生成树的编程思路及实现原理，并手把手完成图的深度优先遍历算法和广度优先遍历算法，', 'james_yuan', 'https://img.mukewang.com/550f82810001c44902200220-80-80.jpg', '学生', '本课程是数据结构初级课程
1、熟练掌握C++语言基础语法', '1、图的基本概念			
2、图的存储方式			
3、图的遍历算法			
4、图的最小生成树算法			
5、图的实际应用			
', '2018-09-02 20:37:04.23054', '2018-08-12 23:47:53.820014');
INSERT INTO "public"."tb_imooc_course" VALUES (341, 665, 'Unity 3D地形编辑器', '初级', 18353, '手把手教你如何使用Unity搭建游戏地形，丰富场景', 'Unity 3D', 'https://img2.mukewang.com/5751265f00014b4606000338-240-135.jpg', 'https://www.imooc.com/learn/665', '33分', 9.9, 10, 9.8, 9.8, '简介：手把手教你如何使用Unity进行地形的创建和细化, 高度图的导入, NavMesh的烘培', '王海波_2048...', 'https://img3.mukewang.com/56342e4b0001f2d901800180-80-80.jpg', '移动开发工程师', '针对初学者 需要了解Unity的基础菜单操作和基本的C#语法
软件需求: Unity的版本需要高于4.6
', '1. 使用Unity搭建地形
2. 使用高度图导入地形
3. 如何为地形烘培NavMesh', '2018-09-02 20:37:04.144894', '2018-08-12 23:47:53.611843');
INSERT INTO "public"."tb_imooc_course" VALUES (256, 757, 'PHP扩展安装指南', '中级', 9709, 'PHP扩展你掌握了吗，通过学习本教程能够加深PHP扩展的管理和安装', 'PHP', 'https://img4.mukewang.com/58329e8a0001068806000338-240-135.jpg', 'https://www.imooc.com/learn/757', '1小时51分', 9.5, 9.8, 9.9, 8.9, '简介：PHP扩展作为构建PHP的重要组成部分，可以让我们快速扩展PHP的功能，使得PHP对各种工具的支持有了较好的依托。本课程从全面认识PHP扩展开始，深入探讨PHP扩展安装步骤，并且通过实战课程进一步加深PHP扩展的管理和安装。', 'PHPChina春阳...', 'https://img4.mukewang.com/57d0fd160001736802000200-80-80.jpg', 'PHP开发工程师', '1、对PHP的基本语法掌握。
2、对Linux有了解，会一些基础的Linux操作命令，如make,tar等。
', '1、全面了解PHP扩展是什么
2、PHP扩展的运行原理及机制 
3、如何管理和查看PHP扩展 
4、Windows下如何安装PHP扩展 
5、Linux下如何直装和编译安装PHP扩展
', '2018-09-02 20:36:58.244775', '2018-08-12 23:47:46.9634');
INSERT INTO "public"."tb_imooc_course" VALUES (342, 681, 'iOS基础教程-数据解析', '初级', 14357, 'ios基础视频教程之带你了解如何解析JSON数据和XML格式的数据', 'iOS', 'https://img3.mukewang.com/577ca2870001722906000338-240-135.jpg', 'https://www.imooc.com/learn/681', '2小时13分', 9.9, 9.8, 9.8, 10, '简介：iPhone手机的原生应用天气预预报相信大家都使用过，那么如何获取天气数据呢如何将数据解析出来呢？本课程将通过天气预报的案例为大家讲解iOS中如何解析JSON数据和XML格式的数据', 'james_yuan', 'https://img1.mukewang.com/550f82810001c44902200220-80-80.jpg', '学生', '需要有iOS网络操作的基础', '1:JSON格式简介
2:多种解析JSON数据的API
3:XML格式简介
4:SAX与DOM解析XML数据', '2018-09-02 20:37:04.053415', '2018-08-12 23:47:53.753117');
INSERT INTO "public"."tb_imooc_course" VALUES (349, 674, 'Alamofire的最佳实践', '高级', 7083, 'Alamofire中常见问题的解决方案，快速理解swift http请求框架Alamofire
', 'iOS', 'https://img.mukewang.com/576b4f800001f7f906000338-240-135.jpg', 'https://www.imooc.com/learn/674', '1小时 5分', 10, 10, 10, 10, '简介：本课程用6个问题作为整个课程的主线， 在解决问题的过程中更深入的去学习一些更高级的用法，快速理解swift http请求框架Alamofire的基本使用以及常见问题的解决方案', 'gix_ic', 'https://img1.mukewang.com/5458626a0001503602200220-80-80.jpg', '移动开发工程师', '本课程针对中级用户，需要对Alamofire有一个基本的了解， 真实项目中使用过或有遇到过这6个问题， 将有助于进一步理解本课程
', '1、介绍Alamofire中各个文件的职责， 了解项目结构
2、在项目中，遇到这几类问题，让你快速优雅的运用课程中的知识， 服务于你的商业项目。', '2018-09-02 20:37:04.751862', '2018-08-12 23:47:54.354433');
INSERT INTO "public"."tb_imooc_course" VALUES (216, 812, 'Web安全-XSS', '中级', 29869, '从Web安全XSS的定义开始讲起，从原理到实战全方位理解XSS安全', 'HTML/CSS, JavaScript', 'https://img1.mukewang.com/58db6c5f00018a9406000338-240-135.jpg', 'https://www.imooc.com/learn/812', '1小时20分', 9.5, 9.6, 9.5, 9.3, '简介：从Web安全XSS的定义开始讲起，到深入剖析XSS攻击的原理和流程，了解常见XSS攻击的危害。同时通过项目实战针对性的分析如何应对XSS攻击做到安全的XSS防御措施。', '快乐动起来呀...', 'https://img3.mukewang.com/54584cb50001e5b302200220-80-80.jpg', 'Web前端工程师', '1、了解基础的html、css、js', '1、什么是XSS
2、XSS的原理是什么
3、XSS常见的攻击手段是什么
4、图解XSS攻击
5、对XSS见招拆招，做好防御
6、做一个项目演练攻击和防御，充分体会XSS防御的措施和重要性', '2018-09-02 20:36:54.867244', '2018-08-12 23:47:43.664583');
INSERT INTO "public"."tb_imooc_course" VALUES (251, 763, 'TypeScript入门', '初级', 37559, 'TypeScript入门视频教程包括TypeScript的基本概念、常用语法和高级特性', 'JavaScript', 'https://img2.mukewang.com/583fcefd0001c1c906000338-240-135.jpg', 'https://www.imooc.com/learn/763', '1小时50分', 9.7, 9.6, 9.6, 9.7, '简介：TypeScript是一种由微软开发的支持ES6标准的编程语言,它是Angular2的开发语言。它可以编译成纯JavaScript，可以在任何浏览器，任何计算机和任何操作系统上运行，并且是开源的。本课程介绍了TypeScript的基本概念、常用语法和高级特性。', 'JoJozhai', 'https://img3.mukewang.com/5458640c0001b0a702200220-80-80.jpg', '全栈工程师', '1、对javascript的基础知识已经掌握。', '1、TypeScript语言中的字符串新特性 
2、TypeScript语言中的变量和参数新特性
3、TypeScript语言中的函数新特性
4、TypeScript语言中的匿名函数
5、TypeScript语言中的for of循环
6、TypeScript语言中的面向对象特性', '2018-09-02 20:37:00.369596', '2018-08-12 23:47:46.471623');
INSERT INTO "public"."tb_imooc_course" VALUES (345, 629, 'Java实现权限管理（下）', '中级', 32176, '权限管理系统控制层实现及优化，学习如何使用SpringMVC+Spring', 'Java', 'https://img3.mukewang.com/56e6069500017a6b06000338-240-135.jpg', 'https://www.imooc.com/learn/629', '1小时55分', 8.1, 8.5, 8, 7.8, '简介：Java权限管理系列课程介绍如何使用SpringMVC+Spring来实现基于RBAC的权限管理系统。本套系列课程包括两门课程，本课程是第二门课，主要介绍权限管理系统控制层实现及优化。', 'moocer', 'https://img1.mukewang.com/58db190e0001643d02000200-80-80.jpg', 'JAVA开发工程师', '学习本课程前需要学习如下知识：
1、熟悉SpringMVC
2、对Spring有一定的了解', '1、掌握权限管理控制层实现
2、掌握如何对权限管理系统进行优化', '2018-09-02 20:37:04.382873', '2018-08-12 23:47:53.85865');
INSERT INTO "public"."tb_imooc_course" VALUES (694, 274, '如何使用iOS SDK进行基于LBS的开发', '中级', 13206, '迅速使用IOS SDK进行基于LBS的开发，实现一个地图应用', 'iOS', 'https://img3.mukewang.com/5783863c0001195006000338-240-135.jpg', 'https://www.imooc.com/learn/274', '1小时40分', 9.4, 9.8, 9.1, 9.3, '简介：本课程为大家带来如何使用IOS SDK进行基于LBS的开发。高德地图 iOS SDK 是一套基于 iOS 4.3及以上版本的地图应用程序开发接口，通过该接口用户可以使用高德地图数据和服务轻松构建功能丰富、交互性强的地图应用。通过本课程的学习你可以动手实现你的第一个地图应用！', '高德LBS开放...', 'https://img3.mukewang.com/54a209d000013b9c03450360-80-80.jpg', NULL, '1、IOS开发者
2、互联网从业人员
3、计算机、软件专业等小白用户或在校生', '1、显示高德地图，提供定位功能，根据定位的坐标获取位置信息
2、基于IOS SDK，进行POI搜索，搜索出你的目的地并进行导航
3、如何自定义标注和气泡，做出炫酷的地图显示效果', '2018-09-02 20:37:31.14214', '2018-08-12 23:48:24.346924');
INSERT INTO "public"."tb_imooc_course" VALUES (351, 682, 'ps入门教程Ⅱ-进阶篇-图层、矢量、路径', '入门', 52471, 'ps入门教程主要从蒙版、路径、滤镜等方面深入讲解，技能更上一层楼', '设计工具', 'https://img2.mukewang.com/577f7e700001ef7a06000338-240-135.jpg', 'https://www.imooc.com/learn/682', '10小时29分', 9.9, 10, 10, 9.6, '简介：Photoshop的专长在于设计、图像处理，也可以手绘画图。Photoshop平面设计是对已有的位图图像进行编辑加工处理以及运用一些特殊效果，其重点在于对设计、处理加工；Photoshop图形创作软件是按照自己的构思创意，使用矢量图形来平面设计Photoshop图形。', 'Oeasy', 'https://img2.mukewang.com/53855e6f0001034501400140-80-80.jpg', '页面重构设计', 'ps入门教程I
', 'ps中较为深入的蒙版、路径、滤镜等', '2018-09-02 20:37:04.697911', '2018-08-12 23:47:54.389059');
INSERT INTO "public"."tb_imooc_course" VALUES (696, 277, 'JavaScript深入浅出', '中级', 241448, '由浅入深学习JS语言特性，且解析JS常见误区，从入门到掌握', 'JavaScript', 'https://img1.mukewang.com/5705d3a3000129d006000338-240-135.jpg', 'https://www.imooc.com/learn/277', '5小时28分', 9.6, 9.9, 9.6, 9.4, '简介：这是一个帮助您系统学习JavaScript编程语言的课程，该课由浅入深的介绍JavaScript的语言特性，结合实际例子解析常见误区，启发你的思考，帮助学习者从入门到掌握，提升您的 JavaScript 技能。', 'Bosn', 'https://img1.mukewang.com/585b526f0001873106820682-80-80.jpg', 'Web前端工程师', '1.您至少学习了本站“JS入门”、“JS进阶”两门基础课程。
2.如您具备一定实践经验对学习有很大帮助。
3.如您没有脚本编程开发经验，学习过程有可能会受挫部分内容或示例代码，请“暂时略过不懂的部分，后面章节会阐述”，当然想透彻学习，还需大量实践来体会知识的内涵。', '结合实例，深入解析以下知识内容:
1. 数据类型、表达式和运算符、语句；
2. 对象、数组、变量、函数；
3. this、闭包和作用域；
4. OOP；
5. 正则与模式匹配。', '2018-09-02 20:37:31.272103', '2018-08-12 23:48:24.408451');
INSERT INTO "public"."tb_imooc_course" VALUES (306, 716, 'Pscc全面技能培训', '入门', 61863, '一台电脑，同步讲解，快速掌握PSCC！', '设计工具', 'https://img4.mukewang.com/57cf73e40001870e06000338-240-135.jpg', 'https://www.imooc.com/learn/716', '8小时31分', 9.8, 10, 9.8, 9.5, '简介：全新 Photoshop CC 2015 是视觉设计师最强有力的武器之一，课程分章分节讲解PSCC的全面核心操作。全新的智能滤镜，CAMERA RAW 9 和图层支援，增强的相机震动减弱，Web前端支持，官方中文简单易用， 作为未来10年的 Photoshop 主要软件版本已经是定局了。更多实战课点击https://coding.imooc.com/?c=photo详细了解', '全球电影特效...', 'https://img1.mukewang.com/5458626a0001503602200220-80-80.jpg', 'CG影视动画师', '1、有一定 Windows 操作基础
2、有一定 Mac 操作基础
课程配套素材下载地址http://pan.baidu.com/s/1jIoaEOI', '1、PSCC 工作区域核心操作学习
2、建立选区与遮罩抠图学习 
3、理解图层与图层蒙版操作 
4、颜色理论与调整图层学习 
5、肖像美容工具与技巧学习 
6、滤镜库与智能滤镜学习 
7、点文字与段落文字学习
8、PSCC 自动化特性扩展学习 
9、保存网络图像与打印输出
', '2018-09-02 20:37:00.720466', '2018-08-12 23:47:51.094002');
INSERT INTO "public"."tb_imooc_course" VALUES (281, 750, '玩儿转swift3新特性', '初级', 6538, '着重介绍了Swift3的语法和Swift2的语法区别，最新版语言编程技巧', 'iOS', 'https://img1.mukewang.com/5817f56b0001054e06000338-240-135.jpg', 'https://www.imooc.com/learn/750', '2小时 0分', 9.9, 9.9, 10, 9.8, '简介：本课程是《玩儿转Swift2》系列课程的一个“补丁课程”，着重介绍了Swift3的语法和Swift2的语法区别。在介绍语法区别的同时，也介绍了更多Swift语言编程的技巧。推荐掌握Swift2语言的同学学习。', 'liuyubobobo', 'https://img1.mukewang.com/5347593e00010cfb01400140-80-80.jpg', '全栈工程师', '本课程适合学习过《玩儿转Swift2》系列课程的同学或者已经掌握swift2语言的同学，学习Swift3的变化。也适合已经接触swift3语言的同学，系统掌握swift2语言和swift3语言的区别，以及语法改变的内部原因，并且学习更多swift3技巧。', '通过本课程的学习，大家可以系统掌握swift2语言和swift3语言的区别，以及swift3语法改变的内部原因，并且学习更多swift3的编程技巧。大家对swift语言，能有更加深入的理解。', '2018-09-02 20:37:03.121505', '2018-08-12 23:47:49.496354');
INSERT INTO "public"."tb_imooc_course" VALUES (359, 664, 'Cocos2d-x全民俄罗斯--上', '初级', 12610, 'Cocos2d-X引擎+Lua语言俄罗斯方块的制作及基本逻辑编写', 'Cocos2d-x', 'https://img.mukewang.com/5750fa6d0001848e06000338-240-135.jpg', 'https://www.imooc.com/learn/664', '52分', 9.4, 9.4, 9.3, 9.4, '简介：本课程将为大家介绍如何使用Cocos2d-X引擎+Lua语言制作俄罗斯方块的场景搭建, 场景类编写, 场景清除, 方块数据建立, 方块变形操作, 方块的顶位处理等内容。', '徐波老师', 'https://img1.mukewang.com/55dd985500017e1f05120512-80-80.jpg', '移动开发工程师', '本课程需要使用cocos2dx-lua编写, 请同学们对lua及cocos有一定的了解
', '1:学习方块场景搭建
2:基本数据简历及变形控制', '2018-09-02 20:37:06.74696', '2018-08-12 23:47:55.315961');
INSERT INTO "public"."tb_imooc_course" VALUES (304, 715, 'iOS基础之UIImageView知识拓展(上)', '初级', 7348, '掌握iOS图像处理之UIImage展示，了解UIImageView更多的用途', 'iOS', 'https://img.mukewang.com/57cd13f40001e1a406000338-240-135.jpg', 'https://www.imooc.com/learn/715', '1小时33分', 9.8, 10, 9.5, 10, '简介：本课程重点介绍图片格式的转换、gif图片的分解、gif动画的展示、gif图片的合成、新图片格式webp以及图片缓存优化的相关知识，让大家能了解到UIImageView更多的用途，用于我们的UIImage展示。', 'Jones__', 'https://img2.mukewang.com/5aa23ce700016f2a02560172-80-80.jpg', '算法工程师', '学习本课程之前需要掌握如下知识：
1、掌握OC的基本语法
2、熟悉UIImage的相关属性
3、了解iOS动画', '1、图片Jpg和Png转化
2、gif图片分解
3、gif动画展示
4、gif图片合成
5、新图片格式webp
6、图片缓存优化', '2018-09-02 20:37:01.067551', '2018-08-12 23:47:51.004718');
INSERT INTO "public"."tb_imooc_course" VALUES (360, 671, 'iOS基础教程-网络操作', '初级', 17811, 'iOS中的网络请求，Http在iOS中的实现', 'iOS', 'https://img2.mukewang.com/576274480001a35006000338-240-135.jpg', 'https://www.imooc.com/learn/671', '1小时52分', 9.6, 9.7, 9.6, 9.5, '简介：如何使用NSURLConnection和NSURLRequest在iOS框架下发送网络请求，接收网络请求，并且学习了解一些常见的http状态码代表什么意思，怎么去解析获取数据展示到用户界面上', '于海_', 'https://img.mukewang.com/5678bc7700011e4202000200-80-80.jpg', '移动开发工程师', '了解xcode的基本使用，简单UI控件的使用', '1：http网络请求如何使用
2：iOS下网络请求是什么样的
3：get，post请求的区别', '2018-09-02 20:37:10.446114', '2018-08-12 23:47:55.390621');
INSERT INTO "public"."tb_imooc_course" VALUES (354, 666, 'Unity 3D游戏开发之脚本系统', '初级', 24749, '一起撸游戏，本Unity基础教程设计开发中常用的方法与技巧', 'Unity 3D', 'https://img4.mukewang.com/57a2b92d0001adec06000338-240-135.jpg', 'https://www.imooc.com/learn/666', '1小时13分', 9.4, 9.7, 9.3, 9.3, '简介：本课程主要介绍一些开发中常用的方法与技巧，以及优化方法', '生萌海鲜', 'https://img3.mukewang.com/578730140001e96d02000200-80-80.jpg', '其它', '需要有一定C#语言基础以及对Unity3d引擎操作有一定的了解', 'Unity游戏开发一些基础操作与开发技巧，有了这些基础就可以一点一点的撸出完整的游戏', '2018-09-02 20:37:05.094038', '2018-08-12 23:47:54.437375');
INSERT INTO "public"."tb_imooc_course" VALUES (353, 694, 'vue.js入门基础', '中级', 190511, '本门为vuejs入门教程，详细的讲解加实战，可以帮你进入vuejs的大门', 'Vue.js', 'https://img4.mukewang.com/57a0676800013b2506000338-240-135.jpg', 'https://www.imooc.com/learn/694', '1小时50分', 9.2, 9.4, 9.2, 8.9, '简介：本课程主要讲解了vuejs 是如何站在前端巨人肩膀上，进行新项目的搭建，教程中通过一个简单的todolist讲解vuejs基本用法和常用接口。', 'fishenal', 'https://img4.mukewang.com/58c64f960001794b02500250-80-80.jpg', 'Web前端工程师', '1. 有html，css，js前端开发基础
2. 了解前端工程化，node，webpack gulp等
3. 对前端模块化有基本的概念
4. es6 的一些基本语法
', '1. vuejs的背景及其项目相关知识
2. 了解流行的前端项目搭建方式 webpack + gulp
3. 用 vue-cli 脚手架工具初始化vue项目
4. 学习vue项目基本的结构和开发方法
5. 学习使用vuejs常用的接口和方法
6. 教程中教你如何在一个项目中使用vuejs
', '2018-09-02 20:37:04.738185', '2018-08-12 23:47:54.428471');
INSERT INTO "public"."tb_imooc_course" VALUES (205, 805, 'vagrant打造跨平台可移动的开发环境', '高级', 10542, 'Vgarant是开发者必备利器之一，本课程主要分为理论和实践两部分', 'PHP, Linux', 'https://img1.mukewang.com/58aa91850001a4f406000338-240-135.jpg', 'https://www.imooc.com/learn/805', '2小时25分', 9.6, 9.9, 9.1, 9.7, '简介：Vagrant目前是国内互联网公司应用最多的内部开发环境工具。Vagrant是我们开发者的福音，使我们完全摆脱了重复配置环境的处境。Vagrant简单的配置，丰富的自动化脚本资源以及分享的便捷性都是我们应该学习的思想，节省开发人员的大量准备工作时间,使开发人员更专注公司业务开发。本课程分为理论和实践两部分，理论部分主要讲解Vagrnat的好处和基本命令，实战阶段通过实战案例为大家讲解Vagrant配置开发环境的全过程。', '编_程_浪_子...', 'https://img1.mukewang.com/583e9afa000166c410240770-80-80.jpg', 'PHP开发工程师', '1、对Linux命令有所了解，当然完全不知道也没关系，按照视频一步一步来
2、课程文档地址：
   https://github.com/apanly/mooc  
   http://git.oschina.net/apanly/mooc 
3、ubuntu 1404镜像下载地址：
   https://pan.baidu.com/s/1kU8fUlD
    ', '1、Vagrant的好处 
2、Vagrant的常用命令 
3、Vagrant高级知识
4、Vagrant LAMP和LNMP环境配置 
5、Vagrant TP5,Yii2,Laravel5 运行环境配置 
6、Vagrant 优化
7、Vagrant 打包和分发', '2018-09-02 20:36:54.196057', '2018-08-12 23:47:42.804758');
INSERT INTO "public"."tb_imooc_course" VALUES (361, 505, 'AngularJS表单验证', '中级', 39467, '一看就明白的AngularJS表单验证', 'Angular', 'https://img.mukewang.com/55fd294e000175cc06000338-240-135.jpg', 'https://www.imooc.com/learn/505', '1小时 3分', 9.8, 10, 9.7, 9.9, '简介：AngularJS是前端开发流行框架，本课程通过详细的细分教学，让学生理解表单验证的意义，及实现方法，掌握Angular基础指令，通过不同的指令元素可以拥有不同功能，并通过指令与表单合作验证，从而实现表单验证的敏捷化开发。', '表严肃', 'https://img4.mukewang.com/57e986d80001730d11641164-80-80.jpg', 'Web前端工程师', '1.您具备HTML+CSS基础
2.具备JavaScript简单开发经验
3.了解Angular', '1.Angular基础指令
2.指令与表单如何合作验证', '2018-09-02 20:37:06.342995', '2018-08-12 23:47:55.408347');
INSERT INTO "public"."tb_imooc_course" VALUES (364, 619, 'PHP微信公众平台开发高级篇—网页授权接口', '高级', 24760, '一招获取微信用户资料信息，进而实现业务逻辑，完美', 'PHP', 'https://img4.mukewang.com/56e10dac0001a30c06000338-240-135.jpg', 'https://www.imooc.com/learn/619', '31分', 9.6, 9.9, 9.5, 9.3, '简介：在微信客户端中访问第三方网页，公众号可以通过微信网页授权机制，来获取用户基本信息，进而实现业务逻辑。', '_渔夫', 'https://img1.mukewang.com/5333a08f0001700202000200-80-80.jpg', 'PHP开发工程师', '学习本门课程之前，建议先了解一下知识，会更有助于理解和掌握本门课程
1、微信接口的基本知识
2、curl的get和post请求方式', '1、网页授权接口的作用
2、网页授权接口的使用场景
3、网页授权接口的使用技巧
4、网页授权接口的使用限制', '2018-09-02 20:37:06.54706', '2018-08-12 23:47:55.508628');
INSERT INTO "public"."tb_imooc_course" VALUES (363, 663, '玩儿转Swift 2.0（第三季）', '初级', 12541, '玩儿转Swift面向对象，对swift语言的掌握达到中等偏上水平', 'iOS', 'https://img.mukewang.com/574cfc320001bedf06000338-240-135.jpg', 'https://www.imooc.com/learn/663', '5小时24分', 9.7, 9.8, 9.9, 9.4, '简介：本课程是基于Swift2.2的基础课程第三季，liuyubobobo老师将为大家详细讲解面向对象编程的那点儿事。', 'liuyubobobo', 'https://img3.mukewang.com/5347593e00010cfb01400140-80-80.jpg', '全栈工程师', '本课程适合至少有一门编程语言基础的同学用于学习Swift语言。也适合在学习使用swift进行iOS开发的过程中，遇到不清楚的swift语言问题随时查询。本课程一共分为四季，没有学习过Swift的同学请按照第一~第四季的顺序学习，有基础的同学可以挑选章节观看，巩固提高。', '这是《玩儿转swift2.0》系列课程的第三季。通过整个系列课程的学习，大家可以全面、深入地了解swift的语法与语言特性，理解swift的设计原则和理念，对swift语言的掌握达到中等偏上的水平。', '2018-09-02 20:37:10.211996', '2018-08-12 23:47:55.490945');
INSERT INTO "public"."tb_imooc_course" VALUES (368, 659, '原生 JS 实现帧动画库', '中级', 42051, '了解如何用原生JS实现酷炫的帧动画，吸引他她的注意', 'JavaScript', 'https://img1.mukewang.com/573e8ada00018d4506000338-240-135.jpg', 'https://www.imooc.com/learn/659', '2小时52分', 9.5, 9.7, 9.4, 9.4, '简介：网页中各种酷炫的帧动画一定会吸引你的注意，难道你不想了解背后的实现原理吗。本课程首先介绍了常见的几种帧动画方案以及JS实现帧动画的原理，接下来介绍如何设计一个通用的帧动画解决方案，最后带大家一起实现一个 JS 帧动画库。', 'ustbhuangyi', 'https://img4.mukewang.com/577baef700019c4501400140-80-80.jpg', NULL, '1、对前端基础知识已经掌握（html、js、css）
2、对前端面向对象编程有一定了解', '1、什么是帧动画及网页中常见的几种帧动画方式
2、原生 JS 实现帧动画的原理
3、如何设计一个通用的帧动画解决方案 
4、了解类似 promise的设计思想（异步任务链式调用）
5、面向对象的开发方式和模块化开发思想
6、如何实现图片预加载模块

', '2018-09-02 20:37:09.782152', '2018-08-12 23:47:55.838088');
INSERT INTO "public"."tb_imooc_course" VALUES (844, 153, 'Android高级Root技术原理解析', '高级', 19251, '本课程是Android Root初级教程的升级版，分析Root原理的课程', 'Android', 'https://img3.mukewang.com/53c61eb60001a6e006000338-240-135.jpg', 'https://www.imooc.com/learn/153', '3小时 0分', 10, 10, 10, 10, '简介：本课程是Android Root初级教程的升级版。本课程中主要使用CM Android作为分析对象。从su命令创建LocalServer开始，分析在su.c、activity.c等源码文件中如何与Superuser进行交互。同时，分析Superuser如何与su建立LocalSocket连接，以及如何通知su进行Root授权或拒绝Root授权', '李宁', 'https://img.mukewang.com/538e88d900017ff501400140-80-80.jpg', '移动开发工程师', '本课程是Android Root的高级课程，在学习本课程之前，需要先学习Android Root的初级课程，当然，还需要熟悉Linux、C++/C、Android的基本使用方法', '1、Root权限与Root授权
2、Superuser.apk文件的位置和Settings的关系
3、CM ROM提取Root权限的原理
4、am命令的用法
5、Root相关流程
6、Superuser相关知识
7、初始化SQLite数据库的路径
8、检测su.sqlite数据库
9、创建LocalSocket服务', '2018-09-02 20:37:40.036725', '2018-08-12 23:48:38.417601');
INSERT INTO "public"."tb_imooc_course" VALUES (374, 649, 'Unity 3D灯光系统之基础篇', '初级', 13036, '游戏场景中灯光效果的优化，从而更好的提高项目的视觉效果', 'Unity 3D', 'https://img.mukewang.com/5716f5a30001780206000338-240-135.jpg', 'https://www.imooc.com/learn/649', '55分', 9.6, 10, 9.2, 9.5, '简介：通过边操作边讲解的详细的细分教学，理解Unity3D中灯光的概念和使用方法，并能理解和掌握灯光在游戏场景中的作用、使用局限和场景照明的优化方法，从而更好的提高项目的视觉效果', 'l木成l', 'https://img2.mukewang.com/57149cc400010cb915041477-80-80.jpg', '产品经理', '适用于Unity 3D初学者', '通过本课程，学习和理解了Unity3D中光照系统相关的核心知识点。结合实际操作，对Unity3D场景编辑中的灯光的使用方法得到全面的了解，为提高项目的视觉效果打下坚实基础。', '2018-09-02 20:37:08.905646', '2018-08-12 23:47:56.12355');
INSERT INTO "public"."tb_imooc_course" VALUES (213, 811, 'Restful API实战', '中级', 31660, 'PHP后端开发者如何迎上移动互联网发展热潮？', 'PHP', 'https://img1.mukewang.com/58c65abe0001269e06000338-240-135.jpg', 'https://www.imooc.com/learn/811', '2小时25分', 9.7, 9.8, 9.6, 9.5, '简介：随着移动互联网的发展，客户端层出不穷，app，web，微信端等等，而后端业务逻辑基于是一致的，如何做到业务逻辑“一次编写，随时接入”？答案是通过远程调用API，而目前比较火的方案是“Restful api”。简单来说，RESTful API 是基于HTTP协议产生的一种相对简单的API设计方案，属于无状态传输。本次教程将从“是什么-为什么-怎么做”的顺序跟大家一起来学习如何理解以及在生产环境下如何设计Restful API。', '会飞的鱼Xia...', 'https://img1.mukewang.com/56e44d170001dc9a01000100-80-80.jpg', '全栈工程师', '1.了解HTTP协议
2.对php的基础知识掌握，如数组、类、对象
', 'Restful API简介
HTTP协议简介
Restul API与SOAP的区别
Restful API设计要素
Restful API 设计流程', '2018-09-02 20:36:54.682401', '2018-08-12 23:47:43.337315');
INSERT INTO "public"."tb_imooc_course" VALUES (294, 679, '基于SSH实现员工管理系统之案例实现篇', '中级', 43573, 'SSH框架整合案例之实现篇，手把手带你实现员工管理系统', 'Java', 'https://img2.mukewang.com/57a1ca250001b2f206000338-240-135.jpg', 'https://www.imooc.com/learn/679', '2小时29分', 9.7, 9.9, 9.6, 9.7, '简介：本案例介绍如何使用Struts2+Hibernate+Spring框架实现员工管理系统，本套案例课程分为框架整合篇和案例实现篇，学习本门课程前请先学习《基于SSH实现员工管理系统之框架整合篇》。本门课程主要介绍员工管理系统案例是如何实现的！包括部门管理和员工管理两个功能模块。', '慕_神', 'https://img2.mukewang.com/55dbe4f1000115e705680568-80-80.jpg', 'JAVA开发工程师', '学习本门课程前，需要对Struts2、Hibernate、Spring的基础知识有所了解，没学过的同学可以观看慕课网的《Struts2入门》、《Spring入门》和《Hibernate初探之单表映射》等课程。 同时，还需要学习《基于SSH实现员工管理系统之框架整合篇》。', '1、能够自己动手搭建SSH整合环境
2、学会Struts2+Hibernate+Spring三大框架如何整合 
3、能够使用SSH框架开发员工管理系统', '2018-09-02 20:37:05.665732', '2018-08-12 23:47:50.323008');
INSERT INTO "public"."tb_imooc_course" VALUES (375, 607, 'Ajax技术在购物车中的应用（PHP篇）', '初级', 37259, '用购物车实例带你体验Ajax在项目中的设计思想和用户体验性', 'PHP', 'https://img1.mukewang.com/56cd23a50001595f06000338-240-135.jpg', 'https://www.imooc.com/learn/607', '2小时 3分', 9.7, 10, 9.7, 9.4, '简介：本课程从Ajax的基本概念到电子商城购物车实例中商品的添加、展示、修改和删除的开发实践，深入剖析了Ajax的工作原理以及开发理念，从而帮助小伙伴们更好地由浅至深地学习Ajax的项目设计方式，深度理解Ajax在项目当中的设计思想和极佳的用户体验性。', 'Jason李捷', 'https://img4.mukewang.com/589ae8ef00012f9711081111-80-80.jpg', 'PHP开发工程师', '学习本门课程之前，建议先了解一下知识，会更有助于理解和掌握本门课程
1、至少掌握一门服务端开发语言
2、掌握JavaScript客户端脚本编程语言
3、掌握优秀的JavaScript库JQuery的使用', '1、Ajax的基本概念
2、Ajax的常见案例
3、Ajax异步加载的优势
4、Ajax的基本工作原理
5、Ajax在电子商城购物车案例当中的应用', '2018-09-02 20:37:07.772023', '2018-08-12 23:47:56.210142');
INSERT INTO "public"."tb_imooc_course" VALUES (272, 795, 'Axure入门初体验', '入门', 46795, 'IT人必学，Axure入门基础课！', '设计工具, 产品交互', 'https://img3.mukewang.com/587db7af00016b7e06000338-240-135.jpg', 'https://www.imooc.com/learn/795', '4小时25分', 9.8, 10, 9.8, 9.5, '简介：Axure非常适合产品经理、运营经理、项目经理、交互设计师、UI设计师、开发工程师等IT岗位以及想投身互联网产品行业的学员深入学习。但Axure原型仅是用来梳理产品逻辑、更好表达需求的工具，学习软件的同时，更要注意互联网产品思维的训练。老师相关实战课《移动端App UI 设计入门与实战》也已经上线：https://coding.imooc.com/class/159.html', '何云山', 'https://img3.mukewang.com/54f166f90001115601000100-80-80.jpg', '产品经理', '本课程将为你详细介绍Axure的使用方法，并将8.0与7.0进行对比，如果不是新手，想了解Axure新版本的同学也可以学哦！', '熟悉掌握Axure，学会通过Axure原件、属性完成线框图、低保真原型、流程图等；通过Axure交互用例与条件生成完成交互原型、高保真原型；利用Axure函数、Axure变量等完成更复杂的原型效果；了解互联网产品开发流程以及交互原理。', '2018-09-02 20:36:58.780513', '2018-08-12 23:47:48.723259');
INSERT INTO "public"."tb_imooc_course" VALUES (376, 643, 'CSS深入理解之z-index', '中级', 37132, 'CSS技术大牛深入理解系列又一力作，z-index实践经验分享', 'HTML/CSS', 'https://img1.mukewang.com/56fb2f5c00013edf06000338-240-135.jpg', 'https://www.imooc.com/learn/643', '1小时 5分', 9.6, 9.8, 9.6, 9.4, '简介：本课程中，张鑫旭大大将带领大家学习z-index的基本知识，并深入讲解嵌套表现以及z-index计算规则。同时还将介绍CSS中非常基础且重要的元素层叠表现的概念、元素的层叠顺序，以及z-index、还有其他CSS属性与层叠上下文的关系。还有最值得期待的z-index实践经验分享！', '张鑫旭', 'https://img2.mukewang.com/549beab90001be9037445616-80-80.jpg', '页面重构设计', '既适合学习过CSS基础知识的新手深入学习，也欢迎有经验的小伙伴加深了解噢！', '1、深入理解嵌套表现及z-index的计算规则；
2、详细介绍元素层叠表现、顺序及CSS的一些属性对层叠上下文的作用；
3、分享z-index相关事件经验。', '2018-09-02 20:37:08.417176', '2018-08-12 23:47:56.264505');
INSERT INTO "public"."tb_imooc_course" VALUES (132, 911, 'AWS云计算—使用AWS实现自动化运维', '中级', 2001, '带你了解通过使用AWS自动化工具进行自动化运维，实现系统的高效可用。', '云计算', 'https://img.mukewang.com/59f6eca600016d7f06000338-240-135.jpg', 'https://www.imooc.com/learn/911', '3小时20分', 9.1, 9.7, 9.3, 8.3, '简介：本次自动化运维技术专场带你了解通过使用AWS自动化工具进行自动化运维，实现系统的高效可用。将运维人员从日常繁琐的工作和加班中解放出来，将更多的精力投入到新业务的创新当中。AWS 技术峰会2018 中国站将在上海、北京、深圳三地盛大召开，报名链接：https://awssummit.cn?tc=1s016B2uQi', '亚马逊AWS', 'https://img.mukewang.com/59c2078900017f7603000300-80-80.jpg', '全栈工程师', 'AWS技术峰会是亚马逊 AWS 每年在全球众多城市巡回举办的大型云服务技术盛会。
本次峰会将设立自动化运维技术、大数据技术、IOT、企业级服务、人工智能等多个技术主题分会场，邀请到涉及以上各领域的行业大咖。
该课程对于AWS基础服务需要有一定的了解', '1.于Amazon Kinesis Firehose的实时业务分析系统
2.公有云和混合云环境下，面向应用的安全解决方案
3.如何解决海量存储、不间断服务、大数据计算、跨机构数据交换等需求。
4.通过Rancher来用Docker运行应用程序的最佳实践
5.中心的接入，CDN的优化，以及链路安全', '2018-09-02 20:36:49.039472', '2018-08-12 23:47:36.610871');
INSERT INTO "public"."tb_imooc_course" VALUES (377, 654, 'Cocos2d-x坦克大战--下', '中级', 13568, '坦克的实现逻辑,AI以及地图编辑器，坦克的人工智能的编写', 'Cocos2d-x', 'https://img3.mukewang.com/5727f9930001cf7c06000338-240-135.jpg', 'https://www.imooc.com/learn/654', '1小时15分', 9.7, 9.6, 9.6, 9.8, '简介：本次课程将为大家介绍敌人的生成和敌人动作的人工智能以及对象交互及阵营处理。最后当然不能少了游戏中最重要的地图编辑器~~！快来开始吧', '徐波老师', 'https://img1.mukewang.com/55dd985500017e1f05120512-80-80.jpg', '移动开发工程师', '本课程需要配合Cocos 并使用Lua脚本语言进行编写, 需要同学们有一定的基础
', '1：坦克的人工智能的编写
2：怎么用阵营系统处理对象的关系?
3：怎么制作地图编辑器', '2018-09-02 20:37:09.02274', '2018-08-12 23:47:56.300236');
INSERT INTO "public"."tb_imooc_course" VALUES (383, 589, 'MySQL5.7复制功能实战', '中级', 33148, '了解最新版的MySQL数据库，领略MySQL5.7强大的复制功能', 'MySQL', 'https://img4.mukewang.com/5707653b0001e67f06000338-240-135.jpg', 'https://www.imooc.com/learn/589', '1小时29分', 9.8, 9.9, 9.8, 9.8, '简介：通过对服务器功能，复制功能，Replication功能及安全和管理功能的新增功能的介绍带您了解最新版的MySQL数据库。', 'sqlercn', 'https://img.mukewang.com/5ad7144100017a5e07410741-80-80.jpg', '数据库工程师', '本课程需要对MySQL有一定的使用基础。', '1、了解MySQL复制基本原理
2、掌握基于日志点的复制配置方法
3、掌握如何在线变更复制类型
4、掌握多源复制的使用方法和场景
5、掌握多线程复制的使用方法和场景', '2018-09-02 20:37:10.387925', '2018-08-12 23:47:56.651689');
INSERT INTO "public"."tb_imooc_course" VALUES (379, 615, 'Android-自定义ViewPager指示器', '初级', 29318, '带领大家实现最火爆的跟随型指示器，学完保准压倒一片', 'Android', 'https://img1.mukewang.com/5787411e0001372406000338-240-135.jpg', 'https://www.imooc.com/learn/615', '1小时20分', 9.4, 9.7, 9.3, 9.2, '简介：本节课将一步步实现仿“今日头条”等各大APP的跟随型ViewPager指示器，学完保准压倒一片！自定义View更上一层楼！', 'hyman', 'https://img2.mukewang.com/54169c430001face18403264-80-80.jpg', '移动开发工程师', '本门课程为中级案例课程
1、掌握Android基础知识
2、对自定义View有一定的使用经验', '1、自定义ViewPagerIndictor
2、合理计算滑动位置
3、Fragment+ViewPager经典使用方法', '2018-09-02 20:37:16.632161', '2018-08-12 23:47:56.398366');
INSERT INTO "public"."tb_imooc_course" VALUES (392, 644, 'JS实现人机大战之五子棋（AI篇）', '中级', 38362, '"AlphaGO"我要和你下五子棋，教程带你实现五子棋AI', 'JavaScript', 'https://img3.mukewang.com/56fc812d0001f1f106000338-240-135.jpg', 'https://www.imooc.com/learn/644', '31分', 9.7, 9.9, 9.6, 9.7, '简介：本案例是一个带AI的五子棋人机大战程序，课程分为两篇，本篇AI篇主要介绍AI算法的实现，详细介绍了使用到的数据结构，算法原理，并且手把手编写程序实现算法。', 'channingbree...', 'https://img1.mukewang.com/55a529c90001205902200220-80-80.jpg', 'Web前端工程师', '本课程是前端高级课程
1、具备算法基础', '1、五子棋AI的运行原理
2、五子棋AI使用到的数据结构
3、编程实现五子棋AI', '2018-09-02 20:37:07.801331', '2018-08-12 23:47:57.336224');
INSERT INTO "public"."tb_imooc_course" VALUES (393, 645, 'Cocos2d-x坦克大战--中', '中级', 8878, '介绍坦克的场景基本逻辑，碰撞及子弹系统的编写', 'Cocos2d-x', 'https://img2.mukewang.com/5701ff8200015b9206000338-240-135.jpg', 'https://www.imooc.com/learn/645', '1小时 3分', 9.8, 9.8, 9.8, 9.8, '简介：介绍坦克的场景基本逻辑, 场景碰撞及子弹系统的编写', '徐波老师', 'https://img.mukewang.com/55dd985500017e1f05120512-80-80.jpg', '移动开发工程师', '本课程需要配合Cocos 并使用Lua脚本语言进行编写, 需要同学们有一定的基础', '1.怎样绘制坦克中的场景及编写逻辑
2.如何处理场景碰撞?
3.子弹系统怎么制作?', '2018-09-02 20:37:07.891967', '2018-08-12 23:47:57.418805');
INSERT INTO "public"."tb_imooc_course" VALUES (314, 743, 'PHP之Yii2框架搭建完整博客系统', '中级', 18737, 'Yii是PHP快速开发的最佳实践之一，一起领略yii2快速开发的风采', 'PHP', 'https://img.mukewang.com/5800c1ea0001868f06000338-240-135.jpg', 'https://www.imooc.com/learn/743', '8小时15分', 9.7, 9.8, 9.7, 9.6, '简介：Yii是PHP快速开发的最佳实践之一，丰富的扩展资源，快速开发的思想，越来越受到企业的青睐，应用也愈加广泛。本课程以博客系统为例，讲述如何使用yii2.0实战开发，从中学习yii2.0的实践应用。内容分三个部分：基础配置、博客前台、博客后台。', '上班偷偷打酱...', 'https://img4.mukewang.com/5817eb7c00010eda02000200-80-80.jpg', 'PHP开发工程师', '1、对php的基础知识掌握，如数组、类、对象。
2、对yii2高级版框架的基础技能掌握
', '1、如何搭建yii2.0框架
2、框架的基础配置与数据库配置
3、Yii2.0场景和事件的应用
4、如何使用yii2开发登录注册及完整的前台功能
5、如何开发文章统计功能
7、博客后台管理系统功能的快速开发
8、gii工具的使用，快速生成代码', '2018-09-02 20:37:00.330745', '2018-08-12 23:47:51.895523');
INSERT INTO "public"."tb_imooc_course" VALUES (389, 637, '进击Node.js基础（二）', '中级', 75443, '本教程带你攻破 Nodejs，让 JavaScript流畅运行在服务器端', 'Node.js', 'https://img2.mukewang.com/56f22f160001bac306000338-240-135.jpg', 'https://www.imooc.com/learn/637', '2小时 4分', 9.6, 9.8, 9.5, 9.7, '简介：Node.js 的推出，不仅从工程化的角度自动化掉更多琐碎费时的工作，更打破了前端后端的语言边界，让 JavaScript 流畅的运行在服务器端，本系列课程是一个系列课程，前导课程是《进击Node.js基础（一）》，所以建议小伙伴们学习本课程之前先把它拿下。', 'Scott', 'https://img2.mukewang.com/5344e6d10001867401400140-80-80.jpg', NULL, '本课程是一个系列课程，前导课程是《进击 Node.js 基础（一）》，所以建议小伙伴们学习本课程之前先把它拿下。', '1、了解 Promise
2、横扫 Nodejs API：Buffer、API-Stream
', '2018-09-02 20:37:07.786651', '2018-08-12 23:47:57.199166');
INSERT INTO "public"."tb_imooc_course" VALUES (386, 530, 'jQuery基础(二)—DOM篇', '入门', 100795, 'jQuery第二阶段开启DOM修炼，了解创建、插入、删除与替换', 'jQuery', 'https://img2.mukewang.com/57466c8e00011b6f06000338-240-135.jpg', 'https://www.imooc.com/learn/530', '2小时17分', 9.1, 9.5, 9.1, 8.8, '简介：教程总共分为4个部分，分别是样式篇、事件篇、动画篇、DOM篇。此为第二个部分—DOM篇。本教程主要讲解jQuery中节点的创建、插入、删除与替换，除此之外我们还可以了解到jQuery中丰富的遍历节点的方法。', 'Aaron艾伦', 'https://img4.mukewang.com/54bf47ea000132d002200220-80-80.jpg', 'Web前端工程师', '1、有HTML/CSS基础
2、有JavaScript基础', '1、jQuery的语法 
2、jQuery节点操作', '2018-09-02 20:37:10.182496', '2018-08-12 23:47:56.926703');
INSERT INTO "public"."tb_imooc_course" VALUES (387, 636, 'Unity3D五子棋大战', '中级', 31455, '使用Unity3D编写五子棋游戏,带人工智能，不比AlphaGo差', 'Unity 3D', 'https://img4.mukewang.com/570763010001d7bc06000338-240-135.jpg', 'https://www.imooc.com/learn/636', '56分', 9.5, 9.5, 9.6, 9.4, '简介：使用Unity3D编写五子棋游戏, 带人工智能哦', '徐波老师', 'https://img2.mukewang.com/55dd985500017e1f05120512-80-80.jpg', '移动开发工程师', '本课程使用Unity3D的UGUI进行开发, 需要初步的Unity3D知识', 'Unity3D的UGUI基本操作方法
Unity3D的UGUI屏幕适配
棋类游戏基本设计思路及框架
人工智能', '2018-09-02 20:37:10.402787', '2018-08-12 23:47:56.939077');
INSERT INTO "public"."tb_imooc_course" VALUES (388, 639, 'JS实现人机大战之五子棋（UI篇）', '中级', 31799, '利用js及canvas绘图知识，实现程序界面编写和交互逻辑处理', 'JavaScript', 'https://img3.mukewang.com/56f35c5900014a9906000338-240-135.jpg', 'https://www.imooc.com/learn/639', '30分', 9.7, 9.9, 9.7, 9.5, '简介：本案例是一个带AI的五子棋人机大战程序，课程分为两篇，本篇UI篇主要介绍案例界面的编写以及交互逻辑的处理，主要涉及js及canvas绘图知识。', 'channingbree...', 'https://img2.mukewang.com/55a529c90001205902200220-80-80.jpg', 'Web前端工程师', '本课程是前端中级课程
1、JS基础知识
2、Canvas基础知识', '1、canvas绘制五子棋棋盘
2、canvas绘制黑白棋子
3、五子棋交互逻辑处理', '2018-09-02 20:37:07.904712', '2018-08-12 23:47:57.191054');
INSERT INTO "public"."tb_imooc_course" VALUES (323, 732, 'okhttp框架解析与应用', '中级', 17050, '本课绝对让你掌握okhttp网络框架，了解源码及其执行流程
', 'Android', 'https://img3.mukewang.com/57fc5c8d00017abf06000338-240-135.jpg', 'https://www.imooc.com/learn/732', '1小时21分', 9.7, 9.8, 9.7, 9.8, '简介：首先会带领大家了解okhttp网络框架用的优势及它在基本执行流程，了解以后，我们会讲解一些okhttp网络框架常用 的api，最后我们会对其进行一个简单的封装使网络框架变的方便使用。
慕课网Android讨论群② 170368200', 'qndroid', 'https://img1.mukewang.com/5333a0350001692e02200220-80-80.jpg', '移动开发工程师', '大家要对网络请求有一定的了解，对okhttp网络框架也要有一定的了解，可以先到官网了解一下okhttp网络框架的一个大概。', '通过本课程，不仅让你学会使用比较前沿的okhttp网络框架,还要带你看一下okhttp网络框架的源码及其执行流程，让你彻底掌握其使用。
慕课网Android讨论群② 170368200', '2018-09-02 20:37:02.718534', '2018-08-12 23:47:52.396899');
INSERT INTO "public"."tb_imooc_course" VALUES (400, 611, '数据结构探险—栈篇', '中级', 51843, '栈，先入后出(FILO)，带领大家体会栈这种数据结构的美妙', 'C++', 'https://img2.mukewang.com/56d3f1d00001519006000338-240-135.jpg', 'https://www.imooc.com/learn/611', '1小时56分', 9.7, 9.8, 9.7, 9.7, '简介：本课程将带领大家体会栈这种数据结构的美妙，并详细讲解从单一数据类型栈到栈模板的升华过程，最后安排数制转换及括号匹配的例子，使学员可以通过例子对栈的知识有更深刻的理解和认识，所有知识均通过编码实践的方式讲解到操作层面，力求即学即会。', 'james_yuan', 'https://img4.mukewang.com/550f82810001c44902200220-80-80.jpg', '学生', '"本课程是数据结构初级课程
1、熟练掌握C++语言基础语法"			
', '1、栈的工作原理			
2、栈的实现方法及编码技巧			
3、栈模板的编码技巧和使用技巧			
4、数制转换编程思路及栈的作用			
5、括号匹配编程思路及栈的作用			
', '2018-09-02 20:37:08.819763', '2018-08-12 23:47:58.027993');
INSERT INTO "public"."tb_imooc_course" VALUES (399, 588, '重拾CSS的乐趣', '初级', 66020, '开发中使用CSS时的一些经验感悟，魔法哥带你玩儿转有乐趣的CSS', 'HTML/CSS, CSS3', 'https://img3.mukewang.com/569cac7a00015dd706000338-240-135.jpg', 'https://www.imooc.com/learn/588', '49分', 9.5, 9.6, 9.6, 9.4, '简介：本课程中我们将会分享在开发中使用CSS时的一些经验感悟，也会总结一些使用CSS绘制图标的方法和怎样用CSS实现内凹圆角，并给大家推荐几本学习和使用CSS必备的经典好书！', 'BXT技术沙龙...', 'https://img4.mukewang.com/56c40e21000131a902200220-80-80.jpg', NULL, '既适合想了解CSS绘图思想的初学者，也适合有经验的技术同学提升CSS绘制技巧！', '使用CSS绘制图标、用CSS实现内凹圆角、几本CSS好书。', '2018-09-02 20:37:08.458905', '2018-08-12 23:47:58.007199');
INSERT INTO "public"."tb_imooc_course" VALUES (397, 622, '最新Openstack技术和实战', '中级', 17372, '最新Openstack技术和实战，喜欢私有云的同学都来', '云计算', 'https://img4.mukewang.com/56dd41cf0001599506000338-240-135.jpg', 'https://www.imooc.com/learn/622', '2小时31分', 10, 10, 10, 10, '简介：最新openstack技术解析', 'Openstack中...', 'https://img1.mukewang.com/54b630440001e12202200220-80-80.jpg', NULL, '喜欢私有云的同学都来', '了解最新Openstack技术和实战', '2018-09-02 20:37:08.390534', '2018-08-12 23:47:57.636397');
INSERT INTO "public"."tb_imooc_course" VALUES (409, 616, 'PHP微信公众平台开发高级篇—自定义菜单', '中级', 26452, '自定义菜单是微信开发中必不可少的环节，约吗？', 'PHP', 'https://img3.mukewang.com/56e10de50001f0b606000338-240-135.jpg', 'https://www.imooc.com/learn/616', '58分', 9.6, 9.8, 9.4, 9.6, '简介：自定义菜单是微信开发中必不可少的环节，掌握好自定义菜单可以让你的公众号与微信用户之间实现更便捷的交互。', '_渔夫', 'https://img1.mukewang.com/5333a08f0001700202000200-80-80.jpg', 'PHP开发工程师', '学习本门课程之前，建议先了解一下知识，会更有助于理解和掌握本门课程
1、微信接口的基本知识
2、curl的get和post请求方式', '1、自定义菜单接口的作用
2、自定义菜单接口的使用场景
3、自定义菜单接口的使用技巧
4、自定义菜单接口的使用限制', '2018-09-02 20:37:09.332852', '2018-08-12 23:47:58.793463');
INSERT INTO "public"."tb_imooc_course" VALUES (350, 676, '手机服务器微架构设计与实现', '中级', 24383, '带你打造一个轻量级服务器微架构，积累项目经验，摆平面试官', 'Android', 'https://img2.mukewang.com/57725dcc0001b44906000338-240-135.jpg', 'https://www.imooc.com/learn/676', '56分', 9.4, 9.9, 9.3, 8.9, '简介：手机上那些文件互传、远程文件下载、WIFI传书是怎么做的？本课程带你深入移动应用研发的特定领域，搞定这些非大众化技术。不仅能夯实网络编程、HTTP协议基础，摆平面试官，还能积累项目经验亲手打造一款跑在手机上的服务器微架构的HTTP Server', '大S酱', 'https://img4.mukewang.com/57198ab00001cb7e01200120-80-80.jpg', '移动开发工程师', '请在学习本课程前了解socket、Http协议基本概念、具备java、android编程基础', '本课程能带你夯实HTTP协议的基础理论，实践android中socket的使用，无需任何第三方代码动手打造一个跑在手机上的服务器微架构HTTP Server', '2018-09-02 20:37:04.535225', '2018-08-12 23:47:54.36447');
INSERT INTO "public"."tb_imooc_course" VALUES (398, 623, 'PHP第三方登录—微博登录', '中级', 21554, '使用微博官方SDK快速接入微博登录，绝对不应该错过本门课程', 'PHP', 'https://img4.mukewang.com/56e1321f0001550c06000338-240-135.jpg', 'https://www.imooc.com/learn/623', '56分', 9.6, 9.9, 9.7, 9.2, '简介：想使用最简单的方法为我们的Web应用获取新用户，你绝对不应该错过本门课程。本课程带领大家掌握使用微博开放平台提供的SDK快速接入微博开放平台，迅速获取海量用户。', '壞大叔badUnc...', 'https://img1.mukewang.com/59311bea0001e93207410741-80-80.jpg', 'PHP开发工程师', '学习本课程前，需要首先学习OAuth协议基本原理课程，有一定的PHP语言基础以及OOP思想。', '1、OAuth协议基本原理
2、如何成为微博开放平台开发者
3、如何将自己的Web应用接入微博登录', '2018-09-02 20:37:08.51571', '2018-08-12 23:47:57.730718');
INSERT INTO "public"."tb_imooc_course" VALUES (395, 646, 'iOS-五子棋大战', '高级', 22952, '从零开始，挑战阿尔法狗，详细讲解和最终AI的算法实现', 'iOS', 'https://img1.mukewang.com/570357040001671306000338-240-135.jpg', 'https://www.imooc.com/learn/646', '47分', 10, 10, 10, 10, '简介：从零开始，逐渐介绍游戏整体界面的搭建，游戏资源怎么去添加，点击手势判断，AI决策的思路和算法的详细讲解和最终AI的算法实现', '_iBonjour', 'https://img2.mukewang.com/548e918d000163fd01800180-80-80.jpg', '移动开发工程师', '需要有iOS开发的基础知识', '1.如何绘制界面 
2.如何添加资源 
3.如何写出一个可以对当前场上形势判断并作出下一步的决策的AI算法的实现4.并且判断总终的胜利和失败', '2018-09-02 20:37:08.36193', '2018-08-12 23:47:57.481969');
INSERT INTO "public"."tb_imooc_course" VALUES (329, 711, 'iOS-直播间礼品发送', '中级', 3639, '快速实现移动直播App礼品发送功能，让自己的App也大放异彩
', 'iOS', 'https://img2.mukewang.com/57bc08150001e04a06000338-240-135.jpg', 'https://www.imooc.com/learn/711', '1小时27分', 9.9, 9.9, 10, 9.7, '简介：本课程为iOS直播间礼品发送功能的讲解，现如今直播App已然形成了一种热潮，多数App都会在自己的App中新增一项直播功能，并且需要让用户能够发送礼品消息，而热衷于技术的我们又怎甘落后，学习如何实现发送礼品功能，让自己的App也大放异彩！', 'TerryG', 'https://img4.mukewang.com/57a991b80001a15406500634-80-80.jpg', '全栈工程师', '学习本课程之前需要掌握如下知识：
1、熟练掌握UI相关知识
2、熟悉iOS动画
3、了解MVC模式', '1、如何从0开始搭建项目框架
2、了解消息驱动机制
3、学会各元素间的交互', '2018-09-02 20:37:03.029738', '2018-08-12 23:47:52.677935');
INSERT INTO "public"."tb_imooc_course" VALUES (288, 718, '前端实时可视化开发工具体验', '初级', 39290, '使用可见即可得的开发模式，极大提高前端开发效率', 'JavaScript', 'https://img2.mukewang.com/57d39fd400011b1006000338-240-135.jpg', 'https://www.imooc.com/learn/718', '1小时 0分', 9.6, 9.7, 9.7, 9.4, '简介：前端开发中，我们常常平凡的修改 html，css，js，然后刷新页面，看效果，在调整，再刷新。本课程使用liveStyle，liveReload，browserSync工具实现帮你实现修改代码后，立即体现效果，使用可见即可得的开发模式，极大的提高前端开发效率。', '玄彦', 'https://img3.mukewang.com/5659bd7a00017b4a04800480-80-80.jpg', '移动开发工程师', '本课程是web前端课程，初级中级高级都可以学习', '1、liveStyle,liveReload,browserSync的使用			
2、常见可见可得工具的优缺点			
3、glup结合liveReload和browserSync使用			
4、提高前端开发效率', '2018-09-02 20:37:01.318451', '2018-08-12 23:47:50.102283');
INSERT INTO "public"."tb_imooc_course" VALUES (403, 507, 'React实战--打造画廊应用（上）', '高级', 55651, '颠覆式前端UI开发框架 React，打造图片画廊实践案讲解', 'React.JS', 'https://img2.mukewang.com/571db8940001418006000338-240-135.jpg', 'https://www.imooc.com/learn/507', '2小时 4分', 9.4, 9.6, 9.4, 9.1, '简介：在了解React基础知识的背景上，通过使用 React高效打造图片画廊实践案讲解，让您清楚真实项目开发流程及React应用。React课程分为：React入门"、"React实践图片画廊应用(上)"、"React实践图片画廊应用(下)"三门课程，该课程是第二门课程。', 'Materliu', 'https://img.mukewang.com/558f98f00001537842083120-80-80.jpg', 'Web前端工程师', '您要具备以下前导知识：
1、需要有一定的JS基础
2、CSS前端基础
3、React基础知识
4、了解前端自动化的相关知识，Yeoman，Grunt，Sass等。
5、先学习“React入门”课程', '1、2015年最优秀的前端集成解决方案
2、CSS3动画，变形，字体渲染方式等大前端周边扩展知识
3、真实的项目开发流程
4、如何利用好github保存项目，发布web说明站点。', '2018-09-02 20:37:07.1883', '2018-08-12 23:47:58.305983');
INSERT INTO "public"."tb_imooc_course" VALUES (319, 736, 'Python-走进Requests库', '中级', 31997, 'python类库中，requests是一件利器，想深入了解一起来学吧', 'Python, 大数据', 'https://img1.mukewang.com/57fdb282000186df06000338-240-135.jpg', 'https://www.imooc.com/learn/736', '2小时47分', 9.5, 9.7, 9.4, 9.5, '简介：通过requests类库的学习，理解HTTP基本原理，并能够纯熟地使用requests和Github API进行数据交互。除此之外，你还能够获得诸如HTTP认证，Oauth授权等进阶知识和技能.', '飞雀123', 'https://img3.mukewang.com/57fdd7fd0001ad0c02750183-80-80.jpg', '全栈工程师', '1. 了解基本python语法 
2. 知道如何搭建python开发环境 ', '1. HTTP基本原理，客户端和服务端的通信机制 
2. 通过Requests库构建⼀一个完整请求 
3. 通过Requests库获取和处理响应 
4. 能够使⽤用Requests库和Github API进⾏行数据交互 
5. 深度理解Restful API的含义 ', '2018-09-02 20:37:02.433957', '2018-08-12 23:47:52.097663');
INSERT INTO "public"."tb_imooc_course" VALUES (340, 673, '数据结构探险之树篇', '中级', 43963, '树，将为你开启更精彩的数据结构大门，了解更多概念', 'C++', 'https://img3.mukewang.com/576a4a56000119fa06000338-240-135.jpg', 'https://www.imooc.com/learn/673', '2小时 0分', 9.7, 9.9, 9.6, 9.7, '简介：课程从树的实现原理角度讲解了树的相关概念，着重讲解了二叉树三种遍历方式的原理，并通过编码实践，进一步说明二叉树使用数组和链表方式的编程技巧，以及前序遍历、中序遍历和后序遍历递归实现', 'james_yuan', 'https://img2.mukewang.com/550f82810001c44902200220-80-80.jpg', '学生', '应该熟练掌握C++相关语法，重点掌握数组、结构体及递归函数，需要熟悉线性表和链表相关内容
', '通过课程的学习，你将掌握树的相关概念，数组二叉树，链表二叉树及二叉树递归实现的前序遍历、中序遍历和后序遍历', '2018-09-02 20:37:04.094135', '2018-08-12 23:47:53.551165');
INSERT INTO "public"."tb_imooc_course" VALUES (273, 479, '使用SpringMVC+Spring+Hibernate开发人员信息管理功能', '中级', 53641, 'Java常用框架整合案例，通过本案例的学习还可以体会项目的实现流程', 'Java', 'https://img4.mukewang.com/55d289f60001931006000338-240-135.jpg', 'https://www.imooc.com/learn/479', '1小时38分', 8.9, 9, 8.9, 8.7, '简介：本课程通过人员信息管理功能的开发，来介绍在实际项目中广泛应用的SpringMVC、Spring和Hibernate三大框架的整合。主要内容包括：案例演示、整体设计和代码实现，通过案例的学习还可以体会项目的实现流程。', 'moocer', 'https://img2.mukewang.com/58db190e0001643d02000200-80-80.jpg', 'JAVA开发工程师', '各位小伙伴，学习本课程前需要对SpringMVC、spring和Hibernate的基础知识有所了解，尤其是spring中事务的应用。', '1、掌握如何进行SpringMVC、spring和hibernate的整合
2、能够使用SpringMVC+spring+hibernat独立开发信息管理类的项目，进行数据的增删改查。', '2018-09-02 20:36:59.868901', '2018-08-12 23:47:48.751573');
INSERT INTO "public"."tb_imooc_course" VALUES (408, 429, 'jQuery基础(三)—事件篇', '入门', 78184, 'jQuery第三阶段开启事件修炼，掌握对页面进行交互的操作', 'jQuery', 'https://img.mukewang.com/563821d4000138a406000338-240-135.jpg', 'https://www.imooc.com/learn/429', '1小时47分', 8.7, 9.2, 8.5, 8.3, '简介：jQuery基础课程总共分为4个部分，分别是样式篇、事件篇、动画篇、DOM篇。此为第三个部分—事件篇。此部分当中包含了，鼠标事件，表单事件，键盘事件，事件的绑定和解绑以及自定义事件。通过本课程的事件，我们能更快速的对页面进行交互的操作。', 'Aaron艾伦', 'https://img.mukewang.com/54bf47ea000132d002200220-80-80.jpg', 'Web前端工程师', '1、有HTML/CSS基础 
2、有JavaScript基础', '1、jQuery的基础语法 
2、jQuery事件处理', '2018-09-02 20:37:09.410438', '2018-08-12 23:47:58.778265');
INSERT INTO "public"."tb_imooc_course" VALUES (435, 575, 'MongoDB在线讲座系列之MongoDB DBA的日常巡检及执行计划分析', '中级', 6872, '听完讲座大家能对MongoDB的巡检，优化与执行计划分析有所了解', 'MongoDB', 'https://img.mukewang.com/57466a7b0001a49806000338-240-135.jpg', 'https://www.imooc.com/learn/575', '52分', 9.9, 9.8, 10, 9.9, '简介：数据库的运行状态，健康情况都关系着我们应用的效率。本次在线讲座将从MongoDB的日常巡检展开，涉及troubleshooting、优化，并对执行计划进行分析，以便大家能对MongoDB的巡检，优化与执行计划分析有所了解。', 'MongoDB中文...', 'https://img3.mukewang.com/54bf1a320001cc8802200220-80-80.jpg', NULL, '感兴趣的同学快来', '对MongoDB的巡检，优化与执行计划分析有所了解。', '2018-09-02 20:37:10.662173', '2018-08-12 23:48:01.080716');
INSERT INTO "public"."tb_imooc_course" VALUES (417, 658, 'iOS基础教程之-Camera摄像头', '初级', 9174, 'iOS教程让你重新认识Camera-摄像头，学习Camera处理的基础功能', 'iOS', 'https://img3.mukewang.com/5739236a0001f21506000338-240-135.jpg', 'https://www.imooc.com/learn/658', '2小时 5分', 10, 10, 10, 10, '简介：从实例出发介绍我们的Camera，可以实现Camera属性检测，照片拍摄，视频录制，图片展示，录制视频播放，图片存储，照片库扫描，拍摄视频编辑等Camera处理的基础功能', 'Jones__', 'https://img3.mukewang.com/5aa23ce700016f2a02560172-80-80.jpg', '算法工程师', '本课程适合客户端产品经理，研发人员以及对IOS新特性感兴趣的人群', '    （1）数码相机相关的所有API
    （2）利用Camera实现相机的各种属性检测
    （3）利用Camera拍照、保存、遍历相册等功能
    （4）利用Camera拍摄视频、视频剪切功能
    ', '2018-09-02 20:37:07.253488', '2018-08-12 23:47:59.320931');
INSERT INTO "public"."tb_imooc_course" VALUES (356, 700, '软件测试基础-概念篇', '入门', 76511, '软件测试入门教程，必学课程，帮助你深入、清晰地理解软件测试', '功能测试', 'https://img4.mukewang.com/57a2fbab0001179b06000338-240-135.jpg', 'https://www.imooc.com/learn/700', '3小时 2分', 9.4, 9.6, 9.3, 9.2, '简介：系统介绍什么是软件测试，从软件测试的定义、原则以及测试阶段、测试模式、测试手段和测试类型分别详细说明软件测试中的各种测试概念，帮助你深入、清晰地理解软件测试。进阶学习：《系统深入Android自动化测试-Java篇》http://coding.imooc.com/class/77.html', '城下秋草', 'https://img3.mukewang.com/5888bc8b00013e3f08000533-80-80.jpg', '软件测试工程师', '本门课程适合有志于从事软件测试或在校软件专业的同学学习，
最好了解一些软件工程的基本概念，对软件测试这个职业有一些最基本的认识。（随堂资料：http://img.mukewang.com/down/57bd4d2f0001474e00000000.rar）', '通过学习本门课程，能够理清我们接触到得各种不同的软件测试概念以及它们的主要作用和适用场景，可以更加理解软件测试这个职业的作用和对软件产品的意义。
慕课网测试交流群  559506833', '2018-09-02 20:37:05.327824', '2018-08-12 23:47:54.681254');
INSERT INTO "public"."tb_imooc_course" VALUES (413, 650, 'AndroidStudio技巧全集', '初级', 58942, 'AndroidStudio使用技巧全集,掌握使用技巧刻不容缓', 'Android', 'https://img3.mukewang.com/57919306000175bf06000356-240-135.jpg', 'https://www.imooc.com/learn/650', '1小时39分', 9.7, 9.8, 9.7, 9.6, '简介：Android Studio 是一个Android开发环境，基于IntelliJ IDEA. 类似 Eclipse ADT，Android Studio 提供了集成的 Android 开发工具用于开发和调试。随着Android Studio的普及，掌握使用技巧刻不容缓！', 'nate', 'https://img3.mukewang.com/547697d10001e0b110240679-80-80.jpg', '移动开发工程师', '本门课程为工具使用类课程，学习的小伙伴们最好有一定的Android基础。Android Studio是谷歌公司新推出的一款更好的开发工具，希望大家砸今后的开发中能够熟练使用。', '1、AndroidStudio介绍
2、各种快捷键使用
3、NDK集成', '2018-09-02 20:37:09.063578', '2018-08-12 23:47:59.098556');
INSERT INTO "public"."tb_imooc_course" VALUES (416, 430, 'jQuery基础(四)—动画篇', '初级', 76550, 'jQuery基础教程动画篇，讲解jQuery基础开启动画修炼', 'jQuery', 'https://img2.mukewang.com/563821b5000115e006000338-240-135.jpg', 'https://www.imooc.com/learn/430', '1小时37分', 9.2, 9.5, 9.1, 9, '简介：jQuery基础课程总共分为4个部分，分别是样式篇、事件篇、动画篇、DOM篇。此为最后一个部分—动画篇。通过本课程的学习，我们可以制作出以下效果：隐藏和显示、上卷下来、淡入淡出。我们也可以通过自定义动画去完成一些我们想要的效果。', 'Aaron艾伦', 'https://img4.mukewang.com/54bf47ea000132d002200220-80-80.jpg', 'Web前端工程师', '1、有HTML/CSS基础
2、有JavaScript基础', '1、jQuery的基础语法 
2、jQuery当中的动画处理
', '2018-09-02 20:37:09.546412', '2018-08-12 23:47:59.221517');
INSERT INTO "public"."tb_imooc_course" VALUES (414, 657, 'Android-打造炫酷进度条', '初级', 29732, 'Android开发中各种各样的自定义进度条介绍，让你的APP更炫酷', 'Android', 'https://img3.mukewang.com/5733fcce0001103506000338-240-135.jpg', 'https://www.imooc.com/learn/657', '1小时21分', 9.4, 9.6, 9.3, 9.3, '简介：进度条即在应用程序处理任务时，实时的，以图形显示处理任务的速度，完成度，剩余未完成任务量的大小，和可能需要处理时间，一般以长方形条状显示。本门课程将为大家带来各种各样的自定义进度条！为你的APP锦上添花！', 'hyman', 'https://img3.mukewang.com/54169c430001face18403264-80-80.jpg', '移动开发工程师', '本门课程开发环境为Eclipse!
想学的小伙伴们要有一定的Android基础！
特别是自定义控件的基础！', '1、自定义控件编写
2、自定义条形进度条
3、自定义圆形进度条', '2018-09-02 20:37:07.153314', '2018-08-12 23:47:59.121333');
INSERT INTO "public"."tb_imooc_course" VALUES (324, 746, 'iOS快速构建IM功能', '中级', 6529, '本视频教程将告诉大家在iOS开发中如何快速构建一个IM功能', 'iOS', 'https://img.mukewang.com/58082cda0001d13b06000338-240-135.jpg', 'https://www.imooc.com/learn/746', '1小时41分', 9.9, 10, 10, 9.8, '简介：现如今通过手机软件来交流的人越来越多，我们可以通过手机社交软件进行发消息，发语音，发红包，发照片，撤回消息等等很多操作，现在这些与我们的生活都密不可分。那如何实现这样的功能呢？本门课就将告诉大家在iOS中如何快速构建一个IM功能。', 'gix_ic', 'https://img.mukewang.com/5458626a0001503602200220-80-80.jpg', '移动开发工程师', '学习本课程之前需要掌握如下知识：
1、掌握OC相关知识
2、掌握UI相关知识
3、熟悉网络、多线程相关知识', '1、集成第三方首先需要做什么
2、如何根据官方文档去集成项目
3、如何去添加实现IM的相关功能
', '2018-09-02 20:37:02.744434', '2018-08-12 23:47:52.578025');
INSERT INTO "public"."tb_imooc_course" VALUES (411, 655, 'iOS基础教程-文件操作', '初级', 13589, 'iOS文件处理,存储文件和读取,写文件，还涉及SQLite的增删改查', 'iOS', 'https://img2.mukewang.com/57281f550001941406000338-240-135.jpg', 'https://www.imooc.com/learn/655', '1小时 9分', 9.9, 10, 10, 9.7, '简介：从沙盒机制为切入点,通过对常见需求的分析,详细讲解iOS自有的文件处理类和SQLite的基本知识以及在项目开发中的简单使用.内容涉及文件夹和文件的创建和删除,SQLite的增删改查.', 'Keegan', 'https://img3.mukewang.com/565e844f0001ff0a04100410-80-80.jpg', '移动开发工程师', '掌握iOS的函数、字符处理等基本的语法.
', '1. 掌握iOS文件处理类的基本语法和使用场景.
2. 掌握SQLite的基本语法和使用场景.
3. 项目应用,制作简单交互式页面.', '2018-09-02 20:37:09.152572', '2018-08-12 23:47:58.845989');
INSERT INTO "public"."tb_imooc_course" VALUES (326, 651, '数据结构探险之线性表篇', '中级', 44623, '线性表的主体顺序表和链表，让学员能够将知识融会贯通学以致用', 'C++', 'https://img2.mukewang.com/5719fb5a00019e5c06000338-240-135.jpg', 'https://www.imooc.com/learn/651', '3小时 9分', 9.7, 9.8, 9.6, 9.6, '简介：本课程主要以顺序表和链表作为内容主体，详细讲述了顺序表及链表的实现原理，并手把手完成顺序表及链表的基本结构操作，课程的最后通过通讯录的经典实例进一步深化讲解较为复杂的链表，使学员可以将知识融会贯通以至于学以致用。', 'james_yuan', 'https://img2.mukewang.com/550f82810001c44902200220-80-80.jpg', '学生', '"本课程是数据结构初级课程
1、熟练掌握C++语言基础语法"			
', '1、顺序表的工作原理			
2、顺序表的实现方法及编码技巧			
3、链表的工作原理			
4、链表的实现方法及编码技巧			
5、通讯录的实现原理及编码技巧			
', '2018-09-02 20:37:06.71955', '2018-08-12 23:47:52.61823');
INSERT INTO "public"."tb_imooc_course" VALUES (357, 706, 'JavaScript正则表达式', '中级', 83909, 'JavaScript正则表达式教程，理解之后，正则表达式比你想象的简单', 'JavaScript', 'https://img2.mukewang.com/57ab14aa0001bc9706000338-240-135.jpg', 'https://www.imooc.com/learn/706', '1小时30分', 9.7, 9.9, 9.6, 9.6, '简介：很多人对正则表达式的印象是很强大、很难学、记不住。本次课程可信目标就是让大家不是记住正则表达式，而是理解正则表达式，借助图形化工具让大家直观的感受正则表达式，用起来得心应手，挥洒自如。你懂了正则表达式真的很简单！', 'Samaritan89', 'https://img1.mukewang.com/59cc954a0001c97b02000200-80-80.jpg', 'Web前端工程师', '1、对JavaScript 语法了解。
2、熟练使用文本编辑器。
', '1、正则表达式基本语法
2、正则表达式分类梳理
3、好用的正则表达式图形化理解工具
4、正则表达式在JavaScript中的应用
5、常见文本批处理办法

', '2018-09-02 20:37:05.241991', '2018-08-12 23:47:54.873106');
INSERT INTO "public"."tb_imooc_course" VALUES (412, 617, 'PHP微信公众平台开发高级篇—群发接口', '高级', 16800, '不群发，无微信，通过本教程学习实现更灵活的群发能力', 'PHP', 'https://img4.mukewang.com/56e10dd4000108d706000338-240-135.jpg', 'https://www.imooc.com/learn/617', '17分', 9.6, 9.7, 9.7, 9.4, '简介：对于某些具备开发能力的公众号运营者，可以通过高级群发接口，实现更灵活的群发能力。', '_渔夫', 'https://img2.mukewang.com/5333a08f0001700202000200-80-80.jpg', 'PHP开发工程师', '学习本门课程之前，建议先了解一下知识，会更有助于理解和掌握本门课程
1、微信接口的基本知识
2、curl的get和post请求方式', '1、群发接口的作用
2、群发接口的使用场景
3、群发接口的使用技巧
4、群发接口的使用限制', '2018-09-02 20:37:09.584842', '2018-08-12 23:47:59.025667');
INSERT INTO "public"."tb_imooc_course" VALUES (421, 568, 'iOS9新特性之UIStackView', '初级', 12680, '从实例出发介绍iOS9新组键UIStackView的使用，提升开发效率', 'iOS', 'https://img2.mukewang.com/5678b421000118d406000338-240-135.jpg', 'https://www.imooc.com/learn/568', '32分', 9.4, 9.6, 9.4, 9.3, '简介：随着iOS机型越来越多，产品UI设计也越来越丰富，一个简单易用的UI集成控键工具，会大大的提高开发人员的效率。本课程将从实例出发介绍iOS9新组键UIStackView的使用，感受不一样的集成控键', 'Jones__', 'https://img4.mukewang.com/5aa23ce700016f2a02560172-80-80.jpg', '算法工程师', '课程适合客户端产品经理，研发人员以及对IOS新特性感兴趣的人群', '（1）了解什么是UIStackView
（2）掌握代码＋storyboard的方式实现UIStackView
（3）利用UIStackView实现美团团购子页面组键
（4）利用UIStackView实现大众点评子页面组键', '2018-09-02 20:37:11.019256', '2018-08-12 23:47:59.842684');
INSERT INTO "public"."tb_imooc_course" VALUES (420, 610, 'Cocos2d-x坦克大战--上', '中级', 22269, '用Cocos2d-x自己动手写一个FC坦克大战吧
', 'Cocos2d-x', 'https://img.mukewang.com/570763d20001662806000338-240-135.jpg', 'https://www.imooc.com/learn/610', '1小时 8分', 9.7, 9.9, 9.4, 9.8, '简介：FC上的坦克大战相信大家都玩过~有逃学玩坦克的可以自己默默的扣一个1了~我们现在长大了，学习游戏开发了。有没有想过将小时候玩过的游戏复刻出来了？不为了彰显自己的技术，只为了小时候因为玩游戏而逃学挨过的打。由资深游戏开发者徐波老师为大家复刻的FC坦克大战吧', '徐波老师', 'https://img4.mukewang.com/55dd985500017e1f05120512-80-80.jpg', '移动开发工程师', '本教程使用Cocos2dx配合Lua来写, 所以需要你拥有Lua脚本语言的基础知识
同时掌握Cocos2dx的基本api的使用', '使用TexturePacker制作坦克资源
精准控制图片帧动画
坦克如何转向
坦克如何移动
', '2018-09-02 20:37:10.432624', '2018-08-12 23:47:59.678142');
INSERT INTO "public"."tb_imooc_course" VALUES (365, 669, 'Cocos2d-x全民俄罗斯--下', '初级', 8682, 'Cocos2d-x开发出俄罗斯方块的输入控制，移动，消除，漂亮', 'Cocos2d-x', 'https://img2.mukewang.com/575e69d00001edfc06000338-240-135.jpg', 'https://www.imooc.com/learn/669', '41分', 9.8, 9.8, 9.8, 9.8, '简介：介绍俄罗斯方块的输入控制逻辑, 方块的移动, 绘制方法, 方块消除, 方块下垂等逻辑, 为增加乐趣, 增加下一块方块提示以及一个漂亮的标题画面', '徐波老师', 'https://img1.mukewang.com/55dd985500017e1f05120512-80-80.jpg', '移动开发工程师', '本课使用cocos2dx-lua编写, 需要同学们熟悉lua基本语法', '1：学习用lua如何控制俄罗斯方块的移动
2：消除以及制作标题画面
', '2018-09-02 20:37:06.823087', '2018-08-12 23:47:55.571963');
INSERT INTO "public"."tb_imooc_course" VALUES (485, 532, 'PyConChina 2015 中国大会 北京场', '中级', 23207, 'PyConChina2015大会干货分享，了解Python最新技术热点和动向', 'Python', 'https://img1.mukewang.com/563177c80001626506000338-240-135.jpg', 'https://www.imooc.com/learn/532', '4小时37分', 9.9, 10, 10, 9.7, '简介：了解Python最新技术热点和动向', 'PyCon China...', 'https://img3.mukewang.com/5631866d0001814203100310-80-80.jpg', NULL, '喜欢使用Python脚本语言的工程狮快到碗里来', '了解Python最新技术热点和动向', '2018-09-02 20:37:12.639447', '2018-08-12 23:48:05.947415');
INSERT INTO "public"."tb_imooc_course" VALUES (422, 561, 'iOS新特性之不一样的任务管理器', '初级', 8721, '实现iOS9任务管理器超炫滑动效果，想实现动画效果，快来学习吧', 'iOS', 'https://img3.mukewang.com/5783866100019dca06000338-240-135.jpg', 'https://www.imooc.com/learn/561', '52分', 9.4, 9.4, 9.3, 9.4, '简介：通过使用开源框架iCarousel来模仿iOS9任务管理器的滑动效果，既能让你感受到动画效果的炫酷，又能让你受到启发去研究自己想实现的动画效果，快来学习吧！', 'Frank666', 'https://img1.mukewang.com/561b1c6a00011ed902200220-80-80.jpg', '移动开发工程师', '准备好苹果本本＋Xcode就点开学习吧！', '1.学会使用iCarousel的自定义模式
2.模仿iOS9任务管理器滑动效果
3.举一反三，学会自己研究并实现想要的动画效果', '2018-09-02 20:37:15.961747', '2018-08-12 23:47:59.875669');
INSERT INTO "public"."tb_imooc_course" VALUES (433, 582, ' MongoDB复制集—复制集的同步机制', '中级', 5083, '复制集同步机制详解，讲师也会在后期维护上给予大家一些建议', 'MongoDB', 'https://img4.mukewang.com/569762af00017b3806000338-240-135.jpg', 'https://www.imooc.com/learn/582', '1小时37分', 9.6, 9.9, 9.7, 9.3, '简介：前面吹了那么多，不讲点实际的怎么行呢？在本课程里，你将详细了解到复制集是如何进行初始化同步，以及如何通过oplog进行复制的，并且也在后期维护上给予大家一些建议。', 'SeanZ', 'https://img.mukewang.com/54bcba130001fc2305680568-80-80.jpg', NULL, '掌握以下知识，更有助于掌握本门课程精髓
1、复制集的基本特性
2、复制集的基本操作', '1、复制集是怎么工作的
2、初始化同步的过程
3、复制集的管理维护', '2018-09-02 20:37:15.990071', '2018-08-12 23:48:00.638662');
INSERT INTO "public"."tb_imooc_course" VALUES (428, 609, 'iOS9那些神坑', '初级', 19167, 'iOS9的那些新特性，课程中都会为大家一一介绍', 'iOS', 'https://img.mukewang.com/576b7a6a0001573206000338-240-135.jpg', 'https://www.imooc.com/learn/609', '23分', 9.9, 9.9, 9.8, 10, '简介：为啥我用iOS9开发的应用无法进行网络请求？为啥多出了一个Bitcode编译选项？什么又是白名单呢？这些都是iOS9的一些新特性，在我们的这门课程中都会为大家一一介绍。', 'Jones__', 'https://img4.mukewang.com/5aa23ce700016f2a02560172-80-80.jpg', '算法工程师', '本课程适合客户端产品经理，研发人员以及对IOS新特性感兴趣的人群', '    (1) iOS9下进行网络请求plist文件配置方法
    (2) iOS9中定位信息我们需要注意的知识点
    (3) Bitcode选项的使用规则
    (4) iOS9下电量管理的新功能
    (5) iOS9中字体的差异', '2018-09-02 20:37:16.589991', '2018-08-12 23:48:00.401206');
INSERT INTO "public"."tb_imooc_course" VALUES (432, 572, '2015 Oracle技术嘉年华', '中级', 34123, '2015 Oracle技术嘉年华尽在慕课网，让大家尽情享用技术盛宴', 'MySQL, Oracle', 'https://img1.mukewang.com/5679ffdd0001cb5806000338-240-135.jpg', 'https://www.imooc.com/learn/572', '12小时 0分', 9.7, 9.7, 9.9, 9.6, '简介：本课程精选 ACOUG 年度盛会 2015 Oracle 技术嘉年华活动中精彩演讲内容，包括Oracle、MySQL、大数据、高可用容灾安全、数据库云架构、数据标准化及数据建模、行业客户最佳应用实践。由国内顶级数据库专家现场实践操作的 Hands-On Lab 动手培训，让大家尽情享用技术盛宴！', 'ACOUG', 'https://img2.mukewang.com/56934df60001fbea35082480-80-80.jpg', NULL, '对数据库感兴趣的小伙伴都来', 'Oracle 向云的全面转型，数据库 12.2 的即将发布，分布式与大数据产品的创新，一体化与 M7 处理器的亮色，这一切都挟着 Oracle 强大的技术和市场能力而来。
', '2018-09-02 20:37:16.180297', '2018-08-12 23:48:00.624514');
INSERT INTO "public"."tb_imooc_course" VALUES (427, 581, 'python装饰器', '初级', 48523, '本门python教程将代领大家轻松搞定Python装饰器运用', 'Python', 'https://img4.mukewang.com/568b2c36000199d106000338-240-135.jpg', 'https://www.imooc.com/learn/581', '43分', 9.7, 9.9, 9.6, 9.5, '简介：Python 装饰器可帮助我们抽离出大量函数中与函数功能本身无关的雷同代码，并继续重用,本课程从函数作用域到闭包到装饰器讲解，让您掌相应概念，及闭包和装饰器的运用。', 'Meshare_huan...', 'https://img3.mukewang.com/55598e050001d00505680568-80-80.jpg', 'Linux系统工程师', '您至少具备Python基础知识', '1.函数作用域及关系。
2.闭包的使用。
3.装饰器的概念及使用。', '2018-09-02 20:37:15.443467', '2018-08-12 23:48:00.349474');
INSERT INTO "public"."tb_imooc_course" VALUES (429, 497, 'OpenStack基础', '初级', 43083, 'OpenStack基础教程，介绍了OpenStack的一些基本概念，基本组件', '云计算', 'https://img1.mukewang.com/572afa460001b1d806000338-240-135.jpg', 'https://www.imooc.com/learn/497', '31分', 9.3, 9.4, 9.1, 9.2, '简介：介绍了OpenStack的一些基本概念，基本组件，组件间关系以及基本控制流程', '流云飞', 'https://img.mukewang.com/568a4b900001fa8802200220-80-80.jpg', 'JAVA开发工程师', '本课程是OpenStack的初级课程', '1、OpenStack的基本概念
2、OpenStack的主要功能组件，以及各主要功能组件的工作原理
3、OpenStack的主要功能组件间关系和访问控制流程', '2018-09-02 20:37:15.57424', '2018-08-12 23:48:00.472777');
INSERT INTO "public"."tb_imooc_course" VALUES (366, 670, 'Android-百度地图之导航', '中级', 25401, '百度地图-导航模块快速入门，轻松为应用程序实现导航功能', 'Android', 'https://img.mukewang.com/575fc4c10001de0406000338-240-135.jpg', 'https://www.imooc.com/learn/670', '1小时 7分', 9.6, 9.9, 9.9, 9.1, '简介：百度Andriod 导航SDK为Android移动端应用提供了一套简单易用的导航服务接口，适用于Android 2.1及以上版本。专注于为广大开发者提供最好的导航服务，通过使用百度导航SDK，开发者可以轻松为应用程序实现专业、高效、精准的导航功能。', 'hyman', 'https://img4.mukewang.com/54169c430001face18403264-80-80.jpg', '移动开发工程师', '本门课程为中级案例课程，小伙伴们需要有一定的Android基础，Android地图是我们Android学习中的一个难点和重点，要求小伙伴们思路清晰，有合理的设计和规划路线，良好的编程基础', '1、权限申请，代码导入
2、定位功能回顾
3、路线导航
4、起始点调整', '2018-09-02 20:37:06.845011', '2018-08-12 23:47:55.750655');
INSERT INTO "public"."tb_imooc_course" VALUES (334, 583, 'Linux系统管理', '初级', 61440, '进程管理+工作管理+系统定时任务，让你Linux技能提升一步', 'Linux', 'https://img1.mukewang.com/5697799a0001e99006000338-240-135.jpg', 'https://www.imooc.com/learn/583', '3小时54分', 9.8, 9.9, 9.8, 9.7, '简介：本课程为小伙伴们介绍如何对Linux系统进行管理，包括进程管理、工作管理、系统资源查看和定时任务，每个部分讲师都进行了详细的讲解。相信通过本课程的学习，你的Linux技能会有进一步提升。', 'Tony', 'https://img1.mukewang.com/53f5aae6000129aa01400140-80-80.jpg', 'Linux系统工程师', '学习本课程前需要熟悉Linux的基本命令，最好对Linux的服务管理内容有所了解。', '1、掌握Linux进程管理命令
2、掌握如何进行工作管理和查看系统资源
3、能够自己动手部署定时任务', '2018-09-02 20:37:06.646727', '2018-08-12 23:47:53.192595');
INSERT INTO "public"."tb_imooc_course" VALUES (430, 284, '学写一个字', '中级', 67109, 'canvas系列第四课，与鼠标、触控交互，学习写出一个字', 'Html5, WebApp', 'https://img2.mukewang.com/57077a210001c6a806000338-240-135.jpg', 'https://www.imooc.com/learn/284', '1小时20分', 9.7, 9.9, 9.5, 9.7, '简介：canvas系列第四课，介绍canvas如何与鼠标、触控交互。', 'liuyubobobo', 'https://img4.mukewang.com/5347593e00010cfb01400140-80-80.jpg', '全栈工程师', '需掌握canvas的基本用法。建议先学习《炫丽的倒计时效果Canvas绘图与动画基础》与《Canvas绘图详解》两门课程', '深入了解canvas如何与鼠标、触控等操控手段交互，同时完成一个炫丽的，能同时运行在多端的移动web app', '2018-09-02 20:37:15.603831', '2018-08-12 23:48:00.538889');
INSERT INTO "public"."tb_imooc_course" VALUES (444, 600, '中国首届swift开发者大会', '中级', 16398, '最前沿的swift技术分享，了解swift最新动向掌握最新相关技术', 'iOS', 'https://img4.mukewang.com/56a86bc10001580a06000338-240-135.jpg', 'https://www.imooc.com/learn/600', '4小时10分', 9.9, 9.9, 9.8, 9.9, '简介：swift干货', '@Conf', 'https://img.mukewang.com/56c572790001be1a07950217-80-80.jpg', NULL, '感兴趣的都来', '了解swift最新动向掌握最新相关技术', '2018-09-02 20:37:16.036587', '2018-08-12 23:48:02.337286');
INSERT INTO "public"."tb_imooc_course" VALUES (437, 601, 'Canvas玩儿转红包照片', '中级', 50915, '教你玩儿转微信红包照片模糊效果，图像展示效果，深入了解canvas', 'Html5, WebApp', 'https://img2.mukewang.com/56a88ef50001863e06000338-240-135.jpg', 'https://www.imooc.com/learn/601', '1小时17分', 9.5, 9.8, 9.4, 9.4, '简介：通过实现最新的腾讯微信红包中图像模糊，图像展示等效果，深入了解canvas的潜能，将canvas的功能更好的结合到自己的产品中。同时完成一个炫丽的，能同时运行在多端的移动web app。', 'liuyubobobo', 'https://img3.mukewang.com/5347593e00010cfb01400140-80-80.jpg', '全栈工程师', '需掌握canvas的基本用法。建议先学习《炫丽的倒计时效果Canvas绘图与动画基础》,《Canvas绘图详解》与《Canvas玩转图像处理》三门课程中的基础部分。更详细的课程所需基础知识，可参见本课程1-2小节。', '实现中图像模糊，图像展示效果；
深入了解canvas；
完成能同时运行在多端的移动web app。', '2018-09-02 20:37:11.068002', '2018-08-12 23:48:01.290194');
INSERT INTO "public"."tb_imooc_course" VALUES (333, 680, 'CSS深入理解之margin', '中级', 48532, '本CSS教程带你深入讲解CSS的margin属性，解决你多年困惑', 'HTML/CSS', 'https://img4.mukewang.com/577c61d80001192206000338-240-135.jpg', 'https://www.imooc.com/learn/680', '1小时23分', 9.6, 9.8, 9.7, 9.4, '简介：张鑫旭老师将带领大家了解CSS中margin与元素尺寸的关系、margin的百分比单位、介绍如何正确看待CSS的margin重叠、深入理解margin：auto。并通过实例剖析CSS margin负值定位的常见应用。还会针对大家在使用margin时容易发生困惑的无效情形，进行深入解析。', '张鑫旭', 'https://img3.mukewang.com/549beab90001be9037445616-80-80.jpg', '页面重构设计', '既适合学习过CSS基础知识的新手深入学习，也欢迎有经验的小伙伴加深了解噢！', 'margin与元素尺寸的关系、margin的百分比单位、正确看待CSS的margin重叠、深入理解margin：auto、剖析CSS margin负值定位的常见应用、剖析在使用margin时容易发生困惑的无效情形、扩展介绍margin-start/margin-end属性', '2018-09-02 20:37:03.993645', '2018-08-12 23:47:53.093033');
INSERT INTO "public"."tb_imooc_course" VALUES (443, 421, 'JDBC之“对岸的女孩走过来”', '初级', 44825, 'JDBC的深入挖掘，主要介绍在实际开发过程中的各种知识', 'Java', 'https://img.mukewang.com/5746693a00012dc006000338-240-135.jpg', 'https://www.imooc.com/learn/421', '1小时13分', 9.6, 9.9, 9.5, 9.5, '简介：本课程是《JDBC之“对岸的女孩看过来”》的延续，主要介绍在实际开发过程中用到的 分页、聚合、分组，以及事务管理等常用知识，通过该课程的学习，将会打通你的任督二脉，以后不管是学习框架，还是数据库研发，都是很好的起点和指引。', 'Preacher', 'https://img2.mukewang.com/53c374e800013f4601400140-80-80.jpg', 'JAVA开发工程师', '本课程是JDBC的进阶课程，如果小伙伴们对数据库知识以及JDBC简单操作不太熟悉，建议先去《JDBC之“对岸的女孩看过来”》以及《与MySQL的零距离接触》修炼修炼！！', '1、JDBC调用存储过程,事务管理
2、JDBC的高级应用', '2018-09-02 20:37:11.441577', '2018-08-12 23:48:02.150802');
INSERT INTO "public"."tb_imooc_course" VALUES (439, 592, 'Android-心愿分享', '初级', 21421, '用Android开发一款心愿分享APP，个性心意，分享祝福', 'Android', 'https://img.mukewang.com/570757ae0001419206000338-240-135.jpg', 'https://www.imooc.com/learn/592', '49分', 9.6, 9.7, 9.7, 9.3, '简介：本门课程老师讲带领同学们制作一款心愿分享APP，可以自定义插入图片，编写艺术字体。浓浓祝福分享到自己的朋友圈，还等什么？快来学习吧！', 'eclipse_xu', 'https://img4.mukewang.com/54cb9b5f0001827024483264-80-80.jpg', '移动开发工程师', '本课程需要一定的Android基础知识，以及掌握微信分享功能的实现方式。', '1、调用手机系统图库
2、添加自定义字体
3、屏幕截图
4、分享微信朋友圈', '2018-09-02 20:37:11.24528', '2018-08-12 23:48:01.343805');
INSERT INTO "public"."tb_imooc_course" VALUES (440, 593, '新春特辑-Cocos抢红包', '初级', 18340, 'Cocos引擎玩转新年红包，本门课程为一门实例课，学起来吧', 'Cocos2d-x', 'https://img.mukewang.com/57075ddd0001ee2b06000338-240-135.jpg', 'https://www.imooc.com/learn/593', '56分', 9.5, 9.6, 9.6, 9.5, '简介：过年啦~~雷哥给大家发福利了~~~不过福利不是妹子而是一项技能：本门课程为一门实例课，同学们可以在课程中体验到动画与动作的基本使用，可作为Cocos第二课到第三课的过渡。', '雷过就跑', 'https://img3.mukewang.com/557a888d0001b8bb16001000-80-80.jpg', '移动开发工程师', 'Cocos第二课相关知识点。', '序列帧动画，动作，事件分发器。', '2018-09-02 20:37:11.194819', '2018-08-12 23:48:01.364921');
INSERT INTO "public"."tb_imooc_course" VALUES (436, 591, '高性能的PHP日志系统—SeasLog', '中级', 16895, '一款不可错过的高性能的日志系统，带你全面细致地了解SeasLog', 'PHP', 'https://img1.mukewang.com/572afedd0001a67a06000338-240-135.jpg', 'https://www.imooc.com/learn/591', '48分', 9.7, 9.9, 9.4, 9.8, '简介：SeasLog是一个C语言编写的PHP扩展，提供一组规范标准的功能函数，在PHP项目中方便、规范、高效地写日志，以及快速地读取和查询日志。本课程将带你全面细致地了解SeasLog。对于视频中提到的 SeasLog的不足，已经在最新版本中进行了修复，欢迎体验使用', '李虎头', 'https://img1.mukewang.com/562994b10001ad1500940067-80-80.jpg', 'PHP开发工程师', '预先掌握以下知识会更有助于掌握SeasLog精髓
1、PHP的基础知识
2、面向对象的基础知识
3、Linux服务器的常用命令', '1、什么是日志？
2、为什么使用日志功能
3、为什么选用SeasLog
4、如何在实际项目中使用SeasLog', '2018-09-02 20:37:10.810174', '2018-08-12 23:48:01.18988');
INSERT INTO "public"."tb_imooc_course" VALUES (438, 585, 'Java图片验证码', '中级', 45347, '使用SpringMVC和Spring框架实现Java图片验证，了解验证过程', 'Java', 'https://img2.mukewang.com/56977a480001ee6106000338-240-135.jpg', 'https://www.imooc.com/learn/585', '1小时 5分', 9.3, 9.6, 9.3, 9.1, '简介：小伙伴们，最近是不是在被图片验证码折磨呀，想不想知道这磨人的验证码是如何实现的呀。本门课程将使用SpringMVC和Spring框架，为小伙伴们带来图片验证码的制作和验证过程。', 'moocer', 'https://img2.mukewang.com/58db190e0001643d02000200-80-80.jpg', 'JAVA开发工程师', '小伙伴们，学习本课程前，需要对SpringMVC和Spring有所了解呦！', '1、了解验证码的起源与历史。
2、掌握如何生成图片验证码。', '2018-09-02 20:37:11.138472', '2018-08-12 23:48:01.312196');
INSERT INTO "public"."tb_imooc_course" VALUES (449, 579, 'Android面试解密-自定义View', '初级', 44041, '本教程为Android面试系列课程，短小精悍，切入要害', 'Android', 'https://img2.mukewang.com/576b7a0d0001070506000338-240-135.jpg', 'https://www.imooc.com/learn/579', '23分', 9.7, 9.9, 9.6, 9.5, '简介：课程简介：本课程为Android面试系列课程，短小精悍，切入要害。由Android大神为你详细解答面试最常见的问题，还等什么？快来学吧！ 可以学到当前各大公司面试中最常见的问题的最完美解答！', 'hyman', 'https://img1.mukewang.com/54169c430001face18403264-80-80.jpg', '移动开发工程师', '适用人群： 1.需要有一定的Java基础 2.在初学Android或回顾复习时的小伙们
要求小伙伴们有敏捷的思维和善于思考的能力。', '1.特定显示风格
2.处理特有的用户交互
3.优化布局
4.封装等', '2018-09-02 20:37:15.636675', '2018-08-12 23:48:02.991887');
INSERT INTO "public"."tb_imooc_course" VALUES (447, 578, 'MongoDB复制集—复制集的相关特性', '中级', 4484, 'MongoDB金光闪闪的特性，讲师将带你进行全面的了解', 'MongoDB', 'https://img1.mukewang.com/5680dbb8000173d406000338-240-135.jpg', 'https://www.imooc.com/learn/578', '47分', 9.8, 9.9, 9.5, 9.9, '简介：MongoDB的崛起不是没有道理的，这么多NoSQL，为什么偏偏选到它？MongoDB有什么特别之处？本章让我们一些来了解MongoDB的过人之处吧。', 'SeanZ', 'https://img.mukewang.com/54bcba130001fc2305680568-80-80.jpg', NULL, '1、会启动MongoDB实例
2、了解MongoDB的基本操作', '1、复制集是如何同步数据的
2、什么是oplog
3、什么是选举
4、什么是大多数原则
5、什么情况下数据会回滚', '2018-09-02 20:37:15.673841', '2018-08-12 23:48:02.873482');
INSERT INTO "public"."tb_imooc_course" VALUES (146, 884, '移动UI设计基础入门', '入门', 22646, '通过学习移动UI设计规范标准的设计方法，掌握移动端设计规范设计能力。', 'APPUI设计', 'https://img2.mukewang.com/59927c1b0001154f06000338-240-135.jpg', 'https://www.imooc.com/learn/884', '1小时 0分', 9.7, 9.9, 9.5, 9.7, '简介：移动端设计非常注重规范，课程主要贯穿设计案例，通过讲解移动端设计基础入门的尺寸单位概念、单位转换以及应用结构布局、文本排版规范、基准规范等，引导学员掌握规范标准的设计方法，从点到面，从理论到实战案例，不管是设计师还是程序员、产品经理，学完本课程都会有所收获，并对移动端设计有进一步了解。老师相关实战课《移动端App UI 设计入门与实战》也已经上线：https://coding.imooc.com/class/159.html', '何云山', 'https://img2.mukewang.com/54f166f90001115601000100-80-80.jpg', '产品经理', '1.了解移动端UI设计
2.掌握移动端基础尺寸单位、转换以及应用结构布局、排版规范等', '1.移动端基础尺寸单位与转换
2.Android分辨率与单位转换
3.iPhone分辨率与单位转换
4.移动端应用结构与布局
5.移动端文本排版
6.移动端基础布局规范', '2018-09-02 20:36:51.80423', '2018-08-12 23:47:38.226583');
INSERT INTO "public"."tb_imooc_course" VALUES (452, 560, 'iOS9新特性之UITesting', '初级', 11016, 'iOS9新特性：不需要我们手指反复点击，完成APP自动化测试
', 'iOS', 'https://img.mukewang.com/566fdaa00001f55f06000338-240-135.jpg', 'https://www.imooc.com/learn/560', '30分', 9.7, 9.9, 9.9, 9.4, '简介：在Xcode7中，苹果介绍了一种新的方式来管理我们应用界面的测试工作，那就是UITesting。UI Testing 允许我们对 UI 元素进行查找，交互，验证属性和状态。不需要我们手指反复点击，即完成自动化测试工作', 'Jones__', 'https://img2.mukewang.com/5aa23ce700016f2a02560172-80-80.jpg', '算法工程师', '本课程适合客户端产品经理，研发人员以及对IOS新特性感兴趣的人群', '    （1）了解iOS全新自动化测试方法
    （2）掌握iOS测试代码编写
    （3）通过demo掌握基础控键以及视图控制类的测试方法', '2018-09-02 20:37:12.653648', '2018-08-12 23:48:03.36157');
INSERT INTO "public"."tb_imooc_course" VALUES (235, 833, '新一代构建工具gradle', '中级', 25102, 'gradle轻松入门教程，学习本课对gradle进行初步了解', 'Java', 'https://img2.mukewang.com/590a904f0001138f06000338-240-135.jpg', 'https://www.imooc.com/learn/833', '1小时58分', 9.7, 9.8, 9.6, 9.8, '简介：Gradle的出现，是技术发展的必然，站在了Ant、maven等构建工具的肩膀上，使用了一种强大且具有表达性的基于Groovy的领域特定语言(DSL)，使其拥有易用且灵活的方式去实现定制逻辑、方便扩展，对什么周期有更完全的控制。学习本课程后就能理解，gradle是什么，能干什么，为什么是gradle；并掌握实际使用gradle进行项目构建、测试、打包、发布的能力。Gradle让不可能变得可能，让可能变得简单，让简单变得优雅。', 'skyding', 'https://img1.mukewang.com/591c550d0001e23c04190419-80-80.jpg', 'JAVA开发工程师', '1、 编程零基础可听 2、 写过一段时间代码再听更好 3、 有与他人协作开发意向者最佳', '了解gradle的脚本语法、配置要素、依赖管理等基本原理，掌握使用gradle命令行或者集成IDE之后，进行构建、单元测试、打成jar包或者war包并发布到maven仓库等单项目或者多项目的自动化过程。', '2018-09-02 20:36:56.42183', '2018-08-12 23:47:45.243281');
INSERT INTO "public"."tb_imooc_course" VALUES (455, 557, 'PHP第三方登录—OAuth2.0协议', '中级', 36135, '带你了解OAuth协议实现原理，使用场景，非常有使用价值', 'PHP', 'https://img1.mukewang.com/5668dc790001aa2b06000338-240-135.jpg', 'https://www.imooc.com/learn/557', '35分', 9.6, 9.8, 9.4, 9.4, '简介：本课程主要介绍第三方登录相关协议—OAuth2.0协议。主要介绍了OAuth的使用场景和实现原理，并结合实际讲解了OAuth2.0协议使用的注意事项，非常有实用价值。', '壞大叔badUnc...', 'https://img1.mukewang.com/59311bea0001e93207410741-80-80.jpg', 'PHP开发工程师', '本课程不涉及代码环节，但凡对OAuth2.0协议感兴趣的小伙伴们，都可以学习了解一下OAuth2.0协议的工作原理。', '在本课程中你将可以了解OAuth协议基本流程，实现原理以及注意事项。', '2018-09-02 20:37:12.061211', '2018-08-12 23:48:03.56872');
INSERT INTO "public"."tb_imooc_course" VALUES (394, 537, 'Linux服务管理', '初级', 41347, 'Linux的RPM包和源码包服务，定然会使小伙伴们受益匪浅', 'Linux', 'https://img3.mukewang.com/563b13700001ebf906000338-240-135.jpg', 'https://www.imooc.com/learn/537', '2小时 6分', 9.8, 10, 9.8, 9.8, '简介：本课程主要对Linux的服务管理进行介绍，包括系统的运行级别、服务管理的分类、RPM包管理和源码包服务管理。本门课程对于Linux运维人员来说非常重要。同时，Linux服务的知识点经过Tony老师的梳理，定然会使小伙伴们受益匪浅。', 'Tony', 'https://img1.mukewang.com/53f5aae6000129aa01400140-80-80.jpg', 'Linux系统工程师', '学习本课程需要熟练掌握Linux的基本命令，并熟悉Linux的软件安装流程。', '1、了解服务的分类
2、什么是独立服务管理
3、掌握基于xinetd的服务管理
4、掌握源码包服务管理', '2018-09-02 20:37:08.442185', '2018-08-12 23:47:57.452258');
INSERT INTO "public"."tb_imooc_course" VALUES (459, 451, 'JSP常用标签', '初级', 43288, '配置及使用常用JSTL标签，这是一项必备的基本技能', 'Java', 'https://img1.mukewang.com/570365f500013beb06000338-240-135.jpg', 'https://www.imooc.com/learn/451', '1小时42分', 9.8, 9.9, 9.7, 9.7, '简介：想要快速高效的开发JSP页面少不了JSTL的帮助，那么，学好JSTL核心标签就就显得尤为重要了，这是一项必备的基本技能。在本次课程中，女神@JessicaJiang将继续带领小伙伴们学习，JSTL核心标签的使用、EL表达式与JSTL的配合使用以及JSTL函数的使用。小伙伴们快点get起来~！', 'JessicaJiang', 'https://img4.mukewang.com/53ec59780001f0b901400140-80-80.jpg', 'JAVA开发工程师', '本课程是JAVAEE中JSP开发初级课程，建议小伙伴们先对JSP基础知识修炼完毕，之后再来进修', '1、JSTL核心标签的使用
2、EL表达式与JSTL的配合使用
3、JSTL函数的使用', '2018-09-02 20:37:12.028975', '2018-08-12 23:48:03.748015');
INSERT INTO "public"."tb_imooc_course" VALUES (456, 556, '慕课网技术沙龙之前端专场', '中级', 35797, '从实战到理论全方位解读前端技术，都是项目中的宝贵的经验
', 'Node.js, Angular', 'https://img4.mukewang.com/5668e23600011d6506000338-240-135.jpg', 'https://www.imooc.com/learn/556', '3小时30分', 9.4, 9.8, 9.3, 9.2, '简介：1、前端缓存那些事儿
2、HTML5多人实时在线游戏里踩过的那些坑
3、Node.js在百度的产品级应用
4、从基于Angularjs的模型系统论“道”前端开发', '慕课网技术沙...', 'https://img2.mukewang.com/56692c990001d3f705680567-80-80.jpg', NULL, '喜欢前端的筒子们都来围观', '实际项目中的宝贵成功或失败的经验，实践，最佳的前端实践方案，这背后到底隐含着怎样的道～
', '2018-09-02 20:37:12.161418', '2018-08-12 23:48:03.590643');
INSERT INTO "public"."tb_imooc_course" VALUES (331, 620, 'PHP微信公众平台开发高级篇—微信JS-SDK', '高级', 29553, 'JS-SDK微信交互引擎，诸多功能提供更优质的网页体验', 'PHP', 'https://img.mukewang.com/56e10d9c0001e83306000338-240-135.jpg', 'https://www.imooc.com/learn/620', '55分', 9.4, 9.7, 9.3, 9.3, '简介：通过使用微信JS-SDK，网页开发者可借助微信高效地使用拍照、选图、语音、位置等手机系统的能力，为微信用户提供更优质的网页体验。', '_渔夫', 'https://img2.mukewang.com/5333a08f0001700202000200-80-80.jpg', 'PHP开发工程师', '学习本门课程之前，建议先了解一下知识，会更有助于理解和掌握本门课程
1、微信接口的基本知识
2、curl的get和post请求方式', '1、JS-SDK接口的作用
2、JS-SDK接口的使用场景
3、JS-SDK接口的使用技巧
4、JS-SDK接口的使用限制', '2018-09-02 20:37:06.255212', '2018-08-12 23:47:52.85161');
INSERT INTO "public"."tb_imooc_course" VALUES (390, 640, 'R语言之数据可视化', '中级', 31259, 'R语言三大绘图系统，用图形直观探索数据、发现有价值信息', '大数据', 'https://img.mukewang.com/56f8a3a50001f03406000338-240-135.jpg', 'https://www.imooc.com/learn/640', '2小时48分', 9.8, 9.8, 9.8, 9.8, '简介：数据可视化是指用图形直观地呈现数据特征。其图形化的特性能够帮助决策者掌握复杂的概念和发现新的数据模式，因而已成为大数据分析中必不可少的一环。本课程旨在让同学们（1）了解数据的特征，（2）掌握R语言三大绘图系统的使用，（3）能够把分析过程制作成报告并发布交流。', 'Angelayuan', 'https://img4.mukewang.com/559e32dd0001631209601280-80-80.jpg', NULL, '本课程需要学员提前掌握
(1)安装好R和Rstudio; (2)了解基本的数据结构和操纵数据的方法', '了解数据特征；
掌握R语言绘图（数据可视化）；
学会使用R Markdown制作和发布报告', '2018-09-02 20:37:07.919291', '2018-08-12 23:47:57.218785');
INSERT INTO "public"."tb_imooc_course" VALUES (467, 515, 'HTML5小游戏---爱心鱼（上）', '中级', 82032, '学做HTML5游戏，轻轻松松带你上手，适合刚入手游戏开发的同学', 'HTML/CSS', 'https://img4.mukewang.com/5704a8e4000122b406000338-240-135.jpg', 'https://www.imooc.com/learn/515', '2小时34分', 9.5, 9.7, 9.5, 9.4, '简介：这款html5“爱心鱼”游戏适合刚入手游戏开发的同学，或是想学习html5 API的同学。本课程将带领你学习主要的html5 API，通过一个清新美好的小游戏，帮助你熟悉游戏开发流程。课程分两部分，第一部分完成游戏核心，第二部分完善游戏内容。', 'Daisy', 'https://img4.mukewang.com/551282770001970609000900-80-80.jpg', NULL, '1、对html、css基础知识已经掌握。
2、对JavaScript的基础知识掌握，如数组、类、对象。
', '1、html5 canvas制作游戏理念
2、html5 canvas 绘图API 
3、游戏中的碰撞检测 
4、认识几个数学函数
5、物体池概念 
6、序列帧动画的控制
', '2018-09-02 20:37:18.268194', '2018-08-12 23:48:04.373499');
INSERT INTO "public"."tb_imooc_course" VALUES (463, 508, 'Cocos2d-x游戏开发入门－贪吃蛇(下)', '中级', 14170, '本课程将对上一门课进行改造，加入新的元素，符合游戏特性', 'Cocos2d-x', 'https://img.mukewang.com/5600b2af000125ef06000338-240-135.jpg', 'https://www.imooc.com/learn/508', '1小时37分', 9.6, 10, 9.8, 9.1, '简介：本课程将在贪吃蛇游戏的基础上加入一些新的元素，从而符合当下游戏的特性。至于是什么新元素，学了你就知道', '徐波老师', 'https://img.mukewang.com/55dd985500017e1f05120512-80-80.jpg', '移动开发工程师', '需要有贪吃蛇上的基础', '1：算法
2：地图编辑器
3：游戏的构造思路
4：游戏的重构', '2018-09-02 20:37:12.87554', '2018-08-12 23:48:04.13632');
INSERT INTO "public"."tb_imooc_course" VALUES (461, 516, 'HTML5小游戏---爱心鱼（下）', '中级', 41434, '通过一个清新美好的小游戏教程，熟悉游戏开发流程', 'HTML/CSS', 'https://img.mukewang.com/5704a90c0001f96506000338-240-135.jpg', 'https://www.imooc.com/learn/516', '3小时27分', 9.8, 9.9, 9.9, 9.6, '简介：html5游戏适合刚入手游戏开发的同学，或是想学习html5 API的同学。本课程将带领你学习主要的html5 API，通过一个清新美好的小游戏，熟悉游戏开发流程。课程分两部分，第一部分完成游戏核心，第二部分完善游戏内容。', 'Daisy', 'https://img3.mukewang.com/551282770001970609000900-80-80.jpg', NULL, '1、对html、css基础知识已经掌握。
2、对JavaScript的基础知识掌握，如数组、类、对象。
3、学习本课程之前您最好已经学习完成《HTML5小游戏---爱心鱼（上）》
', '1、html5 canvas制作游戏理念
2、html5 canvas 绘图API 
3、游戏中的碰撞检测 
4、认识几个数学函数
5、物体池概念 
6、序列帧动画的控制
', '2018-09-02 20:37:18.44876', '2018-08-12 23:48:04.077305');
INSERT INTO "public"."tb_imooc_course" VALUES (465, 452, 'Hibernate初探之多对多映射', '中级', 22600, 'Hibernate中多对多关联映射的配置，多对多关联关系的应用场景', 'Java', 'https://img4.mukewang.com/55a5f6c100016bb806000338-240-135.jpg', 'https://www.imooc.com/learn/452', '32分', 9.8, 9.9, 9.8, 9.7, '简介：多对多关联也是常见的一种关联关系，如项目和员工之间就是典型的多对多关系。在本次课程中，@laurenyany将与各位小伙伴们分享Hibernate中的关联映射——多对多映射，将向大家依次介绍多对多的概念、应用场景以及在Eclipse中的配置实现。', '汤小洋', 'https://img.mukewang.com/596b71040001ff8206400640-80-80.jpg', '全栈工程师', '本课程主要讲解Hibernate中的多对多关联映射，需要对Hibernate基本用法、ORM的基本概念、单表映射等相关知识有一定的基础。', '1、多对多映射的概念
2、多对多关联关系的应用场景
3、多对多关联的配置', '2018-09-02 20:37:18.154966', '2018-08-12 23:48:04.177919');
INSERT INTO "public"."tb_imooc_course" VALUES (370, 618, 'PHP微信公众平台开发高级篇—模板消息接口', '高级', 19392, '模板消息，快到碗里来，可以应用于刷卡通知，商品购买成功通知', 'PHP', 'https://img4.mukewang.com/56e10dc00001c13106000338-240-135.jpg', 'https://www.imooc.com/learn/618', '16分', 9.8, 9.9, 9.7, 9.8, '简介：模板消息仅用于公众号向用户发送重要的服务通知，只能用于符合其要求的服务场景中，如信用卡刷卡通知，商品购买成功通知等。', '_渔夫', 'https://img2.mukewang.com/5333a08f0001700202000200-80-80.jpg', 'PHP开发工程师', '学习本门课程之前，建议先了解一下知识，会更有助于理解和掌握本门课程
1、微信接口的基本知识
2、curl的get和post请求方式', '1、模板接口的作用
2、模板接口的使用场景
3、模板接口的使用技巧
4、模板接口的使用限制', '2018-09-02 20:37:09.766554', '2018-08-12 23:47:55.903113');
INSERT INTO "public"."tb_imooc_course" VALUES (362, 598, 'CSS3扁平化博客之文章页及常用组件', '中级', 36106, '又一波 CSS3扁平化博客', 'JavaScript, CSS3', 'https://img.mukewang.com/56a6e218000122ca06000338-240-135.jpg', 'https://www.imooc.com/learn/598', '57分', 9.6, 9.9, 9.7, 9.3, '简介：通过详细的事例演示教学，让学生理解常规网页的组成部分，灵活使用不同部分WEB组件及构成思想，灵活的布局和设计网页，实现侧栏菜单及滑动，返回顶部效果。', '表严肃', 'https://img2.mukewang.com/57e986d80001730d11641164-80-80.jpg', 'Web前端工程师', '学习该课程之前，请先学习“HTML5和CSS3扁平化风格博客”课程。
1.您要具备HTML常用标签的基础知识。 
2.您要具备CSS的语法。 
3.您要具备基本布局知识。', '1、CSS的常规布局方法	 
2、CSS扁平化风格布局方法	 
3、网页布局特殊情况处理方式 
4、CSS3 和JS 实现动画效果。', '2018-09-02 20:37:10.118704', '2018-08-12 23:47:55.471163');
INSERT INTO "public"."tb_imooc_course" VALUES (471, 521, 'MongoDB 在线讲座之如何测试、调整及监控MongoDB性能', '中级', 7641, '快来学习如何调整和监控MongoDB集群，如何保证MongoDB性能', 'MongoDB', 'https://img1.mukewang.com/561ccbad0001391f06000338-240-135.jpg', 'https://www.imooc.com/learn/521', '51分', 9.8, 10, 10, 9.4, '简介：讨论如何保证MongoDB性能、性能评估以及容量计划的可用工具以及如何调整和监控MongoDB集群。', 'MongoDB中文...', 'https://img3.mukewang.com/54bf1a320001cc8802200220-80-80.jpg', NULL, '掌握MongoDB的基础知识，对MongoDB性能评估有一定的需求。最好具备数据库运维管理经验', '保证MongoDB性能、性能评估以及容量计划的可用工具以及如何调整和监控MongoDB集群。', '2018-09-02 20:37:12.889343', '2018-08-12 23:48:04.757444');
INSERT INTO "public"."tb_imooc_course" VALUES (475, 527, '近距离探索memcache缓存', '中级', 28283, '本课程带你从零开始接触memcache从安装到配置到使用到提高', 'PHP', 'https://img2.mukewang.com/572aff47000147c406000338-240-135.jpg', 'https://www.imooc.com/learn/527', '1小时 2分', 9.4, 9.5, 9.5, 9.2, '简介：memcache是PHP中使用比较广泛的缓存系统，也是提升系统性能必不可少的组件。本课程带你从零开始接触memcache从安装到配置到使用到提高。', '李虎头', 'https://img4.mukewang.com/562994b10001ad1500940067-80-80.jpg', 'PHP开发工程师', '预先掌握以下知识会更有助于掌握memcache精髓
1、PHP的基础知识
2、面向对象的基础知识
3、Linux服务器的常用命令', '1、什么是memcache
2、memcache能解决什么
3、如何在实际项目中使用memcache
4、使用memcahce的正确姿势', '2018-09-02 20:37:13.303704', '2018-08-12 23:48:05.262042');
INSERT INTO "public"."tb_imooc_course" VALUES (211, 789, 'Angular2一小时快速入门', '中级', 49448, 'Angular2一小时快速入门教程，帮助大家快速上手Angular2开发', 'Angular', 'https://img2.mukewang.com/58be16f8000106d706000338-240-135.jpg', 'https://www.imooc.com/learn/789', '1小时11分', 9.6, 9.8, 9.4, 9.6, '简介：Angular2 于2016年9月份正式发布，功能特性趋于稳定，本教程基于 Angular2 正式版展开，共分为三个章节：第一章简述 Angular 的发展历史；第二章详解Angular2 的八个核心概念；第三章通过由浅入深的代码实操再次加深对 Angular2的理解，帮助大家快速上手 Angular2 开发。', '李仲辉', 'https://img4.mukewang.com/5333a0350001692e02200220-80-80.jpg', NULL, '1、对ES6基础知识已经掌握。', '1、Angular 的诞生起源
2、AngularJS 1.x的迭代之路及其痛点 
3、Angular2 的新特性 
4、Angular2 的八大核心概念（组件、元数据、模板、数据绑定、指令、服务、依赖注入、模块）
5、TypeScript 基础
6、基于 webpack 的 Angular2 项目搭建', '2018-09-02 20:36:54.43742', '2018-08-12 23:47:43.27504');
INSERT INTO "public"."tb_imooc_course" VALUES (358, 668, '从 psd 到 html', '初级', 92413, '教你把PSD设计稿转化成HTML，用案例来讲解基本流程', 'HTML/CSS', 'https://img1.mukewang.com/57552a9a0001778406000338-240-135.jpg', 'https://www.imooc.com/learn/668', '1小时51分', 9.6, 9.8, 9.6, 9.4, '简介：爱前端的很多人也是喜欢那种所见即所得带来的成就感，这是一门很基础的活，不光是埋头写代码。本课用了一个很简单的 psd 案例来介绍切图的基本流程和遇到问题处理，加深对标签及css 规范的应用，兼容性和各工种的配合等等，让从没切过图的同学有一个完整的概念。', '黑白猪', 'https://img2.mukewang.com/57578eac0001819c10661066-80-80.jpg', 'Web前端工程师', '1、对 html+css 基础知识已经掌握；
2、会简单使用 Photoshop；
3、需要一步一步动手做； ', '1、独立完成一个设计稿的转化；
2、Css从整理到局部的分离；
3、Css命名一些技巧和语义化；
4、Html标签结构的优化和选择；
5、PS软件当中的切图技巧
6、Css代替部分图片实现小icon；
7、兼容性处理的方法；
8、和后端配合时注意的事项；', '2018-09-02 20:37:06.80721', '2018-08-12 23:47:55.188593');
INSERT INTO "public"."tb_imooc_course" VALUES (336, 621, 'PHP微信公众平台开发高级篇—生成二维码接口', '高级', 26394, '微信扫描，值得你拥有，本教程主要讲解二维码接口的实现', 'PHP', 'https://img3.mukewang.com/56e10d8c0001e22e06000338-240-135.jpg', 'https://www.imooc.com/learn/621', '27分', 9.6, 9.6, 9.8, 9.5, '简介：二维码接口可以带给用户方便又快捷的体验！本课程主要讲解二维码接口的实现，以及二维码事件推送功能的实现。', '_渔夫', 'https://img2.mukewang.com/5333a08f0001700202000200-80-80.jpg', 'PHP开发工程师', '学习本门课程之前，建议先了解一下知识，会更有助于理解和掌握本门课程
1、微信接口的基本知识
2、curl的get和post请求方式', '1、扫描接口的作用
2、扫描接口的使用场景
3、扫描接口的使用技巧
4、扫描接口的使用限制', '2018-09-02 20:37:06.17933', '2018-08-12 23:47:53.327703');
INSERT INTO "public"."tb_imooc_course" VALUES (373, 653, 'Android-Service系列之Notification综合应用', '入门', 16202, '掌握Notification和Messenger机制，实现Notification经典应用场景', 'Android', 'https://img1.mukewang.com/57201f270001fdaf06000338-240-135.jpg', 'https://www.imooc.com/learn/653', '1小时27分', 9.6, 9.8, 9.4, 9.7, '简介：Notification是Android中常用的消息提醒机制，被应用在各式各样的APP上，主要用作消息推送的提醒。本课程将结合Service和Handler 来为大家实现Notification的经典应用场景', 'XRay_Chen', 'https://img2.mukewang.com/552496a1000142c812740894-80-80.jpg', '移动开发工程师', '需要掌握Android基本的Service服务，Android中service的分类，启动服务和绑定服务，这两个服务之间的区别和联系，血虚Handler机制原理和使用。', '1:掌握Notification的基本用法
2:学习自定义Notification
3:掌握使用Messenger实现与Handler的双向通信', '2018-09-02 20:37:09.052304', '2018-08-12 23:47:56.064462');
INSERT INTO "public"."tb_imooc_course" VALUES (854, 80, '用JavaScript实现图片缓慢缩放效果', '初级', 31359, '本课程讲解如何使用JavaScript技术实现图片缩放效果，并分析原理', 'JavaScript', 'https://img4.mukewang.com/534f8aec00016cec06000338-240-135.jpg', 'https://www.imooc.com/learn/80', '30分', 9.7, 9.7, 9.6, 9.6, '简介：在网页制作当中，我们经常会对图片做一些处理，比如图片的放大和缩小。本课程讲解如何使用JavaScript技术实现图片缩放效果，其中将用到setInterval()和clearInterval()两个重要函数。课程中对实现效果进行了展示，并详尽分析其实现原理。', 'Ben', 'https://img3.mukewang.com/534f89d7000146bf01400140-80-80.jpg', '产品经理', '1.掌握HTML+CSS相关的基础知识
2. 熟悉 JavaScript基础知识，尤其对鼠标点击事件等知识精通
', '1.掌握用JS方式实现图片缓慢放缩效果
2.学习到setInterval()和clearInterval()两个函数的用法
', '2018-09-02 20:37:45.82638', '2018-08-12 23:48:39.480651');
INSERT INTO "public"."tb_imooc_course" VALUES (477, 529, 'Unity3D-万圣前夜之惊声尖笑', '初级', 40355, 'Unity3D热门案例分享，带你深入Unity3D，学习快来学习吧', 'Unity 3D', 'https://img1.mukewang.com/5746695a000116d106000338-240-135.jpg', 'https://www.imooc.com/learn/529', '51分', 9.8, 9.9, 9.9, 9.7, '简介：夜空中出现点点光晕，仿佛将有大事发生。没错，今夜便是万圣前夜。看好你的宝贝，谁也不知道接下来会有什么惊喜等着你。', '徐波老师', 'https://img1.mukewang.com/55dd985500017e1f05120512-80-80.jpg', '移动开发工程师', '本课程需要同学们有一定的Unity3D基础，当然对于Unity3D方向感兴趣的同学们也可以来逛逛！很有意思的课程噢！', '1.精灵的使用及Alpha修改
2.粒子系统
3.流程控制
4.音乐播放
', '2018-09-02 20:37:13.205099', '2018-08-12 23:48:05.280067');
INSERT INTO "public"."tb_imooc_course" VALUES (480, 511, 'iOS-健康App系列之迈出你的第一步    ', '中级', 11736, 'AppleWatch健康App的第一节课程，打造专属自己的运动减肥App', 'iOS', 'https://img2.mukewang.com/561c644d0001d72d06000338-240-135.jpg', 'https://www.imooc.com/learn/511', '48分', 9.9, 10, 10, 9.7, '简介：本课程为AppleWatch健康App的第一节课程，将为大家介绍如何搭建walker环境以及使用HealthKit获取用户的运动数据，将健康app中的数据同步到手表', 'Frank666', 'https://img.mukewang.com/561b1c6a00011ed902200220-80-80.jpg', '移动开发工程师', '需要有iOS基础', '1搭建walker环境
2获取HealthKit
3获取健康数据
4数据共享', '2018-09-02 20:37:13.528288', '2018-08-12 23:48:05.334542');
INSERT INTO "public"."tb_imooc_course" VALUES (484, 465, 'Hibernate缓存策略', '中级', 27831, '本教程主要介绍Hibernate中缓存的原理、分类和使用', 'Java', 'https://img2.mukewang.com/55bb18ee000173e706000338-240-135.jpg', 'https://www.imooc.com/learn/465', '34分', 9.7, 9.7, 9.6, 9.6, '简介：Hibernate是目前最老牌和主流的Java ORM框架，而缓存是ORM 框架中的一个重难点，是数据库访问性能优化的重要手段，本课程主要介绍Hibernate中缓存的原理、分类和使用。', 'ReasonLee', 'https://img4.mukewang.com/58c907040001c05906400640-80-80.jpg', 'JAVA开发工程师', '学习本门课程之前，建议先了解一下以下知识，会更有助于理解和掌握本门课程:
1、掌握ORM框架的基础知识
2、能使用Hibernate对Mysql数据库进行简单操作
', '1、ORM框架中缓存的基本工作原理
2、Hibernate中缓存的分类和使用
3、掌握使用缓存针对项目进行性能优化的原则', '2018-09-02 20:37:13.783228', '2018-08-12 23:48:05.911496');
INSERT INTO "public"."tb_imooc_course" VALUES (483, 541, 'iOS-健康App系列之脂肪你去哪儿', '中级', 9344, '教你如何通过苹果HealthKit框架读取、处理卡路里数据', 'iOS', 'https://img2.mukewang.com/570761fd0001f03906000338-240-135.jpg', 'https://www.imooc.com/learn/541', '19分', 9.8, 9.8, 9.8, 9.8, '简介：学习掌握如何通过苹果HealthKit框架读取、处理卡路里数据，并且将我们解析获取到的数据关联到界面，让用户可以实时的了解自己卡路里消耗的是数据', 'Frank666', 'https://img3.mukewang.com/561b1c6a00011ed902200220-80-80.jpg', '移动开发工程师', '学习本课程开发需要有苹果开发者账号一枚，另外还需要你的耐心。', '通过本课程可以学到如何使用HealthKit读取、处理卡路里数据。我是不会告诉你 1大卡 ＝ 1000cal的！', '2018-09-02 20:37:13.875074', '2018-08-12 23:48:05.838342');
INSERT INTO "public"."tb_imooc_course" VALUES (478, 490, 'MongoDB复制集—认识复制集', '中级', 8062, '一起进入复制集这个屌丝的内心世界，发觉MongoDB复制集的强大', 'MongoDB', 'https://img4.mukewang.com/562052b70001e9c106000338-240-135.jpg', 'https://www.imooc.com/learn/490', '43分', 9.9, 9.9, 9.9, 10, '简介：数据的冗余是必要的，MongoDB的复制集在轻松实现冗余的同时，也给我们带来了维护上的便利，让我们一起来发觉MongoDB复制集的强大吧。', 'SeanZ', 'https://img.mukewang.com/54bcba130001fc2305680568-80-80.jpg', NULL, '学习本门课程之前，建议先了解一下知识，会更有助于理解和掌握本门课程
1、会启动MongoDB实例
2、了解MongoDB的基本操作
3、最好先学习一下《MongoDB入门篇》', '1、什么是复制集
2、什么场合下适用复制集
3、复制集的特点', '2018-09-02 20:37:13.387634', '2018-08-12 23:48:05.299655');
INSERT INTO "public"."tb_imooc_course" VALUES (489, 535, 'Zbrush生物角色高级雕刻', '入门', 23081, 'Zbrush生物角色高级雕刻全程教学，展示3D怪兽的制作方法

', '动效动画, 模型制作', 'https://img3.mukewang.com/5639a1b700013b9409600540-240-135.jpg', 'https://www.imooc.com/learn/535', '6小时35分', 9.6, 9.7, 9.5, 9.6, '简介：完整展示一个逼真3D怪兽的制作方法和流程，掌握ZBrush对于复杂生物雕刻的思路和创作技法，以及如何使用ZBrush绘制逼真纹理，并配合keyshot渲染器来输出最终效果！', '巧课力CGmomo...', 'https://img3.mukewang.com/579ac1aa0001fd7805000500-80-80.jpg', 'CG影视动画师', '课程没有基础限制，适用人群包括想学习或正在学习动漫相关专业的在校生、爱好者以及在职者。有数位板配合学习效果更佳！
', '1：ZBrush快速入门
2：雕刻常用笔刷及快捷键的使用
3：造型及雕刻能力的培养和训练
4：逼真贴图绘制及后期渲染合成
', '2018-09-02 20:37:13.84018', '2018-08-12 23:48:06.208757');
INSERT INTO "public"."tb_imooc_course" VALUES (491, 534, 'MongoDB复制集技术内幕：工作原理及新版本改进方向', '中级', 5137, '工作原理及新版本改进方向，深入讨论3.2 版本的一些变化', 'MongoDB', 'https://img.mukewang.com/57466ac60001a0af06000338-240-135.jpg', 'https://www.imooc.com/learn/534', '37分', 9.7, 9.9, 9.7, 9.6, '简介：从 MongoDB 中复制集的整体架构开始，特别关注主结点的选举协议以及深入讨论即将推出的 3.2 版本中的一些变化', 'MongoDB中文...', 'https://img2.mukewang.com/54bf1a320001cc8802200220-80-80.jpg', NULL, '了解MongoDB数据库及基本运用和功能', '解MongoDB复制集技术内幕：工作原理及新版本改进方向', '2018-09-02 20:37:15.014285', '2018-08-12 23:48:06.416922');
INSERT INTO "public"."tb_imooc_course" VALUES (410, 631, 'Java高并发秒杀API之Service层', '高级', 47967, 'Java实现高并发秒杀API，介绍秒杀业务Service层的设计和实现', 'Java', 'https://img4.mukewang.com/5733de380001615d06000338-240-135.jpg', 'https://www.imooc.com/learn/631', '1小时35分', 9.8, 9.9, 9.7, 9.7, '简介：本门课程是《Java实现高并发秒杀API》系列课程的第二门课，主要介绍秒杀业务Service层的设计和实现，基于Spring托管Service实现类，并使用了Spring声明式事务。秒杀项目使用流行的SpringMVC+Spring+MyBatis整合框架进行开发。非常值得学习呦！', 'yijun zhang', 'https://img4.mukewang.com/57286e0a0001c22203280318-80-80.jpg', 'JAVA开发工程师', '《Java高并发秒杀API》是系列课程，共四门课，分别为业务分析和DAO层，Service层，Web层和高并发优化。本门课程是第二门课程，学习前需要了解如下知识： 
1、精通JavaWeb基础 
2、熟悉SpringMVC、Spring和MyBatis框架
3、学习《Java高并发秒杀API之业务分析与DAO层》课程', '1、掌握秒杀业务
2、能够进行SpringMVC+Spring+MyBatis的整合开发 
3、能够进行Service层的设计与实现', '2018-09-02 20:37:06.974059', '2018-08-12 23:47:58.835902');
INSERT INTO "public"."tb_imooc_course" VALUES (490, 461, '走进大数据之storm流式计算基础', '初级', 24150, 'ApacheStorm的起源、原理、基础用法、集群搭建讲解', '大数据', 'https://img4.mukewang.com/5704aa88000104f106000338-240-135.jpg', 'https://www.imooc.com/learn/461', '1小时11分', 8.9, 8.9, 8.6, 9.1, '简介：ApacheStorm的起源、原理、基础用法、集群搭建讲解。', 'acmol', 'https://img2.mukewang.com/5625d8a60001c10102200220-80-80.jpg', '其它', '本课程是Storm初级课程，对用户要求不多，但：
1.讲解API时使用的是Java API，需要用户掌握Java基本语法。
2.最好用过hadoop，或者其它分布式批处理计算系统，会更容易理解一些东西。', '1、流式计算起源
2、Storm组成与基本原理
3、Storm基本API用法
4、Storm集群搭建', '2018-09-02 20:37:14.968343', '2018-08-12 23:48:06.342635');
INSERT INTO "public"."tb_imooc_course" VALUES (493, 504, 'React入门', '中级', 117827, '颠覆式前端UI开发框架React入门视频教程，赶紧学起来', 'React.JS', 'https://img.mukewang.com/55fd033c00018a0606000338-240-135.jpg', 'https://www.imooc.com/learn/504', '54分', 9.6, 9.8, 9.5, 9.5, '简介：学习React出现的背景，React自身的优势与不足，同jQuery, AngularJS等库和框架相比差异点在哪里。React教程分为：React入门"、"React实践图片画廊应用(上)"、"React实践图片画廊应用(下)"三门课程，该教程是第一门教程。', 'Materliu', 'https://img4.mukewang.com/558f98f00001537842083120-80-80.jpg', 'Web前端工程师', '1.需要有一定的JS，CSS前端基础。
2.熟悉Sass和Compass
3.了解Yeoman、Grunt、Webpack
4.了解CommonJS、NodeJS', '1.React入门基础知识
2.React组件的生命周期，事件绑定，样式应用，JSX语法等。', '2018-09-02 20:37:15.026296', '2018-08-12 23:48:06.611656');
INSERT INTO "public"."tb_imooc_course" VALUES (487, 519, '数据结构探险—队列篇', '中级', 94281, '与现实最为贴近的数据结构-队列，带大家进入数据结构的美妙世界', 'C++', 'https://img4.mukewang.com/57466a710001acb506000338-240-135.jpg', 'https://www.imooc.com/learn/519', '1小时15分', 9.8, 9.8, 9.8, 9.7, '简介：本课程将和大家一起领略数据结构的精巧设计并详细的演示队列结构的实现，课程以原理为基础，同时以C++编码做为效果实现。使大家可以由表及里，由浅入深的进入数据结构的美妙世界。', 'james_yuan', 'https://img1.mukewang.com/550f82810001c44902200220-80-80.jpg', '学生', '本课程是程序世界中的核心课程
由于本门课程是以C++为编码实现的，所以需要大家熟练掌握C++语言基础语法。', '1、什么是数据结构、什么是队列以及队列的实现原理
2、如何设计队列的类，如何完善类的设计
3、如何实现队列的相关函数
4、如何检验代码的正确性，如何完善代码
5、如何与实际相结合，利用数据结构解决实际问题', '2018-09-02 20:37:13.800443', '2018-08-12 23:48:06.063647');
INSERT INTO "public"."tb_imooc_course" VALUES (488, 542, 'CSS深入理解之vertical-align', '中级', 35976, '深入理解vertical-align的属性值，分享开发中应用经验
  ', 'HTML/CSS', 'https://img1.mukewang.com/57318075000127bc06000338-240-135.jpg', 'https://www.imooc.com/learn/542', '1小时49分', 9.5, 9.7, 9.4, 9.5, '简介：本课程将带领大家深入的理解CSS中的属性vertical-align所支持的各类属性值们，会简单介绍下vertical-align所存在的兼容性问题，也会分享一些开发中的实际应用经验以及一些最佳的实践效果', '张鑫旭', 'https://img4.mukewang.com/549beab90001be9037445616-80-80.jpg', '页面重构设计', '既适合学习过CSS基础知识的新手深入学习，也欢迎有经验的小伙伴加深了解噢！', '教你区别vertical-align与line-height；
深入讲解vertical-align各类属性值；
帮你理解vertical-align前后不一的作用机制；
了解vertical-align的糟糕兼容性；
vertical-align的实际应用。', '2018-09-02 20:37:14.1714', '2018-08-12 23:48:06.197435');
INSERT INTO "public"."tb_imooc_course" VALUES (495, 547, '使用wordpress极速建站', '中级', 45979, '使用wordpress搭建博客系统，不敲一行代码，搭建博客', 'PHP', 'https://img.mukewang.com/564d309e00011efa06000338-240-135.jpg', 'https://www.imooc.com/learn/547', '48分', 9.6, 9.6, 9.5, 9.6, '简介：作为一款免费、简单、扩展性超好的博客系统，wordpress被广泛的使用，不光是用于搭建个人博客，还可以扩展成电子商城、CMS、相册等等各种系统。本课程教你如何不敲一行代码，也能实现自己搭建博客系统。', 'withy', 'https://img2.mukewang.com/5564088300017b7510240719-80-80.jpg', 'PHP开发工程师', '想要掌握本课程重点，你仅仅只需学会搭建php+apache+mysql的运行环境即可。', '1、wordpress的下载、安装
2、使用wordpress时常见问题的处理方式
3、wordpress插件和主题的介绍和使用', '2018-09-02 20:37:15.049626', '2018-08-12 23:48:06.888398');
INSERT INTO "public"."tb_imooc_course" VALUES (494, 548, 'iOS-健康App系列之我走了多远', '中级', 11881, '想显示你运动里程吗？快来学习，带你完成一个简单的健康应用', 'iOS', 'https://img2.mukewang.com/570761e60001698206000338-240-135.jpg', 'https://www.imooc.com/learn/548', '33分', 9.6, 9.8, 9.7, 9.2, '简介：想知道自己每天走了多远吗？现在可以从健康应用统计的数据中获取运动的里程数，知道我们究竟走了多远，如果想每天达到多少里程，现在就可以通过我们的应用来了解，离我们的任务目标还有多少', 'Frank666', 'https://img.mukewang.com/561b1c6a00011ed902200220-80-80.jpg', '移动开发工程师', '需要拥有苹果开发者账号一枚,并且手看过前2期课程', '1.获取里程数据
2.处理获取到的数据
3.数据传递，与界面关联
4.完成一个简单的健康应用', '2018-09-02 20:37:15.073556', '2018-08-12 23:48:06.794357');
INSERT INTO "public"."tb_imooc_course" VALUES (502, 552, 'MongoDB 在线讲座系列之MongoDB数据库备份策略/Ops Manager', '中级', 11686, 'Cloud Backup的基本功能和主要架构，Ops Manager的主要功能', 'MongoDB', 'https://img.mukewang.com/57466aad0001186f06000338-240-135.jpg', 'https://www.imooc.com/learn/552', '40分', 9.6, 9.6, 9.7, 9.7, '简介：介绍Cloud Backup的基本功能和主要架构，并且简要介绍面向企业级客户的Ops Manager的主要功能。', 'MongoDB中文...', 'https://img2.mukewang.com/54bf1a320001cc8802200220-80-80.jpg', NULL, '喜欢数据库的朋友都来吧 ', 'Cloud Backup的基本功能和主要架构和面向企业级客户的Ops Manager的主要功能', '2018-09-02 20:37:11.931365', '2018-08-12 23:48:07.537346');
INSERT INTO "public"."tb_imooc_course" VALUES (496, 544, 'iOS9新特性之画中画Multitasking', '初级', 10910, '针对IOS9新特性演示画中画，Slide Over以及Slide View如何使用', 'iOS', 'https://img.mukewang.com/564a92e8000171b006000338-240-135.jpg', 'https://www.imooc.com/learn/544', '50分', 9.8, 9.8, 9.8, 9.8, '简介：针对IOS9新特性重点为大家演示画中画，Slide Over以及Slide View如何使用，给大家带来一种应用的全新设计模式。对其中的重要的知识点做了详尽的分析。如对画中画的介绍，我们不仅掌握了如何使用，还对API做了系统的归纳和总结，知识学习起来更为系统', 'Jones__', 'https://img2.mukewang.com/5aa23ce700016f2a02560172-80-80.jpg', '算法工程师', '本课程适合客户端产品经理，研发人员以及对IOS新特性感兴趣的人群', '（1）实现边斗地主边看视频效果
（2）实现边玩游戏边看攻略效果
（3）充分了解IOS9的新特性
（4）新的产品设计交互特性', '2018-09-02 20:37:15.038296', '2018-08-12 23:48:06.967019');
INSERT INTO "public"."tb_imooc_course" VALUES (497, 528, 'MongoDB复制集—快速搭建复制集', '中级', 6454, '快速搭建，先睹为快，让大家对复制集有个更直观的认识', 'MongoDB', 'https://img2.mukewang.com/56261c250001612e06000338-240-135.jpg', 'https://www.imooc.com/learn/528', '2小时 8分', 9.9, 9.8, 10, 9.9, '简介：基础理论固然重要，在程序员的世界，实战才是王道。为了让大家对复制集有个更直观的认识，必须亲自动手，快速搭建一套属于自己的复制集。', 'SeanZ', 'https://img4.mukewang.com/54bcba130001fc2305680568-80-80.jpg', NULL, '预先掌握以下知识，更加有助于掌握复制集搭建的精髓
1、会启动MongoDB实例
2、了解MongoDB的基本操作', '1、mongod的配置文件编写
2、复制集有哪些成员
3、简介复制集的特性', '2018-09-02 20:37:15.097905', '2018-08-12 23:48:06.988748');
INSERT INTO "public"."tb_imooc_course" VALUES (501, 551, 'Cocos2d-x基础教程二-会动的时钟', '初级', 16907, '本课程为Cocos2d-x入门教程第二门，是对基础元素的讲解', 'Cocos2d-x', 'https://img1.mukewang.com/565bad800001d67b06000338-240-135.jpg', 'https://www.imooc.com/learn/551', '2小时 8分', 9.3, 9.9, 9.2, 8.7, '简介：是否在玩游戏的时候听到过很多名词？比如精灵，场景，粒子，渲染，骨骼动画等等。是否对这些名词既熟悉又陌生？那么你的救星来了!本节课程是对基础元素的讲解，旨在入门Cocos2d-x引擎', '雷过就跑', 'https://img1.mukewang.com/557a888d0001b8bb16001000-80-80.jpg', '移动开发工程师', '需要有c++语言和Cocos2d-x第一门课的基础', '1:Director 
2:Scene
3:Sprite
4:Layer', '2018-09-02 20:37:11.792486', '2018-08-12 23:48:07.487453');
INSERT INTO "public"."tb_imooc_course" VALUES (500, 492, 'Golang之IO操作初接触', '入门', 12812, '掌握Golang IO操作,游走二进制领域，在实战中学习Golang开发', 'Go', 'https://img2.mukewang.com/57466a000001dfdc06000338-240-135.jpg', 'https://www.imooc.com/learn/492', '1小时14分', 9.5, 9.7, 9.5, 9.4, '简介：本次课程，将从搭建Golang开发环境开始， 一步步向大家介绍Golang系统库的基础输入输出的功能及相关特性，并且，将结合行数统计及图片读取的案例，带领小伙伴们在实战中扎扎实实的学习Golang开发~~', '徐波老师', 'https://img2.mukewang.com/55dd985500017e1f05120512-80-80.jpg', '移动开发工程师', '本课程是Golang的系统库介绍课程，实战较多，建议各位小伙伴们先对Golang语言本身有初步认识，再来进修。', '1、Golang开发环境搭建方法
2、Golang的IO操作及系统库功能
3、计算文件行数实例编写', '2018-09-02 20:37:11.667339', '2018-08-12 23:48:07.465769');
INSERT INTO "public"."tb_imooc_course" VALUES (404, 567, 'Java实现图片等比例缩略图', '初级', 22849, '视频教程以实例的方式，讲解Java平台实现图片等比例缩略图生成', 'Java', 'https://img4.mukewang.com/5677b29b0001fe3e06000338-240-135.jpg', 'https://www.imooc.com/learn/567', '37分', 9.8, 9.9, 9.5, 9.8, '简介：Web应用为上传图片生成缩略图是常见的基本功能，通过缩略图生成提高了信息浏览时的性能，在保证用户使用体验的同时减少了数据传输量。这门课程以实例的方式，讲解如何使用使用Java实现图片等比例缩略图生成功能。', '皇马啸西风...', 'https://img2.mukewang.com/55792b300001c8af02200220-80-80.jpg', 'JAVA开发工程师', '本课程是java web的中高级课程，建议各位小伙伴们先对Jsp、以及SpringMVC有初步认识，再来进修。', '1、Java图片等比例缩略图实现介绍
2、课程项目案例介绍
3、实现服务器端Java实现图片等比例缩略图', '2018-09-02 20:37:07.279419', '2018-08-12 23:47:58.327845');
INSERT INTO "public"."tb_imooc_course" VALUES (510, 463, 'PHP+Sphinx+MySQL实现全文检索—理论篇', '中级', 23717, 'sphinx，影响您职场身价的利器，教程循序渐进，通俗易懂', 'PHP', 'https://img3.mukewang.com/572aff7f0001633306000338-240-135.jpg', 'https://www.imooc.com/learn/463', '53分', 9.3, 9.5, 9.3, 8.9, '简介：课程通过mysql搜索引入sphinx检索，让大家对sphinx有新的认知，并介绍了当前互联网站内应用sphinx检索优势，课程循序渐进，通俗易懂，对重点难点技术做了详细讲解,通过学习本课程我们能熟练的使用sphinx工具。', 'singwa', 'https://img.mukewang.com/59e0d3be0001672a05120512-80-80.jpg', '全栈工程师', '学习本门课程之前，建议先了解一下知识，会更有助于理解和掌握本门课程
1、掌握mysql基础知识
2、熟悉linux命令
3、有一定的LAMP下的项目经验', '1、sphinx如何工作？ 
2、为什么要用sphinx  
3、如何生成索引数据 
4、inderex、searchd工具使用', '2018-09-02 20:37:19.405816', '2018-08-12 23:48:08.249755');
INSERT INTO "public"."tb_imooc_course" VALUES (509, 470, 'Oeasy教你玩转后期剪辑Premiere', '入门', 50194, 'Oeasy教你玩转后期剪辑Premiere，详细介绍如何使用Premiere', '动效动画', 'https://img3.mukewang.com/574669500001461606000338-240-135.jpg', 'https://www.imooc.com/learn/470', '3小时 0分', 9.6, 9.8, 9.7, 9.4, '简介：详细介绍如何使用Premiere', 'Oeasy', 'https://img3.mukewang.com/53855e6f0001034501400140-80-80.jpg', '页面重构设计', '影视后期同学必备技能', '如何剪辑精美的视频', '2018-09-02 20:37:19.639916', '2018-08-12 23:48:08.197329');
INSERT INTO "public"."tb_imooc_course" VALUES (212, 808, 'ReactNative基础与入门', '中级', 49854, '敲开React Native的大门,掌握未来趋势新技术', 'iOS, React native', 'https://img3.mukewang.com/58b7d4ac0001699006000338-240-135.jpg', 'https://www.imooc.com/learn/808', '4小时41分', 9.5, 9.8, 9.3, 9.3, '简介：本教程会让你认识什么是ReactNative，如何在Mac、Windows下搭建ReactNative应用开发环境，如何构建官方example项目，让你先敲React Native的大门，然后在基础篇教你认识什么是ReactNative组件以及组件的生命周期，然后让你学会导入导出项目，props，status,ref,类等的使用，接着让你明白ES6与ES5的不同以及学会ReactNative应用UI界面布局的必备知识。最后是进阶篇，教你React Native按钮使用技巧、图片加载技巧以及React Native调试技巧，这些内容学完后，专门为大家准备了真正的实战项目，让大家全面掌握React Native技术。实战课程《ReactNative开发跨平台GitHub App》http://coding.imooc.com/learn/list/89.html', 'CrazyCodeBoy', 'https://img.mukewang.com/545847e20001163c02200220-80-80.jpg', NULL, '不论你是iOS，Android还是Web前端工程师,都可以学习本门课程，实战课程《ReactNative开发跨平台GitHub App》http://coding.imooc.com/learn/list/89.html', '1、什么是React Native?
2、为什么要用React Native？
3、如何在Mac、Windows下搭建React Native开发环境
4、什么是React Native的组件、 如何创建组件？
5、什么是组件的生命周期？
6、如何导出与使用一个组件？
7、什么是props?
8、如何调试React Native应用程序？', '2018-09-02 20:36:54.236135', '2018-08-12 23:47:43.283458');
INSERT INTO "public"."tb_imooc_course" VALUES (505, 506, '前端工程师必备的PS技能——切图篇', '初级', 231098, '前端开发需要的Photoshop技巧，结合实际例子教会大家如何操作', '前端工具, 设计工具', 'https://img2.mukewang.com/578741d3000151e806000338-240-135.jpg', 'https://www.imooc.com/learn/506', '2小时 8分', 9.6, 9.8, 9.5, 9.3, '简介：本课程将介绍一些基本的Photoshop操作并重点结合前端的需求做展开。结合实际例子教会大家从PSD入手到获取所需资源的实际实现方式。', '爱米', 'https://img1.mukewang.com/55ff727300010f1d06000600-80-80.jpg', 'Web前端工程师', '本课程适合对Photoshop有简单了解，希望学习前端开发切图方法的用户。', '使用Photoshop从网页设计师提供的psd中获取网页前端开发过程中所需要的资源，并进行简单的调整和处理。', '2018-09-02 20:37:16.561406', '2018-08-12 23:48:07.652966');
INSERT INTO "public"."tb_imooc_course" VALUES (507, 475, 'Python操作MySQL数据库', '初级', 80092, '本视频教程讲解Python如何开发MySQL数据库程序', 'Python', 'https://img2.mukewang.com/5705b6df0001b7f206000338-240-135.jpg', 'https://www.imooc.com/learn/475', '59分', 9.8, 9.9, 9.6, 9.8, '简介：本课程讲解Python如何开发MySQL数据库程序。首先介绍Python开发数据库程序的通用接口规范，然后搭建Python开发数据库程序的开发环境，接着了解了通用接口规范中的connection、cursor两大对象之后，介绍如何增删改查数据库，最后以实例代码演示数据库程序的开发流程。', '疯狂的蚂蚁cr...', 'https://img.mukewang.com/55c9d2750001658d05550576-80-80.jpg', 'JAVA开发工程师', '本课程是Python语言开发的中级课程,您要具备以下知识：
1、Python编程基础语法；
2、MySQL数据库的基础知识；', '1、Python编写通用数据库程序的标准API规范；
2、Python开发MySQL程序的高效率开发环境和所需插件；
3、Python对MySQL实现增、删、改、查数据的代码写法；
4、完整的Python开发数据库程序的实例流程；', '2018-09-02 20:37:19.585985', '2018-08-12 23:48:07.970402');
INSERT INTO "public"."tb_imooc_course" VALUES (214, 810, 'Spring Boot进阶之Web进阶', '中级', 66988, '《2小时学习Spring Boot》之进阶教程，针对Web方面的相关技巧', 'Java, SpringBoot', 'https://img4.mukewang.com/58c2856500012b7e06000338-240-135.jpg', 'https://www.imooc.com/learn/810', '1小时43分', 9.7, 9.9, 9.6, 9.6, '简介：《2小时学习Spring Boot》后续进阶课程，主要讲述了Spring Boot针对Web方面的相关技巧

讲师实战课程《Spring Boot微信点餐系统》
http://coding.imooc.com/class/117.html 
《Spring Cloud微服务实战》
http://coding.imooc.com/class/187.html 均已上线', '廖师兄', 'https://img2.mukewang.com/5a9fd02e00018e3308000751-80-80.jpg', 'JAVA开发工程师', '没有基础的同学建议先学习前置课程
《2小时学习Spring Boot》
http://www.imooc.com/learn/767,
代码示例请参考
https://git.oschina.net/liaoshixiong/girl
', 'Spring Boot针对Web方面的相关技巧
', '2018-09-02 20:36:54.5408', '2018-08-12 23:47:43.454435');
INSERT INTO "public"."tb_imooc_course" VALUES (517, 436, 'Sass进阶篇', '中级', 38598, '对Sass其它较有难度的部分进行讲解，包括常用控制命令、函数', 'Sass/Less', 'https://img2.mukewang.com/5704ac6e0001781f06000338-240-135.jpg', 'https://www.imooc.com/learn/436', '4小时55分', 9.3, 9.4, 9.4, 9.2, '简介：Sass又名SCSS，是CSS预处理器之一，它能让你更好的、更轻松的工作。这个系列教程是《sass基础篇》课程的进级，对Sass其它较有难度的部分进行讲解，包括常用控制命令、函数及规律。', '大漠', 'https://img1.mukewang.com/53216e780001060f01600160-80-80.jpg', 'Web前端工程师', '对CSS有一定的了解，以及最好是学习完成《sass基础篇》课程，才可以更好的学习本课程。', '1、Sass 的控制命令
2、Sass 的函数功能
3、Sass 的函数的 @ 规则
', '2018-09-02 20:37:17.169147', '2018-08-12 23:48:08.745862');
INSERT INTO "public"."tb_imooc_course" VALUES (514, 476, 'Canvas玩转图像处理', '中级', 53211, 'canvas系列第三课，学会编写图像算法，一起玩转图像处理吧', 'Html5', 'https://img1.mukewang.com/570769b400014aaa06000338-240-135.jpg', 'https://www.imooc.com/learn/476', '1小时58分', 9.7, 9.9, 9.6, 9.6, '简介：canvas为开发者们提供了激动人心的图像操作方法，让我们一起来看看，我们都能使用这些方法，如何使用canvas玩转图像处理吧！', 'liuyubobobo', 'https://img2.mukewang.com/5347593e00010cfb01400140-80-80.jpg', '全栈工程师', '本课程是《炫丽的倒计时效果——canvas绘图和动画基础》和《canvas绘图详解》这两门课程的进一步深入。将教会大家使用canvas编写属于自己的图像算法，创建出炫丽的效果！', '1、使用canvas将图像渲染在画布上；
2、离屏canvas；
3、使用canvas进行像素级操作。', '2018-09-02 20:37:19.298444', '2018-08-12 23:48:08.590396');
INSERT INTO "public"."tb_imooc_course" VALUES (513, 466, '使用Struts2+Hibernate开发学生信息管理功能', '中级', 74806, 'Strust2+Hibernate整合开发案例，Java Web开发技能更上一层楼', 'Java', 'https://img3.mukewang.com/5774d89a0001fafc06000338-240-135.jpg', 'https://www.imooc.com/learn/466', '2小时35分', 9.7, 9.9, 9.6, 9.5, '简介：本课程通过学生信息管理功能的开发，来介绍Struts2和Hibernate的整合。主要内容包括：Struts2和Hibernate整合，用户登录模块和学生信息管理模块的设计和实现。通过本课程的学习，一定会使小伙伴们的Java Web开发技能更上一层楼。', 'milanlover', 'https://img3.mukewang.com/53df3b7a0001b45c01400140-80-80.jpg', 'JAVA开发工程师', '各位小伙伴，学习本课程前需要对
Struts2和Hibernate的基础知识有所了解。', '1、掌握Struts2和Hibernate的整合开发
2、能够使用Struts2+Hibernate独立开发信息管理类的项目，进行数据的增删改查。', '2018-09-02 20:37:19.724451', '2018-08-12 23:48:08.315231');
INSERT INTO "public"."tb_imooc_course" VALUES (515, 474, 'C++远征之多态篇', '初级', 54797, '本教程将带领大家体会面向对象三大特性中的多态特性', 'C++', 'https://img4.mukewang.com/57075ebf0001de0b06000338-240-135.jpg', 'https://www.imooc.com/learn/474', '2小时56分', 9.8, 9.9, 9.8, 9.6, '简介：本课程将带领大家体会面向对象三大特性中的多态特性，讲述了虚函数、抽象类和接口类等概念，以及多态的实现原理，课程的最后引入RTTI及异常处理，使整个多态篇更加完整，更具实战指导性，本门课程是C++远征课程的高潮和经典，对于面向对象的语言的学习将大有裨益。', 'james_yuan', 'https://img1.mukewang.com/550f82810001c44902200220-80-80.jpg', '学生', '本课程是C++初级课程
1、熟练掌握C++语言基础语法', '1、虚函数、虚析构函数、纯虚函数
2、抽象类和接口类
3、运行时类别异常
4、异常处理', '2018-09-02 20:37:19.146564', '2018-08-12 23:48:08.665445');
INSERT INTO "public"."tb_imooc_course" VALUES (516, 484, 'Android-屏幕适配全攻略', '中级', 46261, '重点概念、常见问题及解决方案，赶快进来学习解决疑惑

', 'Android', 'https://img4.mukewang.com/55d6ca740001f2ad06000338-240-135.jpg', 'https://www.imooc.com/learn/484', '2小时23分', 9.7, 9.9, 9.8, 9.5, '简介：就目前的Android开发环境来说，我们需要去适配什么样分辨率的手机？dp、sp、px这些常用单位的概念是什么？进行屏幕适配需要从哪些角度去考虑呢？有没有一种更通用的屏幕适配的方式呢？进行屏幕适配有哪些最佳实践呢？这些问题你都清楚吗？不清楚就赶快进来学习呀！', '凯子哥', 'https://img2.mukewang.com/55da77df0001b76f04800480-80-80.jpg', '移动开发工程师', '需要你有基本的屏幕适配经验，如果能带着疑问来学习，那更好不过了', '在本课程中，你可以了解目前移动设备市场的整体情况，了解android屏幕适配面向的主要设备对象，学习到常用的基本概念，更重要的，你可以学习到官方文档推荐的进行屏幕适配的方式，从而在整体上清楚应该从哪些角度进行考虑。', '2018-09-02 20:37:16.727863', '2018-08-12 23:48:08.737796');
INSERT INTO "public"."tb_imooc_course" VALUES (511, 471, 'Velocity.js实现弹出式相框', '中级', 25894, '超给力动画插件，动画从此信手拈来，从此网页变得生动起来', 'JavaScript', 'https://img4.mukewang.com/574678450001bc2c06000338-240-135.jpg', 'https://www.imooc.com/learn/471', '57分', 9.6, 9.8, 9.7, 9.2, '简介：本课程将使用velocity.js开发一个弹出式相框。首先和大家一起去认识和了解velocity.js强大的动画制作功能，然后通过一些小案例由浅入深地掌握它的的用法，最后通过一个真实案例来体会velocity.js在项目开发中的威力。让我们武装上velocity.js，从此网页变得生动起来。', 'channingbree...', 'https://img4.mukewang.com/55a529c90001205902200220-80-80.jpg', 'Web前端工程师', '本课程是前端中级课程
1、HTML基础知识
2、CSS基础知识
3、JS基础知识', '1、velocity.js的使用方法
2、卡片样式的制作
3、js插件的学习方法', '2018-09-02 20:37:19.388678', '2018-08-12 23:48:08.271626');
INSERT INTO "public"."tb_imooc_course" VALUES (193, 821, '轻松愉快之玩转SpringData', '中级', 23916, '利用Spring Data提高开发效率，提升程序员的幸福指数', 'Java, MySQL', 'https://img4.mukewang.com/58e6081c00012ec206000338-240-135.jpg', 'https://www.imooc.com/learn/821', '3小时24分', 9.6, 9.8, 9.7, 9.5, '简介：在企业级JavaEE应用开发中，对数据库的访问和操作是必须的。Spring Data作为SpringSource的其中一个子项目，旨在统一和简化对各类型持久化存储和访问，而不拘泥于是关系型数据库还是NoSQL数据存储，使得对数据库的访问变得方便快捷，并支持MapReduce框架及云计算服务；对于拥有海量数据的项目，可以用Spring Data来简化项目的开发，就如Spring Framework对JDBC、ORM的支持一样，Spring Data会让数据的访问变得更加方便，极大提高开发效率、提升程序员的幸福指数！', 'Michael__PK', 'https://img.mukewang.com/533e4d510001c2ad02000200-80-80.jpg', '全栈工程师', '有一定Java基础，了解Spring、JPA的开发人员', '了解Spring Data的相关知识，学会开发环境搭建。掌握Repository接口，Repository方法命令规范及查询，更新操作，学习SpringData事务，实体类增删改查操作接口CrudRepository，PagingAndSortingRespository，JPA Criteria查询接口等等高级技巧。', '2018-09-02 20:36:55.589999', '2018-08-12 23:47:41.855051');
INSERT INTO "public"."tb_imooc_course" VALUES (521, 485, 'Cocos2d-x游戏开发基础之Lua基础篇', '入门', 19343, '游戏开发入门从Lua开始，从0开始的基础入门教程', 'Cocos2d-x', 'https://img.mukewang.com/570760760001271506000338-240-135.jpg', 'https://www.imooc.com/learn/485', '1小时21分', 9.8, 9.9, 9.9, 9.7, '简介：Lua，你也可以读成撸啊。什么？你不知道Lua？如果你玩过魔兽世界，那么你肯定知道大脚~大脚就是由Lua来开发的。本门课程为大家带来Lua语言从0开始的基础教程，希望大家学完以后也能做出类似大脚一样的插件', '徐波老师', 'https://img.mukewang.com/55dd985500017e1f05120512-80-80.jpg', '移动开发工程师', '如果你有语言基础，那太好了
如果你没有语言基础～那更好了', 'Lua是什么鬼
Lua的环境搭建和基础语法
Lua的Table大法
Lua的函数，包和系统库', '2018-09-02 20:37:17.021139', '2018-08-12 23:48:09.147705');
INSERT INTO "public"."tb_imooc_course" VALUES (524, 489, 'Android-仿微信图片选择器', '中级', 28463, '微信中的图片选择器综合案例不容错过，整体思路值得一学', 'Android', 'https://img3.mukewang.com/55e3bbf90001bb3706000338-240-135.jpg', 'https://www.imooc.com/learn/489', '3小时 2分', 9.7, 9.8, 9.7, 9.5, '简介：微信大家天天用，有没有想过功能如何实现的呢？本门课程老师讲带领同学实现Android中高仿微信图片选择器，此功能较完整，结合了ImageLoader/Handler/PopWindow等常用类，从整体思路分析，到一步步的功能实现，值得一学！', 'hyman', 'https://img.mukewang.com/54169c430001face18403264-80-80.jpg', '移动开发工程师', '1.掌握Java基础
2.熟练掌握Android常用技术', '1.单例模式在项目中的实践
2.图片的缓存与压缩
3.线程轮询与并行
4.反射机制在Android中的使用
5.Handler-线程间通信', '2018-09-02 20:37:17.087035', '2018-08-12 23:48:09.36095');
INSERT INTO "public"."tb_imooc_course" VALUES (523, 478, 'Spring事务管理', '中级', 75120, '事务管理是Spring重要的知识，应用事务解决数据不一致问题', 'Java', 'https://img.mukewang.com/5704d19a0001d38406000338-240-135.jpg', 'https://www.imooc.com/learn/478', '2小时 0分', 9.7, 9.9, 9.8, 9.4, '简介：事务管理是Spring中的一个非常重要的知识。本门课程首先介绍Spring的基本概念，然后以银行转账为例，介绍Spring的编程式事务管理和声明式事务管理的应用场景和实现方式！希望通过本门课程的学习，使得小伙伴们可以在开发中灵活地应用事务。', '慕_神', 'https://img2.mukewang.com/55dbe4f1000115e705680568-80-80.jpg', 'JAVA开发工程师', '学习本课程前需要熟悉Spring的基础知识，掌握IOC和AOP的基本概念。小伙伴们可参考《Spring入门》课程', '1、理解Spring事务管理的基本概念
2、掌握Spring事务管理的应用场景
3、掌握声明式事务管理和编程式事务管理的实现方式', '2018-09-02 20:37:17.101513', '2018-08-12 23:48:09.325515');
INSERT INTO "public"."tb_imooc_course" VALUES (525, 488, 'DOM探索之基础详解篇', '初级', 90934, '要知道前端大牛都是从精通DOM开始的，全面讲解DOM的基础知识', 'HTML/CSS, JavaScript', 'https://img.mukewang.com/5774daca0001646506000338-240-135.jpg', 'https://www.imooc.com/learn/488', '2小时11分', 9.6, 9.8, 9.4, 9.6, '简介：基础详解篇是DOM探索系列课程的第一篇，详细全面的介绍DOM的基础知识。首先通过一个案例，让您认识DOM在实际开发中是如何应用的。了解如何判断元素的节点类型,掌握元素节点的继承层次及各种元素节点的分类和规则。为后续课程打下一个坚实的基础。', '古艺散人', 'https://img2.mukewang.com/549cc61f0001d71401400140-80-80.jpg', NULL, '本课程是前端中级课程
1、您要具备HTML基础知识
2、您要具备CSS基础知识
3、您要具备JS基础知识', '1、重新认识DOM
2、剖析domReady
3、学会元素节点的类型判断、继承层次和分类', '2018-09-02 20:37:17.462994', '2018-08-12 23:48:09.394567');
INSERT INTO "public"."tb_imooc_course" VALUES (534, 500, 'Android-短信验证', '初级', 37936, '通过代码实践实现短信验证，打造最贴心的一站式服务平台', 'Android', 'https://img1.mukewang.com/5783861900015e7e06000338-240-135.jpg', 'https://www.imooc.com/learn/500', '1小时10分', 9.8, 9.9, 9.8, 9.7, '简介：Mob平台为移动开发者提供ShareSDK社交分享、ShareREC手游录像分享、短信验证码SDK及BigApp等免费服务，力图为开发者打造最贴心的一站式服务平台。本课程通过ShareSDK实现短信验证码。', 'T-w', 'https://img.mukewang.com/55f926100001bf3d04000565-80-80.jpg', NULL, '1.熟练使用JAVA
2.掌握一定的Android基础知识
3.掌握Android和第三方的配合使用
4.了解mob大平台', '1.平台介绍
2.SDK的使用
3.后台说明
4.代码实践', '2018-09-02 20:37:17.959425', '2018-08-12 23:48:10.16194');
INSERT INTO "public"."tb_imooc_course" VALUES (382, 524, 'Hibernate注解', '中级', 34667, '轻松学习Hibernate常用注解，学完本课能够灵活应用', 'Java', 'https://img3.mukewang.com/561dfe110001ba4706000338-240-135.jpg', 'https://www.imooc.com/learn/524', '2小时33分', 9.6, 9.8, 9.6, 9.5, '简介：注解在Java程序开发中的应用越来越广泛，可以有效地提高代码的简洁度。本门课程主要介绍Hibernate的常用注解，包括类级别注解、属性级别注解和关联映射注解。希望小伙伴们学习完本门课程后，能够灵活应用Hibernate注解进行开发。', 'milanlover', 'https://img1.mukewang.com/53df3b7a0001b45c01400140-80-80.jpg', 'JAVA开发工程师', '学习本门课程前，需要具备以下技能：
1、精通Java语法和面向对象思想。
2、掌握JDBC数据库开发流程
3、熟悉SQL语句', '1、掌握类级别注解、属性基本注解和关联映射注解
2、能够灵活应用Hibernate注解进行开发', '2018-09-02 20:37:18.670993', '2018-08-12 23:47:56.581126');
INSERT INTO "public"."tb_imooc_course" VALUES (178, 847, '使用java构建和维护接口自动化测试框架', '中级', 19110, '初识接口自动化框架', 'Java, 接口测试', 'https://img4.mukewang.com/593a3b0f0001383606000338-240-135.jpg', 'https://www.imooc.com/learn/847', '1小时52分', 9.5, 9.5, 9.5, 9.6, '简介：系统介绍接口自动化框架MRAutoSpace的使用方法，并学习如何编写其中重要的组件HttpClientUtil，帮助学员通过实践了解框架的基本组成部分及运行原理。', 'PencilDragon', 'https://img1.mukewang.com/5333a0600001f9ed02000200-80-80.jpg', '软件测试工程师', '本课程适合有一定自动化框架使用经验，并想在此基础上往测试开发工程师方向发展的同学，学习此课程需要具备一定的java基础。', '通过学习本课程，能够了解自动化框架的基本组成部分以及数据驱动的概念，通过实战编码，了解测试开发工程师需要具的能力，帮助学员有针对性的提升测试开发相关的技能水平。', '2018-09-02 20:36:57.102367', '2018-08-12 23:47:40.923128');
INSERT INTO "public"."tb_imooc_course" VALUES (418, 604, 'PHP实现手机归属地查询', '中级', 26389, '本php教程会带大家从0开始开发归属地查询WEB应用，很强势', 'PHP', 'https://img3.mukewang.com/56c6f2c50001f49b06000338-240-135.jpg', 'https://www.imooc.com/learn/604', '1小时10分', 9.6, 9.9, 9.5, 9.5, '简介：如今各种WEB应用层出不穷，作为一名程序员，怎能没有一技防身？本课会带大家从0开始开发一个完整的WEB应用，从框架结构到流程分析再到数据缓存，相信你学习完本课之后收获到的不仅仅是学会了开发一个应用。', '帅进超', 'https://img4.mukewang.com/56a8551c00014ba203000300-80-80.jpg', '软件工程师', '学习本门课程之前，建议先了解一下知识，会更有助于理解和掌握本门课程
1、PHP基础知识
2、了解面向对象
3、对redis有一个基本了解', '1、合理规划框架结构
2、类库自动加载
3、项目流程分析
4、Redis基础应用', '2018-09-02 20:37:16.054409', '2018-08-12 23:47:59.368637');
INSERT INTO "public"."tb_imooc_course" VALUES (533, 410, 'HQL数据查询基础', '中级', 39079, '使用HQL从数据库中找到你要的数据，掌握了使用Hibernate', 'Java', 'https://img.mukewang.com/5704a31b0001afa906000338-240-135.jpg', 'https://www.imooc.com/learn/410', '1小时41分', 9.7, 9.9, 9.8, 9.6, '简介：本次课程是Hibernate的进阶课程，将帮助小伙伴们，在掌握了使用Hibernate进行数据表管理之后，进一步认识什么是HQL，HQL常用的语句格式以及在Hibernate框架中如何执行HQL查询获取我们需要的数据。', '皇马啸西风...', 'https://img.mukewang.com/55792b300001c8af02200220-80-80.jpg', 'JAVA开发工程师', '本课程是Hibernate进阶课程，需要小伙伴们了解Hibernate映射配置知识点，对这方面内容不了解的小伙伴们可以先去《 Hibernate初探之单表映射》进修一下～～', '1、什么是HQL，以及HQL的语句形式。
2、在Hibernate框架中如何执行HQL查询。
3、如何编写出正确的HQL查询语句，从数据库检索到我们想要的数据。', '2018-09-02 20:37:17.990389', '2018-08-12 23:48:10.134224');
INSERT INTO "public"."tb_imooc_course" VALUES (464, 510, 'Android-节日短信送祝福(UI篇)', '初级', 20143, '带领大家实现一个节日短信的群发app以及监听短信的发送状态等', 'Android', 'https://img2.mukewang.com/5608968d0001c0e406000338-240-135.jpg', 'https://www.imooc.com/learn/510', '1小时11分', 9.6, 9.8, 9.6, 9.4, '简介：本课程将带领大家实现一个节日短信的应用，课程中包含了TabLayout、FloatingActionButton等design库控件的使用以及如何如何发送短信，监听短信的发送状态等。最后在短信列表部分展示了如何使用LoaderManager及其相关的机制优雅的异步加载数据。', 'hyman', 'https://img3.mukewang.com/54169c430001face18403264-80-80.jpg', '移动开发工程师', '本课程为中-高级课程，需要小伙伴们熟练掌握Android基础，特别是四大组件的使用之后，再来学习课程，加油！', '1、CardView、TabLayout、FloatingActionButton的使用
2、如何发送短信以及监听短信发送的状态
3、如何使用LoaderManager、Loader等机制异步加载数据
4、如何使用SQLiteDatabase、ContentProvider
', '2018-09-02 20:37:18.182042', '2018-08-12 23:48:04.148779');
INSERT INTO "public"."tb_imooc_course" VALUES (527, 487, 'Cocos2d-x游戏开发之贪吃蛇(上)', '中级', 25110, '贪吃蛇都玩过~有没有想过自己实现呢，一起学习来吧', 'Cocos2d-x', 'https://img3.mukewang.com/55ea628c000104bb25001408-240-135.jpg', 'https://www.imooc.com/learn/487', '2小时 8分', 9, 9.2, 9.2, 8.5, '简介：还记得早期Nokia手机上的贪吃蛇么？玩起来是不是很过瘾。今天我们有请徐波老师为大家带来用Cocos引起制作的贪吃蛇游戏，并且一定比原版的更好玩哦！本课程为游戏开发的入门课程，将为大家介绍如何在cocos环境中使用lua语言制作贪吃蛇的游戏', '徐波老师', 'https://img.mukewang.com/55dd985500017e1f05120512-80-80.jpg', '移动开发工程师', '需要有lua语言的基础', '1、游戏流程的制作
2、cocos开发工具的使用
3、lua语言的使用', '2018-09-02 20:37:17.498299', '2018-08-12 23:48:09.587751');
INSERT INTO "public"."tb_imooc_course" VALUES (884, 599, 'SegmentFault D-Day 2015 北京：iOS 站  ', '中级', 7886, 'SegmentFault D-Day iOS 分享沙龙  ', 'iOS', 'https://img2.mukewang.com/56a84e300001e56d06000338-240-135.jpg', 'https://www.imooc.com/learn/599', '2小时16分', 8.9, 8.9, 8.9, 8.9, '简介：本次SF D-Day iOS 分享沙龙，分别邀请到滴滴、高德、腾讯、百度的四位老师和大家分享了不少当前热门应用背后好玩的技术热点。议题包括：深入剖析 Auto Layout、高德地图 iOS SDK 技术分享、iOS 内存管理及优化、百度地图SDK技术与应用，小伙伴们，赶紧来聆听吧', 'SegmentFault...', 'https://img1.mukewang.com/56c54f4b00016e5903000300-80-80.jpg', NULL, NULL, NULL, '2018-09-02 20:37:10.598043', '2018-08-13 09:53:23.00974');
INSERT INTO "public"."tb_imooc_course" VALUES (541, 472, 'Cocos2d-x游戏之七夕女神抓捕计划', '中级', 42456, '拯救陈无码从游戏开发开始，如果你想逆袭，那么快来学习', 'C++, Cocos2d-x', 'https://img2.mukewang.com/55c47a0a0001347b06000338-240-135.jpg', 'https://www.imooc.com/learn/472', '4小时33分', 9.7, 9.7, 9.8, 9.7, '简介：想抱得美人归么？想从高富帅手中"绑"走女神么？如果你想逆袭，那么快来学习吧。本课程将带领大家从0开始做一款真正的RPG的游戏，其中涉及到很多当下热门游戏所用到的技术。帧动画，待机动画，渲染 等等。小编哈喇子都出来了～～我在课程中等大家哦～', '雷过就跑', 'https://img.mukewang.com/557a888d0001b8bb16001000-80-80.jpg', '移动开发工程师', '需要用cocos2d-x的基础和c++的基础', '帧动画
待机动
攻击算法
游戏整体逻辑思路
渲染
NPC的ai处理', '2018-09-02 20:37:19.24652', '2018-08-12 23:48:11.144581');
INSERT INTO "public"."tb_imooc_course" VALUES (539, 468, 'Android-Volley详解', '初级', 33203, '最热门网络框架~快速入门大法，还等什么，快来学习吧', 'Android', 'https://img3.mukewang.com/574668690001142206000338-240-135.jpg', 'https://www.imooc.com/learn/468', '1小时 2分', 9.4, 9.4, 9.4, 9.3, '简介：本课程学习内容为当前十分热门的Volley网络框架，Volley是一个为AndroidAPP提供更快捷更健壮更简单的网络操作框架。学习起来轻松不算费力。会大大的减少开发耗时，自带磁盘缓存使应用逻辑更简一步！还等什么？快来学习吧！', 'JVR', 'https://img.mukewang.com/55c1cd3d0001dabb05900590-80-80.jpg', '移动开发工程师', '本课程需要完成Android相应基础知识，建议学完计划分页内的Android工程师小白求职路线课程。', '1.Volley网络操作
2.Volley原理分析
3.Volley实际案例', '2018-09-02 20:37:23.114218', '2018-08-12 23:48:11.094784');
INSERT INTO "public"."tb_imooc_course" VALUES (190, 850, 'Hybrid设计', '中级', 18563, '畅谈Hybrid开发的种种，让你对Hybrid有更深入的了解', 'JavaScript, Html5', 'https://img2.mukewang.com/593e7d0f00014f4806000338-240-135.jpg', 'https://www.imooc.com/learn/850', '1小时39分', 9.8, 10, 9.8, 9.5, '简介：该课程首先会告诉大家什么是Hybrid，Hybrid有什么特点，也会告诉大家业内有哪些常见的Hybrid应用以及Hybrid合理的应用场景。
然后，课程会简单介绍在做一个Hybrid架构的方方面面，包括Hybrid的发展，比如超级Hybrid方案React Native以及Weex
学习该课程，大家会知道Hybrid中H5与Native如何交互，并且对Hybrid体验增强和Hybrid离线包有一些认识，是大家做混合APP的必备良药。', '叶小钗Hybrid...', 'https://img1.mukewang.com/593e573300018b3801800180-80-80.jpg', NULL, '1、熟悉html、css、js
2、对Hybrid有一定的了解', '1、什么是Hybrid
2、H5如何与Native通信
3、Hybrid核心交互
4、Hybrid中的账号体系
5、Native能力在Hybrid中的应用
6、离线更新
7、如何落地一个Hybrid项目', '2018-09-02 20:36:53.010548', '2018-08-12 23:47:41.64287');
INSERT INTO "public"."tb_imooc_course" VALUES (372, 662, 'Android动感系列-摇一摇', '初级', 14006, 'Android开发中，快速实现摇一摇+动画特效，已经都玩嗨了', 'Android', 'https://img3.mukewang.com/574cf43d0001460006000338-240-135.jpg', 'https://www.imooc.com/learn/662', '1小时56分', 8.7, 9.1, 8.6, 8.5, '简介：本门课程为动感系列-摇一摇课程，将通过传感器来实现摇一摇功能，并配合Android帧动画完成一个相对完整的案例。微信的摇一摇大家是不是已经都玩嗨了呢？赶紧跟着老师的讲解来一步一步自己动手实现吧。', 'T-w', 'https://img3.mukewang.com/55f926100001bf3d04000565-80-80.jpg', NULL, '本门课程为Android中级案例课程，需要小伙伴们有一定的Android基础知识，掌握Android中简单动画的制作和Android中传感器的使用，通过本节课程的学习就可以完成Android中摇一摇功能的实现。', '1、Android传感器检测
2、动画与振动
3、逻辑代码编写', '2018-09-02 20:37:09.97506', '2018-08-12 23:47:55.984781');
INSERT INTO "public"."tb_imooc_course" VALUES (885, 590, '阿里D2前端技术论坛——2015融合', '中级', 27465, '2015顶级互联网公司前端技术经验总结，最热最实用的技术干货分享', 'Node.js, WebApp', 'https://img4.mukewang.com/569c3f9600010da706000338-240-135.jpg', 'https://www.imooc.com/learn/590', '16小时 0分', 9.9, 9.9, 9.9, 9.8, '简介：本课程全程记录2015年D2前端技术论坛分享内容，2015年前端技术领域最新最热最实用的技术干货分享！', 'D2前端技术论...', 'https://img2.mukewang.com/545ad0990001ab2802200220-80-80.jpg', NULL, NULL, NULL, '2018-09-02 20:37:11.608304', '2018-08-13 09:53:24.006386');
INSERT INTO "public"."tb_imooc_course" VALUES (528, 486, 'iOS基础教程之界面初体验', '初级', 42620, '看了这么久的控制台，该换换口味了，让你体会到界面的神奇所在', 'iOS', 'https://img4.mukewang.com/5774d8c20001195006000338-240-135.jpg', 'https://www.imooc.com/learn/486', '2小时13分', 9.8, 10, 9.8, 9.7, '简介：本课程为ios的基础课程，将为大家介绍如何在ios上进行界面的开发，在这里可以学会怎样在界面上显示自己喜欢的图片，展示自己喜欢的文字，让你体会到界面的神奇所在。', 'Visitor.zc', 'https://img.mukewang.com/5530d35800013ba305680568-80-80.jpg', NULL, '需要有Objective-C语言的基础', '1、UIWindow
2、UIView
3、UILabel
4、UIImageView', '2018-09-02 20:37:17.586341', '2018-08-12 23:48:09.858616');
INSERT INTO "public"."tb_imooc_course" VALUES (544, 47, 'Spring MVC起步', '中级', 163964, 'Java中Spring MVC框架入门教程，快来看最易用的MVC框架', 'Java', 'https://img2.mukewang.com/570765d90001bf1406000338-240-135.jpg', 'https://www.imooc.com/learn/47', '2小时 6分', 8.4, 8.9, 8.2, 8.1, '简介：Spring MVC为我们提供了一个基于组件和松耦合的MVC实现框架。在使用Java中其它MVC框架多年之后，面对Spring MVC有一种相见恨晚的感觉。Spring MVC是如此的优雅，轻盈与简洁， 让人从其它框架的桎梏解脱出来。本课程将带你步入Spring MVC。', 'Arthur', 'https://img.mukewang.com/53ba377f0001b4de01400140-80-80.jpg', 'JAVA开发工程师', '本课程是JAVA高级课程，小伙伴们需要熟练掌握JAVA开发语言基础语法以及Spring IOC/DI的配置使用。对Spring不熟悉的童鞋慎入~~', '1、MVC的思想精髓
2、Spring MVC的基本概念
3、如何利用Maven搭建Spring MVC开发环境
4、用Spring MVC实际开发一个功能模块', '2018-09-02 20:37:19.864752', '2018-08-12 23:48:11.421975');
INSERT INTO "public"."tb_imooc_course" VALUES (254, 773, 'AC2016腾讯前端技术大会', '中级', 53103, '腾讯前端技术团队2016前端技术大会现场实录，最新经验分享，不容错过', 'JavaScript, Node.js', 'https://img4.mukewang.com/58533fe900019f3006000338-240-135.jpg', 'https://www.imooc.com/learn/773', '5小时53分', 9.5, 9.7, 9.4, 9.4, '简介：本课程是腾讯前端团队Alloyteam参与主办的AC2016前端技术大会现场实录。大会分享议题涉及最近流行的ReactNative、Node.js、Angular.js、RXjs等技术。精彩分享不容错过！', 'AlloyTeam', 'https://img1.mukewang.com/567799270001569a04000400-80-80.jpg', 'Web前端工程师', '本课程是腾讯前端团队Alloyteam参与主办的AC2016前端技术大会现场实录。大会分享议题涉及最近流行的ReactNative、Node.js、Angular.js、RXjs等技术。精彩分享不容错过！', '本课程是腾讯前端团队Alloyteam参与主办的AC2016前端技术大会现场实录。大会分享议题涉及最近流行的ReactNative、Node.js、Angular.js、RXjs等技术。精彩分享不容错过！', '2018-09-02 20:36:57.635842', '2018-08-12 23:47:46.61908');
INSERT INTO "public"."tb_imooc_course" VALUES (550, 387, '走近大数据之Hive入门', '初级', 46629, 'Hive是基于HDFS的数据仓库，教程将向大家介绍Hive的体系结构', '大数据', 'https://img.mukewang.com/570360ca00010eeb06000338-240-135.jpg', 'https://www.imooc.com/learn/387', '2小时21分', 9.8, 10, 9.8, 9.7, '简介：Hive是基于Hadoop的一个数据仓库工具，通过他可以实现将结构化的数据文件映射为一张数据库表，并提供简单的sql查询功能，同时将sql语句转换为MapReduce任务进行运行。在本次课程中，将向大家介绍Hive的体系结构，如何进行安装管理以及Hive的数据类型和数据模型。', '赵强老师', 'https://img2.mukewang.com/545862800001e2d802200220-80-80.jpg', '数据库工程师', '1、熟练掌握Hadoop的体系结构，尤其是HDFS
2、熟悉Java编程
3、了解Linux的基本操作', '1、数据仓库简介			
2、Hive是什么？			
3、Hive的体系结构			
4、Hive的安装与管理			
5、Hive的数据类型			
6、Hive的数据模型', '2018-09-02 20:37:22.062438', '2018-08-12 23:48:12.053789');
INSERT INTO "public"."tb_imooc_course" VALUES (446, 566, 'AC2015前端技术大会', '中级', 28650, '腾讯多名AlloyTeam优秀讲师2015前端技术收获分享', 'JavaScript, Html5', 'https://img4.mukewang.com/56779bd90001990906000338-240-135.jpg', 'https://www.imooc.com/learn/566', '2小时13分', 9.7, 9.9, 9.5, 9.7, '简介：AC2015针对移动端web性能进行了深入探索，多名AlloyTeam优秀讲师为我们分享最近一年来的技术成果，更有神秘web游戏项目对外公布。', 'AlloyTeam', 'https://img2.mukewang.com/567799270001569a04000400-80-80.jpg', 'Web前端工程师', '对前端基础知识有所了解', 'AlloyTeam在实践中不断探索，攒积了丰富的技术、工具和开源项目，覆盖了前端技术栈的很多方面，希望借助<AC大会>的平台将每一年的收获分享给业界同仁。移动交互、优化首屏渲染时间的多个方案、局部滚动长列表优化方案和Abstract.js框架的产生等一系列移动Web优化方案。', '2018-09-02 20:37:15.58826', '2018-08-12 23:48:02.831914');
INSERT INTO "public"."tb_imooc_course" VALUES (545, 448, 'Cocos2d-x初体验之Lua篇', '入门', 16971, '暴雪都选择Lua开发大脚插件，你呢？赶快加入学习吧', 'Cocos2d-x', 'https://img.mukewang.com/559fea5b00015c5706000338-240-135.jpg', 'https://www.imooc.com/learn/448', '39分', 9.7, 9.9, 9.8, 9.4, '简介：Lua以其出色的跨平台性和速度最快的嵌入式脚本语言，当仁不让的占据了游戏插件开发的头把交椅。你也想制作一个和大脚一样闻名天下的工具和游戏么？快来吧', '徐波老师', 'https://img1.mukewang.com/55dd985500017e1f05120512-80-80.jpg', '移动开发工程师', '学习本课程的小伙伴们需要有c语言基础', '游戏开发的过程
Lua环境搭建
Cocos2d-x的环境搭建', '2018-09-02 20:37:19.950189', '2018-08-12 23:48:11.449937');
INSERT INTO "public"."tb_imooc_course" VALUES (547, 449, 'MySQL开发技巧（三）', '中级', 46945, 'DBA和开发人员都必备的技能，懂SQL技巧的程序员才是好程序员', 'MySQL', 'https://img3.mukewang.com/570766c80001f1ee06000338-240-135.jpg', 'https://www.imooc.com/learn/449', '54分', 9.4, 9.7, 9.3, 9.1, '简介：一个不懂SQL技巧的程序员不是一个好程序员。', 'sqlercn', 'https://img.mukewang.com/5ad7144100017a5e07410741-80-80.jpg', '数据库工程师', '本门课程主要针对的是MySQL数据库，熟悉数据库的CRUD操作是掌握本门课程精华的必要条件。', '1、如何在子查询中测试两个值
2、如何解决多属性查询问题
3、如何计算累进税类问题', '2018-09-02 20:37:20.201024', '2018-08-12 23:48:11.589555');
INSERT INTO "public"."tb_imooc_course" VALUES (264, 741, '带您完成神秘的涟漪按钮效果-入门篇', '初级', 8339, '轻松实现控件涟漪效果，入门篇，针对Drawable实现方式进行开发', 'Android', 'https://img1.mukewang.com/580714c000017ad706000338-240-135.jpg', 'https://www.imooc.com/learn/741', '1小时25分', 9.9, 10, 10, 9.6, '简介：本课程介绍了涟漪效果的几种实现方式，并针对Drawable实现方式进行开发；同时介绍了自定义View的基本知识点，并介绍了颜色叠加的几种计算方法。涟漪很炫，原理很简单；课程本着主线拉动、扩展介绍Drawable以及自定义控件相关知识点的原则，让同学深入浅出的理解相关知识点。', 'Qiujuer', 'https://img.mukewang.com/550aa27c00015c4f01000100-80-80.jpg', '移动开发工程师', '本课程为涟漪效果基础篇，针对初次学习涟漪效果的同学；在课程中详细的讲解了相关的知识点。当然基础并不代表没有难点，其中颜色叠加的计算以及Drawable与View的交互等相关知识点尤为重要；并要求学习者能深入理解Drawable与View的相关API的作用。', '1.涟漪效果实现的几种方式
2.View与Drawable相关API知识点
3.在Drawable中如何实现动画效果
4.颜色叠加的计算方法', '2018-09-02 20:36:58.214729', '2018-08-12 23:47:47.498829');
INSERT INTO "public"."tb_imooc_course" VALUES (555, 432, 'Swift-进入OOP时代', '初级', 21465, '本课程主要讲解Swift语言的面向对象编程的课程，进入OOP时代', 'iOS', 'https://img4.mukewang.com/570762e80001fa3406000338-240-135.jpg', 'https://www.imooc.com/learn/432', '1小时14分', 9.2, 9.6, 9.2, 8.8, '简介：swift作为苹果官方的新宠，出道不到2年的时间已经引起了广大iOS开发者的关注。本课程将为大家讲授Swift语言的面向对象编程的课程', 'Se7eN_HOU', 'https://img.mukewang.com/55890e2600019a8b05680568-80-80.jpg', '移动开发工程师', '需要有Swift语法基础', '1：继承
2：封装
3：多态', '2018-09-02 20:37:21.408436', '2018-08-12 23:48:12.748364');
INSERT INTO "public"."tb_imooc_course" VALUES (552, 401, 'Java微信公众号开发进阶', '中级', 79548, 'Java微信公众号开发的进阶课程，在入门的基础上更加深入', 'Java', 'https://img.mukewang.com/576b7ad60001263e06000338-240-135.jpg', 'https://www.imooc.com/learn/401', '2小时27分', 9.7, 9.9, 9.5, 9.6, '简介：本门课程是《初识微信公众号开发》的进阶课程，在入门课程的基础上，对Java微信公众号的开发模式进行深入讲解。主要介绍了图文、音乐消息的回复，自定义菜单，最后介绍了百度翻译小案例。', 'LaoBi', 'https://img4.mukewang.com/575423d200018abd06400640-80-80.jpg', 'JAVA开发工程师', '小伙伴们，学习本门课程前必须学习《初识微信公众号开发》这门课程呦!课程地址：http://www.imooc.com/view/368', '1、如何回复图文、音乐消息
2、如何创建并使用自定义菜单
3、掌握百度翻译小案例', '2018-09-02 20:37:25.158592', '2018-08-12 23:48:12.126856');
INSERT INTO "public"."tb_imooc_course" VALUES (470, 514, 'FullPage.js全屏滚动插件', '中级', 43281, '基于jQuery的全屏滚动效果插件，让翻页显得格外的高端大气上档次', 'JavaScript', 'https://img1.mukewang.com/5608b1a20001e9dd06000338-240-135.jpg', 'https://www.imooc.com/learn/514', '1小时35分', 9.6, 9.7, 9.5, 9.7, '简介：fullPage.js 是一个基于 jQuery 的插件，它能够很方便、很轻松的制作出全屏网站。如今我们经常能见到全屏网站，在手机上也经常能看到一些活动页面。这些网站用几幅很大的图片或色块做背景，再添加一些简单的内容，通过滚动或者滑动来翻页，显得格外的高端大气上档次。', '姜维_Wayne', 'https://img.mukewang.com/599ea79c0001a1bc05000500-80-80.jpg', 'Web前端工程师', '您要具备：
1.HTML知识，能搭建一个基本网页。
2.JQ知识，能独立开发简单动画效果。', '1.fullPage.js引用
2.fullPage.js使用（如何横竖屏滚动、支持CSS3动画、窗口缩放时自动调整等）
3.通过实例让您灵活运用fullPage.js开发全屏滚动效果。', '2018-09-02 20:37:16.685611', '2018-08-12 23:48:04.712092');
INSERT INTO "public"."tb_imooc_course" VALUES (556, 411, 'Android-NDK入门', '中级', 36660, '本课程为NDK开发入门教程，带领大家一步一步掌握使用NDK开发', 'Android', 'https://img3.mukewang.com/556bc47900012bf206000338-240-135.jpg', 'https://www.imooc.com/learn/411', '2小时14分', 9.8, 10, 9.8, 9.7, '简介：Android中的NDK提供了一系列的工具，帮助开发者快速开发C（或C++）的动态库，并能自动将so和java应用一起打包成apk。这些工具对开发者的帮助是巨大的.本课程将代带领大家一步一步的学习如何使用NDK开发', 'nate', 'https://img2.mukewang.com/547697d10001e0b110240679-80-80.jpg', '移动开发工程师', '需要有java,Android基础知识', '环境搭建，目录结构介绍，JNI交互处理', '2018-09-02 20:37:23.595292', '2018-08-12 23:48:12.76788');
INSERT INTO "public"."tb_imooc_course" VALUES (402, 642, '玩儿转Swift 2.0（第二季）', '入门', 14055, '基于Swift2.1的swift语言教程第二季,深入地了解swift语法', 'iOS', 'https://img2.mukewang.com/573589c700012c9306000338-240-135.jpg', 'https://www.imooc.com/learn/642', '4小时14分', 9.5, 9.7, 9.6, 9.2, '简介：本课程以Swift 2.1版本进行讲解，课程发布期间，Swift语言进行的更新将同步在本课程的代码中展现。欢迎同学们随时关注课程公告及课程问答区，紧跟Swift语言的步伐，学习最新示例代码！', 'liuyubobobo', 'https://img4.mukewang.com/5347593e00010cfb01400140-80-80.jpg', '全栈工程师', '本课程适合至少有一门编程语言基础的同学用于学习Swift语言。也适合在学习使用swift进行iOS开发的过程中，遇到不清楚的swift语言问题随时查询。', '这是《玩儿转swift2.0》系列课程的第二季。通过整个系列课程的学习，大家可以全面、深入地了解swift的语法与语言特性，理解swift的设计原则和理念，同时对面向对象、面向协议、面向函数等思想有一定的了解，对swift语言的掌握达到中等偏上的水平。', '2018-09-02 20:37:08.99599', '2018-08-12 23:47:58.087084');
INSERT INTO "public"."tb_imooc_course" VALUES (553, 441, 'iOS动画案例之会跳舞的界面(上)', '初级', 21301, '想让你的界面跳舞吗，学会Sketch动画，让界面更加优美生动', 'iOS', 'https://img1.mukewang.com/57874063000195dc06000338-240-135.jpg', 'https://www.imooc.com/learn/441', '1小时26分', 9.7, 9.9, 10, 9.3, '简介：Jake大神的又一个新作,利用在iOS动画基础课程的基础上，添加了更丰富的动画使界面有了生命，很大程度的提升用户体验，让我们的界面更加优美生动', '林永坚Jake...', 'https://img3.mukewang.com/53bce3ba00014c3932644928-80-80.jpg', '其它', '需要有iOS动画基础', '1、Sketch动画
2、动画的设计思路
3、界面的设计思路', '2018-09-02 20:37:21.89944', '2018-08-12 23:48:12.243686');
INSERT INTO "public"."tb_imooc_course" VALUES (462, 513, 'Android-多平台分享(新浪微博)', '初级', 22355, '带领学生掌握分享内容至新浪微博，从而实现一键分享功能', 'Android', 'https://img2.mukewang.com/578740fc000127eb06000338-240-135.jpg', 'https://www.imooc.com/learn/513', '52分', 9.8, 9.9, 9.9, 9.6, '简介：本次课程将带领大家完成ShareSDK一键分享的实战案例,教会大家如何在APP中初始化SDK、设置分享标题、分享信息、图标以及显示分享列表，如何获取在ShareSDK后台创建应用获取APPKEY，通过新浪微博开发平台集成SDK到app中，快速的接入新浪微博，从而实现一键分享功能。', 'T-w', 'https://img3.mukewang.com/55f926100001bf3d04000565-80-80.jpg', NULL, '本课程为中-高级课程，需要小伙伴们熟练掌握Android基础知识。特别是即将参加面试或刚刚工作的小伙伴，此课程一定要好好学习！肯定能派的上用场！', '1、掌握Android中一键分享功能
2、掌握第三方SDK的API的使用
3、了解程序快速集成
4、新浪微博SDK接入
5、将信息以及图片分享到新浪微博的实战演示
6、分享应用后台的创建及其作用
', '2018-09-02 20:37:18.254042', '2018-08-12 23:48:04.098124');
INSERT INTO "public"."tb_imooc_course" VALUES (263, 790, 'django入门与实践', '初级', 46201, '手把手带你进入Django开发的大门，充分领略Django的魅力', 'Python, Django', 'https://img1.mukewang.com/586f60d90001776a06000338-240-135.jpg', 'https://www.imooc.com/learn/790', '3小时14分', 9.7, 9.8, 9.6, 9.6, '简介：Django作为一个Python的高级Web框架，功能非常强大，其自身封装了大量底层逻辑，并实现了ORM，同时，MVT结构保证了代码结构的完整性，这一切给了开发人员巨大的便利，让Web开发变得高效且简洁。课程将以一个极简的博客网站为例，带领大家充分领略Django的魅力', '杜秉轩', 'https://img4.mukewang.com/545868b60001587202200220-80-80.jpg', 'Python工程师', '1、了解HTML的用法。
2、基本掌握Python的用法。
', '1、搭建完整的Django开发环境。
2、创建项目及应用。
3、了解项目目录下各文件的含义和作用。
4、了解并学会开发Templates。
5、了解并学会开发Models。
6、掌握Admin的基本配置方法。
7、学会项目URL的配置方法。
8、开发一个由三个页面组成的简易博客网站。
', '2018-09-02 20:36:58.46455', '2018-08-12 23:47:47.447826');
INSERT INTO "public"."tb_imooc_course" VALUES (426, 580, '前端性能优化-基础知识认知', '初级', 55383, '前端小白进级必学技能前端性能优化，主讲优化目的方法', 'JavaScript', 'https://img3.mukewang.com/5704ae0000015fe706000338-240-135.jpg', 'https://www.imooc.com/learn/580', '2小时53分', 9.4, 9.6, 9.4, 9.2, '简介：本课程从前端优化目的，简单方法、分类开始，到如何优化，优化过程中的常见错误，业内公认的但是不适应所有方案。我们还可从这个课程中学习到当我们访问一个站点的时候，我们究竟做了什么以及怎么样才叫优化成功。', 'CC老师', 'https://img.mukewang.com/56839f8400019a4c02890267-80-80.jpg', '全栈工程师', '1、对html、Css及JS基础知识已经掌握。
2、对前端性能优化执着之人（本课为系列课程，共四门，切记不要半途而废）。
', '1、对业内站点访问有概况认知
2、对业内的优化方案认知，以及为什么用他们（yahoo军规）。 
3、了解业内方案的优缺点
4、初步介绍 quickling / pagecahe / bigpipe
5、认识一个愿意随时看大家评论，以及回复的老师。
', '2018-09-02 20:37:15.618172', '2018-08-12 23:48:00.157399');
INSERT INTO "public"."tb_imooc_course" VALUES (564, 413, 'Android-精通Activity', '中级', 42888, '深入Activity内部，剖析Activity，掌握Activity的工作原理', 'Android', 'https://img.mukewang.com/57075e170001c8f106000338-240-135.jpg', 'https://www.imooc.com/learn/413', '1小时29分', 9.5, 9.9, 9.5, 9.2, '简介：带领大家学习Android体系中最常见的Acvitiy组件，深入Activity内部，剖析Activity的生命周期分析以及Framew层的相关介绍', 'nate', 'https://img.mukewang.com/547697d10001e0b110240679-80-80.jpg', '移动开发工程师', '需要有重识Activity和深入Activity2门课程的基础课程，Android学习中基础学习是占很大一部分，只要学好了android基础才能更好的学习后面的知识。', '与Activity相关的Framew层,Activity、Window、WindowManger三者之间的关系,Activity生命周期分析', '2018-09-02 20:37:20.480765', '2018-08-12 23:48:13.297757');
INSERT INTO "public"."tb_imooc_course" VALUES (563, 416, 'Python文件处理', '初级', 68516, 'Python文件操作指南，掌握os模块对文件和目录的处理', 'Python', 'https://img.mukewang.com/5705b7940001096106000338-240-135.jpg', 'https://www.imooc.com/learn/416', '1小时39分', 9.5, 9.8, 9.4, 9.3, '简介：任何语言都离不开对文件的操作，Python语言是如何来操作和管理文件的。今天就让我们带您走入文件的世界，一起创建文件，一起读写文件，一起管理我们的文件。掌握文件的基本概念、基本操作，了解文件属性、 linux 系统的文件管理机制及os模块对文件和目录的处理等相关内容。', 'Meshare_huan...', 'https://img.mukewang.com/55598e050001d00505680568-80-80.jpg', 'Linux系统工程师', '本课程是Python中级课程
1、本课程在linux讲解，最好有linux开发环境
2、熟练掌握Python开发语言基础语法', '1、文件的基本概念
2、掌握文件的基本操作
3、了解文件属性及linux 系统的文件管理机制
4、掌握os模块对文件和目录的处理', '2018-09-02 20:37:20.297878', '2018-08-12 23:48:13.23414');
INSERT INTO "public"."tb_imooc_course" VALUES (571, 423, 'Oracle数据库开发利器之函数', '初级', 26478, '常用函数应用，并且介绍了这些函数如何在查询中应用', 'Oracle', 'https://img3.mukewang.com/5704cdc100019ee206000338-240-135.jpg', 'https://www.imooc.com/learn/423', '1小时10分', 9.7, 9.8, 9.7, 9.5, '简介：Oracle中的函数主要为了方便数据的统计以及处理查询结果。本课程主要介绍Oracle中的常用函数，包括数值函数、字符函数、日期函数和转换函数，并且介绍了这些函数如何在查询中应用。', 'AnnyQin', 'https://img2.mukewang.com/550b80b800011ef002200220-80-80.jpg', NULL, '小伙伴们，学习本课程前需要熟悉Oracle的SQL语句。关于SQL语句的内容可以查看课程《Oracle数据库开发必备利器之SQL基础》，链接在此：http://www.imooc.com/learn/337', '1、能够掌握Oracle的常用函数
2、能够在查询中熟练使用Oracle函数，以方便数据的查询统计', '2018-09-02 20:37:20.767658', '2018-08-12 23:48:13.788676');
INSERT INTO "public"."tb_imooc_course" VALUES (573, 415, '观察者模式', '中级', 50124, '解决发布/订阅问题的观察者模式，以及何时使用观察者模式', 'Java', 'https://img4.mukewang.com/5704d1b80001fe1906000338-240-135.jpg', 'https://www.imooc.com/learn/415', '1小时56分', 9.5, 9.7, 9.6, 9.2, '简介：本课程通过一个天气预报的发布和订阅案例，来讲解观察者模式在Java项目中的应用。主要包括观察者模式的结构，观察者模式的两种实现方式推模型和拉模型，以及何时使用观察者模式等内容。', 'GerryZhang', 'https://img.mukewang.com/55700bd20001948a16002400-80-80.jpg', 'JAVA开发工程师', '学习本课程前，需要具备Java基础，面向对象的程序设计思想。如果对这些知识不熟悉，可以学习《Java入门第一季》和《Java入门第二季》这两门课程。', '1、理解观察者模式的概念和结构
2、掌握如何将观察者模式应用到项目中，解决项目实际问题
3、掌握观察者模式的应用场景', '2018-09-02 20:37:20.899584', '2018-08-12 23:48:13.907981');
INSERT INTO "public"."tb_imooc_course" VALUES (239, 766, 'Yarn构建工具入门基础', '中级', 8865, '带你了解 facebook新工具yarn的基本工作流，以及Yarn 的常用命令', 'JavaScript', 'https://img4.mukewang.com/584685e600010f8a06000338-240-135.jpg', 'https://www.imooc.com/learn/766', '1小时 0分', 9.7, 9.8, 9.5, 9.8, '简介：facebook 在npm 之后又造了一个包管理器轮子，前端顿时刷遍朋友圈。究竟什么是Yarn，使用yarn 有什么npm 暂时不能提供的优势和好处呢？本课程带你一起来了解yarn的基本工作流，以及Yarn 的常用命令， 介绍了Yarn 的优势和特性是什么，带你玩转yarn。', 'qbaty', 'https://img.mukewang.com/54ce31860001b3d201800180-80-80.jpg', 'Web前端工程师', '1、对前端包管理有基本的认识
2、对node 和 npm 有一些了解', '1、Yarn 的工作流
2、Yarn 的基本命令
3、Yarn 的特性优势 
4、Yarn 发布调试自己的写的模块包', '2018-09-02 20:36:58.613415', '2018-08-12 23:47:45.515282');
INSERT INTO "public"."tb_imooc_course" VALUES (347, 689, 'iOS-弹幕实现', '中级', 12500, '随心所欲控制弹幕滑动的速度，弹幕的追加，设置弹幕的样式', 'iOS', 'https://img.mukewang.com/5791d3650001907806000338-240-135.jpg', 'https://www.imooc.com/learn/689', '1小时 5分', 9.8, 10, 10, 9.5, '简介：移动端也能实现吐槽功能啦，通过对本课程的学习，不仅可以自己控制弹幕滑动的速度，弹幕的追加，也可以对弹幕进行美容设置成自己喜欢的样式，让弹幕在手机屏幕上尽情的滑动和别人一起互动吧！', '不死鸟fj', 'https://img.mukewang.com/56fc68b500014b6911111111-80-80.jpg', '移动开发工程师', '学习本课程之前需要掌握如下知识：
1、掌握基本的OC语法
2、熟悉UI的相关属性以及事件的响应方法
3、了解Block
', '1、如何让弹幕滚动
2、怎么控制弹幕的速度
3、弹幕如何自动追加
', '2018-09-02 20:37:04.461289', '2018-08-12 23:47:53.983557');
INSERT INTO "public"."tb_imooc_course" VALUES (572, 427, 'MySQL开发技巧（二）', '中级', 51532, 'DBA和开发人员都必备的技能，通过本教程能够学会更多操作技术', 'MySQL', 'https://img1.mukewang.com/557fff240001fbfb06000338-240-135.jpg', 'https://www.imooc.com/learn/427', '1小时 2分', 9.7, 9.7, 9.7, 9.8, '简介：一个不懂SQL技巧的程序员不是一个好程序员。', 'sqlercn', 'https://img.mukewang.com/5ad7144100017a5e07410741-80-80.jpg', '数据库工程师', '本门课程主要针对的是MySQL数据库，熟悉数据库的CRUD操作是掌握本门课程精华的必要条件。', '1、如何进行行列转换
2、如何生成唯一序列号
3、如何删除重复数据', '2018-09-02 20:37:21.110633', '2018-08-12 23:48:13.889373');
INSERT INTO "public"."tb_imooc_course" VALUES (569, 391, 'Hadoop大数据平台架构与实践--基础篇', '初级', 115659, 'Hadoop入门视频教程，大数据人才的入门首选', '大数据', 'https://img3.mukewang.com/57035f730001af5706000338-240-135.jpg', 'https://www.imooc.com/learn/391', '1小时22分', 9.1, 9.4, 9, 8.9, '简介：大数据时代已经到来，越来越多的行业面临着大量数据需要存储以及分析的挑战。Hadoop，作为一个开源的分布式并行处理平台，以其高扩展、高效率、高可靠等优点，得到越来越广泛的应用。本课旨在培养学员理解Hadoop的架构设计以及掌握Hadoop的运用能力。', 'Kit_Ren', 'https://img1.mukewang.com/554c648c0001908805680568-80-80.jpg', 'Linux系统工程师', '本课程需要童鞋们提前掌握Linux的操作以及Java开发的相关知识。对相关内容不熟悉的童鞋，可以先去《Linux达人养成计划Ⅰ》以及《Java入门第一季》进行修炼～～
', '1、Google的大数据技术
2、Hadoop的架构设计
3、Hadoop的使用
4、Hadoop的配置与管理', '2018-09-02 20:37:20.640867', '2018-08-12 23:48:13.634513');
INSERT INTO "public"."tb_imooc_course" VALUES (607, 379, '浅谈Android动画', '中级', 52598, '本课程带领学生学习Android动画，实现各种炫酷动画效果', 'Android', 'https://img4.mukewang.com/57075b5a0001d47d06000338-240-135.jpg', 'https://www.imooc.com/learn/379', '31分', 9.6, 9.8, 9.5, 9.5, '简介：通过各式各样的案例，实现各种Android各种炫酷的动画效果，增加用户对Android系统的喜爱，同时也可以培养同学们的学习兴趣。', 'Smile浅笑', 'https://img3.mukewang.com/537435a2000123b506400600-80-80.jpg', 'JAVA开发工程师', '本课程为基础课程：
1.基本掌握Android基础相关知识。
2.熟练掌握布局文件xml的使用
3.灵活应用xml中各个属性的用途', '1.动画效果概览
2.四种基础动画实现
3.各种特效实例的实现', '2018-09-02 20:37:23.699695', '2018-08-12 23:48:16.785459');
INSERT INTO "public"."tb_imooc_course" VALUES (431, 305, 'Golang之文本编码处理', '入门', 11512, '掌握对Golang语言中文本编码处理的应用, 搞定日常操作', 'Go', 'https://img3.mukewang.com/57466a0d000146db06000338-240-135.jpg', 'https://www.imooc.com/learn/305', '58分', 9.8, 9.8, 10, 9.7, '简介：在本次课程中，将重点介绍Golang开发中对文本处理的基本API的使用，以及如何进行XML编码处理和进行命令行解析。在课程的最后，还会通过处理VS文件列表及模拟命令行拷贝文件的具体项目案例，带领小伙伴们快速掌握对Golang语言中文本编码处理的应用。', '徐波老师', 'https://img3.mukewang.com/55dd985500017e1f05120512-80-80.jpg', '移动开发工程师', '本课程适合想使用Golang进行文本处理, 编写各类小工具的同学. 如果你对Golang语言还不是很熟悉, 请先学习Golang语言的基础课程', '1、文本字符串操作
2、 XML编码处理
3、命令行解析
4、从VS工程文件获取文件列表
5、模拟命令行拷贝文件', '2018-09-02 20:37:10.730522', '2018-08-12 23:48:00.589255');
INSERT INTO "public"."tb_imooc_course" VALUES (469, 517, 'Android-节日短信送祝福（功能篇）', '中级', 16658, '本课程将带领大家实现一个节日短信的应用，此课程为续集', 'Android', 'https://img4.mukewang.com/574668be0001bb4406000338-240-135.jpg', 'https://www.imooc.com/learn/517', '1小时26分', 9.8, 9.8, 9.7, 9.9, '简介：本课程将带领大家实现一个节日短信的应用，课程中包含了TabLayout、FloatingActionButton等design库控件的使用以及如何如何发送短信，监听短信的发送状态等。最后在短信列表部分展示了如何使用LoaderManager及其相关的机制优雅的异步加载数据。', 'hyman', 'https://img3.mukewang.com/54169c430001face18403264-80-80.jpg', '移动开发工程师', '本课程为中-高级课程，需要小伙伴们熟练掌握Android基础，特别是四大组件的使用之后，再来学习课程，加油！', '1、CardView、TabLayout、FloatingActionButton的使用
2、如何发送短信以及监听短信发送的状态
3、如何使用LoaderManager、Loader等机制异步加载数据
4、如何使用SQLiteDatabase、ContentProvider
', '2018-09-02 20:37:16.53012', '2018-08-12 23:48:04.657491');
INSERT INTO "public"."tb_imooc_course" VALUES (576, 431, '懒人必备之Android效率开发框架', '中级', 59189, '本教程带你学一个快捷方便的Android开发框架,敏捷开发必备', 'Android', 'https://img4.mukewang.com/576b7b410001e1f806000338-240-135.jpg', 'https://www.imooc.com/learn/431', '2小时 2分', 9.8, 9.9, 9.7, 9.7, '简介：本课程将为大家带来一个快捷方便的Android开发框架，由nate老师为大家详细讲解使用方法，相信同学们学完一定会受益匪浅，缩短编程时间，提高代码质量！', 'nate', 'https://img2.mukewang.com/547697d10001e0b110240679-80-80.jpg', '移动开发工程师', '本节课为高级课程，同学们需要熟练掌握Java/Android基础，并在工作中熟练运用，框架的学习对今后的开发有很大的帮助，同学们好好听课。', '1.androidAnnotations介绍
2.框架的使用示例
3.框架类学习的基本步骤与方法', '2018-09-02 20:37:21.331518', '2018-08-12 23:48:14.192622');
INSERT INTO "public"."tb_imooc_course" VALUES (476, 498, 'Spring MVC拦截器', '中级', 65592, 'Spring MVC拦截器的工作原理及配置，介绍拦截器与过滤器的区别', 'Java', 'https://img4.mukewang.com/55f147640001ae6406000338-240-135.jpg', 'https://www.imooc.com/learn/498', '41分', 9.8, 9.9, 9.8, 9.6, '简介：拦截器是Spring MVC中一个十分重要且应用广泛的内容。本课程通过乱码问题的解决引入Spring MVC拦截器的使用，介绍了拦截器的工作原理、实现方法和使用场景，最后介绍了拦截器与过滤器的区别。', 'ReasonLee', 'https://img1.mukewang.com/58c907040001c05906400640-80-80.jpg', 'JAVA开发工程师', '学习本门课程前需要具备Spring MVC的基础知识，可以观看慕课网的《Spring MVC起步》课程；还需要对过滤器的知识有所了解。', '1、理解Spring MVC拦截器的工作原理
2、掌握如何实现Spring MVC拦截器
3、了解Spring MVC拦截器的使用场景
4、理解Spring MVC拦截器与过滤器的区别', '2018-09-02 20:37:13.155737', '2018-08-12 23:48:05.271219');
INSERT INTO "public"."tb_imooc_course" VALUES (575, 428, 'JS+CSS3实现“粽情端午”', '中级', 35720, '用JS和CSS3技术实现3D效果粽子特效动画，掌握动画制作过程', 'HTML/CSS, JavaScript', 'https://img.mukewang.com/5704a9a30001a6ef06000338-240-135.jpg', 'https://www.imooc.com/learn/428', '2小时17分', 8.8, 9.4, 8.6, 8.3, '简介：本课程带领大家使用JS和CSS3技术实现粽子动画的效果，课程分为“分析动画特效”和“开发”两个部分，分析动画部分使用“关键时间点逆向分析”的方法带领大家把动画制作过程揭秘出来，“开发”部分，首先对动画效果进行深入剖析、然后再进行动画的一步一步分步制作。', 'Lyn', 'https://img2.mukewang.com/53216f440001f5a904330473-80-80.jpg', 'Web前端工程师', '学习本课程之前您要了解，HTML、CSS及JS基础知识，这样便于小伙伴们对课程更好的理解。
', '1、css3实现过渡动画效果
2、JS定时动画实现
3、总结切换动画的三种常用方式
4、2D/3D变换相关', '2018-09-02 20:37:21.36404', '2018-08-12 23:48:14.120591');
INSERT INTO "public"."tb_imooc_course" VALUES (581, 438, 'PHP7.0新特性', '初级', 32686, '本视频就来介绍一下PHP7的新特性以及做了哪些方面的优化', 'PHP', 'https://img.mukewang.com/5707655b00016b1d06000338-240-135.jpg', 'https://www.imooc.com/learn/438', '28分', 9.4, 9.6, 9.3, 9.2, '简介：最近PHP官方终于发布了传说中的PHP7，虽然只是alpha版。PHP7号称是新一代的PHP，官方开发组对Zend引擎底层做了大量优化来提升PHP的性能。本视频就来介绍一下PHP7的新特性以及做了哪些方面的优化。', 'Rango', 'https://img4.mukewang.com/5469ba4e0001b81502200220-80-80.jpg', 'PHP开发工程师', '部分内容可能会引起您的不解，零基础无项目经验者—慎入。', '率先了解PHP7版本的新特性。', '2018-09-02 20:37:20.1616', '2018-08-12 23:48:14.671482');
INSERT INTO "public"."tb_imooc_course" VALUES (579, 433, 'PHPExcel探索之旅', '初级', 28188, '由浅入深学习PHPExcel导入导出操作，玩转任何文件操作需求', 'PHP', 'https://img.mukewang.com/558b55390001df0e06000338-240-135.jpg', 'https://www.imooc.com/learn/433', '3小时11分', 9.9, 9.9, 10, 9.6, '简介：PHPExcel是PHP语言操作Excel文件最强大的一个工具，也是身为一个PHPer的必备技能。本课程将带领大家全面解析PHPexcel的导入导出、样式控制、图形报表操作，帮助大家在今后工作中玩转任何文件操作需求。', 'Veo', 'https://img2.mukewang.com/558a24da0001eca901800180-80-80.jpg', 'PHP开发工程师', '本课程纯粹是围绕PHPExcel这个插件来教会大家如何去使用它，所以只要掌握基本的PHP语法及mysql知识即可，在后期的进阶教程学习中涉及大量的API查阅，所以大家还得学着耐着性子翻看英文文档喔。', '1.PHPExcel简单列表导出
2.PHPExcel复制样式控制
3.PHPExcel高级图形报表
4.PHPExcel文件导入
5.PHPExcel缓存操作', '2018-09-02 20:37:21.380556', '2018-08-12 23:48:14.446033');
INSERT INTO "public"."tb_imooc_course" VALUES (457, 559, 'iOS9新特性之内容索引', '初级', 10358, 'iOS9新特性：APP内容索引，让APP索引更人性、更方便', 'iOS', 'https://img1.mukewang.com/566e7ed70001b53106000338-240-135.jpg', 'https://www.imooc.com/learn/559', '39分', 9.9, 9.9, 9.9, 9.9, '简介：从实例出发介绍我们的APP内容索引功能，通过设置用户感兴趣的内容，快速找到我们的应用。还可以自定义内容索引的回调内容，让我们的APP索引更加人性、更加方便。', 'Jones__', 'https://img4.mukewang.com/5aa23ce700016f2a02560172-80-80.jpg', '算法工程师', '本课程适合客户端产品经理，研发人员以及对IOS新特性感兴趣的人群', '（1）学习iOS9新特性，掌握全新应用交互方式                           （2）掌握应用全新自定义内容索引，更容易找到我们的APP', '2018-09-02 20:37:12.55478', '2018-08-12 23:48:03.613807');
INSERT INTO "public"."tb_imooc_course" VALUES (385, 635, '玩儿转Swift 2.0（第一季）', '入门', 30760, '基于Swift2.1讲解swift语言基础知识，了解语言特性', 'iOS', 'https://img1.mukewang.com/573589ad00019f4a06000338-240-135.jpg', 'https://www.imooc.com/learn/635', '3小时37分', 9.8, 10, 9.7, 9.7, '简介：介绍2.0新版本Swift语言的基础知识 。', 'liuyubobobo', 'https://img.mukewang.com/5347593e00010cfb01400140-80-80.jpg', '全栈工程师', '本课程适合至少有一门编程语言基础的同学用于学习Swift语言。也适合在学习使用swift进行iOS开发的过程中，遇到不清楚的swift语言问题随时查询。', '这是《玩儿转swift2.0》系列课程的第一季。通过整个系列课程的学习，大家可以全面、深入地了解swift的语法与语言特性，理解swift的设计原则和理念，同时对面向对象、面向协议、面向函数等思想有一定的了解，对swift语言的掌握达到中等偏上的水平。', '2018-09-02 20:37:18.879345', '2018-08-12 23:47:56.905365');
INSERT INTO "public"."tb_imooc_course" VALUES (589, 282, '《小十传奇》 Unity3D 休闲游戏开发', '中级', 37095, '手把手教你用Unity3D开发休闲游戏，小伙伴们，还等什么', 'Unity 3D', 'https://img2.mukewang.com/5746698000015d0f06000338-240-135.jpg', 'https://www.imooc.com/learn/282', '1小时58分', 9.3, 9.7, 9.2, 8.9, '简介：有了好的创意，该如何把她实现成游戏呢？在这门课程中， @游戏开发极客 将手把手的带领小伙伴们应用 Unity3D 开发一款休闲游戏。好的架构保证质量，加上方便的工具和优良的方法，小伙伴们，还等什么，快来加入游戏开发的神奇之旅吧！！', '游戏开发极客...', 'https://img1.mukewang.com/54ac94700001ec1705380621-80-80.jpg', NULL, '本课程是 Unity3D 中级课程，建议小伙伴们对 Unity3D 基本操作以及 C# 基础语法有一定了解', '1、如何用Unity3D开发一款休闲游戏
2、MVC的游戏开发结构
3、GDGeek工具库在游戏开发中的使用
4、敏捷开发的思维方式', '2018-09-02 20:37:22.28043', '2018-08-12 23:48:15.394171');
INSERT INTO "public"."tb_imooc_course" VALUES (512, 450, 'Struts2拦截器浅析', '中级', 36554, '本视频教程将代领大家了解Struts2拦截器的工作原理及配置', 'Java', 'https://img3.mukewang.com/55a5f5f8000161a806000338-240-135.jpg', 'https://www.imooc.com/learn/450', '59分', 9.8, 9.9, 9.8, 9.7, '简介：Struts2大多数核心功能是通过拦截器实现的，每个拦截器完成某项功能，比如，params拦截器负责解析HTTP请求的参数，并设置Action的属性。本次将与各位小伙伴们分享的就是Struts2中的拦截器。', '汤小洋', 'https://img4.mukewang.com/596b71040001ff8206400640-80-80.jpg', '全栈工程师', '本课程主要讲解Struts2中的拦截器，小伙伴们需要对Struts2基本用法、
Action配置等相关知识有一定的基础。', '1、拦截器概念、作用
2、Struts2内建的拦截器
3、如何自定义拦截器
4、使用拦截器实现权限控制', '2018-09-02 20:37:19.427432', '2018-08-12 23:48:08.294412');
INSERT INTO "public"."tb_imooc_course" VALUES (583, 442, 'iOS动画案例之会跳舞的界面(下)', '初级', 16015, '来让界面舞动起来，学会动画的设计思路，界面的设计思路
', 'iOS', 'https://img2.mukewang.com/5707773c000120e906000338-240-135.jpg', 'https://www.imooc.com/learn/442', '2小时 1分', 10, 10, 10, 10, '简介：通过对之前《iOS动画案例之会跳舞的界面（上）》的学习 我们需要使用的元素都已经设计好了。接下来我们就可以使用这些元素将它们组合在一起让它们来跳舞吧!', '林永坚Jake...', 'https://img4.mukewang.com/53bce3ba00014c3932644928-80-80.jpg', '其它', '需要学习会跳舞的界面(上)
', '1、Sketch动画
2、动画的设计思路
3、界面的设计思路', '2018-09-02 20:37:22.43581', '2018-08-12 23:48:14.787357');
INSERT INTO "public"."tb_imooc_course" VALUES (584, 455, '微信SDK-分享你的朋友圈', '初级', 43413, '大神教你Android微信SDK的使用，实现分享朋友圈功能，不会就OUT了', 'Android', 'https://img3.mukewang.com/55ac53600001fc8706000338-240-135.jpg', 'https://www.imooc.com/learn/455', '1小时40分', 9.7, 9.9, 9.7, 9.4, '简介：本门课程介绍Android微信SDK的使用，通过案例讲解实现分享朋友圈功能。', '李宁', 'https://img1.mukewang.com/538e88d900017ff501400140-80-80.jpg', '移动开发工程师', '本门课程为中级课程
1.需要掌握Android基础知识', '1.微信SDK的介绍与使用
2.分享指定好友
3.分享至朋友圈', '2018-09-02 20:37:22.57217', '2018-08-12 23:48:14.828182');
INSERT INTO "public"."tb_imooc_course" VALUES (588, 440, '与《Yii框架》不得不说的故事—高效篇', '中级', 21551, '本教程代领大家学习YII如何提升程序运行效率以及开发效率', 'PHP', 'https://img2.mukewang.com/55939b99000114db06000338-240-135.jpg', 'https://www.imooc.com/learn/440', '2小时27分', 9.8, 10, 9.9, 9.6, '简介：YII是目前比较火的框架，框架里面使用了最新的技术和设计，可以说学习了YII就学习了最新的php技术，本课程主要学习YII如何提升程序运行效率以及开发效率。', 'withy', 'https://img1.mukewang.com/5564088300017b7510240719-80-80.jpg', 'PHP开发工程师', '学习本门课程之前，建议先了解一下知识，会更有助于理解和掌握本门课程
1、掌握PHP基本的语言语法
2、对MVC开发方式有一定的了解', '1、YII的延迟加载
2、YII的多级缓存
3、GII工具的使用', '2018-09-02 20:37:21.879825', '2018-08-12 23:48:15.128924');
INSERT INTO "public"."tb_imooc_course" VALUES (407, 656, 'Android-QQ登录', '初级', 57877, 'QQ登录是QQ互联的基础接入功能，让应用快速实现QQ登录功能', 'Android', 'https://img1.mukewang.com/573005ac0001646506000338-240-135.jpg', 'https://www.imooc.com/learn/656', '32分', 9.3, 9.5, 9.1, 9.2, '简介：QQ登录是QQ互联的基础接入功能,通过接入QQ登录,用户可以使用QQ账号直接登录接入的站点,QQ登录同时提供API授权,帮助网站主或开发者将用户的分享、相册、日志等操作。', 'Smile浅笑', 'https://img2.mukewang.com/537435a2000123b506400600-80-80.jpg', 'JAVA开发工程师', '本门课程为中级案例课程：
1、掌握Java基础
2、掌握Android基础内容', '1、登录流程
2、官方DEMO
3、友盟实现第三方登录', '2018-09-02 20:37:07.20191', '2018-08-12 23:47:58.745247');
INSERT INTO "public"."tb_imooc_course" VALUES (595, 373, 'Objective-C面向对象初体验', '初级', 30722, '本视频教程将带大家学习Objective-C中的面向对象编程', 'iOS', 'https://img3.mukewang.com/57874093000168e706000338-240-135.jpg', 'https://www.imooc.com/learn/373', '1小时59分', 9.8, 10, 9.9, 9.6, '简介：本课程将带大家学习Objective-C中的面向对象编程，其中会涉及到OC语言中的类，对象，属性以及一些方法和类的函数的应用，为后面的课程打下一个良好的基础', 'Visitor.zc', 'https://img3.mukewang.com/5530d35800013ba305680568-80-80.jpg', NULL, '需要有Objective-C的基础', '面向对象编程思想
OC中的继承
封装
多态的实现', '2018-09-02 20:37:27.318412', '2018-08-12 23:48:15.794172');
INSERT INTO "public"."tb_imooc_course" VALUES (598, 398, 'MySQL开发技巧（一）', '中级', 120342, 'DBA和开发人员都必备的技能，SQL技巧一个好程序员必备技能', 'MySQL', 'https://img3.mukewang.com/555e9cdc0001ee9606000338-240-135.jpg', 'https://www.imooc.com/learn/398', '58分', 8.8, 9.2, 8.7, 8.5, '简介：MySQL教程，开发技巧（一）告诉你一个不懂SQL技巧的程序员不是一个好程序员。', 'sqlercn', 'https://img.mukewang.com/5ad7144100017a5e07410741-80-80.jpg', '数据库工程师', '本门教程主要针对的是MySQL数据库，熟悉数据库的CRUD操作是掌握本门教程精华的必要条件。', '1、如何正确的使用join语句
2、如何实现分组选择数据', '2018-09-02 20:37:23.540239', '2018-08-12 23:48:15.973825');
INSERT INTO "public"."tb_imooc_course" VALUES (454, 545, 'H5+JS+CSS3 实现圣诞情缘', '中级', 105350, '为圣诞节准备的H5+JS+CSS特效案例教程，实现静与动的结合', 'Html5, CSS3', 'https://img1.mukewang.com/5705d2fb0001b83206000338-240-135.jpg', 'https://www.imooc.com/learn/545', '2小时33分', 9.6, 9.9, 9.4, 9.5, '简介：圣诞节将近，帅哥美女相约，送一份特别的礼物，让TA过一个不一样的节日。本课程中使用面向对象的编程方式，采用H5+JS+CSS3的混合使用实现整个功能。课程当中总共分为3个主题场景图，多个精灵图以及雪碧图，实现了静与动的完美结合，并且由浅入深的将整个案例拆分讲解。', 'Aaron艾伦', 'https://img4.mukewang.com/54bf47ea000132d002200220-80-80.jpg', 'Web前端工程师', '本课程为高级案例课程，其中所用的大部分知识点不做深入剖析，只讲解如何使用，部分代码需要由你自己填充。 需要具备如下知识： 
1、HTML4、HTML5
2、CSS2、CSS3 
3、JavaScript、jQuery 
4、面向对象思想
5、SVG基础知识
6、Canvas基础知识', '1、rem式布局 
2、转场特效
3、异步编程处理 
4、CSS3动画过渡 
5、JS动画实现 
6、H5的音乐效果
7、H5的视频效果
8、SVG画图
9、canvas画图', '2018-09-02 20:37:12.19485', '2018-08-12 23:48:03.492961');
INSERT INTO "public"."tb_imooc_course" VALUES (592, 396, 'Hibernate初探之单表映射', '中级', 69258, 'Java持久化框架Hibernate入门教程，掌握Hibernate基本概念', 'Java', 'https://img3.mukewang.com/5565784c00017cee06000338-240-135.jpg', 'https://www.imooc.com/learn/396', '2小时15分', 9.7, 9.9, 9.7, 9.5, '简介：Hibernate是一个著名的对象关系映射框架，使得Java程序员可以随心所欲的使用对象编程思维来操纵数据库。本门课程是Hibernate的入门课程，主要介绍ORM和hibernate的概念，如何在eclipse中创建hibernate实例及相关配置文件的详解说明。', 'milanlover', 'https://img.mukewang.com/53df3b7a0001b45c01400140-80-80.jpg', 'JAVA开发工程师', '小伙伴们，学习本门课程前需要具备Java基础知识和面向对象编程思想，并能够熟练使用JDBC操作Mysql数据库。', '1、理解ORM模型
2、掌握Hibernate基本概念
3、能够熟练创建Hibernate实例', '2018-09-02 20:37:25.057005', '2018-08-12 23:48:15.46046');
INSERT INTO "public"."tb_imooc_course" VALUES (886, 564, '去哪儿前端沙龙分享第三期', '中级', 25338, '本课程为去哪儿网前端交互沙龙第三期，精彩分享不容错过噢', 'Node.js', 'https://img4.mukewang.com/5707784e0001d8d806000338-240-135.jpg', 'https://www.imooc.com/learn/564', '2小时44分', 9.7, 10, 10, 9.2, '简介：本课程来自去哪儿网前端交互沙龙第三期现场分享。由去哪儿网的资深工程师给大家分享前端开发实践经验。精彩分享不容错过噢！', 'Qnext', 'https://img2.mukewang.com/552c8cb50001c3bf16150398-80-80.jpg', NULL, '本课程适合有一定前端工作经验的工程师。', NULL, '2018-09-02 20:37:12.348239', '2018-08-13 09:53:29.345375');
INSERT INTO "public"."tb_imooc_course" VALUES (499, 550, 'python正则表达式', '初级', 63847, '如何使用正则处理文本，带你对python正则有个全面了解', 'Python', 'https://img3.mukewang.com/5746786300017d8f06000338-240-135.jpg', 'https://www.imooc.com/learn/550', '1小时29分', 9.4, 9.8, 9.4, 9.1, '简介：正则表达式可以提高复杂文本分析的效率，本课程介绍了Python正则表达式基本概念、为什么使用正则表达式、正则语法、re模块及相关方法使用，如何使用正则表达式处理文件，让您对python正则全面了解。', 'Meshare_huan...', 'https://img3.mukewang.com/55598e050001d00505680568-80-80.jpg', 'Linux系统工程师', '本课程是Python中级课程
1、本课程在linux讲解，最好有linux开发环境
1、熟练掌握Python开发语言基础语法', '1.正则表达式基本语法
2.使用re模块处理文本', '2018-09-02 20:37:11.400888', '2018-08-12 23:48:07.243172');
INSERT INTO "public"."tb_imooc_course" VALUES (606, 377, 'Android必学-AsyncTask基础', '中级', 40263, '了解Android中AsyncTask的使用方法，掌握异步线程的使用', 'Android', 'https://img1.mukewang.com/57075ab500019ea106000338-240-135.jpg', 'https://www.imooc.com/learn/377', '49分', 9.8, 9.8, 9.9, 9.6, '简介：本次课程将带领大家了解Android中AsyncTask，体会如何在Android中进行异步操作进行各种网络请求，熟练掌握异步线程的使用。', 'eclipse_xu', 'https://img3.mukewang.com/54cb9b5f0001827024483264-80-80.jpg', '移动开发工程师', '本课程是Android初级课程
1、掌握基本的Android应用程序开发方法
2、掌握AsyncTask中个方法中参数的意义
3、掌握AsyncTask中4个常用的方法', '1、了解Android的单线程模型
2、 AsyncTask的基本构成
3、 AsyncTask的回调方法
4、 AsyncTask实例', '2018-09-02 20:37:26.381924', '2018-08-12 23:48:16.686123');
INSERT INTO "public"."tb_imooc_course" VALUES (519, 473, 'CSS3图片动态提示效果', '初级', 52234, '实用的CSS3图片动态提示效果，熟练掌握CSS动画的制作技法', 'CSS3', 'https://img3.mukewang.com/5746790a0001947b06000338-240-135.jpg', 'https://www.imooc.com/learn/473', '1小时12分', 9.6, 9.9, 9.4, 9.3, '简介：本课程使用HTML5+CSS3来制作网站常用的超酷图片展示动画效果，从知识点到原理到实践，一步步带你通过课程学会如何通过简单CSS属性制作炫酷复杂的动画效果。熟练掌握CSS动画的制作技法。', 'jack.xu', 'https://img3.mukewang.com/558d050e0001e3b301790179-80-80.jpg', 'Web前端工程师', '1、您要具备HTML和CSS基础知识
2、了解CSS3中的动画。', '1，学会两个HTML5新标签figure以及figcaption
2，学会使用CSS的transform
3，学会使用CSS3的transition
4，学会利用属性配合制作出绚丽的动画效果', '2018-09-02 20:37:16.873956', '2018-08-12 23:48:08.913384');
INSERT INTO "public"."tb_imooc_course" VALUES (601, 384, 'Android-重识Activity', '入门', 42597, 'Activity的系列教程的第一讲，将带您重新认识Activity', 'Android', 'https://img4.mukewang.com/554089050001a95906000338-240-135.jpg', 'https://www.imooc.com/learn/384', '1小时13分', 9.7, 9.8, 9.8, 9.6, '简介：Activity作为Android开发实在是太常见了,但是你真的会用Activity吗？本课程为Activity的系列课程的第一讲，将带大家学习Android中最常用的Activity组件的那些事', 'nate', 'https://img4.mukewang.com/547697d10001e0b110240679-80-80.jpg', '移动开发工程师', '需要完成<<Android攻城师>>课程', '将学到：
1：Activity的生命周期与交互
2：切换屏幕
3：应用场景
4：启动方式', '2018-09-02 20:37:24.274467', '2018-08-12 23:48:16.205701');
INSERT INTO "public"."tb_imooc_course" VALUES (522, 481, 'Linux权限管理之基本权限', '初级', 35937, 'Linux的基本权限和默认权限管理，通过理论讲解与实验演示', 'Linux', 'https://img4.mukewang.com/55dd95220001ca4d06000338-240-135.jpg', 'https://www.imooc.com/learn/481', '1小时 8分', 9.9, 10, 9.8, 9.8, '简介：权限管理是Linux中一个十分重要的概念，也是系统安全性的重要保障。本门课程主要介绍Linux的基本权限和默认权限，通过理论讲解与实验演示，小伙们可以了解到权限的相关操作及其重要性。', 'Tony', 'https://img4.mukewang.com/53f5aae6000129aa01400140-80-80.jpg', 'Linux系统工程师', '小伙伴们，学习本课程前需要对Linux的基本命令有所掌握，可以参考课程《Linux达人养成计划I》', '1、理解Linux权限的概念
2、能够使用基本权限命令
3、能够使用默认权限命令', '2018-09-02 20:37:17.038541', '2018-08-12 23:48:09.216926');
INSERT INTO "public"."tb_imooc_course" VALUES (602, 388, 'Android-深入Activity', '初级', 30338, '带大家深入了解Activity，讲解Activity的相关知识', 'Android', 'https://img1.mukewang.com/554b214700017aaf06000338-240-135.jpg', 'https://www.imooc.com/learn/388', '1小时16分', 9.6, 9.8, 9.5, 9.6, '简介：Activity作为Android开发实在是太常见了,但是你真的会用Activity吗？本课程是Activity系列的第2部分，将继续为大家讲解Activity的相关知识', 'nate', 'https://img1.mukewang.com/547697d10001e0b110240679-80-80.jpg', '移动开发工程师', '需要学完<<Android-重识Activity>>', 'Activity的Task和Back Stack
Activity启动模式
Activity之间的数据交换
Activity之间传递大数据的问题', '2018-09-02 20:37:24.462685', '2018-08-12 23:48:16.254784');
INSERT INTO "public"."tb_imooc_course" VALUES (599, 313, 'Unity3D快速入门', '入门', 104583, '本课程为Unity 3D入门教程，快速学会用Unity开发游戏', 'Unity 3D', 'https://img2.mukewang.com/574669a80001556806000338-240-135.jpg', 'https://www.imooc.com/learn/313', '3小时18分', 8.6, 8.9, 8.3, 8.6, '简介：Unity 3D是目前非常流行的游戏引擎，上手容易，功能强大，而且跨平台。unity3d教程将从零开始教大家使用Unity，从头开始开发一款小游戏。本课程为Unity 3D入门教程，将实例和理论结合起来，注重实用性， 是一门Unity基础的教程。', 'HenryLiang', 'https://img3.mukewang.com/54f1894e000193f302200220-80-80.jpg', '移动开发工程师', '本课程是Unity 3D入门课程，适合零基础的小伙伴们，赶紧开始学习吧。', '1、Unity的基本功能和操作
2、如何利用Unity学会开发游戏
3、利用Unity的内置模块实现一些AI和特效', '2018-09-02 20:37:24.773791', '2018-08-12 23:48:16.050125');
INSERT INTO "public"."tb_imooc_course" VALUES (603, 369, 'Oracle 12c 在OEL6上的安装', '初级', 14237, 'Oracle DBA成长第一门课，学会在OEL6下安装Oracle数据库', 'Oracle', 'https://img4.mukewang.com/5704ccf30001775a06000338-240-135.jpg', 'https://www.imooc.com/learn/369', '23分', 9.6, 9.7, 9.6, 9.4, '简介：Oracle数据库的版本不断更新，针对不同版本的安装流程也不尽相同。本课程为小伙伴们详细的展示了最新的Oracle 12c版本数据库在OEL6（Oracle Enterprise Linux 6）系统上的安装，并针对安装过程中的问题，提出了详细的解决方案。', '崔旭', 'https://img2.mukewang.com/552f6ef00001c9ca08000800-80-80.jpg', NULL, '希望大家在学习前能掌握OEL6（Oracle Enterprise Linux 6）的安装。OEL6是ReadHat系列的系统，安装时可以参考《Linux达人养成计划I》中Centos的安装过程。', '能够成功在OEL6下安装Oracle数据库。', '2018-09-02 20:37:25.924173', '2018-08-12 23:48:16.355466');
INSERT INTO "public"."tb_imooc_course" VALUES (612, 375, '使用JSP+Servlet技术生成报表', '初级', 64894, 'Java Web案例课程，教你如何使用JSP+Servlet技术生成报表', 'Java', 'https://img2.mukewang.com/554706690001974406000338-240-135.jpg', 'https://www.imooc.com/learn/375', '1小时26分', 9.1, 9.3, 9, 8.9, '简介：报表就是用表格、图表等格式来动态显示数据。本课程是Java Web的案例课程，主要关注于用表格形式来显示数据。主要内容包括报表的基础知识，报表实现原理和核心技术，以及如何使用JSP+Servlet技术来生成报表。', '寻找信仰', 'https://img1.mukewang.com/554705ee0001e78105970800-80-80.jpg', 'JAVA开发工程师', '学习本课程需要具备JSP和Servlet的基础知识。需要注意的是本课程中使用的是Oracle数据库，但使用MySql数据库也是可以的。', '1、使用JSP+Sevlet实现报表
2、掌握如何使用MVC模型进行程序开发', '2018-09-02 20:37:24.121568', '2018-08-12 23:48:17.221049');
INSERT INTO "public"."tb_imooc_course" VALUES (613, 381, 'C++远征之离港篇', '中级', 101000, 'C++扫清通往面向对象的最后一道障碍，将所有知识点融会贯通', 'C++', 'https://img.mukewang.com/5707600b000184bf06000338-240-135.jpg', 'https://www.imooc.com/learn/381', '1小时27分', 9.7, 9.9, 9.7, 9.6, '简介：本课程是C++起航篇的延伸，讲述了引用、const、函数默认值、函数重载、内存管理等内容，最后通过一个通俗易懂的例子将所述知识点融会贯通，以达到知识灵活运用，最终得以升华的目的。', 'james_yuan', 'https://img2.mukewang.com/550f82810001c44902200220-80-80.jpg', '学生', '本课程是C++初级课程
熟练掌握C语言开发语言基础语法', '1、C++语言引用的魅力			
2、C++语言const的用法			
3、C++语言函数默认值及函数重载			
4、C++语言内存管理', '2018-09-02 20:37:24.105462', '2018-08-12 23:48:17.291672');
INSERT INTO "public"."tb_imooc_course" VALUES (466, 509, ' PHP实现微信公众平台开发—提升篇', '中级', 60005, '本课程详细讲解了接收微信用户发送的消息和接收订阅关注的事件推送', 'PHP', 'https://img1.mukewang.com/5600fb2a0001627206000338-240-135.jpg', 'https://www.imooc.com/learn/509', '3小时 2分', 9.4, 9.7, 9.4, 9.1, '简介：本课程详细讲解了如何接收微信用户发送的消息和接收订阅关注的事件推送，以及发送各种类型的消息给微信用户，并深入剖析了access_token在微信中的使用技巧，最后展示了第三方接口与微信深度结合的应用示例。', '_渔夫', 'https://img3.mukewang.com/5333a08f0001700202000200-80-80.jpg', 'PHP开发工程师', '学习本门课程之前，建议先了解一下知识，会更有助于理解和掌握本门课程
1、掌握PHP基本的语言语法
2、掌握微信相关的基础概念
3、理解微信内的数据传递机制
4、对ThinkPHP框架有一定的了解', '1、了解微信中事件推送的机制
2、根据自身的业务逻辑完成与微信用户的消息交互
3、由浅入深的讲解微信中的access_token的使用场景和使用技巧
4、熟练使用微信接口的调用
5、了解第三方应用接口与微信的结合方法', '2018-09-02 20:37:18.119966', '2018-08-12 23:48:04.327957');
INSERT INTO "public"."tb_imooc_course" VALUES (441, 597, 'HTML5+CSS3实现春节贺卡', '中级', 98036, '又逢新春佳节，春节贺卡搞起来，学会HTML5+CSS3实现春节贺卡', 'Html5, CSS3', 'https://img3.mukewang.com/5705cf3a0001b61c06000338-240-135.jpg', 'https://www.imooc.com/learn/597', '1小时51分', 9.7, 9.9, 9.6, 9.6, '简介：以春节为主题，通过一个简单的春节手机端祝贺页面的实例演示，并通过对案例进行拆分和讲解，让您对手机端简易网站从零建站有一个简单的认识，并让您可以独立开发简单的手机端小型展示网页。', '爱米', 'https://img4.mukewang.com/55ff727300010f1d06000600-80-80.jpg', 'Web前端工程师', '本课程是前端中级课程
1.HTML 和 CSS基础知识
2.HTML5 伪类和 CSS3动画基本知识
3.JavaScript基本语法知识', '1.学会手机端简单展示型网页的布局与分析
2.学会使用CSS3的transition和animation动画
3.学会使用HTML5的Audio API完成音乐交互
4.学会利用JavaScript和伪类制作出绚丽的交互效果', '2018-09-02 20:37:11.228957', '2018-08-12 23:48:01.388623');
INSERT INTO "public"."tb_imooc_course" VALUES (506, 501, 'MongoDB集群之分片技术应用', '中级', 11714, '深入接触MongoDB分片技术，解决数据存储及管理上的困扰', 'MongoDB', 'https://img.mukewang.com/55f8d5080001293c06000338-240-135.jpg', 'https://www.imooc.com/learn/501', '1小时57分', 9.9, 10, 10, 9.7, '简介：从传统关系数据库到现在的"NOSQL"数据类型数据库演变过程中，也许总站在处理海量数据的第一线上，如何有效的去除中心化部署库部署接口？如何更高效的存储我们数据资源？本课程教你如何利用Mongodb分片的方式来解决我们数据存储及管理上的困扰。', 'Jeson老师', 'https://img.mukewang.com/5510c7a600016ea802200220-80-80.jpg', 'Python工程师', '亲爱的小伙伴们，想要更好的掌握本门课程的精华，最好预先掌握Mongodb的基础知识，对MongoDB复制集有基本的了解，除此之外，如果还具备数据库运维管理经验的话，那是最好不过的了。', '1、什么是Mongodb分片，Mongodb的分片特点。
2、区分分片集群与复制集的区别。
3、明白Mongodb分片如何配置及如何搭建。
4、Mongodb分片实现原理及数据如何实现均衡。
5、Mongodb分片的事件部署结构。', '2018-09-02 20:37:18.16937', '2018-08-12 23:48:07.851555');
INSERT INTO "public"."tb_imooc_course" VALUES (532, 491, '与《Yii框架》不得不说的故事—扩展篇', '中级', 15292, '本课程主要学习模块、事件机制、mixin以及依赖注入技术', 'PHP', 'https://img4.mukewang.com/55e520760001c53906000338-240-135.jpg', 'https://www.imooc.com/learn/491', '1小时52分', 9.9, 10, 9.8, 9.8, '简介：YII是目前比较火的框架，框架里面使用了最新的技术和设计，可以说学习了YII就学习了最新的php技术，本课程主要学习模块、事件机制、mixin以及依赖注入技术，可以让程序拥有更好的扩展性，更能够适应需求的变化。', 'withy', 'https://img4.mukewang.com/5564088300017b7510240719-80-80.jpg', 'PHP开发工程师', '学习本门课程之前，建议先了解以下知识，会更有助于理解和掌握本门课程
1、面向对象的编程思想
2、YII的MVC开发方式
3、常用的设计模式', '1、如何使用模块化将YII项目进行划分
2、能够将程序逻辑解耦的事件机制如何使用
3、如何使用行为去扩展类以及对象
4、如何使用依赖注入去对代码进行解耦', '2018-09-02 20:37:17.63679', '2018-08-12 23:48:09.925087');
INSERT INTO "public"."tb_imooc_course" VALUES (419, 594, ' MongoDB复制集—容灾核心选举', '中级', 5741, '选举是故障容灾的重要环节，学习简单化复制集的选举流程', 'MongoDB', 'https://img4.mukewang.com/56d640a30001fc0d06000338-240-135.jpg', 'https://www.imooc.com/learn/594', '20分', 9.6, 9.6, 9.8, 9.4, '简介：选举是故障容灾的重要环节，也是一个复杂的过程，不过不用担心，复杂的事情简单化一直是我们的宗旨。本课程会详细讲解选举的流程，以及选举过程中的注意事项，带领大家一步步完成选举的整个过程。', 'SeanZ', 'https://img1.mukewang.com/54bcba130001fc2305680568-80-80.jpg', NULL, '为便于更精准的掌握复制集的选举流程，你需要预先掌握以下知识
1、大多数原则
2、复制集节点属性
3、oplog的结构', '精准掌握复制集的选举流程。', '2018-09-02 20:37:16.41978', '2018-08-12 23:47:59.640997');
INSERT INTO "public"."tb_imooc_course" VALUES (622, 397, 'Python开发环境搭建', '入门', 125054, '带你搭建 Python开发环境，为后续Python学习打好基础', 'Python', 'https://img.mukewang.com/5705b57b0001f4b306000338-240-135.jpg', 'https://www.imooc.com/learn/397', '16分', 9.6, 9.7, 9.5, 9.5, '简介：学习一门语言，首先要把环境准备好，本课程主要讲解在不同系统（Window、Linux）中搭建Python开发环境，及Eclipse配置和 Python 文件类型，让您快速了解和应用Python开发环境及工具，为后续Python学习打好基础。', 'Meshare_huan...', 'https://img4.mukewang.com/55598e050001d00505680568-80-80.jpg', 'Linux系统工程师', '本课程是Python入门级课程', '如何搭建Python开发环境，并连接Python文件类型', '2018-09-02 20:37:24.800291', '2018-08-12 23:48:17.992522');
INSERT INTO "public"."tb_imooc_course" VALUES (615, 392, 'iOS-动画入门', '初级', 35012, '后IOS时代 扁平化设计，提高用户体验，你值得拥有', 'iOS', 'https://img2.mukewang.com/5774d6c70001ab1506000338-240-135.jpg', 'https://www.imooc.com/learn/392', '1小时58分', 9.7, 9.8, 9.6, 9.5, '简介：自从iOS7.0更新以来，苹果官方全面采用扁平化来设计UI。作为iOS开发者，如何在功能完成的情况下使得自己的UI更漂亮，用户体验更高，就成了现在iOS开发者们着重考虑的问题。本课程将从动画基础开始为大家讲解在扁平化设计中如何嵌入柔和的动画来提高用户体验', '林永坚Jake...', 'https://img.mukewang.com/53bce3ba00014c3932644928-80-80.jpg', '其它', '需要有IOS基础', '1、iOS动画的原理
2、UIView动画概
3、提高用户体验', '2018-09-02 20:37:23.554599', '2018-08-12 23:48:17.349965');
INSERT INTO "public"."tb_imooc_course" VALUES (618, 382, 'C++远征之封装篇（上）', '初级', 83902, '封装--面向对象的基石，本教程力求帮助小伙伴们即学即会', 'C++', 'https://img4.mukewang.com/57075fa60001ea6406000338-240-135.jpg', 'https://www.imooc.com/learn/382', '2小时19分', 9.7, 9.9, 9.7, 9.6, '简介：本课程将代领小伙伴们真正迈入C++语言的面向对象大门，在课程中，将会深入讲解类的定义方法，属性的封装方法，构造函数和析构函数等内容，并且所有知识均会通过编码实践的方式讲解到操作层面，力求帮助小伙伴们即学即会！', 'james_yuan', 'https://img1.mukewang.com/550f82810001c44902200220-80-80.jpg', '学生', '本课程是C++初级课程
需要熟练掌握C++语言基础语法', '1、类的定义与对象实例化
2、string类型及属性封装
3、类外定义
4、构造函数与初始化列表
5、析构函数', '2018-09-02 20:37:24.673308', '2018-08-12 23:48:17.569288');
INSERT INTO "public"."tb_imooc_course" VALUES (620, 395, 'iOS-动画进阶', '初级', 18463, '本教程将带你学习iOS开发常用特效处理，更加高级的动画效果实现', 'iOS', 'https://img1.mukewang.com/55594b500001c51406000338-240-135.jpg', 'https://www.imooc.com/learn/395', '1小时14分', 9.9, 10, 10, 9.6, '简介：本课程将继续为大家带来iOS的常用特效处理。本课程为iOS-动画入门的进阶篇，在这里能够学习到更加高级的动画效果实现，丰富界面的动画效果设计', '林永坚Jake...', 'https://img3.mukewang.com/53bce3ba00014c3932644928-80-80.jpg', '其它', '需要首先学习iOS-动画入门', '1、Spring动画
2、Easing动画
3、Repeat动画
4、Timing动画', '2018-09-02 20:37:24.951474', '2018-08-12 23:48:17.874914');
INSERT INTO "public"."tb_imooc_course" VALUES (616, 385, 'jQuery插件——Validation Plugin', '中级', 63500, 'validation让客户端表单验证变容易，缩短用户等待时间', 'jQuery', 'https://img.mukewang.com/5546cf920001f58706000338-240-135.jpg', 'https://www.imooc.com/learn/385', '1小时24分', 9.6, 9.9, 9.6, 9.3, '简介：jQuery有很多有用的插件，其中Validation插件是最常用的插件之一。
客户端表单验证是现代网站经常采用的方式，可以减少服务器压力，缩短用户等待时间和提升用户体验。jQuery Validation插件提供了很多的配置项目，还附带了很多验证方法及多语言提示。', '姜维_Wayne', 'https://img2.mukewang.com/599ea79c0001a1bc05000500-80-80.jpg', 'Web前端工程师', '您好至少具备jQuery基础知识，HTML/CSS基础知识。', '1.掌握 Validation插件基础验证方法
2.掌握 validator 对象方法
3.掌握 validate方法配置项
4.如何自定义验证方法
5.客户端表单验证的安全性
', '2018-09-02 20:37:23.685266', '2018-08-12 23:48:17.412589');
INSERT INTO "public"."tb_imooc_course" VALUES (378, 554, '用C#实现封装', '入门', 58919, 'C#视频教程教大家，用C#语言实现面向对象的封装', 'C#', 'https://img.mukewang.com/57466a8b0001695f06000338-240-135.jpg', 'https://www.imooc.com/learn/554', '2小时25分', 9.6, 9.8, 9.6, 9.5, '简介：在本次课程中，@绿豆开门从类和对象的概念入手，围绕面向对象的三大技术之一——封装进行讲解。将带领大家学习属性封装的技术，深入理解方法的声明和应用，帮助大家使用C#语言的语法和面向对象的编程思想解决实际问题。', '绿豆开门', 'https://img.mukewang.com/55de65270001196405900590-80-80.jpg', '其它', '学习本课程之前，小伙伴们需要有C#语法基础，木有此项技能的童鞋们，请先移步《C#开发轻松入门》进行修炼~~', '1、类和对象的概念
2、封装的思想和实现
3、方法和构造方法
4、值类型与引用类型', '2018-09-02 20:37:16.489456', '2018-08-12 23:47:56.365915');
INSERT INTO "public"."tb_imooc_course" VALUES (530, 499, 'Linux权限管理之特殊权限', '初级', 29035, '本Linux教程一定会让你对Linux中的权限有更深刻的认识', 'Linux', 'https://img4.mukewang.com/55f147b400019c4d25001408-240-135.jpg', 'https://www.imooc.com/learn/499', '2小时30分', 9.8, 10, 9.8, 9.8, '简介：本课程是《Linux权限管理之基本权限》的后续篇，为小伙伴们带来了Linux中常用的一些特殊权限命令，包括ACL权限、sudo权限、文件特殊权限和不可改变位权限。通过@Tony老师的精彩讲解，一定会让你对Linux中的权限有更深刻的认识。', 'Tony', 'https://img3.mukewang.com/53f5aae6000129aa01400140-80-80.jpg', 'Linux系统工程师', '1、需要掌握Linux的基本命令
2、需要学习本课程的前置课程《Linux权限管理之基本权限》', '通过本课程的学习，可以掌握Linux中的常用权限命令，包括ACL权限、sudo权限、文件特殊权限和不可改变位权限，并能理解这些权限的应用场景。', '2018-09-02 20:37:17.600694', '2018-08-12 23:48:09.881759');
INSERT INTO "public"."tb_imooc_course" VALUES (624, 361, 'shell编程之环境变量配置文件', '初级', 27736, '为你带来shell环境变量配置文件，熟练使用环境变量配置文件', 'Linux', 'https://img.mukewang.com/55237dcc0001128c06000338-240-135.jpg', 'https://www.imooc.com/learn/361', '57分', 9.8, 9.8, 9.8, 9.7, '简介：本课程是《Tony老师聊shell》系列课程的第三篇，为你带来常用的Linux环境变量配置文件的使用。对环境变量配置文件的功能进行了详解，然后又介绍了其他环境变量配置文件，包括注销时生效的环境变量配置文件、历史命令相关的环境变量配置文件、shell登录信息配置文件等。', 'Tony', 'https://img4.mukewang.com/53f5aae6000129aa01400140-80-80.jpg', 'Linux系统工程师', '小伙本们注意啦，学习本门课程前，请先学习《Tony老师聊shell》系列课程中的前两门课，关于变量和运算符的内容呦！', '1、掌握环境变量配置文件的功能
2、能够熟练使用环境变量配置文件', '2018-09-02 20:37:30.139975', '2018-08-12 23:48:18.472081');
INSERT INTO "public"."tb_imooc_course" VALUES (628, 362, '数学知识在CSS动画中的应用', '初级', 36086, '在数学理论的基础上与CSS动画技巧结合实现酷炫效果', 'HTML/CSS, CSS3', 'https://img4.mukewang.com/57076c3300013e9206000338-240-135.jpg', 'https://www.imooc.com/learn/362', '16分', 9.6, 9.9, 9.5, 9.5, '简介：在数学理论的基础上，与CSS动画技巧完美结合，实现令你耳目一新的径向菜单展开效果，以及优雅实用的时钟效果。', '奇舞团', 'https://img4.mukewang.com/551b97490001120c02200220-80-80.jpg', 'Web前端工程师', '本课程适合HTML和CSS有一些实践的童鞋们。需要对CSS3和数学中的极坐标有基本的了解。', '1、圆的极坐标和常用动画技巧的简单介绍
2、如何实现径向菜单展开效果
3、如何实现时钟效果', '2018-09-02 20:37:27.259635', '2018-08-12 23:48:18.588156');
INSERT INTO "public"."tb_imooc_course" VALUES (625, 360, 'Oracle数据库开发必备利器之PL/SQL基础', '初级', 59345, 'Oracle数据库高级开发必备的基础，通过实例带你熟练掌握', 'Oracle', 'https://img1.mukewang.com/5704cd420001f53406000338-240-135.jpg', 'https://www.imooc.com/learn/360', '3小时22分', 9.6, 9.9, 9.5, 9.5, '简介：PL/SQL是Oracle数据库对SQL语句的扩展，是存储过程和自定义函数的高级内容学习的必备基础。本门课程为大家带来PL/SQL的基本语法、光标和例外的概念，并通过案例演示了PL/SQL开发的过程。', '赵强老师', 'https://img2.mukewang.com/545862800001e2d802200220-80-80.jpg', '数据库工程师', '亲，要学习本门课程只需要熟练使用Oracle的SQL语句就可以了，可以参考慕课网的课程《Oracle数据库开发必备利器之SQL基础》呦！', '1、能够熟练掌握PL/SQL的基本语法
2、能够熟练使用光标和例外
3、能够熟练使用PL/SQL进行开发', '2018-09-02 20:37:30.118722', '2018-08-12 23:48:18.506364');
INSERT INTO "public"."tb_imooc_course" VALUES (531, 494, 'Hello，移动WEB', '中级', 100625, '课程介绍移动web的开发基础，排版布局，常见移动web问题', 'WebApp', 'https://img2.mukewang.com/55f93f980001f52125001408-240-135.jpg', 'https://www.imooc.com/learn/494', '2小时 1分', 9.6, 9.8, 9.4, 9.5, '简介：在新的移动互联网的浪潮中，移动web的份额将会逐渐超越PC端。身为Web前端工程师您，更应该站在时代和技术的最前缘，拥抱移动web所带来的变革。课程介绍移动web的开发基础，高效的排版布局，常见的移动web问题，终端触摸交互，各种bug坑如何解决等多方面。', '碧仔', 'https://img1.mukewang.com/55efdf880001ffb307300866-80-80.jpg', 'Web前端工程师', '本课程是前端中级课程，您要具备以下知识：
1、HTML基础知识
2、CSS基础知识
3、JS基础知识', '1、页面在手机渲染的过程分析
2、高效移动web样式布局
3、解决移动web上的疑难杂症', '2018-09-02 20:37:17.623657', '2018-08-12 23:48:09.917221');
INSERT INTO "public"."tb_imooc_course" VALUES (629, 374, '全屏切换效果', '中级', 81385, '如何在PC和移动端实现全屏切换效果，本课程会给你答案', 'jQuery, CSS3', 'https://img.mukewang.com/5704ae32000116d006000338-240-135.jpg', 'https://www.imooc.com/learn/374', '1小时45分', 9.3, 9.5, 9.1, 9.1, '简介：现在很流行全屏切换动画效果，无论是在PC端还是移动端，例如产品展示、专题等场景都非常适用。那么就让我们一起来了解下是如何实现的吧！', '奇舞团', 'https://img.mukewang.com/551b97490001120c02200220-80-80.jpg', 'Web前端工程师', '本课程需要大家对jQuery、事件和CSS3动画有一定的基础。', '1、利用css让div全屏
2、jQuery实现简单的组件开发
3、PC端的重写鼠标滚动事件
4、移动端的重写touch时间
5、切屏动画效果', '2018-09-02 20:37:27.025803', '2018-08-12 23:48:18.621315');
INSERT INTO "public"."tb_imooc_course" VALUES (630, 354, '解密JAVA实现Excel导入导出', '初级', 56597, 'Java web开发过程当中常见场景，轻松实现文件导入导出', 'Java', 'https://img.mukewang.com/5783869600017c5606000338-240-135.jpg', 'https://www.imooc.com/learn/354', '2小时53分', 9.4, 9.5, 9.2, 9.3, '简介：现实Java web开发过程当中经常会遇到文件导入、导出、导入模板下载的场景。如何实现轻松、快捷的定制导入模板、导入导出文件功能呢？本节课程由简入深，逐步分析、实现文件导入导出功能。', 'David', 'https://img.mukewang.com/5445c512000157f702000200-80-80.jpg', 'JAVA开发工程师', '本课程是Java web中级课程，希望各位小伙伴们熟悉jsp、Jquery、Struts2、xml', '1、导入模板定制
2、轻松实现读写excel文件
3、利用上传、下载功能实现文件导入导出
4、前台列表数据客户端和服务器导出', '2018-09-02 20:37:30.395231', '2018-08-12 23:48:18.70302');
INSERT INTO "public"."tb_imooc_course" VALUES (638, 353, '如何使用高德云图在线制作属于你的地图', '高级', 57936, '教你迅速使用云图进行基于LBS的开发，怎样调用云图产品的接口', 'Java, iOS', 'https://img.mukewang.com/5518ecf20001cb4e06000338-240-135.jpg', 'https://www.imooc.com/learn/353', '3小时 8分', 9, 9.2, 9.3, 8.5, '简介：本课程为大家带来如何使用云图进行基于LBS的开发。它是一款为您自有的数据提供免费存储、便捷管理、多种空间检索和绚丽地图展现服务，能帮您快速搭建基于自有数据的网站或APP位置服务，自动为您的应用同步最新存储数据。通过本课程的学习你可以动手实现你的第一个地图应用！', '高德LBS开放...', 'https://img2.mukewang.com/54a209d000013b9c03450360-80-80.jpg', NULL, '1、计算机、软件专业等小白用户或在校生
2、互联网从业人员', '1、高德云图产品是什么
2、用户能用高德云图产品实现什么样的功能
3、怎样调用云图产品的接口', '2018-09-02 20:37:27.485814', '2018-08-12 23:48:19.421071');
INSERT INTO "public"."tb_imooc_course" VALUES (405, 652, 'React实践图片画廊应用（下）', '高级', 25248, '颠覆式前端UI开发框架-React，使用React打造图片画廊应用', 'React.JS', 'https://img3.mukewang.com/5729a4ea00016dda06000338-240-135.jpg', 'https://www.imooc.com/learn/652', '1小时15分', 9.7, 9.9, 9.6, 9.7, '简介：学习React出现的背景，React自身的优势与不足，同jQuery, AngularJS等库和框架相比差异点在哪里，使用React高效打造图片画廊应用。React课程分为：React入门"、"React实践图片画廊应用(上)"、"React实践图片画廊应用(下)"三门课程，该课程是第三门课程。', 'Materliu', 'https://img2.mukewang.com/558f98f00001537842083120-80-80.jpg', 'Web前端工程师', '1.具备一定的JS，CSS前端基础
2.了解前端自动化的相关知识
3.请先学习"React入门"、"React实践图片画廊应用(上)"课程', 'React入门基础知识，2015年最优秀的前端集成解决方案，CSS3动画，变形，字体渲染方式等大前端周边扩展知识，真实的项目开发流程，如何利用好github保存项目，发布web说明站点。', '2018-09-02 20:37:07.295066', '2018-08-12 23:47:58.648524');
INSERT INTO "public"."tb_imooc_course" VALUES (631, 342, 'C++远征之起航篇', '入门', 231698, 'C++亮点尽在其中，本课程是在C语言基础上的一个延伸，得以升华', 'C++', 'https://img4.mukewang.com/5707604300018d0406000338-240-135.jpg', 'https://www.imooc.com/learn/342', '1小时 6分', 9.7, 9.9, 9.6, 9.5, '简介：本教程是C++的初级教程，是在C语言基础上的一个延伸，讲述了包括新增数据类型、命名空间等内容，最后通过一个通俗易懂的例子将所述知识点融会贯通，以达到知识灵活运用，最终得以升华的目的。', 'james_yuan', 'https://img.mukewang.com/550f82810001c44902200220-80-80.jpg', '学生', '本课程是C++初级教程
在学习本课程之前需要熟练掌握C语言的基础语法', '1、C++语言新的数据类型
2、C++语言新的输入输出方式
3、C++语言的命名空间', '2018-09-02 20:37:27.444853', '2018-08-12 23:48:19.036096');
INSERT INTO "public"."tb_imooc_course" VALUES (535, 464, 'Struts2入门', '中级', 88380, '本教程带你踏上Struts2学习之旅，对Struts2进行更深入讲解', 'Java', 'https://img4.mukewang.com/55bb12580001999e06000338-240-135.jpg', 'https://www.imooc.com/learn/464', '1小时58分', 9.4, 9.7, 9.3, 9.2, '简介：Struts2是当前流行的Java Web框架！本门课程首先介绍Strust2的基本概念和发展历史，然后从一个案例入手，带领小伙伴们对Struts2有一个全面的了解。接着有对Struts2进行了更深入的讲解。相信通过本课程的学习，小伙伴们一定能够有所收获。', 'Fcming', 'https://img2.mukewang.com/545087c60001b78902200220-80-80.jpg', '产品经理', '小伙伴们，学习本课程前需要具备Java Web基础，熟悉JSP和Servlet。', '1、能够对Struts2框架有更深入的了解
2、能够独立编写Struts2程序', '2018-09-02 20:37:23.323194', '2018-08-12 23:48:10.852881');
INSERT INTO "public"."tb_imooc_course" VALUES (591, 458, 'django初体验', '初级', 51204, '本教程主要讲解Django基础入门知识，不容错过的Django初体验', 'Python', 'https://img1.mukewang.com/5705d21e0001e4f106000338-240-135.jpg', 'https://www.imooc.com/learn/458', '57分', 9.5, 9.6, 9.4, 9.4, '简介：Django是Python Web网页开发的一个高级的框架，通过Django框架你可以建立一个高性能的web应用而只花费最小的消耗。这种轻盈、强大、灵活的框架让您在设计方案时无需太多考量。本课程主要讲解Django基础内容，让您快速对它有所了解。', '大奶酪', 'https://img2.mukewang.com/55adf6570001f9d302200220-80-80.jpg', NULL, '您要具体以下知识：
1、python基础知识
2、了解数据库以及SQL语言
3、了解HTML基础知识', '1、搭建开发环境
2、工程的创建及应用
3、了解django的URL映射、视图(views)、模型(models)、模板（template）', '2018-09-02 20:37:22.382942', '2018-08-12 23:48:15.42175');
INSERT INTO "public"."tb_imooc_course" VALUES (632, 365, 'Android必学-BaseAdapter的使用与优化', '初级', 41944, '了解数据适配器的使用方法，写出高效、文艺的BaseAdapter', 'Android', 'https://img3.mukewang.com/57075acb0001fc7b06000338-240-135.jpg', 'https://www.imooc.com/learn/365', '45分', 9.7, 9.9, 9.8, 9.3, '简介：本次课程将带领大家了解Android中BaseAdapter的使用，以及我们如何写出高效、文艺的BaseAdapter。', 'eclipse_xu', 'https://img.mukewang.com/54cb9b5f0001827024483264-80-80.jpg', '移动开发工程师', '本课程是Android初-中级课程
1、熟练掌握基本的Android应用程序开发方法
2、熟练掌握Android中常见的适配器的使用
3、熟练掌握BaseAdapter中各方法的意义
', '1、了解ListView的缓存机制
2、 BaseAdapter的逗比式
3、 BaseAdapter的普通式
4、 BaseAdapter的文艺式', '2018-09-02 20:37:30.615439', '2018-08-12 23:48:19.08827');
INSERT INTO "public"."tb_imooc_course" VALUES (633, 355, 'shell编程之运算符', '初级', 27243, '本课程为你介绍shell编程基础中的运算符，了解运算符详细使用', 'Linux', 'https://img2.mukewang.com/5704ce7700019f8706000338-240-135.jpg', 'https://www.imooc.com/learn/355', '45分', 9.7, 9.8, 9.8, 9.6, '简介：本课程是《Tony老师聊shell——变量》课程的延续，主要介绍Linux shell编程基础中的运算符。包括declare命令、数值运算方法和变量测试。首先在declare命令中介绍了数值型和数组类型的声明，然后介绍了运算符的详细使用，最后对不同场景下的变量进行了测试。', 'Tony', 'https://img3.mukewang.com/53f5aae6000129aa01400140-80-80.jpg', 'Linux系统工程师', '小伙伴们，本门课程是《Tony老师聊shell——变量》这门课程的后续课程，请大家学习完变量后再来学习呦！', '通过学习本门课程可以掌握如下知识：
1、能够使用declare命令进行变量声明
2、如何进行数值运算
3、如何进行变量测试', '2018-09-02 20:37:29.598254', '2018-08-12 23:48:19.115616');
INSERT INTO "public"."tb_imooc_course" VALUES (639, 226, '千变万化的ViewPager切换动画', '初级', 44572, 'ViewPager界面切换是可以有动画，课程涉及到属性动画等知识点', 'Android', 'https://img4.mukewang.com/545c862c0001e13e06000338-240-135.jpg', 'https://www.imooc.com/learn/226', '1小时 0分', 9.7, 9.8, 9.8, 9.6, '简介：本课程将带领大家实现个性的ViewPager切换动画，首先介绍通过PageTransformer结合ViewPager.setPageTransformer来实现动画效果，然后教大家如何让其兼容到3.0以后，其中会涉及到属性动画等知识点；最后将介绍通过自定义ViewPager的方式来实现动画切换效果', 'hyman', 'https://img1.mukewang.com/54169c430001face18403264-80-80.jpg', '移动开发工程师', '本课程需要大家对Android的了解要达到小成的境界：
1、熟悉Android常用API
2、了解Android如何自定义控件
3、了解属性动画', '通过本课程，你将学到：
1、PageTransformer的介绍与使用
2、自定义PageTransformer打造个性动画切换效果
3、属性动画的使用
4、自定义ViewPager实现个性的动画切换效果', '2018-09-02 20:37:30.922683', '2018-08-12 23:48:19.647659');
INSERT INTO "public"."tb_imooc_course" VALUES (646, 297, 'MongoDB读写分离的适用性', '初级', 11716, '我们的MongoDB是否需要读写分离，本节课将为你揭秘', 'MongoDB', 'https://img.mukewang.com/5707777b0001bebb06000338-240-135.jpg', 'https://www.imooc.com/learn/297', '20分', 9.6, 9.9, 9.4, 9.6, '简介：是否应该读写分离？什么时候要读写分离？读写分离真的能提高承载能力么？本节课将为你揭秘。', 'MongoDB中文...', 'https://img.mukewang.com/54bf1a320001cc8802200220-80-80.jpg', NULL, '对MongoDB有基本的了解', '1、我们的MongoDB是否需要读写分离
2、读写分离是否真的能提高承载能力
3、什么时候需要进行读写分离', '2018-09-02 20:37:34.774987', '2018-08-12 23:48:20.298682');
INSERT INTO "public"."tb_imooc_course" VALUES (458, 180, 'Java 分页原理与实践（上）', '初级', 59452, '通过总结常见的分页样式，手把手带你实现java常见的分页功能', 'Java', 'https://img3.mukewang.com/5783868000019ebc06000338-240-135.jpg', 'https://www.imooc.com/learn/180', '2小时 9分', 9.6, 9.7, 9.6, 9.4, '简介：    分页功能是系统和应用最基本的组成部分。本课程通过总结常见的分页样式以及分析对比分页原理以及实现方式，通过代码实例，让你轻松学会分页功能的开发。通过学习本课程，你也能轻松的实现facebook，QQ空间，京东商城
等分页的效果。', 'Lenjey Gao', 'https://img.mukewang.com/54110af500018b9601400140-80-80.jpg', NULL, '在学习本课程之前，希望各位小伙伴们先掌握以下相关技能
1、掌握java基本语法
2、具有面向对象的相关知识
3、熟悉servlet，jsp等相关知识
4、熟悉SQL语句，对MySQL数据库有一定的了解
如果是零基础的小伙伴，建议先移步相关课程学习后再回来~~', '1、常见的分页效果有哪些
2、常见的分页效果是如何实现的
3、分页实现方式的比较
4、分页的代码如何实现
5、了解面向对象的思想以及代码复用的思想', '2018-09-02 20:37:11.743248', '2018-08-12 23:48:03.65602');
INSERT INTO "public"."tb_imooc_course" VALUES (640, 331, 'CSS3实现漂亮ToolTips效果', '初级', 39290, 'CSS3 实现鼠标悬停弹出信息提示框，学习达到对CSS3深入了解的目的', 'CSS3', 'https://img2.mukewang.com/5704a852000181cf06000338-240-135.jpg', 'https://www.imooc.com/learn/331', '1小时20分', 9.8, 9.9, 9.7, 9.7, '简介：本课程带领大家通过font Awesome字体库完成图标的定制，使用CSS3新增的transtion、transform属性实现动画效果，以达到对CSS3深入了解的目的。', 'Amy', 'https://img.mukewang.com/536b6357000158be04990749-80-80.jpg', NULL, '本课程适合有HTML及CSS基础的童鞋们。', '1、如何拆解动画交互效果。
2、如何使用:before与:after生成内容。
3、如何使用transition过渡实现动画。', '2018-09-02 20:37:28.291205', '2018-08-12 23:48:19.681432');
INSERT INTO "public"."tb_imooc_course" VALUES (644, 302, 'Android图像处理-打造美图秀秀从它开始', '初级', 26492, '图像色彩的分析与处理，演示市面上常见的图像处理特效的实现方法', 'Android', 'https://img3.mukewang.com/570758b5000181e406000338-240-135.jpg', 'https://www.imooc.com/learn/302', '1小时58分', 9.8, 9.8, 9.8, 9.7, '简介：本次课程将带领大家了解Android中对图像色彩的处理和分析方法，并通过实例向大家演示市面上常见的图像处理特效的实现方法。', 'eclipse_xu', 'https://img4.mukewang.com/54cb9b5f0001827024483264-80-80.jpg', '移动开发工程师', '本课程是Android中级课程
需要熟练掌握基本的Android应用程序开发方法', '1、图像处理的基本知识和概念
2、 Android中对图像的处理方法
3、 实际演示如何对图像进行各种效果的处理', '2018-09-02 20:37:28.7527', '2018-08-12 23:48:20.04309');
INSERT INTO "public"."tb_imooc_course" VALUES (645, 343, 'Android图像处理-变"换"莫测的图像', '初级', 19222, 'Android中图像变形的分析与处理，演示常见的图像处理特效的实现方法', 'Android', 'https://img2.mukewang.com/551a15d80001574406000338-240-135.jpg', 'https://www.imooc.com/learn/343', '2小时 9分', 9.8, 10, 9.8, 9.6, '简介：本次课程将带领大家了解Android中对图像变形特效的处理和分析方法，并通过各种实例向大家演示市面上常见的图像处理特效的实现方法。', 'eclipse_xu', 'https://img2.mukewang.com/54cb9b5f0001827024483264-80-80.jpg', '移动开发工程师', '本课程是Android中级课程
1、熟练掌握基本的Android应用程序开发方法
2、小伙伴们最好先去学习Android图像处理的第一章-打造美图秀秀从它开始，之后再来看升级篇，事半功倍噢！', '1、图像变形处理的基本知识和概念
2、 Android中对图像变形效果的处理方法
3、 实际演示如何对图像进行各种变形效果的处理
4、 图像变换处理总结', '2018-09-02 20:37:28.903277', '2018-08-12 23:48:20.247528');
INSERT INTO "public"."tb_imooc_course" VALUES (641, 339, '如何使用高德Android SDK进行LBS的开发', '中级', 15824, '教你使用Android SDK进行LBS开发，实现你的第一个地图应用', 'Android', 'https://img.mukewang.com/550a78720001f37a06000338-240-135.jpg', 'https://www.imooc.com/learn/339', '34分', 9, 9.2, 8.9, 8.8, '简介：本课程为大家带来如何使用Android SDK进行基于LBS的开发。高德地图Android SDK版是一套地图开发调用接口，供开发者在自己的应用中加入地图相关的功能。你可以轻松地开发出地图显示与操作、兴趣点搜索、地理编码等功能。通过本课程的学习你可以动手实现你的第一个地图应用！', '高德LBS开放...', 'https://img3.mukewang.com/54a209d000013b9c03450360-80-80.jpg', NULL, '1、Android开发者
2、互联网从业人员
3、计算机、软件专业等小白用户或在校生', '1、Android开发环境的搭建
2、Android版地图SDK的功能以及使用场景
3、具体实践案例：常用接口的使用方法', '2018-09-02 20:37:29.743103', '2018-08-12 23:48:19.710077');
INSERT INTO "public"."tb_imooc_course" VALUES (654, 312, '细说多线程之Thread VS Runnable', '初级', 48982, '认识Thread和Runnable的区别，以及使用jstack生成线程快照', 'Java', 'https://img.mukewang.com/54c5e5c20001ace006000338-240-135.jpg', 'https://www.imooc.com/learn/312', '1小时 0分', 9.7, 9.8, 9.7, 9.5, '简介：本课程将带领大家更加深入地学习Java多线程的机制，深入理解创建线程的两种方式Thread和Runnable之间的差异，掌握线程的生命周期和守护线程的概念，以及如何使用jstack生成线程快照。', 'MartonZhang', 'https://img3.mukewang.com/54f163420001c4dd02200220-80-80.jpg', NULL, '学习本课程前，你需要熟练掌握Java的基础语法，熟悉Java中创建线程的两种方式，熟悉Java多线程中常用的一些方法。', '1、多线程创建方式的比较和选择
2、线程的生命周期、守护线程', '2018-09-02 20:37:30.67956', '2018-08-12 23:48:21.145161');
INSERT INTO "public"."tb_imooc_course" VALUES (504, 555, 'Unity3D-菜鸟先飞之NGUI基础', '初级', 22662, '本次课程主要介绍NGUI的基础控件以及相应控件所应用的场景', 'Unity 3D', 'https://img.mukewang.com/566533450001fd6c06000338-240-135.jpg', 'https://www.imooc.com/learn/555', '51分', 9.5, 9.8, 9.7, 9, '简介：本次课程将带领着大家学习NGUI的基础控件以及相应控件所应用的场景。', 'Smart_Coder', 'https://img.mukewang.com/56651a670001be9a06400640-80-80.jpg', '移动开发工程师', '1、游戏UI是什么、哪些属于游戏UI
2、 游戏UI的分类
3、 自己也能做漂亮的UI
4、 UI终极实战', '本课程是Unity-NGUI基础课程
1、掌握基本的C#语言
', '2018-09-02 20:37:11.986813', '2018-08-12 23:48:07.63625');
INSERT INTO "public"."tb_imooc_course" VALUES (652, 248, 'Linux C语言编程基本原理与实践', '初级', 159774, '本视频教程介绍C语言基本工作原理以及适用与C的实际开发方式', 'C', 'https://img3.mukewang.com/570762760001a1db06000338-240-135.jpg', 'https://www.imooc.com/learn/248', '2小时 0分', 9.6, 9.8, 9.6, 9.3, '简介：介绍C语言基本工作原理以及适用与C的实际开发方式，并指导童鞋们能在Linux环境下编写并运行符合实际商业开发环境下的C语言程序。', 'DavidChin', 'https://img1.mukewang.com/5451aa250001e38236482736-80-80.jpg', NULL, '本课程为C语言中级课程
学习本课程需要了解C语言以下基本语法：变量、常量、顺序、循环、分支、函数等。', '如何在真正的商业环境（Linux）下编写C语言程序
如何编译一个项目以及makefile如何编写
C语言真正的本领（制作小工具）
多个c语言小工具如何构成强大的软件系统', '2018-09-02 20:37:27.900219', '2018-08-12 23:48:21.079759');
INSERT INTO "public"."tb_imooc_course" VALUES (650, 191, '玩转KISSY框架', '中级', 27082, '全网唯一KISSY框架从入门到精通教程，还不赶紧学起来', 'JavaScript', 'https://img2.mukewang.com/570b07dd0001dcb406000338-240-135.jpg', 'https://www.imooc.com/learn/191', '5小时30分', 9.2, 9.2, 9, 9.5, '简介：KISSY框架是目前硕果仅存的几个国产js框架之一，在阿里的网站比如淘宝网、天猫等大量使用。', '明河', 'https://img3.mukewang.com/53f55a840001f35504780522-80-80.jpg', 'Web前端工程师', '基本的html知识以及基础的js技能。', '通过本系列教程的学习，掌握如何在前端项目中使用KISSY。', '2018-09-02 20:37:34.970119', '2018-08-12 23:48:20.478855');
INSERT INTO "public"."tb_imooc_course" VALUES (653, 250, 'Ajax全接触', '中级', 204057, '本课程通过一个案例，讲解Ajax的相关概念原理实现方式和应用', 'JavaScript', 'https://img3.mukewang.com/549bda090001c53e06000338-240-135.jpg', 'https://www.imooc.com/learn/250', '2小时10分', 9.6, 9.7, 9.6, 9.5, '简介：本课程通过一个简单的例子，由浅入深，循序渐进的介绍了Ajax的相关概念、原理、实现方式和应用方法，包含HTTP请求的概念、PHP的简单语法、JSON数据格式、Ajax的原生和jQuery实现、跨域等知识点。', '姜维_Wayne', 'https://img.mukewang.com/599ea79c0001a1bc05000500-80-80.jpg', 'Web前端工程师', '只需要有基础的javascript语法知识，就可以很容易理解本课程哦', '通过本课程的学习，您可以了解到Ajax概念、HTTP请求概念、PHP简单语法、JSON数据格式、Ajax的原生和jQuery实现、跨域等知识，只需要一些时间，看似复杂的知识点，其实都是纸老虎，会被你一捅就破。您不但会了解Ajax的使用，而且会清楚Ajax的原理，并举一反三。', '2018-09-02 20:37:27.929409', '2018-08-12 23:48:21.136566');
INSERT INTO "public"."tb_imooc_course" VALUES (647, 286, 'Java实现消息摘要算法加密', '中级', 22559, 'Java中应用消息摘要算法进行加解密，以及他们的应用场景', 'Java', 'https://img2.mukewang.com/54c89f07000100e106000338-240-135.jpg', 'https://www.imooc.com/learn/286', '1小时 0分', 9.5, 9.7, 9.5, 9.4, '简介：本课程是《Java实现Base64加密》课程的延续，是Java加解密系列课程的第二门课。本课程主要介绍如何在Java中使用MD、SHA、MAC三种消息摘要算法实现加解密，以及他们的应用场景。', 'moocer', 'https://img2.mukewang.com/58db190e0001643d02000200-80-80.jpg', 'JAVA开发工程师', '1、需具备Java面向对象的基础知识
2、需要学习加解密的基础，具体内容请见《Java实现Base64加密》课程的第一章', '1、能够使用Java实现MD、SHA和MAC三种消息摘要算法进行加密
2、能够了解消息摘要算法的应用场景
', '2018-09-02 20:37:35.339195', '2018-08-12 23:48:20.398929');
INSERT INTO "public"."tb_imooc_course" VALUES (472, 520, '与《Yii框架》不得不说的故事—工具篇', '中级', 20864, '本教程主要学习Composer、Debug和GII等工具，提高开发效率', 'PHP', 'https://img.mukewang.com/561b652d000174a306000338-240-135.jpg', 'https://www.imooc.com/learn/520', '1小时19分', 9.7, 10, 9.6, 9.3, '简介：YII是目前比较火的框架，框架里面使用了最新的技术和设计，可以说学习了YII就学习了最新的php技术，本课程主要学习在开发项目中常用的一些工具，主要包括Composer、Debug和GII等，使用这些工具可以大大提高了我们的开发效率。', 'withy', 'https://img.mukewang.com/5564088300017b7510240719-80-80.jpg', 'PHP开发工程师', '学习本门课程之前，建议先了解以下知识，会更有助于理解和掌握本门课程
1、github的使用
2、软件包的依赖问题
3、程序调试的概念
', '1、Composer工具是什么以及如何使用
2、如何使用Debug工具去调试错误和监控程序运行效率
3、如何使用GII工具生成CURD代码和表单代码', '2018-09-02 20:37:13.051278', '2018-08-12 23:48:04.778367');
INSERT INTO "public"."tb_imooc_course" VALUES (557, 425, '侧栏工具条开发', '高级', 63629, '带动画效果的工具条，掌握如何用CSS3完成简单的动画效果', 'JavaScript, CSS3', 'https://img.mukewang.com/5705b7eb00018a4f06000338-240-135.jpg', 'https://www.imooc.com/learn/425', '2小时26分', 9.7, 10, 9.6, 9.7, '简介：本课程将使用sass和requirejs来开发一个侧栏工具条。思考工具条的原理，并用三种方式实现。在开发的过程中，您将学会sass的使用方法，用它更好的书写css；了解requirejs的基本知识，写出模块化的代码，方便以后的复用；掌握如何用CSS3完成简单的动画效果，让网页不再单调。', 'Alex Wang', 'https://img.mukewang.com/558b7aae0001d29105680568-80-80.jpg', NULL, '本课程是前端中级课程
1、HTML和CSS基础知识
2、JS面向对象的基础知识', '1、使用sass更好的书写css
2、使用requirejs防止项目开发中的命名冲突、文件加载依赖，编写出方便复用的模块化代码
3、CSS3实现简单的动画效果', '2018-09-02 20:37:21.507726', '2018-08-12 23:48:12.782723');
INSERT INTO "public"."tb_imooc_course" VALUES (887, 434, '去哪儿前端沙龙分享第二期', '中级', 22246, '去哪儿网前端交互沙龙第二期，去哪儿网工程师开发经验分享', 'Node.js, WebApp', 'https://img1.mukewang.com/5594a3540001236306000338-240-135.jpg', 'https://www.imooc.com/learn/434', '2小时56分', 9.8, 10, 9.5, 10, '简介：本课程来自去哪儿网前端交互沙龙第二期现场分享。由去哪儿网的资深工程师给大家分享前端开发实践经验。精彩分享不容错过噢！', 'Qnext', 'https://img.mukewang.com/552c8cb50001c3bf16150398-80-80.jpg', NULL, '本课程适合有一定前端工作经验的工程师。', NULL, '2018-09-02 20:37:21.535623', '2018-08-13 09:53:36.543931');
INSERT INTO "public"."tb_imooc_course" VALUES (660, 317, 'python进阶', '中级', 197296, '学习函数式、模块和面向对象编程，掌握Python高级程序设计', 'Python', 'https://img.mukewang.com/5705b7350001d59b06000338-240-135.jpg', 'https://www.imooc.com/learn/317', '3小时33分', 9.2, 9.6, 9, 8.9, '简介：Python基础分《Python入门》和《Python进阶》两门课程，《Python进阶》是第二门课程，学习该课程前，请先学习《Python入门》,效果会更好。《Python进阶》课程详细介绍Python强大的函数式编程和面向对象编程，掌握Python高级程序设计的方法。', '廖雪峰', 'https://img2.mukewang.com/54091d5500013cf202000200-80-80.jpg', '移动开发工程师', '本课程是Python入门的后续课程
1、掌握Python编程的基础知识
2、掌握Python函数的编写
3、对面向对象编程有所了解更佳', '1、什么是函数式编程
2、Python的函数式编程特点
3、Python的模块
4、Python面向对象编程
5、Python强大的定制类', '2018-09-02 20:37:28.361624', '2018-08-12 23:48:21.721886');
INSERT INTO "public"."tb_imooc_course" VALUES (565, 407, 'Gopher China 2015 上海大会', '中级', 18110, 'go干货尽在GopherChina2015上海大会，干货太多，准备好纸巾', 'Go', 'https://img4.mukewang.com/570778af0001d93706000338-240-135.jpg', 'https://www.imooc.com/learn/407', '10小时59分', 9.5, 9.8, 8.9, 9.8, '简介：go在游戏项目，分布式系统开发，持续交付等方面的应用和分享', 'GopherChina', 'https://img.mukewang.com/5566b83e0001eecf02200220-80-80.jpg', NULL, '干货太多，准备好纸巾，避免流太多鼻血', '各种环境下的Go语言应用', '2018-09-02 20:37:23.505643', '2018-08-12 23:48:13.336159');
INSERT INTO "public"."tb_imooc_course" VALUES (665, 337, 'Oracle数据库开发必备利器之SQL基础', '入门', 129174, '为你带来Oracle开发必备的sql基础，为后续课程学习打下好的基础', 'Oracle', 'https://img2.mukewang.com/57035fa10001543406000338-240-135.jpg', 'https://www.imooc.com/learn/337', '4小时14分', 9.7, 9.8, 9.7, 9.5, '简介：Oracle Database，又名Oracle RDBMS，或简称Oracle，是甲骨文公司的一款关系数据库管理系统。本课程主要介绍Oracle的SQL基础，包括表空间的概念，如何登录Oracle数据库，如何管理表及表中的数据，以及约束的应用。为后续课程的学习打下一个良好的基础。', 'AnnyQin', 'https://img1.mukewang.com/550b80b800011ef002200220-80-80.jpg', NULL, '只要知道数据库是什么就可以来学习本课程呦！', '掌握Oracle的SQL语句基础，为后续的课程学习打好基础。', '2018-09-02 20:37:28.801331', '2018-08-12 23:48:21.991541');
INSERT INTO "public"."tb_imooc_course" VALUES (670, 61, '用less写个新浪微博', '中级', 39348, '用less构建新浪微博的个人主页，帮助大家更好的理解less的脉络', 'Sass/Less', 'https://img2.mukewang.com/57077a480001e7c206000338-240-135.jpg', 'https://www.imooc.com/learn/61', '1小时34分', 9.4, 9.6, 9.5, 9.2, '简介：综合之前的less基础课程，将细化的知识点逐个在项目里进行实践，能够帮助大家更好的理解less的脉络。', 'Busy', 'https://img3.mukewang.com/53796b7f0001d38801200120-80-80.jpg', 'Web前端工程师', '了解基本的html、css使用，请学习本课程之前以《less即学即用》这门课程作为基础先学习一下。', '学完本课程，能够对less有跟深入的理解，熟练掌握less的各种用法。', '2018-09-02 20:37:29.22284', '2018-08-12 23:48:22.393451');
INSERT INTO "public"."tb_imooc_course" VALUES (554, 424, '明日之星-RecyclerView', '中级', 39279, '带领大家学习百变RecyclerView，绝对干货，告别加班不是梦', 'Android', 'https://img4.mukewang.com/570759c6000181f006000338-240-135.jpg', 'https://www.imooc.com/learn/424', '1小时19分', 9.6, 9.9, 9.6, 9.3, '简介：本课程将为大家带来Android5.0新控件RecyclerView详解，结合案例实现ListView/GirdView/瀑布流 ，三种形式的转换。绝对干货！告别加班不是梦！', 'hyman', 'https://img2.mukewang.com/54169c430001face18403264-80-80.jpg', '移动开发工程师', '大家好，本门课程为中级案例课程。
在学习本门课程之前，小伙伴们需要掌握Android的基础知识。', '1.RecyclerView的基本知识
2.使用RecyclerView实现列表及瀑布流
3.为RecyclerView添加分割线及监听回调', '2018-09-02 20:37:20.867031', '2018-08-12 23:48:12.702819');
INSERT INTO "public"."tb_imooc_course" VALUES (587, 444, 'Android实现抽奖转盘', '初级', 26327, '使用SurfaceView来实现抽奖转盘，剖析抽奖转盘背后的概率机制', 'Android', 'https://img4.mukewang.com/55b72ae0000184d706000338-240-135.jpg', 'https://www.imooc.com/learn/444', '1小时31分', 9.6, 10, 9.6, 9.4, '简介：本课程将教大家通过SurfaceView实现一个Android抽奖转盘，剖析抽奖转盘背后的概率机制。课程涵盖了SurfaceView使用的场景和注意事项以及与View的区别等知识。实现过程中也使用了大量的Canvas绘制相关API，可以帮助大家深入了解和学会使用这些API。', 'hyman', 'https://img2.mukewang.com/54169c430001face18403264-80-80.jpg', '移动开发工程师', '本课程是基于Android开发的案例，需要大家对Android的了解要达到小成的境界：
掌握自定义控件的流程
熟悉常用的控件以及API
对Canvas绘图有一定的了解。

', 'SurfaceView使用的场景和方法。
SurfaceView与View的区别。
程序实现抽奖转盘的概率设定。
Canvas绘制API的深入。
', '2018-09-02 20:37:21.863999', '2018-08-12 23:48:15.113666');
INSERT INTO "public"."tb_imooc_course" VALUES (617, 386, 'JS实现“旋转木马”幻灯片效果', '中级', 61782, 'JS组件封装，制作一个图片幻灯片切换效果，一起学习吧', 'JavaScript', 'https://img2.mukewang.com/5704aaa100019cdc06000338-240-135.jpg', 'https://www.imooc.com/learn/386', '2小时50分', 9.6, 9.9, 9.3, 9.6, '简介：你还在网上下载各种插件吗？作为前端工程师，你是否还不了解插件怎么封装呢，快来加入我们的课程吧，让我们一起来学习 JS 组件的封装。本课程通过制作一个图片幻灯片切换效果，从而引入怎么样一步一步把代码封装成组件的方法。', '一只帅蚂蚁...', 'https://img2.mukewang.com/59c87e68000132c509420960-80-80.jpg', 'Web前端工程师', '1、HTML 和 CSS 基础知识
2、JS 实现类、对象的方法 

 
', '1、CSS的定位，DOM结构，层级关系的应用 
2、基本的类的封装过程 
3、如何配置合理的参数控制  
4、JQ的对象获取，操作，事件绑定 
5、数组的分解 
6、位置关系设置，旋转机制 
', '2018-09-02 20:37:24.250688', '2018-08-12 23:48:17.451727');
INSERT INTO "public"."tb_imooc_course" VALUES (474, 457, 'Python错误和异常', '中级', 30822, '让我们一起来学习Python对于错误和异常的处理方式', 'Python', 'https://img3.mukewang.com/5705b70600010f6a06000338-240-135.jpg', 'https://www.imooc.com/learn/457', '1小时18分', 9.4, 9.6, 9.1, 9.4, '简介：在我们代码编译和执行过程中，总会遇到语法、逻辑和算法错误，导致程序无法继续编译和执行；尤其在程序执行过程中某些错误并不是致命的，我们可以使用某种方式来处理这种错误，使我们代码更加健壮；让我们一起来学习Python对于错误和异常的处理方式。', 'Meshare_huan...', 'https://img.mukewang.com/55598e050001d00505680568-80-80.jpg', 'Linux系统工程师', '本课程是Python中级课程
1、本课程在linux讲解，最好有linux开发环境
2、熟练掌握Python开发语言基础语法', '您将学习到以下内容：
1、错误和异常的概念
2、错误和异常处理方式
3、with..as语句与上下文管理
4、Python标准异常和自定义异常及assert和raise语句', '2018-09-02 20:37:13.139727', '2018-08-12 23:48:05.216696');
INSERT INTO "public"."tb_imooc_course" VALUES (674, 350, '鬼斧神工之正则表达式', '初级', 43807, '以PHP语言为蓝本，介绍正则表达式的基本语法以及他的强大用处', 'PHP', 'https://img1.mukewang.com/570762f20001836c06000338-240-135.jpg', 'https://www.imooc.com/learn/350', '3小时12分', 9.7, 10, 9.6, 9.6, '简介：本课程通过实际的同步命令演示和形象的概念介绍并以PHP语言为蓝本，让小伙伴们了解正则表达式的基本语法以及理解正则表达式在实际开发中的强大用处。', '壞大叔badUnc...', 'https://img3.mukewang.com/59311bea0001e93207410741-80-80.jpg', 'PHP开发工程师', '学习本课程之前需要掌握基本的PHP语法，基本的OOP思想，基本的MVC模式知识。', '在本课程中可以充分理解正则表达式的定义并掌握如何在实际开发中应用正则表达式。其中包含表单验证实际应用以及简易版模板引擎的实现。', '2018-09-02 20:37:29.58431', '2018-08-12 23:48:22.687489');
INSERT INTO "public"."tb_imooc_course" VALUES (675, 338, 'canvas实现星星闪烁特效', '中级', 48965, '使用HTML5实现轮播图片上的序列帧，进行拆分讲解，逐步实现目标', 'HTML/CSS', 'https://img2.mukewang.com/5704add60001e5f406000338-240-135.jpg', 'https://www.imooc.com/learn/338', '1小时15分', 9.5, 9.7, 9.5, 9.4, '简介：通过制作一个用鼠标事件控制的小案例，学会使用基于canvas画布的各种绘图方法，通过灵活使用一些绘图方法的各项参数达到一些特殊效果。在课程中还将讲述如何将一个复杂的问题进行拆解，逐步实现目标的方法。', 'Daisy', 'https://img1.mukewang.com/551282770001970609000900-80-80.jpg', NULL, '1、具有HTML、CSS基础知识
2、具有JavaScript基础知识（函数、类、对象）
3、具有一些Canvas基础（画线、弧线、圆）
', '1、如何轮播一张图片上的序列帧
2、canvas的几个主要绘图API：drawImage()、save()、restore()。
3、如何处理鼠标事件
4、如何化繁为简的做项目
', '2018-09-02 20:37:29.356486', '2018-08-12 23:48:22.701092');
INSERT INTO "public"."tb_imooc_course" VALUES (672, 340, '高德地图组件快速入门', '中级', 60877, '本视频教程为大家带来如何使用地图组件进行基于LBS的开发', 'Android, iOS', 'https://img3.mukewang.com/550a836c0001236606000338-240-135.jpg', 'https://www.imooc.com/learn/340', '17分', 9.6, 9.7, 9.6, 9.4, '简介：本课程为大家带来如何使用地图组件进行基于LBS的开发。地图组件是基于HTML5实现的轻应用产品，可以实现多个场景下利用高德地图进行位置标注、路线规划等功能调用，完美适配iOS和Android系统。通过本课程的学习你可以动手实现你的第一个地图应用！', '高德LBS开放...', 'https://img2.mukewang.com/54a209d000013b9c03450360-80-80.jpg', NULL, '1、计算机、软件专业等小白用户或在校生
2、互联网从业人员', '1、零开发实现位置标注和路线规划功能
2、零开发实现附近POI点查询', '2018-09-02 20:37:28.96705', '2018-08-12 23:48:22.603937');
INSERT INTO "public"."tb_imooc_course" VALUES (693, 262, '玩转Bootstrap（JS插件篇）', '中级', 115206, '带领大家学习怎么使用JS自由控制Bootstrap中提供的组件', 'Bootstrap', 'https://img1.mukewang.com/5704ae5d00013c9a06000338-240-135.jpg', 'https://www.imooc.com/learn/262', '6小时25分', 9.2, 9.5, 9.1, 9.1, '简介：你可以把这门课程看成是《玩转Bootstrap》的补充篇，带领大家学习怎么使用JS自由控制Bootstrap中提供的组件（插件）。', '大漠', 'https://img2.mukewang.com/53216e780001060f01600160-80-80.jpg', 'Web前端工程师', '本课程适合具有一定前端基础的人员，对HTML和CSS有一定的了解，对于定制Bootstrap的同学需要具备LESS和Sass基础知识。', '1、使用JS自由控制Bootstrap中提供的组件。

', '2018-09-02 20:37:31.308584', '2018-08-12 23:48:24.311197');
INSERT INTO "public"."tb_imooc_course" VALUES (567, 403, 'CSS深入理解之line-height', '中级', 39615, '带领大家深入理解line-height的定义，还有实际应用经验分享', 'HTML/CSS', 'https://img2.mukewang.com/57076b110001832406000338-240-135.jpg', 'https://www.imooc.com/learn/403', '1小时 0分', 9.6, 9.7, 9.6, 9.3, '简介：本课程将带领大家深入理解line-height的定义、line-height与恒内框盒子模型的关系、高度机理、各类属性值、图片的表现等内容，同时张鑫旭老师将倾情分享一些实际开发中应用的经验！', '张鑫旭', 'https://img2.mukewang.com/549beab90001be9037445616-80-80.jpg', '页面重构设计', '学习本课程的同学一定要熟悉html代码，了解css属性。对CSS特性没有任何了解的同学需要先认真学习完CSS基础课之后再尝试学习本课程。', 'line-height的定义、line-height与行内框盒子模型、line-height的高度机理、line-height的各类属性值、line-height与图片的表现，以及实际应用经验分享。', '2018-09-02 20:37:20.442715', '2018-08-12 23:48:13.511445');
INSERT INTO "public"."tb_imooc_course" VALUES (677, 349, 'Duang~MySQLi扩展库来袭', '初级', 26968, '本教程从面向对象和面向过程两个方面为你开启MySQLi学习之旅', 'PHP, MySQL', 'https://img2.mukewang.com/570759d900014b7d06000338-240-135.jpg', 'https://www.imooc.com/learn/349', '2小时56分', 9.8, 9.9, 9.8, 9.6, '简介：本课程从面向对象和面向过程两个方面，讲解了MySQLi的具体使用和注意事项，最后通过无刷新评论系统的实战演练，详细剖析实际开发中如何使用MySQLi完成对数据库的操作。', 'King', 'https://img1.mukewang.com/567ca60000011fae26501720-80-80.jpg', 'PHP开发工程师', '学习本门课程之前，建议先了解一下知识，会更有助于理解和掌握本门课程
1、掌握PHP基本的语言语法，掌握面向对象知识。
2、了解数据库相同的基础知识，能对数据进行简单的增删改查。', '1、MySQLi基于面向对象中常用的内容剖析。
2、MySQLi基于面向过程中常用的内容剖析。
3、通过MySQLi实现无刷新评论系统。', '2018-09-02 20:37:29.498908', '2018-08-12 23:48:22.857508');
INSERT INTO "public"."tb_imooc_course" VALUES (683, 285, 'Java实现Base64加密', '中级', 35979, 'Java实现Base64加密，本课程是Java加解密必备的入门基础', 'Java', 'https://img1.mukewang.com/54c897470001051d06000338-240-135.jpg', 'https://www.imooc.com/learn/285', '1小时 0分', 9.6, 9.6, 9.6, 9.6, '简介：本门课程是Java加解密系列的第一门课，旨在为大家介绍Java加密解密的基础知识，并使用Base64算法实现加解密。本门课程在整个加解密系列中十分重要，是Java加解密必备的入门基础。', 'moocer', 'https://img4.mukewang.com/58db190e0001643d02000200-80-80.jpg', 'JAVA开发工程师', '只需要具备Java面向对象基础就可以啦！', '1、学习加密解密的基础知识
2、能够使用Base64算法实现加解密', '2018-09-02 20:37:35.153253', '2018-08-12 23:48:23.50143');
INSERT INTO "public"."tb_imooc_course" VALUES (685, 273, '微信6.0主界面', '中级', 58926, '本课程将讲解微信6.0主界面的实现方法，微信5.2.1后续课程', 'Android', 'https://img.mukewang.com/574667c80001596e06000338-240-135.jpg', 'https://www.imooc.com/learn/273', '2小时 0分', 9.7, 9.9, 9.7, 9.6, '简介：本课程将讲解微信6.0主界面的实现方法，包括主界面的上中下三部分，主要难点在于Title的实现和底部Tab的实现两部分，并且此次将根据童鞋们的反馈和建议来实现部分的功能，其中包括使用ActionBar制作Title以及监听ViewPager界面切换的处理', 'hyman', 'https://img.mukewang.com/54169c430001face18403264-80-80.jpg', '移动开发工程师', '本课程需要大家掌握基本的Android和Java基础知识：
1、熟练使用Java语言
2、熟悉Android常用API，熟练使用Eclipse IDE
', '通过本课程，你将学到：
1、ViewPager+Fragment的结合使用
2、玩转ActionBar
3、自定义View
4、揭开颜色渐变秘密
5、防止Activity被回收的解决办法', '2018-09-02 20:37:31.574457', '2018-08-12 23:48:23.539045');
INSERT INTO "public"."tb_imooc_course" VALUES (681, 264, '多种多样的App主界面Tab实现方法', '初级', 48691, '本课程就将讲解迄今为止最流行的4种实现Tab的方法', 'Android', 'https://img4.mukewang.com/5707598e0001ec7c06000338-240-135.jpg', 'https://www.imooc.com/learn/264', '1小时30分', 9.9, 10, 9.8, 9.8, '简介：Tab选项卡几乎成为了App必备的一个功能，它的实现方法也是多种多样，本课程就将讲解迄今为止最主流的4种实现Tab的方法，包括ViewPager、Fragment、FragmentPagerAdapter和ViewPagerIndicator', 'hyman', 'https://img2.mukewang.com/54169c430001face18403264-80-80.jpg', '移动开发工程师', '本课程需要大家掌握基本的Android和Java基础知识：
1、熟练使用Java语言
2、熟悉Android常用API，熟练使用Eclipse IDE', '通过本课程，你将学到：
1、ViewPager实现Tab
2、Fragment实现Tab
3、ViewPager+FragmentPagerAdapter实现Tab
4、ViewPagerIndicator+ViewPager实现Tab', '2018-09-02 20:37:34.737644', '2018-08-12 23:48:23.351762');
INSERT INTO "public"."tb_imooc_course" VALUES (684, 157, 'JDBC之 “ 对岸的女孩看过来”', '初级', 88799, '一起领略JDBC的奥秘，为进一步学习集成框架打下良好的基础', 'Java', 'https://img3.mukewang.com/570365980001b7b306000338-240-135.jpg', 'https://www.imooc.com/learn/157', '2小时 2分', 9.4, 9.6, 9.3, 9.2, '简介：JDBC 技术是Java开发必备的知识，并且是学习 Hibernate 和 Mybatis 的基础，本视频通过实例贯穿的方式，给大家一点一点的剖析 JDBC 技术，使大家由浅入深的了解 JDBC 技术的全貌，什么是 JDBC ，怎么使用 JDBC ，为进一步学习集成框架打下良好的基础。', 'Preacher', 'https://img3.mukewang.com/53c374e800013f4601400140-80-80.jpg', 'JAVA开发工程师', '本课程是 Java 中级课程，各位小伙伴们需要对 JAVA 基础，MySql 的应用 以及 SQL 语句的编写有基本了解。', '1、JDBC 的基本概念
2、JDBC 常用接口及使用', '2018-09-02 20:37:33.683376', '2018-08-12 23:48:23.522768');
INSERT INTO "public"."tb_imooc_course" VALUES (482, 536, 'Android-Widget桌面小组件', '入门', 27524, 'Android-Widget桌面小组件的使用，带你实现多个小组件功能', 'Android', 'https://img.mukewang.com/5774da890001d25406000338-240-135.jpg', 'https://www.imooc.com/learn/536', '43分', 9.2, 9.8, 9, 8.8, '简介：AndroidAPP中，常有类似于天气预报、时钟、电量、流量检测等桌面小组件等看着高大上的功能。如何实现的呢？本节课由老师带领大家先引导再基础认知最后综合应用，一步步实现天气预报小例子。', 'JVR', 'https://img2.mukewang.com/55c1cd3d0001dabb05900590-80-80.jpg', '移动开发工程师', '本节课为初级课程，需要同学们掌握有一定的JAVA基础，以及Android的基本入门知识。如在综合应用章节中遇到不太熟悉的知识点，可以去Android学习路径中补习噢！加油吧！', '1.Android Widget特点及简单介绍
2.Android Widget基础用法及步骤
3.实现一个基础时钟功能
4.实现一个天气预报功能', '2018-09-02 20:37:13.812177', '2018-08-12 23:48:05.714773');
INSERT INTO "public"."tb_imooc_course" VALUES (468, 460, '电商大数据应用之用户画像', '初级', 37801, '真正接触大数据，接触用户画像，掌握构建用户画像的方法', '大数据', 'https://img2.mukewang.com/5704a9030001e26906000338-240-135.jpg', 'https://www.imooc.com/learn/460', '2小时49分', 9.2, 9.4, 9.6, 8.8, '简介：大数据时代已经到来，企业迫切希望从已经积累的数据中分析出有价值的东西，而用户行为的分析尤为重要。本课分享从大型电商公司的真实用户画像中提练出的精华内容，旨在培养学员了解用户画像的内容，掌握构建用户画像的方法。', '邱盛昌', 'https://img4.mukewang.com/560b6a11000187c402200220-80-80.jpg', '其它', '本课程需要学员提前掌握
1、 简单Linux的操作
2、SQL基础知识
3、一定的大数据技能', '1、电商用户画像是什么样子的，有什么作用
2、电商用户画像如何建模
3、如何使用Hive进行数据开发
4、实现电商用户画像的数据开发', '2018-09-02 20:37:18.433903', '2018-08-12 23:48:04.611624');
INSERT INTO "public"."tb_imooc_course" VALUES (679, 356, 'JUnit—Java单元测试必备工具', '初级', 65380, 'Java单元测试利器，提升Java代码质量，工作效率不用愁', 'Java', 'https://img1.mukewang.com/551b92340001c9f206000338-240-135.jpg', 'https://www.imooc.com/learn/356', '1小时 7分', 9.8, 9.8, 9.8, 9.7, '简介：如何加快项目进度，提升Java代码质量？如何未雨绸缪，从此维护代码不再苦逼？学会使用junit对代码进行单元测试，从此腰不酸了腿不疼了陪女朋友逛街也更有劲了。这么好的东东，赶快来看看吧。', 'Eleven_Lee', 'https://img.mukewang.com/551ca92800014b1802200220-80-80.jpg', 'JAVA开发工程师', '亲，学习本课程前需要熟练掌握Java基础语法和面向对象的知识呦！', '1、JUnit的基本概念			
2、快速使用JUnit4对代码进行测试			
3、JUnit4使用详解			
4、使用JUnit4来帮助我们整合spring和hibernate			
', '2018-09-02 20:37:29.905783', '2018-08-12 23:48:23.027931');
INSERT INTO "public"."tb_imooc_course" VALUES (657, 332, '肾六的分分合合', '初级', 22559, '轻松掌握iphon6的拆机和装机技巧，让你从里到外的被它所折服', 'iOS', 'https://img.mukewang.com/5707639d00010b8306000338-240-135.jpg', 'https://www.imooc.com/learn/332', '23分', 9.6, 9.7, 9.4, 9.6, '简介：所有男人都想拥有一个“强壮”的“肾6”；但是，你们只知道“肾6”比肾贵，不过你们真的了解“肾6”吗？你们只是被它时尚的外观所吸引，你们根本不了解它的内在美；可但是，木有关系，今天本课程就将教你“肾6”的“摘除”与“缝合”，让你从里到外的被它所折服。', 'Ariel_li', 'https://img.mukewang.com/54dd8408000149c201000100-80-80.jpg', NULL, '果粉快入!', '轻轻松松掌握肾六的拆机和装机技巧！', '2018-09-02 20:37:28.064956', '2018-08-12 23:48:21.539302');
INSERT INTO "public"."tb_imooc_course" VALUES (520, 417, '神奇的JpGraph类库', '中级', 14496, 'JpGraph类库可以画出炫彩的统计图，掌握JpGraph类库的使用', 'PHP', 'https://img3.mukewang.com/5707636b0001694206000338-240-135.jpg', 'https://www.imooc.com/learn/417', '44分', 9.8, 9.8, 9.7, 9.9, '简介：本课程介绍了JpGraph类库及其相关工作原理，并通过XY折线图的案例详细解析了使用JpGraph类库绘图的步骤，在绘制过程中带领大家解决了生产中经常会遇到的中文显示错误问题，帮助大家熟练的掌握JpGraph类库的使用。', 'King', 'https://img.mukewang.com/567ca60000011fae26501720-80-80.jpg', 'PHP开发工程师', '学习本门课程之前，建议先了解一下知识，会更有助于理解和掌握本门课程
1、PHP基础语法
2、掌握面向对象编程', '1、JpGraph类库如何下载安装使用
2、如何通过JpGraph类库画出XY图
3、如何解决中文标题和图例乱码
4、如何使用JpGraph类库自带案例画出不同的统计图', '2018-09-02 20:37:17.118608', '2018-08-12 23:48:09.031893');
INSERT INTO "public"."tb_imooc_course" VALUES (888, 367, 'Qnext前端交互沙龙', '中级', 26115, '去哪儿网前端交互沙龙第一期内容精彩呈现', 'JavaScript, Node.js', 'https://img2.mukewang.com/570777df00014c0c06000338-240-135.jpg', 'https://www.imooc.com/learn/367', '2小时18分', 9.7, 9.7, 9.7, 9.6, '简介：去哪儿网前端交互沙龙第一期内容精彩呈现！', 'Qnext', 'https://img4.mukewang.com/552c8cb50001c3bf16150398-80-80.jpg', NULL, NULL, NULL, '2018-09-02 20:37:26.302294', '2018-08-13 09:53:39.279126');
INSERT INTO "public"."tb_imooc_course" VALUES (667, 252, 'css3实现网页平滑过渡效果', '初级', 48822, 'CSS3 打造页面之间的平滑过渡效果，带来神奇的体验', 'CSS3', 'https://img2.mukewang.com/552498510001ac2306000338-240-135.jpg', 'https://www.imooc.com/learn/252', '2小时 5分', 9.8, 9.9, 9.8, 9.8, '简介：不用任何 JavaScript 脚本，使用纯 CSS 实现页面之间的平滑过渡，体验 transform、transition、animation 带来的神奇体验。', 'Amy', 'https://img1.mukewang.com/536b6357000158be04990749-80-80.jpg', NULL, '本课程适合有(X)HTML和CSS2.0基础及对HTML5和CSS3.0有所了解的童鞋们。', '1、如何分析动画效果
2、如何使用@font-face引入自定义的字体
3、如何使用transform变换实现平移、旋转
4、如何使用transition实现过渡动画
5、如何使用animaition和keyframes定义动画
', '2018-09-02 20:37:26.889637', '2018-08-12 23:48:22.172763');
INSERT INTO "public"."tb_imooc_course" VALUES (890, 327, '携程C4技术分享沙龙', '中级', 38890, '来自携程C4技术沙龙的现场分享，小伙伴们赶紧来尝鲜吧', '测试, Vue.js', 'https://img1.mukewang.com/57077a1200013d0206000338-240-135.jpg', 'https://www.imooc.com/learn/327', '3小时12分', 9.4, 9.8, 8.7, 9.7, '简介：来自携程C4技术沙龙的现场分享！', '携程C4技术分...', 'https://img2.mukewang.com/54d466930001590c02000200-80-80.jpg', '其它', NULL, NULL, '2018-09-02 20:37:27.56792', '2018-08-13 09:53:43.624201');
INSERT INTO "public"."tb_imooc_course" VALUES (889, 325, 'MongoDB中文社区-北京专场（二）', '初级', 11268, 'MongoDB2.8功能预览，以及在赶集和京东的MongoDB的使用经验', 'MongoDB', 'https://img4.mukewang.com/54c9d2320001054006000338-240-135.jpg', 'https://www.imooc.com/learn/325', '1小时19分', 9.7, 9.8, 9.7, 9.6, '简介：北京Mongo用户组第二次线下活动分享，介绍了MongoDB 2.8新功能，以及在赶集和京东的MongoDB的使用经验。', 'MongoDB中文...', 'https://img3.mukewang.com/54bf1a320001cc8802200220-80-80.jpg', NULL, '对MongoDB有基本了解', NULL, '2018-09-02 20:37:30.694169', '2018-08-13 09:53:43.195453');
INSERT INTO "public"."tb_imooc_course" VALUES (891, 296, '阿里云助力弹性伸缩服务', '中级', 16513, '阿里云openAPI体系、弹性伸缩以及业务水平扩展能力介绍', '云计算', 'https://img2.mukewang.com/57466be500018b8006000338-240-135.jpg', 'https://www.imooc.com/learn/296', '26分', 8.8, 9.3, 8.7, 8.5, '简介：本课程为大家带来阿里云的openAPI体系、弹性伸缩以及业务水平扩展能力的介绍，同时讲解了基于openAPI体系开发的云产品以及智能伸缩demo show。', '阿里云课堂...', 'https://img.mukewang.com/5460526b000122a302620267-80-80.jpg', NULL, NULL, '1.阿里云的openAPI体系 
2.弹性伸缩以及业务水平扩展能力
3.基于openAPI体系开发的云产品 
4.智能伸缩demo show', '2018-09-02 20:37:34.720678', '2018-08-13 09:53:46.092658');
INSERT INTO "public"."tb_imooc_course" VALUES (548, 426, 'C++远征之继承篇', '初级', 61970, '继承，C++面向对象三大特征之一，通过编码实践方式讲解到操作层面', 'C++', 'https://img4.mukewang.com/57075fe70001d94006000338-240-135.jpg', 'https://www.imooc.com/learn/426', '2小时36分', 9.7, 9.9, 9.7, 9.5, '简介：本课程将带领大家体会C++面向对象三大特性中的继承特性，讲述了基类、派生类的概念，公有继承、保护继承和私有继承、多重继承及多继承，虚析构函数及虚继承的作用，理解课程内容对于面向对象的学习将大有裨益，所有知识均通过编码实践的方式讲解到操作层面，力求即学即会。', 'james_yuan', 'https://img2.mukewang.com/550f82810001c44902200220-80-80.jpg', '学生', '本课程是C++初级课程
熟练掌握C++语言基础语法，如需要学习C++基础语法的可以看《C++远征之起航篇》、《C++远征之离港篇》、《C++远征之封装篇（上）》、《C++远征之封装篇（下）》', '1、什么是继承
2、基类和派生类的概念
3、继承的三种方式
4、多重继承和多继承
5、虚继承是怎么回事', '2018-09-02 20:37:20.112113', '2018-08-12 23:48:11.742175');
INSERT INTO "public"."tb_imooc_course" VALUES (699, 260, '通过自动回复机器人学Mybatis---加强版', '中级', 49264, '进一步探索 Mybatis 的奥秘，一起揭开 Mybatis 面纱', 'Java', 'https://img2.mukewang.com/5704a4220001c6fa06000338-240-135.jpg', 'https://www.imooc.com/learn/260', '2小时43分', 9.8, 9.9, 9.8, 9.7, '简介：你是愿意停留在仅仅会使用 Mybatis 的层次上，还是愿意与我一起揭开 Mybatis 面纱，看看背后的故事？本课程将继续上一课程中的案例来介绍Java中 Mybatis 的功能，与上一课程不同的是：本课程在介绍功能的同时，尽可能多的介绍 Mybatis 源码。


源生活老师实战课程《Java SSM定制大众点评后台》：http://coding.imooc.com/class/105.html
也已上线，Mybatis结合复杂SQL，尽在其中。', '源生活', 'https://img.mukewang.com/5372ea2300010f9701400140-80-80.jpg', 'JAVA开发工程师', '本课程的前导课程为《通过自动回复机器人学 Mybatis ---基础版》,
课程中案例的关联性极强，所以学习本课程唯一的条件就是学习过《通过自动回复机器人学 Mybatis ---基础版》', '1、 Mybatis 的接口式编程
2、实现分页查询
3、通过拦截器实现分页共通来了解 Mybatis 的拦截器
4、通过如何用数组做参数来了解 Mybatis 对类型的处理
5、 Mybatis 如何实现 jdbc 的 addBatch ，即批量插入', '2018-09-02 20:37:34.466904', '2018-08-12 23:48:25.137852');
INSERT INTO "public"."tb_imooc_course" VALUES (577, 409, 'Linux C语言结构体', '初级', 97654, 'C语言的深入，帮助小伙伴们进一步的理解C语言，赶紧看过来', 'C', 'https://img4.mukewang.com/5567d48300010ba306000338-240-135.jpg', 'https://www.imooc.com/learn/409', '1小时30分', 9.6, 9.7, 9.5, 9.6, '简介：本课程深入的讲解了C语言中，预处理是怎么回事，结构体和公用体又是如何使用及他们之间的区别，动态数据结构体是什么以及位运算的秘密。希望通过本课程的学习，能帮助小伙伴们进一步的理解C语言。', '雷过就跑', 'https://img3.mukewang.com/557a888d0001b8bb16001000-80-80.jpg', '移动开发工程师', '本课程为C语言的中级课程
1、需要有一定的C语言基础，如有基础薄弱的童鞋可以看一下网站上其他3门C语言的课程
2、因在Linux环境下，需会一些Linux下的命令，可以看一下《Linux C语言编程原理与实践》此课。', '1、预处理是干什么的
2、结构体是什么
3、公用体是什么
4、位运算是怎么回事
5、如何实现动态数据结构体
6、递归的原理', '2018-09-02 20:37:21.347247', '2018-08-12 23:48:14.205124');
INSERT INTO "public"."tb_imooc_course" VALUES (703, 245, '快速入门ThinkPHP框架—理论篇', '中级', 87752, '快速入门ThinkPHP框架教程，掌握ThinkPHP的理论基础', 'PHP', 'https://img4.mukewang.com/5478338c0001478506000338-240-135.jpg', 'https://www.imooc.com/learn/245', '3小时51分', 9.4, 9.8, 9.3, 9.2, '简介：通过对ThinkPHP框架基础知识的讲解，带领大家由浅入深轻松掌握ThinkPHP的理论基础，更加全面的掌握ThinkPHP框架运行机制，帮助大家在实际工作中使用ThinkPHP框架实现快速开发。', 'Donsen', 'https://img4.mukewang.com/54783443000172de03120297-80-80.jpg', 'PHP开发工程师', '1、PHP基础语法
2、MYSQL常用的SQL语句
3、面向对象开发思想', '1、理解框架的概念
2、熟练掌握tp框架的基础用法
3、简单的使用tp框架进行相关开发', '2018-09-02 20:37:33.193471', '2018-08-12 23:48:26.113534');
INSERT INTO "public"."tb_imooc_course" VALUES (481, 533, 'MySQL5.7版本新特性', '中级', 32652, '本教程从四个方面带你全面了解MySQL5.7新特性，干货满满', 'MySQL', 'https://img4.mukewang.com/572afe280001c13406000338-240-135.jpg', 'https://www.imooc.com/learn/533', '54分', 9.6, 9.8, 9.8, 9.3, '简介：据说最好的MySQL版本已经到来，主从复制数据不丢失、sys库的加入。原生JSON格式的支持等优化都将MySQL5.7推向了一个崭新的高度。本课程分别从服务器、Replication、InnoDB引擎及安全和管理等四个方面带你了解全新的MySQL5.7。', 'sqlercn', 'https://img4.mukewang.com/5ad7144100017a5e07410741-80-80.jpg', '数据库工程师', '如果您对MySQL感兴趣 ，不妨细细品味；如果你正在从事相关工作，本课程一定合您的胃口。不过如果您对数据库，对MySQL一无所知的话，那么您很难领会到本课程的精妙之处。', '1、了解MySQL5.7版本在服务器功能方面功能的提升
2、了解MySQL5.7版本在复制同步方面功能的提升
3、了解MySQL5.7版本在Innodb引擎方面的提升
4、了解MySQL5.7版本在安全及管理方面的提升', '2018-09-02 20:37:13.824924', '2018-08-12 23:48:05.526636');
INSERT INTO "public"."tb_imooc_course" VALUES (706, 261, '模式的秘密——工厂模式', '中级', 56974, '本课程即将讲解Java中的工厂模式和抽象工厂模式的应用', 'Java', 'https://img1.mukewang.com/548a67400001029e06000338-240-135.jpg', 'https://www.imooc.com/learn/261', '1小时 0分', 9.1, 9.3, 9, 9, '简介：工厂模式和抽象工厂模式是在日常开发中使用非常广泛的设计模式。主要用于实现将对象的实例化部分取出来，进而优化系统架构，增强系统的扩展性。本课程即将讲解Java中的工厂模式和抽象工厂模式的应用。', '卜奇', 'https://img.mukewang.com/548fdad5000181e202200220-80-80.jpg', NULL, '本课程是 Java 开发课程的中级课程，希望各位小伙伴们在学习本课程之前，了解以下内容：
1、初步具备面向对象的设计思维
2、了解多态概念
3、了解反射', '1、理解工厂模式和抽象工厂模式的思想
2、工厂模式应用场景
3、抽象工厂模式应用场景
', '2018-09-02 20:37:32.977321', '2018-08-12 23:48:26.394038');
INSERT INTO "public"."tb_imooc_course" VALUES (707, 214, '模式的秘密---代理模式', '中级', 46846, '本节课程将带你领略Java编程语言中代理模式的奥妙', 'Java', 'https://img.mukewang.com/572afd6000019e1f06000338-240-135.jpg', 'https://www.imooc.com/learn/214', '2小时 0分', 9.7, 9.8, 9.6, 9.7, '简介：代理模式是一种非常重要的设计模式，在 Java 语言中有着广泛的应用，包括Spring AOP 的核心设计思想，都和代理模式有密切关系。什么场景使用代理模式？代理模式实现原理是什么？本节课程将带你领略代理模式的奥妙。', 'David', 'https://img.mukewang.com/5445c512000157f702000200-80-80.jpg', 'JAVA开发工程师', '本课程是 Java 开发课程的高级课程，希望各位小伙伴们在学习本课程之前，了解以下内容：
1）初步具备面向对象的设计思维
2）了解多态概念
3）了解反射', '1、代理模式概念机分类
2、代理模式应用场景
3、掌握静态代理、动态代理运用
4、理解JDK动态代理实现原理', '2018-09-02 20:37:33.048055', '2018-08-12 23:48:26.5195');
INSERT INTO "public"."tb_imooc_course" VALUES (705, 236, '大话PHP设计模式', '中级', 51316, '帮助PHPer具备使用设计模式解决工程中复杂逻辑的能力', 'PHP', 'https://img3.mukewang.com/5469bbc60001362706000338-240-135.jpg', 'https://www.imooc.com/learn/236', '3小时30分', 9.6, 9.8, 9.4, 9.6, '简介：通过实际的代码演示PHP的11种面向对象设计模式实现和使用，帮助PHPer具备使用设计模式解决工程中复杂逻辑的能力，并且对OOP中松耦合、依赖倒置、可替换性、配置化等哲学有一定了解。', 'Rango', 'https://img1.mukewang.com/5469ba4e0001b81502200220-80-80.jpg', 'PHP开发工程师', '要想更好的掌握本课课程的重点内容，那么熟知面向对象的相关知识是必不可少的。', '1、了解PHP的11种设计模式
2、掌握设计模式的编程实现
3、具备使用设计模式进行面向对象编程的能力', '2018-09-02 20:37:33.597185', '2018-08-12 23:48:26.324909');
INSERT INTO "public"."tb_imooc_course" VALUES (700, 283, 'Java实现验证码制作', '初级', 55574, '本教程就会带大家学习使用java实现各种验证码的方法', 'Java', 'https://img4.mukewang.com/55b19e790001ae1706000338-240-135.jpg', 'https://www.imooc.com/learn/283', '2小时 0分', 9.5, 9.8, 9.4, 9.2, '简介：验证码的应用十分普遍，我们经常会在网上看到数字字母组合的验证码、包含中文的验证码、以及算式形式的验证码等等。本门课程就会带大家使用Java Web中的servlet以及Jcaptcha、Kaptcha两种开源组件来实现各式各样的验证码。', 'carch', 'https://img2.mukewang.com/54af39860001d69202200220-80-80.jpg', 'JAVA开发工程师', '本课程是 Java web 中级课程，建议各位小伙伴们学习完JSP和Servlet的内容后再来学习呦！', '1、使用jsp+servlet实现验证码
2、使用Jcaptcha和Kaptcha两种开源组件实现验证码
3、能够实现多种样式的验证码', '2018-09-02 20:37:31.843247', '2018-08-12 23:48:25.172658');
INSERT INTO "public"."tb_imooc_course" VALUES (710, 229, '移动端开发框架Zepto.js入门', '中级', 76570, '移动端开发必学框架---Zepto.js入门视频教程，学起来吧', 'WebApp', 'https://img1.mukewang.com/546418750001a81906000338-240-135.jpg', 'https://www.imooc.com/learn/229', '1小时 0分', 8.7, 8.9, 8.4, 8.7, '简介：通过一个相对简单的移动框架zepto，了解和掌握最基本的移动框架的开发和使用。课程主要讲解移动端框架和传统WEB端框架的区别，通过几个API实际操作例子带大家看一下这个框架的基本使用方法。最后使用框架完成一个简单的移动端应用。', '远人', 'https://img.mukewang.com/536b4d120001005f02720306-80-80.jpg', 'Web前端工程师', '1.具备JavaScript语言基础
2.具备jQuery相关的使用方法。
3.最好具备jQuery的项目开发经验。', '1.了解常见移动端开发框架和区别。
2.掌握Zepto框架的API使用方法。', '2018-09-02 20:37:32.962986', '2018-08-12 23:48:26.764419');
INSERT INTO "public"."tb_imooc_course" VALUES (711, 215, 'Android5.0新特性-Material Design', '中级', 36549, '追时尚就在Android5.0新特性，让我们来细细品味其魅力吧', 'Android', 'https://img1.mukewang.com/570755d50001f80006000338-240-135.jpg', 'https://www.imooc.com/learn/215', '2小时 0分', 9.1, 9.2, 9, 9, '简介：2014年10月16日Google正式将Android从KitKat升级为Lollipop， 成为Android有史以来最大的一次变革，新增多达5000+个API，在众多的新特性中，其中全新的设计语言Material Design，全新的通知中心设计，以及全新的ART模式最是吸引开发者的眼球，让我们来细细品味其魅力吧', '李宁', 'https://img3.mukewang.com/538e88d900017ff501400140-80-80.jpg', '移动开发工程师', '如果你是Android大军中的一员，如果你想了解Android前沿技术，如果你遍寻天下寻找Android新特性精彩课程而不得，那么，请停止脚步驻留此地，点击“开始学习”，相信你会收获良多！', '通过本课程，您将学到：
（1）Material主题
（2）新的控件
（3）视图阴影
（4）动画效果
（5）与drawable的兼容性', '2018-09-02 20:37:33.207856', '2018-08-12 23:48:26.833049');
INSERT INTO "public"."tb_imooc_course" VALUES (892, 268, 'Android中的WebView实战详解', '初级', 32131, '在App中玩转Web页面，介绍介绍WebView是什么、怎么使用', 'Android', 'https://img4.mukewang.com/549bafc10001d8ee06000338-240-135.jpg', 'https://www.imooc.com/learn/268', '1小时10分', 9.5, 9.6, 9.5, 9.3, '简介：是不是有很多人疑问：为什么页面可以显示在App中呢？这是怎么来实现的呢？其实，这是通过一个控件-WebView来实现的，本课程就将介绍WebView是什么、怎么使用、如何下载文件、错误码处理、Cookie同步问题、JS混淆调用问题以及远程注入问题，最后介绍一下自定义协议的拦截', 'nate', 'https://img.mukewang.com/547697d10001e0b110240679-80-80.jpg', '移动开发工程师', NULL, '通过本课程，你将学到：
1、什么是WebView
2、如何使用WebView
3、WebView如何下载文件
4、一些错误码的处理
5、解决与Cookie的同步
6、解决JS混淆调用问题
7、解决远程注入问题
8、自定义协议拦截', '2018-09-02 20:37:34.338545', '2018-08-13 09:53:46.559341');
INSERT INTO "public"."tb_imooc_course" VALUES (709, 258, 'Linux网络管理', '初级', 92059, '为你带来Linux网络环境搭建，介绍远程登录工具的使用', 'Linux', 'https://img2.mukewang.com/5704cf8c00012c9006000338-240-135.jpg', 'https://www.imooc.com/learn/258', '3小时40分', 9.8, 10, 9.7, 9.7, '简介：Linux装好以后是不能和网络中的其他机器进行通信的，本课程会为你解决Linux网络配置的问题。首先会介绍网络基础知识，然后进行IP地址的配置，并总结了在配置网络环境中经常遇到的问题，最后介绍了几种常用远程登录工具的使用，如XShell和SecureCRT。', 'Tony', 'https://img2.mukewang.com/53f5aae6000129aa01400140-80-80.jpg', 'Linux系统工程师', '已装好Linux操作系统并会简单的命令，需要进行Linux网络环境配置的小伙伴们都可以学习呦！', '首先可以对网络的基础知识有清晰的了解，能够搭建Linux的网络环境，并能够使用XShell和SecureCRT等远程登录工具。', '2018-09-02 20:37:32.529864', '2018-08-12 23:48:26.663128');
INSERT INTO "public"."tb_imooc_course" VALUES (580, 454, 'JS插件开发之LightBox图片画廊(上)', '中级', 25564, '图片画廊插件开发综合演练，快来加入我们的课程吧', 'JavaScript', 'https://img1.mukewang.com/5704aa2f0001248206000338-240-135.jpg', 'https://www.imooc.com/learn/454', '2小时46分', 9.8, 9.9, 9.7, 9.7, '简介：本期课程带领大家使用JS原生代码封装图片画廊插件，通过本例子把前端的知识做一次综合展示，全面考验前端工程师综合设计、开发能力。站在产品的角度写代码，站在代码的角度映射产品本质。快来加入我们的课程吧，让我为前端的明天，贡献自己的绵薄之力！', '一只帅蚂蚁...', 'https://img.mukewang.com/59c87e68000132c509420960-80-80.jpg', 'Web前端工程师', '1、具备扎实的HTML、CSS基础知识 
2、具备原生JS编程能力 
3、DOM 的节点属性、位置、层级设置获取等操作 
4、了解JS原生的this、prototype、new等关键词的意思
5、有一定JS OOP(对象化编程)思想 ', '1、HTML、CSS基础知识应用 
2、JS  OOP 思想开发
3、程序设计，站在产品角度分析需求 
4、综合案例分析、如何设计代码 
5、DOM 渲染、定位、尺寸应用 
6、BOM 视口、resize、scroll 事件应用
7、JQ 配合开发实战
8、IE 下 BUG解决方案
9、用户体验优化', '2018-09-02 20:37:20.215976', '2018-08-12 23:48:14.624687');
INSERT INTO "public"."tb_imooc_course" VALUES (712, 171, 'Java眼中的XML---文件读取', '初级', 76925, '通过Java认识并且创造XML文件，如何应用 Java“解析 XML', 'Java', 'https://img1.mukewang.com/570365080001f60306000338-240-135.jpg', 'https://www.imooc.com/learn/171', '3小时 0分', 9.6, 9.8, 9.5, 9.5, '简介：文件的形态是千变万化的，在 Internet 中，我们通常使用一种叫做 XML 的文件来传输或者存储数据。本次课程中，@Jessica Jiang 将会带领小伙伴们把这种 XML 文件应用与 Java 程序结合起来，教你如何应用 Java“解析 XML ”。', 'JessicaJiang', 'https://img2.mukewang.com/53ec59780001f0b901400140-80-80.jpg', 'JAVA开发工程师', '本课程是 Java 的中级课程，需要各位小伙伴们熟悉 Java 面向对象的思想，并能熟练掌握 Java I/O 的相关知识。对如何将内容写入 XML 文件感兴趣的小伙伴们，可以进入《Java 眼中的 XML --- 文件写入》一探究竟', '1、XML 的基本概念			
2、XML 在实际项目开发中的的用途和优点			
3、如何通过 Java 解析 XML				', '2018-09-02 20:37:32.310022', '2018-08-12 23:48:26.864494');
INSERT INTO "public"."tb_imooc_course" VALUES (566, 419, 'PHP+MySQL分页原理实现', '初级', 37527, '引导大家完成一个PHP＋MySQL分页功能，由简入繁的剖析原理', 'PHP', 'https://img1.mukewang.com/57075b250001044506000338-240-135.jpg', 'https://www.imooc.com/learn/419', '1小时10分', 9.5, 9.8, 9.4, 9.2, '简介：还在为无法完成一个令人赏心悦目的分页功能而烦恼吗？本课程将一步一步，由简入繁的剖析其中的原理，和大家共同完成一个功能完善的分页。', 'BobWang', 'https://img2.mukewang.com/53e73d3b00011abe04550504-80-80.jpg', 'PHP开发工程师', '学习本门课程之前，建议先了解一下知识，会更有助于理解和掌握本门课程 
1、掌握PHP基本的语言语法
2、了解PHP生命周期与PHP运行环境
3、了解php＋mysql的基本使用', '1.加深php和mysql结合使用，
2.了解分页的原理，
3.具备一定负责逻辑的处理能力，
4.掌握一定的前端知识。', '2018-09-02 20:37:20.357336', '2018-08-12 23:48:13.392481');
INSERT INTO "public"."tb_imooc_course" VALUES (692, 257, '模式的秘密---责任链模式', '中级', 25745, '解耦代码——责任链模式，通过学习，理解模式学习的要义', 'Java', 'https://img3.mukewang.com/574669ba000105ec06000338-240-135.jpg', 'https://www.imooc.com/learn/257', '1小时 0分', 9.7, 9.9, 9.6, 9.7, '简介：责任链模式在我们日常开发工作中随处可见，但却并不一定唯你所熟知。通过本视频，你可以了解什么是责任链模式，如何用 Java 语言实现策略模式。
作者将用简单生动的例子带你认识责任链模式的，通过学习，理解模式学习的要义。', 'Arthur', 'https://img4.mukewang.com/53ba377f0001b4de01400140-80-80.jpg', 'JAVA开发工程师', '本课程的学习，需要小伙伴们具有面向对象基础知识及 Java 语言基础。如果您是新手，建议先移步 《Java入门第一季》和《Java入门第二季》', '1、什么是责任链模式，生活中常见的责任链模式场景
2、责任链模式的实现
3、责任链模式如何实现解耦
4、实际案例', '2018-09-02 20:37:33.85158', '2018-08-12 23:48:24.083061');
INSERT INTO "public"."tb_imooc_course" VALUES (549, 456, '全面解析Java注解', '初级', 105009, '注解Java中的常用技能，通过实战演示注解在实际项目中的应用', 'Java', 'https://img1.mukewang.com/5704cf630001346306000338-240-135.jpg', 'https://www.imooc.com/learn/456', '1小时 7分', 9.5, 9.7, 9.5, 9.3, '简介：在项目开发中，注解的使用无处不在。注解的使用简化了代码，减少了程序员的工作量。本课程带领小伙伴们全面认识Java的注解，包括为什么使用注解、Java中的常见注解、注解的分类和如何自定义注解，最后通过一个实战案例来演示注解在实际项目中的应用。', '刘果国', 'https://img4.mukewang.com/55adc267000134ea05680568-80-80.jpg', '软件工程师', '小伙伴们注意啦！学习本课程前需要具备Java基础，理解面向对象思想，熟悉Java反射。如果能了解spring、hibernate等框架就更好啦！', '1、为什么使用注解
2、理解注解的基本概念
3、能够自定义注解
4、理解注解在实际项目中的应用', '2018-09-02 20:37:22.7006', '2018-08-12 23:48:11.758284');
INSERT INTO "public"."tb_imooc_course" VALUES (582, 447, 'Linux软件安装管理', '初级', 66564, '通过本课程了解Linux中的软件如何进行安装、卸载、升级等管理', 'Linux', 'https://img1.mukewang.com/559f35ad00017e0006000338-240-135.jpg', 'https://www.imooc.com/learn/447', '3小时 6分', 9.8, 9.9, 9.8, 9.6, '简介：软件安装对于操作系统来说是常用的操作，那如何在Linux中使用命令进行软件安装呢？本课程就带你来了解Linux中的软件如何进行安装、卸载、升级等管理。课程内容包括rpm命令管理、yum在线管理、源码包管理和脚本安装包。', 'Tony', 'https://img1.mukewang.com/53f5aae6000129aa01400140-80-80.jpg', 'Linux系统工程师', '学习本课程前，需要熟悉Linux的常用命令，可参见课程《Linux达人养成计划I》。', '1、了解软件包管理的基本概念
2、能够使用rpm命令对软件进行安装、卸载等操作
3、能够使用yum对软件进行在线管理
4、能够安装源码包
5、能够使用脚本安装包', '2018-09-02 20:37:22.883255', '2018-08-12 23:48:14.768503');
INSERT INTO "public"."tb_imooc_course" VALUES (720, 173, '使用Swift开发iOS8 App实战', '高级', 62087, '通过苹果最新Swift语言开发iOSApp，从零开始学习iOS的开发', 'iOS', 'https://img1.mukewang.com/570779ba00011eac06000338-240-135.jpg', 'https://www.imooc.com/learn/173', '7小时49分', 9.7, 10, 9.9, 9.3, '简介：这个系列会从零开始学习iOS的开发，主要包括UIKit的使用，通过学习这个系列课程，同学们可以了解开发界面相关的应用以及自己动手开发一个真实的ios APP。', '林永坚Jake...', 'https://img4.mukewang.com/53bce3ba00014c3932644928-80-80.jpg', '其它', '适合于想了解iOS开发的初学者', 'iOS基础，常用UIKit控件的使用，Storyboards和Segues，Navigation Controller，Auto Layout基础，Container View Controllers，Tab Bar Controller......', '2018-09-02 20:37:36.930151', '2018-08-12 23:48:27.598264');
INSERT INTO "public"."tb_imooc_course" VALUES (725, 216, 'Linux中的计划任务之Crontab', '初级', 30004, '学会Crontab命令，让重复任务自动化执行，提高大家工作效率', 'Linux', 'https://img3.mukewang.com/544f0d9500017d6306000338-240-135.jpg', 'https://www.imooc.com/learn/216', '1小时 9分', 9.4, 9.9, 9.4, 9, '简介：Crontab命令常见于Unix和类Unix的操作系统之中，用于设置周期性被执行的指令。本课程通过对Crontab的介绍以及案例演示，带领大家学习在实际工作中通过crontab进行计划任务设置，让重复的任务自动化执行，提高大家工作效率。', 'Peter', 'https://img1.mukewang.com/539e65a10001963a01400140-80-80.jpg', '其它', '要想更好的掌握本门课程讲解的内容，你需要具备Linux的基本技能。', '1、Crontab的基本概念
2、Crontab的基本组成
3、操作Crond服务
4、配置系统和用户计划任务
5、监控计划任务日志', '2018-09-02 20:37:38.655529', '2018-08-12 23:48:28.261928');
INSERT INTO "public"."tb_imooc_course" VALUES (724, 207, 'jQM Web App –列车时刻表', '中级', 36469, '主流移动WEB应用程序开发框架，可以开发简单的Web App应用', 'WebApp', 'https://img.mukewang.com/5705b68f0001ce1506000338-240-135.jpg', 'https://www.imooc.com/learn/207', '1小时32分', 9.9, 10, 9.8, 9.8, '简介：jQuery Mobile 是创建移动WEB应用程序的框架，使用广泛。本课程通过一个列车时刻表的简单案例，讲解了jQMobile的页面、事件、按钮、图标、导航栏、网格、列表、表单、Ajax等主要组件的使用方法，通过案例学习，举一反三，基本上可以开发简单的Web App应用。', '姜维_Wayne', 'https://img.mukewang.com/599ea79c0001a1bc05000500-80-80.jpg', 'Web前端工程师', '希望您了解jQuery Mobile的基本知识，或者具备jQuery知识，这样对课程学习会有很大帮助。', '通过案例的学习，让您对jQuery Mobile有整体的了解，及页面、事件、按钮、图标、导航栏、网格、列表、表单、Ajax等主要组件的使用方法。', '2018-09-02 20:37:38.385025', '2018-08-12 23:48:27.988274');
INSERT INTO "public"."tb_imooc_course" VALUES (540, 459, 'JS插件开发之LightBox图片画廊(下)', '中级', 14508, '带领大家封装图片画廊插件，通过实例进行前端知识综合演练', 'JavaScript', 'https://img4.mukewang.com/5704aa6e000158f106000338-240-135.jpg', 'https://www.imooc.com/learn/459', '56分', 9.5, 9.8, 9.5, 9.2, '简介：本期课程带领大家封装图片画廊插件，通过本例子把前端的知识做一次综合展示，全面考验前端工程师综合设计、开发能力。本期课程是《JS插件开发之LightBox图片画廊》系列课程的第二期课程。', '一只帅蚂蚁...', 'https://img3.mukewang.com/59c87e68000132c509420960-80-80.jpg', 'Web前端工程师', '1、具备扎实的HTML、CSS基础知识 
2、具备原生JS编程能力 
3、DOM 的节点属性、位置、层级设置获取等操作 
4、了解JS原生的this、prototype、new等关键词的意思
5、有一定JS OOP(对象化编程)思想 ', '1、HTML、CSS基础知识应用 
2、JS  OOP 思想开发
3、程序设计，站在产品角度分析需求 
4、综合案例分析、如何设计代码 
5、DOM 渲染、定位、尺寸应用 
6、BOM 视口、resize、scroll 事件应用
7、JQ 配合开发实战
8、IE 下 BUG解决方案
9、用户体验优化', '2018-09-02 20:37:22.726232', '2018-08-12 23:48:11.134725');
INSERT INTO "public"."tb_imooc_course" VALUES (610, 378, 'shell编程之正则表达式', '初级', 32612, '为你带来shell编程中的正则表达式，能够熟练运用正则表达式', 'Linux', 'https://img1.mukewang.com/5704cea700017b9e06000338-240-135.jpg', 'https://www.imooc.com/learn/378', '2小时10分', 9.9, 10, 10, 9.8, '简介：正则表达式在查找中的作用是非常重要的。本课程是《Tony老师聊shell》系列课程的第四篇，为你带来Linux shell中的正则表达式，字符截取命令cut、printf、awk和sed,字符处理命令sort和wc。', 'Tony', 'https://img3.mukewang.com/53f5aae6000129aa01400140-80-80.jpg', 'Linux系统工程师', '学习本门课程前，还请大家学习慕课网《Tony老师聊shell》系列的前三篇课程！', '1、掌握shell中的正则表达式
2、掌握常用字符截取命令的使用
3、掌握常用字符处理命令的使用', '2018-09-02 20:37:24.017166', '2018-08-12 23:48:16.887603');
INSERT INTO "public"."tb_imooc_course" VALUES (609, 345, 'Go语言第一课', '入门', 73614, 'Go语言入门教程，编程之必备知识扩散，打好Go语言编程基础', 'Go', 'https://img.mukewang.com/57035f4a0001598106000338-240-135.jpg', 'https://www.imooc.com/learn/345', '3小时10分', 8.7, 9.2, 8.3, 8.6, '简介：本课程为Go语言教程第一课，像很多编程语言一样，用Go语言编写简单程序并不困难。实际上，开发简单也是Go语言的特色之一。有些同学认为编程进阶不易，其实那是因为基础没有打好。而这门教程的目的就是帮助大家打好Go语言编程的基础的，Go语言教程第一课很重要！', '郝林', 'https://img1.mukewang.com/54ff9913000101a702200220-80-80.jpg', '全栈工程师', '本课程的目的是带领大家入Go语言的门，然后再猛推一把！需要一些Linux Shell的基础，不熟悉Linux的童鞋，可以先去《Linux达人养成计划Ⅰ》中修炼一下～～', '1、怎样使用Go语言编程
2、怎样才算会用Go语言编程
3、怎样运用那些Go语言的特性去编程
4、Go语言的那些特性的实际益处在哪儿', '2018-09-02 20:37:26.333703', '2018-08-12 23:48:16.862173');
INSERT INTO "public"."tb_imooc_course" VALUES (669, 344, 'Linux系统扫描技术及安全防范', '中级', 26504, 'Linux系统下系统扫描及安全防范，规避一些安全的隐患', 'Linux', 'https://img1.mukewang.com/5510c2c500016e9e06000338-240-135.jpg', 'https://www.imooc.com/learn/344', '1小时42分', 9.3, 9.5, 9.4, 9.1, '简介：安全在互联网的中越来越受到企业和boss们的重视，本课给大家介绍一些网络扫描的技术手段，其中包括主机扫描、路由扫描、批量服务扫描。同时我们也会了解什么是恶意扫描行为，在实际工作中如何合理设置利用基于Linux的内核参数或者利用相关的工具规避一些安全的隐患。', 'Jeson老师', 'https://img3.mukewang.com/5510c7a600016ea802200220-80-80.jpg', 'Python工程师', '1、有良好的Linux系统管理基础，Linux的基本命令、网络管理、软件包安装等等。
2、了解网络基础、TCP/IP通讯原理、一些基本的网络协议：ICMP、TCP、UDP。
', '学习完本课程后，同学们可以了解如下内容：
1、能了解Linux系统常用的扫描分析手段，运用所学手段做网络故障的分析。2、了解SYN攻击原理、及什么是DDOS攻击，明白在Linux系统下通过有效的手段如何防治DDOS、SYN攻击。
3、增强安全意识，增加对系统安全的了解。
', '2018-09-02 20:37:29.13083', '2018-08-12 23:48:22.318456');
INSERT INTO "public"."tb_imooc_course" VALUES (636, 357, 'CSS动画实用技巧', '初级', 72835, '本CSS教程教你使用CSS实现惊艳的动画效果，一起去领略一番', 'HTML/CSS, CSS3', 'https://img1.mukewang.com/57076c5b00016b0e06000338-240-135.jpg', 'https://www.imooc.com/learn/357', '37分', 9.3, 9.7, 9.2, 9.2, '简介：CSS想必大家都用过，那么你可知道使用CSS还可以实现一些有意思的动画效果？今天就请大家随着我们的课程，一起去领略一番吧！', '奇舞团', 'https://img3.mukewang.com/551b97490001120c02200220-80-80.jpg', 'Web前端工程师', '本课程适合HTML和CSS有一些实践的童鞋们。需要对CSS3有基本的了解。', '1、常用的CSS3动画属性介绍
2、介绍4个实用的动画技巧
3、如何一步步实现一个CSS3 Hover特效', '2018-09-02 20:37:29.802778', '2018-08-12 23:48:19.238403');
INSERT INTO "public"."tb_imooc_course" VALUES (734, 143, '走进SVG', '中级', 43039, 'SVG是HTML5 中矢量图的标记语言，学习后掌握更多的干货', 'Html5', 'https://img2.mukewang.com/5440b6f500013c5306000338-240-135.jpg', 'https://www.imooc.com/learn/143', '4小时56分', 9.6, 10, 9.4, 9.4, '简介：SVG 是 HTML5 中矢量图的标记语言，它保持了强大的绘图能力的同时，具有非常高端的使用接口，通过直接操作 Dom 节点的形式来操作图形。本课程意在让学生掌握 SVG 这门语言和它对应的一些 API，再结合2D绘图的知识，让学生具有对页面复杂图形的渲染和控制能力。', 'techird', 'https://img2.mukewang.com/537c0fb80001c70e38882592-80-80.jpg', 'JS工程师', '1.具备HTML+CSS知识基础；2.对CSS3有一定了解；3.具备一定JS的知识', '让学生能熟悉使用 SVG 在实际的 Web 项目中进行一些 2D 绘图、特效的开发。', '2018-09-02 20:37:35.959275', '2018-08-12 23:48:29.014278');
INSERT INTO "public"."tb_imooc_course" VALUES (732, 213, 'Java Web开发技术应用——过滤器', '初级', 64053, '本课程主要是从实际生活当中的过滤器入手,详细讲解了Java Web过滤器', 'Java', 'https://img1.mukewang.com/5704cbfd00013b6c06000338-240-135.jpg', 'https://www.imooc.com/learn/213', '1小时40分', 9.5, 9.8, 9.5, 9.3, '简介：本课程主要是从实际生活当中的过滤器入手,详细讲解了Java Web过滤器的概念、工作原理、生命周期以及过滤器的API。然后从一个过滤器引入多个过滤器链的相关知识，同时课程还详细介绍了过滤器的分类。最后以两个实际项目当中的案例诠释了过滤器的应用。', 'Fcming', 'https://img.mukewang.com/545087c60001b78902200220-80-80.jpg', '产品经理', '童鞋们，过滤器是Java Web开发的内容。学习前需要掌握Java基础知识、并熟悉JSP和Servlet。如未学习上述知识，可移步网站相关课程。', '通过本课程的学习，你可以了解过滤器的基础知识，并可以自己动手编写过滤器。', '2018-09-02 20:37:35.829853', '2018-08-12 23:48:28.577571');
INSERT INTO "public"."tb_imooc_course" VALUES (536, 399, '走近大数据之Hive进阶', '初级', 25978, 'Hive数据操作，查询及Hive编程接口，开发Hive的自定义函数', '大数据', 'https://img2.mukewang.com/55b730f600017a1f06000338-240-135.jpg', 'https://www.imooc.com/learn/399', '2小时15分', 9.7, 9.8, 9.9, 9.5, '简介：Hive是基于Hadoop的一个数据仓库工具,提供了强大的数据操作能力，包括数据的导入，查询和丰富的内置函数。同时，Hive也提供了对应的客户端可以操作数据，通过Java编程可以创建自定义函数来实现具体的业务逻辑。', '赵强老师', 'https://img3.mukewang.com/545862800001e2d802200220-80-80.jpg', '数据库工程师', '本课程是Hadoop体系结构的扩展内容
1、熟练掌握Hadoop的体系结构，尤其是HDFS
2、熟悉Java编程
3、了解Linux的基本操作
对Hive还不了解的童鞋，最好先去《Hive旅程之初识印象》修炼一下，再回来学习', '1、Hive数据的导入
2、Hive的数据查询
3、Hive的内置函数
4、Hive的表连接
5、Hive的子查询
6、Hive的客户端操作
7、开发Hive的自定义函数', '2018-09-02 20:37:22.793561', '2018-08-12 23:48:10.940946');
INSERT INTO "public"."tb_imooc_course" VALUES (619, 389, '用iptables搭建一套强大的安全防护盾', '中级', 26747, '如何用iptables守护好您家的前门和后院，这门课程有你想要的', 'Linux', 'https://img.mukewang.com/554b17ee0001e87206000338-240-135.jpg', 'https://www.imooc.com/learn/389', '2小时 8分', 9.4, 9.6, 9.3, 9.4, '简介：在”黑与白“的新型互联网时代，不经意间你的站点就可能被一个买地瓜的小朋友标记上了“俺到此地一游！”。安全已经成了互联网、物联网革命时代必须关注并且掌握的一门技术。本课程围绕Linux的iptables为您从简到繁的介绍，如何用iptables守护好您家的前门和后院。', 'Jeson老师', 'https://img1.mukewang.com/5510c7a600016ea802200220-80-80.jpg', 'Python工程师', '学习本课程需要具备Linux基础，并了解常见的网络协议呦！', '1、iptables是什么？他能帮助我作些什么？ 
2、iptables内核原理，规则组成。 
3、对不同的实际场景进行iptables规则配置。 
4、理清思路，分模块梳理，整理设计自己的iptables的规则方案。', '2018-09-02 20:37:24.729394', '2018-08-12 23:48:17.629566');
INSERT INTO "public"."tb_imooc_course" VALUES (736, 221, 'D2前端技术论坛——2014绽放', '中级', 38487, '本届D2将由各知名互联网公司的前端大牛们分享宝贵经验，精彩不容错过', 'Node.js, Angular', 'https://img1.mukewang.com/5707770d0001705706000338-240-135.jpg', 'https://www.imooc.com/learn/221', '6小时45分', 9.8, 9.8, 9.9, 9.7, '简介：本届D2将由来自各大知名互联网公司的前端大牛们分享宝贵经验，精彩不容错过！', 'D2前端技术论...', 'https://img1.mukewang.com/545ad0990001ab2802200220-80-80.jpg', NULL, '本课程将呈现2014年第九届D2前端技术论坛精彩的分享内容。', '各大互联网公司最新的前端实践。', '2018-09-02 20:37:36.03526', '2018-08-12 23:48:29.056561');
INSERT INTO "public"."tb_imooc_course" VALUES (678, 347, '如何使用高德JS-API进行基于LBS的开发', '高级', 18420, '教你用高德JS-API进行基于LBS开发，动手实现你的第一个地图应用', 'JavaScript', 'https://img.mukewang.com/5513a1b50001752806000338-240-135.jpg', 'https://www.imooc.com/learn/347', '1小时38分', 9.6, 9.9, 9.7, 9.2, '简介：本课程为大家带来如何使用JS-API进行基于LBS的开发。高德地图JS-API能帮助你在网站或移动端中构建功能丰富交互性强的地图应用程序。除基本地图功能接口外还提供本地搜索、路线规划等服务，可以根据你的需要选择使用。通过本课程你可以动手实现你的第一个地图应用！', '高德LBS开放...', 'https://img.mukewang.com/54a209d000013b9c03450360-80-80.jpg', NULL, '1、JS-API开发者
2、互联网从业人员
3、计算机、软件专业等小白用户或在校生', '1、在页面中显示高德地图，标注目标位置
2、POI搜索，发现身边兴趣点，并进行路线规划
3、添加地图插件，做出你想要的数据展示效果', '2018-09-02 20:37:29.459275', '2018-08-12 23:48:22.907536');
INSERT INTO "public"."tb_imooc_course" VALUES (537, 334, 'Hibernate初探之一对多映射', '中级', 40831, 'Hibernate中一对多关联映射配置，以及cascade和inverse属性作用', 'Java', 'https://img1.mukewang.com/55657b3b0001e78d06000338-240-135.jpg', 'https://www.imooc.com/learn/334', '1小时32分', 9.7, 9.9, 9.7, 9.6, '简介：现实世界中的对象很少有孤立存在的，例如学生，往往与所在班级和授课老师之间存在关联关系。在本次课程中，@laurenyang将带领小伙伴们一起学习Hibernate中的关联映射——一对多映射，会依次向大家介绍单向一对多和单向多对一的配置，以及cascade和inverse属性的作用。', '汤小洋', 'https://img.mukewang.com/596b71040001ff8206400640-80-80.jpg', '全栈工程师', '本课程主要讲解Java中Hibernate中的关联映射，需要对Hibernate基本用法、ORM的基本概念、单表映射等相关知识有一定的基础。', '1、Hibernate关联映射的类型
2、单向一对多关联的配置
3、单向多对一关联的配置
4、cascade和inverse属性的作用', '2018-09-02 20:37:19.793679', '2018-08-12 23:48:10.973783');
INSERT INTO "public"."tb_imooc_course" VALUES (627, 304, 'Android中的Http通信', '中级', 63159, '了解Android-http网络编程应用，常见忘了请求相关应用', 'Android', 'https://img2.mukewang.com/57075af80001574b06000338-240-135.jpg', 'https://www.imooc.com/learn/304', '4小时11分', 9.5, 9.8, 9.4, 9.2, '简介：本次课程将带领大家android当中网络交互处理，例如常见的post、get请求以及相关知识的应用。', 'nate', 'https://img2.mukewang.com/547697d10001e0b110240679-80-80.jpg', '移动开发工程师', '本课程是Android初级课程
1、熟练掌握基本的Android应用程序开发方法
2、熟练掌握Android中数据请求的方式
3、明白get请求和post请求的区别和联系', '1、了解http基本协议
2、掌握http交互请求，例如post、和get请求
3、使用代码实现Android中的post和get请求', '2018-09-02 20:37:26.873595', '2018-08-12 23:48:18.56001');
INSERT INTO "public"."tb_imooc_course" VALUES (739, 12, '形形色色的下拉菜单', '初级', 100614, '本教程从易到难，循循渐进，运用不同技术实现动态下拉菜单', 'JavaScript, jQuery', 'https://img2.mukewang.com/5746746100019fa706000338-240-135.jpg', 'https://www.imooc.com/learn/12', '3小时21分', 9.6, 9.9, 9.4, 9.5, '简介：本课程从易到难，循循渐进，从静态网页布局，到运用HTML/CSS、JavaScript、jQuery不同技术实现动态下拉菜单，让您掌握下拉菜单的制作及在不同浏览器间进行代码调试，解决浏览器兼容问题。', 'zongran', 'https://img2.mukewang.com/5359d6530001fef001400140-80-80.jpg', 'Web前端工程师', '1.您至少具备Html、Css相应的基础知识。
2.您须了解JavaScript和jQuery基础语法和引用方法；', '运用CSS、JavaScript和jQuery三种技术实现下拉菜单制作方法。', '2018-09-02 20:37:36.552787', '2018-08-12 23:48:29.400516');
INSERT INTO "public"."tb_imooc_course" VALUES (893, 267, 'Android面试常客Handler详解', '中级', 52042, '学Android开发，必学Handler，也是Android面试常客', 'Android', 'https://img1.mukewang.com/549a72970001c9d906000338-240-135.jpg', 'https://www.imooc.com/learn/267', '2小时 0分', 9.3, 9.7, 9.3, 8.9, '简介：本课程将深入理解Android的Handler机制，并结合源码实例，讲解Looper、MessageqQueue、Handler之间的关系，同时介绍HandlerThread的原理和使用，并分析Handler在开发中遇到的异常的原因，最后从源码的角度分析一下Handler更新UI的流程', 'nate', 'https://img4.mukewang.com/547697d10001e0b110240679-80-80.jpg', '移动开发工程师', NULL, '通过本课程，你将学到：
1、什么是Handler
2、如何使用Handler 
3、Handler的原理是什么
4、如何定义一个与线程相关的Handler
5、Android更新UI的几种方式
6、非UI线程真的不能更新UI吗
7、Handler使用过程中遇到的问题', '2018-09-02 20:37:34.421414', '2018-08-13 09:53:47.038871');
INSERT INTO "public"."tb_imooc_course" VALUES (743, 102, 'less即学即用', '初级', 67715, '让您理解less与css的关系与作用，并且结合实际的例子深刻理解', 'Sass/Less', 'https://img.mukewang.com/5705d3df0001273706000338-240-135.jpg', 'https://www.imooc.com/learn/102', '1小时29分', 9.7, 10, 9.6, 9.4, '简介：通过本教程，我们学习和理解了less的基本语法和使用场景。并且结合实际的例子，为我们在实战项目中编写css样式带来了很大方便。', 'Busy', 'https://img2.mukewang.com/53796b7f0001d38801200120-80-80.jpg', 'Web前端工程师', '基础的HTML、CSS知识，最好能有一些基础的前端开发经验。', '教程中介绍less作为css预处理语言的功能和特性，以及less的编译工具、变量的概念以及用法、如何使用嵌套写法来编写层叠样式、自带的函数以及用法，比如color函数、Math函数、讲解less如何编写不被编译的内容，以及在less中如何使用JavaScript表达式等等。', '2018-09-02 20:37:35.70543', '2018-08-12 23:48:29.650814');
INSERT INTO "public"."tb_imooc_course" VALUES (570, 420, 'iOS基础入门之Foundation框架初体验', '入门', 51026, '学会Foundation框架，能满足你所需要的大部分东西', 'iOS', 'https://img.mukewang.com/570761d200014d8b06000338-240-135.jpg', 'https://www.imooc.com/learn/420', '1小时52分', 9.8, 9.9, 10, 9.6, '简介：在iOS里，你可以找到很多能在应用程序里调用的框架，例如Foundation、UIKit和Core Graphics等等。如果你需要使用一个框架，你就要将它添加到你的项目中。而当你开发程序，你主要会用到的框架就是Foundation和UIKit了，因为它们能满足你所需要的大部分东西。', 'Visitor.zc', 'https://img3.mukewang.com/5530d35800013ba305680568-80-80.jpg', NULL, '需要有Objective-C和Objective-C OOP的知识', '字符串：    NSString
可变字符串：NSMutableString
数组：      NSArry
可变数组：  NSMutableArray
字典：      NSDicionary', '2018-09-02 20:37:20.684341', '2018-08-12 23:48:13.751402');
INSERT INTO "public"."tb_imooc_course" VALUES (682, 358, 'Android-见证消息推送时刻进阶篇', '高级', 23714, '本课程讲重点讲解客户端往服务器推送的案例，Come on', 'Android', 'https://img3.mukewang.com/5707573a0001aabb06000338-240-135.jpg', 'https://www.imooc.com/learn/358', '7小时59分', 9.8, 10, 10, 9.3, '简介：通过上一门课程的学习，相信大家已经掌握从服务器推送消息到客户端本地的流程和相关代码的编写。本课程为Android消息推送的进阶篇，本课程讲重点讲解客户端往服务器推送的案例', '郭霖', 'https://img.mukewang.com/5458a0820001eefc12961728-80-80.jpg', '移动开发工程师', '需要将Android-见证消息推送时刻课程完成', '通过本课程，你将学到：
1、掌握推送的基本原理和极光推送的用法
2、掌握Socket和Mina框架的用法
3、了解XMPP协议
4、掌握aSmack库的用法
5、掌握AndroidPN开源框架的用法', '2018-09-02 20:37:30.103362', '2018-08-12 23:48:23.423366');
INSERT INTO "public"."tb_imooc_course" VALUES (751, 220, 'FIS使用初级教程', '中级', 29388, '本课程介绍FIS使用初级教程，学会让开发效率与页面性能飞起来', '前端工具', 'https://img4.mukewang.com/54584c5200015bd406000338-240-135.jpg', 'https://www.imooc.com/learn/220', '3小时 0分', 9, 9.2, 9.1, 8.6, '简介：FIS是百度内部使用最广泛的前端开发工具和框架，同时在开源社区广受好评。本课程介绍FIS使用初级教程，教您如何使用FIS自动化地解决前端开发中诸多工程问题。', '百度FEX团队F...', 'https://img2.mukewang.com/546178300001c3d602200220-80-80.jpg', 'Web前端工程师', '前端开发与团队协作基础知识', '1 如何轻松解决前端开发常见工程问题
2 提升开发效率利器
3 如何使用FIS实现前端模块化
4 前端架构师起步之路', '2018-09-02 20:37:37.580853', '2018-08-12 23:48:30.521811');
INSERT INTO "public"."tb_imooc_course" VALUES (747, 124, 'Java入门第二季', '入门', 423282, 'Java 面向对象编程基本实现原理，进一步探索 Java 世界的奥秘', 'Java', 'https://img.mukewang.com/570360620001390f06000338-240-135.jpg', 'https://www.imooc.com/learn/124', '4小时 0分', 9.6, 9.8, 9.5, 9.4, '简介：本课程是程序猿质变课程，理解面向对象的思想，掌握面向对象的基本原则以及 Java 面向对象编程基本实现原理，熟练使用封装、继承、多态面向对象三大特性，带你进一步探索 Java 世界的奥秘！', '小慕', 'https://img2.mukewang.com/539f9dd90001fc8401400140-80-80.jpg', 'JAVA开发工程师', '本课程是Java开发的基础，需要大家：掌握 Java 基本语法的使用。如果您是新手，建议先移步 《Java入门第一季》
', '• 掌握 Java 基本语法和编程思路
• 熟练运用面向对象程序设计思想
', '2018-09-02 20:37:37.355817', '2018-08-12 23:48:30.178544');
INSERT INTO "public"."tb_imooc_course" VALUES (749, 242, '一起来做价值百万的Apple Watch App：分歧终端机', '中级', 21141, '学习如何做一个Apple Watch App，赶紧一起来学习吧', 'iOS', 'https://img3.mukewang.com/57077a2f0001936b06000338-240-135.jpg', 'https://www.imooc.com/learn/242', '31分', 9.9, 9.9, 9.9, 10, '简介：展示了如何使用WatchKit，如何通过MVC的绑定来处理用户事件，如何制作动画的功能。', '林永坚Jake...', 'https://img.mukewang.com/53bce3ba00014c3932644928-80-80.jpg', '其它', '零基础、有iOS基础开发知识，学习过慕课网iOS开发视频的听众。', '如何使用WatchKit、如何通过MVC的绑定来处理用户事件、如何制作动画', '2018-09-02 20:37:37.627011', '2018-08-12 23:48:30.464673');
INSERT INTO "public"."tb_imooc_course" VALUES (829, 93, 'CSS Sprite雪碧图应用', '初级', 42688, '必学的大型网站实用技术，让你快速掌握CSS Sprite雪碧图技术', 'HTML/CSS', 'https://img3.mukewang.com/5746792c00013a6c06000338-240-135.jpg', 'https://www.imooc.com/learn/93', '1小时 0分', 9.7, 9.8, 9.8, 9.6, '简介：为了减少http请求数量，加速网页内容显示，很多网站的导航栏图标、登录框图片等，使用的并不是<image>标签，而是CSS Sprite雪碧图。本课程分析了CSS Sprite雪碧图的实现原理，详细讲解制作方法，实现完整效果，让你快速掌握CSS Sprite雪碧图技术。', '远人', 'https://img3.mukewang.com/536b4d120001005f02720306-80-80.jpg', 'Web前端工程师', '您至少具备HTML/CSS基础知识。', '1.学会CSS Sprite雪碧图制作方法。2.学会CSS Sprite雪碧图的使用方法。', '2018-09-02 20:37:45.714414', '2018-08-12 23:48:37.477567');
INSERT INTO "public"."tb_imooc_course" VALUES (757, 96, 'Android攻城狮的第一门课（入门篇）', '入门', 303675, '想快速掌握Android应用开发基础，选择学习这门课程就对了。', 'Android', 'https://img.mukewang.com/53bf89100001684e06000338-240-135.jpg', 'https://www.imooc.com/learn/96', '5小时 0分', 9.6, 9.8, 9.6, 9.3, '简介：本课程涵盖全部Android应用开发的基础，根据技能点的作用分为5个篇章，包括环境篇、控件篇、布局篇、组件篇和通用篇，本课程的目标就是“看得懂、学得会、做得出”，为后续的学习打下夯实的基础。', 'Amos', 'https://img3.mukewang.com/5369e3c40001260f07200960-80-80.jpg', NULL, 'Android应用大部分是使用Java语言进行开发的，本门课程同样使用的是Java语言，所以，在学习本门课程前必须掌握Java的基础语法以及面向对象编程，同时要求童鞋们对Android应用有简单的认识，如不了解不妨度娘一下哦', '1、android环境搭建
2、android应用程序框架的认识
3、android基础控件的运用
4、android的不同布局形式', '2018-09-02 20:37:39.101162', '2018-08-12 23:48:31.126488');
INSERT INTO "public"."tb_imooc_course" VALUES (568, 412, 'JS+CSS3实现带预览图幻灯片效果', '初级', 49673, '同样的幻灯片，不一样的切换，学会实现思路，操作很简单', 'JavaScript, CSS3', 'https://img4.mukewang.com/5704a9680001db7606000338-240-135.jpg', 'https://www.imooc.com/learn/412', '1小时33分', 9.5, 9.8, 9.4, 9.3, '简介：同样的幻灯片特效，这个案例的特点在于处理幻灯片切换的过程。切换的动态效果看起来比较复杂，但只要了解了实现思路，则很简单。课程主要有3个部分，首先前期准备了解开发思路。然后根据开发思路实现界面开发，最后加上脚本动作，实现切换特效。', 'Lyn', 'https://img4.mukewang.com/53216f440001f5a904330473-80-80.jpg', 'Web前端工程师', '1、已经了解html标签的用法，图片资源的引用
2、已经了解css选择符的概念，以及基本的样式属性作用（宽、高……）
3、已经了解JavaScript函数的调用，了解 DOM 元素的获取及其属性的读写
4、已经掌握变量，流程控制（条件，循环）', '1、方法论：VCD 分解法，教你破解任意特效案例的实现原理
2、CSS3 特效：倒影实现、样式过度动画
3、简单的前端模板功能
4、JS通用函数：简单的 id,class DOM 选择器实现
5、脚本操作元素的属性和样式', '2018-09-02 20:37:20.883935', '2018-08-12 23:48:13.562075');
INSERT INTO "public"."tb_imooc_course" VALUES (635, 364, 'Sass和Compass必备技能之Sass篇', '中级', 25891, 'Sass与Compass初体验，初恋即深恋，助您写出更优秀的CSS', 'Sass/Less', 'https://img2.mukewang.com/5705d49e0001c7d306000338-240-135.jpg', 'https://www.imooc.com/learn/364', '1小时34分', 9.8, 9.9, 9.6, 9.8, '简介：CSS至今已经发展了将近20个年头，暮气沉沉，廉颇老矣？通过本课程我们将切实了解Sass与Compass是如何让CSS重焕青春的。由浅入深，从Sass的语法说起，最后衍伸至Compass框架的应用，通过这两个工具来帮助您写出更优秀的CSS。', 'Materliu', 'https://img3.mukewang.com/558f98f00001537842083120-80-80.jpg', 'Web前端工程师', '如果您对CSS一无所知，建议您先学习CSS的相关知识。如果您想一步登天，那么您必将摔得体无完肤。', '1.掌握如何使用Sass和Compass写出更优秀的CSS。
2.痛殴CSS编写过程中，这么多年的拦路虎，比如说精灵图自动合图，属性的浏览器前缀处理。
3.在项目的开发，生产周期内，使用的样式、图片、字体等内容，如何更好的组织起来。', '2018-09-02 20:37:30.555213', '2018-08-12 23:48:19.151784');
INSERT INTO "public"."tb_imooc_course" VALUES (758, 133, '炫丽的倒计时效果Canvas绘图与动画基础', '中级', 84543, '学习HTML5中最激动人心的技术Canvas，彻底释放自己的创造力', 'Html5', 'https://img3.mukewang.com/53bb8f280001929206000338-240-135.jpg', 'https://www.imooc.com/learn/133', '1小时30分', 9.7, 9.9, 9.7, 9.5, '简介：Canvas顾名思义是定义在浏览器上画布，但Canvas不仅仅是一个元素，它更是一套编程的接口，它的出现已然超过了Web基于文档的设计初衷。利用它你可以开发出很多梦寐以求的内容，让编程工作者彻底释放自己的创造力！', 'liuyubobobo', 'https://img1.mukewang.com/5347593e00010cfb01400140-80-80.jpg', '全栈工程师', '1.要对HTML+CSS相关标签有所掌握；2.对网页布局知识有简单的了解；3.掌握一定的JS基础知识', '通过学习Cancas倒计时效果的基础知识：比如球形的绘制，动画的基础原理，让Canvas帮助我们制作出绚丽的效果，力图每一个课程除了介绍知识，还能帮助大家使用Canvas制作出属于自己的动画和游戏作品。', '2018-09-02 20:37:32.479776', '2018-08-12 23:48:31.190004');
INSERT INTO "public"."tb_imooc_course" VALUES (754, 237, '打造Android中的流式布局和热门标签', '初级', 30203, '酷炫的热门标签到底是怎么实现的呢，本教程会给你答案', 'Android', 'https://img4.mukewang.com/546c0c8f000139d706000338-240-135.jpg', 'https://www.imooc.com/learn/237', '1小时10分', 9.5, 9.8, 9.2, 9.6, '简介：本课程将带大家通过自定义ViewGroup实现Android流式布局，课程详细介绍了自定义控件需要掌握的步骤，每个步骤相关方法的作用、调用时机的讲解以及编写。在完成自定义ViewGroup编写后，实战应用于热门标签（包括动态添加）的显示', 'hyman', 'https://img3.mukewang.com/54169c430001face18403264-80-80.jpg', '移动开发工程师', '本课程对于学习者要求较高，对学习者有以下几个要求:首先，对Java语言的掌握是必须的必，哪怕不精通，但是也要熟练；其次，要对Android中常用的一些API信手拈来；最后，如果想很好的跟上老师的讲课速度，熟悉Eclipse IDE很重要', '通过本课程，你将学到：
1、流式布局的特点以及应用场景
2、ViewGroup与LayoutParams之间的关系
3、Android中View测量的3种模式
4、自定义ViewGroup需要重写的方法
5、了解如何使用Shape写出View的背景资源', '2018-09-02 20:37:32.073445', '2018-08-12 23:48:31.025529');
INSERT INTO "public"."tb_imooc_course" VALUES (753, 192, 'CSS深入理解之absolute', '中级', 47730, '理解CSSposition:absolute声明，掌握position:absolute高级应用', 'HTML/CSS', 'https://img1.mukewang.com/57076bdd0001957c06000338-240-135.jpg', 'https://www.imooc.com/learn/192', '2小时24分', 9.6, 9.8, 9.4, 9.5, '简介：深入理解CSS的position:absolute声明的表现、掌握一些position:absolute的高级应用。', '张鑫旭', 'https://img2.mukewang.com/549beab90001be9037445616-80-80.jpg', '页面重构设计', '虽说是深入，实际更适合鲜肉小伙伴', 'absolute基本特性的感性认知。absolute可能的理解误区纠正。absolute诸多高级技巧的应用实例。absolute在移动web布局中的大放异彩。', '2018-09-02 20:37:35.302829', '2018-08-12 23:48:30.639702');
INSERT INTO "public"."tb_imooc_course" VALUES (614, 390, '版本控制入门 – 搬进 Github', '初级', 113107, 'Git版本控制/Github社会化编程平台，最短的时间上手 Git', '前端工具', 'https://img.mukewang.com/570779090001f12106000338-240-135.jpg', 'https://www.imooc.com/learn/390', '1小时39分', 9.7, 9.9, 9.8, 9.6, '简介：版本控制能够大大提高程序员的工作效率，但是通常会涉及到命令行操作，学习曲线陡峭。本课程中使用 Github 网站和图形化客户端来完成版本控制工作，提供一套简单实用的流程，配合图解方式的原理讲解，让大家以最短的时间上手 Git 和 Github 。', 'happypeter', 'https://img.mukewang.com/53f55a3c000159c812700952-80-80.jpg', 'JS工程师', '课程不需要学习者有版本控制和命令行使用的基础，是完全面向小白的。课程观众甚至不局限于程序员，因为很多人现在都在 github 上写书。但是，如果你的日常工作中不涉及很多文字工作，不需要多人协作，不需要回滚修改，那么 Github 可能对你不会太有用。', '1. 版本控制的基础操作，分别在github网站和图形化客户端中进行历史回滚，分支操作，代码同步。 
2. 围绕 Pull Request 来展开的团队内部协作流程和开源项目贡献流程。
3. Github具体技巧，用Issues进行项目讨论，用Pages搭建项目网站，以其他常用操作。', '2018-09-02 20:37:24.479335', '2018-08-12 23:48:17.313762');
INSERT INTO "public"."tb_imooc_course" VALUES (761, 193, '可调大小面板实现（Resizeable Panel）', '初级', 12161, '前端UI组件仓库必备，先从分析实现原理到步骤分解，走完全过程', 'JavaScript', 'https://img3.mukewang.com/5704ad800001659006400360-240-135.jpg', 'https://www.imooc.com/learn/193', '1小时 0分', 9.7, 9.9, 9.6, 9.6, '简介：QQ空间自定义模板可以自由调整其大小，这个课程来揭秘其中的原理，先从分析实现原理到步骤分解，再到关键代码解析，最后详细讲解每个步骤的代码实现过程。一步步带领小伙伴们实现Resizable Panel的开发。', 'Lyn', 'https://img2.mukewang.com/53216f440001f5a904330473-80-80.jpg', 'Web前端工程师', '本课程适合前端初学者或者自学的童鞋们，通过简单案例来掌握编程思想。您需要掌握基础的 html/css/javascript技能，您最好了解函数的编写和调用以及事件的概念。', '1、网页中鼠标位置，对象位置的获取方法
2、拖拽功能的原理和实现
3、拖拽范围的大小限定', '2018-09-02 20:37:41.896504', '2018-08-12 23:48:31.332788');
INSERT INTO "public"."tb_imooc_course" VALUES (764, 176, 'Tab选项卡切换效果', '初级', 60139, '本课程详细介绍网页页面中最流行常用的tab切换效果', 'JavaScript', 'https://img3.mukewang.com/53faa2b40001cce406000338-240-135.jpg', 'https://www.imooc.com/learn/176', '1小时34分', 9.7, 9.9, 9.8, 9.5, '简介：本课程详细介绍网页页面中最流行常用的tab切换效果，包括滑动、点击切换，延迟切换及自动切换等多种效果。其中重点讲解settimeout和setinterval的区别，以及使用JavaScript、jQuery等技术实现tab切换特效。', 'Amy', 'https://img1.mukewang.com/536b6357000158be04990749-80-80.jpg', NULL, '1、您应该已经熟悉html标签和css样式表；2、您还应该已经熟悉JavaScript 或 jQuery的基础知识。', '您可以举一反三，制作非常精美风格多样的 Tab 切换效果，能够帮助你丰富或改进网站中的选项卡功能的用户体验。', '2018-09-02 20:37:41.32697', '2018-08-12 23:48:31.746797');
INSERT INTO "public"."tb_imooc_course" VALUES (765, 206, '与Android Studio的第一次亲密接触', '入门', 102579, 'Google亲儿子AndroidStudio即将上位，赶紧学习安装配置、使用技巧', 'Android', 'https://img4.mukewang.com/576b7c8b0001468206000338-240-135.jpg', 'https://www.imooc.com/learn/206', '30分', 9.6, 9.8, 9.7, 9.4, '简介：Android Studio是Google在I/O大会上发布的一个新的集成开发环境，可以让Android开发变的更简单。本课程会详细的向您介绍Android Studio的安装配置、使用技巧以及相对于Eclipse开发的优势，并通过实际的操作让大家快速熟悉Android Studio的使用，让您体验更强大的开发工具', 'eclipse_xu', 'https://img2.mukewang.com/54cb9b5f0001827024483264-80-80.jpg', '移动开发工程师', '如果你知道Google，知道Android，那么...你赢了，请点击开始学习开搞Google的亲儿子AndroidStudio，Android Studio是谷歌新推出的一款更好的开发软件，大家一定要用心听', '通过本次课程，您可以学到：
1、AS的安装、配置
2、AS的基本认识与操作
3、AS与Eclipse对比
4、AS的使用技巧', '2018-09-02 20:37:42.498877', '2018-08-12 23:48:31.80683');
INSERT INTO "public"."tb_imooc_course" VALUES (781, 203, '阿里懒懒交流会AngularJS专场', '中级', 38513, '阿里云前端团队深度解析AngularJS，深入浅出,干货不断,不容错过', 'Angular', 'https://img4.mukewang.com/5420d2f9000118e206000338-240-135.jpg', 'https://www.imooc.com/learn/203', '2小时55分', 9.7, 9.9, 9.5, 9.6, '简介：阿里云前端技术团队使用AngularJS开发控制台项目的实践经验,深入浅出,干货不断,不容错过！', '懒懒交流会...', 'https://img.mukewang.com/541fc85000017c0709120912-80-80.jpg', NULL, '适合有AngularJS使用经验的同学，若无经验,则需有基础的JavaScript知识,熟悉css,最好对依赖注入,MVC框架有所了解。课程有大量AngularJS使用经验与实战讲解,有一些基础的同学会收益颇深,不适合刚接触JavaScript的同学。', '1、AngularJS宝贵实践经验
2、AngularJS背后的实现原理
3、如何使用AngularJS建立复杂业务系统
4、$p 的使用和AngularJS自动化测试', '2018-09-02 20:37:42.149271', '2018-08-12 23:48:32.963077');
INSERT INTO "public"."tb_imooc_course" VALUES (526, 493, 'Android高级特效-索引', '高级', 29820, 'APP中的熟面孔，索引列表的实现，有效增加了查找的便捷度', 'Android', 'https://img3.mukewang.com/5791931f00018e6106000338-240-135.jpg', 'https://www.imooc.com/learn/493', '1小时43分', 8.9, 9.3, 8.9, 8.6, '简介：本门课程为小伙伴们带来了一个APP中的熟面孔，索引功能。索引可以在通讯录的右侧实现字母搜索，有效增加了查找的便捷度。是应用中不可缺少的功能，放眼望去，微信，QQ等各大APP中都缺少不了他，还等什么？跟着李宁老师一起学习吧！', '李宁', 'https://img2.mukewang.com/538e88d900017ff501400140-80-80.jpg', '移动开发工程师', '本门课程为高级分享课程。
因为当中会涉及第三方框架的讲解，故建议学生有一定的Android基础，并且有一定的代码阅读能力与实际工作经验。', '1.索引简介与初始化
2.可以使用索引的ListView
3.显示、隐藏与触摸索引条', '2018-09-02 20:37:17.563001', '2018-08-12 23:48:09.552575');
INSERT INTO "public"."tb_imooc_course" VALUES (771, 184, 'PHP面向对象编程', '初级', 63800, '从容应对面试官的知识宝典，带你握面向对象的最重要的核心能力', 'PHP', 'https://img4.mukewang.com/572b067f00019abf06000338-240-135.jpg', 'https://www.imooc.com/learn/184', '3小时14分', 9.7, 9.9, 9.7, 9.4, '简介：本课程通过讲述面向对象的基本概念以及相关的案例实践，让小伙伴们对面向对象有一个基本的认识，能够掌握把实际问题抽象成为类对象用以解决实际问题的方法，掌握面向对象的最重要的核心能力。', 'Peter', 'https://img2.mukewang.com/539e65a10001963a01400140-80-80.jpg', '其它', '1、本门课程是立志想成为优秀程序员的必修课
2、基本概念部分适合所有人学习
3、实践部分则需要有基本的PHP知识，这样会更加有利于你对面向对象的理解和掌握', '1、面向对象的基本概念
2、面向对象的基本思路
3、面向对象的基本原则
4、类的概念和PHP实践
5、继承的概念和案例实践
6、接口的概念和案例实践
7、多态的概念和案例实践
8、PHP中的魔术方法基本实践', '2018-09-02 20:37:39.392357', '2018-08-12 23:48:32.194196');
INSERT INTO "public"."tb_imooc_course" VALUES (767, 123, '文件传输基础——Java IO流', '入门', 116173, '为您介绍IO流的使用，以及对象的序列化和反序列化的内容', 'Java', 'https://img3.mukewang.com/5774d7840001a30e06000338-240-135.jpg', 'https://www.imooc.com/learn/123', '2小时 0分', 9.7, 9.9, 9.6, 9.5, '简介：如何在Java中进行文件的读写，Java IO流是必备的知识。本门课程主要为您带来Java中的输入输出流的内容，包括文件编码、使用File类对文件和目录进行管理、字节流和字符流的基本操作，以及对象的序列化和反序列化的内容。', 'Cedar', 'https://img1.mukewang.com/54179086000189ac08850885-80-80.jpg', NULL, '亲，为了更好的学习本门课程，需要您对二进制的知识有所了解，还要熟悉Java的基本语法和面向对象的知识。', '1、了解文件编码。 
2、能够对文件和目录进行管理操作。  
3、能够应用字节流和字符流对文件进行读写操作。  
4、能够对对象进行序列化和反序列化。', '2018-09-02 20:37:41.630464', '2018-08-12 23:48:31.836146');
INSERT INTO "public"."tb_imooc_course" VALUES (772, 199, '反射——Java高级开发必须懂的', '入门', 124861, '反射,Java高级开发必须要懂的知识点，学好Java高级课程的基础', 'Java', 'https://img1.mukewang.com/5774d7e00001eb9206000338-240-135.jpg', 'https://www.imooc.com/learn/199', '1小时20分', 9.7, 9.9, 9.7, 9.5, '简介：反射是Java开发中一个非常重要的概念，掌握了反射的知识，才能更好的学习Java高级课程，因此必须要学习——你懂的！本门课程主要介绍Class类的使用，方法和成员变量的反射，以及通过反射了解集合泛型的本质等知识。', 'Cedar', 'https://img3.mukewang.com/54179086000189ac08850885-80-80.jpg', NULL, '童鞋们，学习本课程前需要熟悉Java面向对象的思想，并能掌握Java IO输入输出流、集合和泛型等知识。可参考慕课网Java入门的一、二、三季以及我的文件我做主——Java IO流课程。', '1、能够理解并应用反射机制。  
2、能够了解反射机制在集合泛型中的应用。  
3、有利于更好的学习框架等Java高级技术。', '2018-09-02 20:37:41.709826', '2018-08-12 23:48:32.207499');
INSERT INTO "public"."tb_imooc_course" VALUES (662, 336, 'shell编程之变量', '初级', 43805, '主要介绍Linux shell编程基础中的变量，熟练使用shell中用户自定义变量', 'Linux', 'https://img3.mukewang.com/55063ec30001774b06000338-240-135.jpg', 'https://www.imooc.com/learn/336', '1小时51分', 9.9, 10, 9.9, 9.9, '简介：本课程是《Linux达人养成计划I》中第九章课程的延续，主要介绍Linux shell编程基础中的变量。包括Bash变量的分类和各变量的详细使用，如：用户自定义变量、环境变量、语系变量、位置参数变量和预定义变量。', 'Tony', 'https://img3.mukewang.com/53f5aae6000129aa01400140-80-80.jpg', 'Linux系统工程师', '小伙伴们，学习本课程需要具备Linux基础知识，请大家学习完《Linux达人养成计划I》之后学习。', '能够熟练使用shell中的用户自定义变量、环境变量、语系变量、位置参数变量和预定义变量。', '2018-09-02 20:37:28.772496', '2018-08-12 23:48:21.768354');
INSERT INTO "public"."tb_imooc_course" VALUES (770, 69, 'MVC架构模式分析与设计', '中级', 75108, '通过学习MVC理论知识，由浅入深带您实现人生第一个MVC框架', 'PHP', 'https://img.mukewang.com/57075ab500016f5a06000338-240-135.jpg', 'https://www.imooc.com/learn/69', '5小时36分', 9.6, 9.8, 9.6, 9.2, '简介：本课程前部分通过学习MVC理论知识，引入MVC设计简单的框架的方法，并带领学生掌握对框架MVC三层框架简化的方法。后半部分通过视图层的介绍引入smarty的概念，详细介绍smarty的语法，通过实例再次加深对smarty的理解，并演示smarty各个内置函数与php、自定义函数的用法。', 'PengCheng', 'https://img.mukewang.com/5379c43b0001a28d01400140-80-80.jpg', 'PHP开发工程师', '本课程是php高级课程的一环，需要大家掌握以下知识点：
1、对php的基础知识掌握，如数组、自定义函数、php常用内置函数
2、掌握php面向对象编程的基本概念，至少要明白类、对象的概念
', '1、MVC理论概念。
2、运用MVC理论设计简单的框架。
3、对框架里MVC三层的调用进行简化。

', '2018-09-02 20:37:41.848211', '2018-08-12 23:48:32.178629');
INSERT INTO "public"."tb_imooc_course" VALUES (775, 158, ' Maya3D建模攻略——葵花宝典     ', '入门', 51078, '通过这门课程让你maya 软件快速入门，告诉你Maya3D技术它不是神', '动效动画, 模型制作', 'https://img1.mukewang.com/53cdc6fd00019f8d06000338-240-135.jpg', 'https://www.imooc.com/learn/158', '5小时40分', 9.6, 9.8, 9.7, 9.3, '简介：Maya 带你遨游三维世界
Maya 还会教你创造比游戏boss更有生命力的三维图形
Maya 更有各种工具装备配合，让你玩好第一步成为你核心竞争力的牛X武器', 'CG彭涛', 'https://img3.mukewang.com/53c5de180001c80602290229-80-80.jpg', NULL, '1、热爱三维动画
2、maya零基础爱好者  
3、动画相关专业学生', '1、maya 软件快速入门
2、polygons建模工具的使用
3、卡通小汽车的创建', '2018-09-02 20:37:41.912601', '2018-08-12 23:48:32.409402');
INSERT INTO "public"."tb_imooc_course" VALUES (717, 218, '征战Objective-C', '入门', 62264, '本课程作为零基础学习Objective－c教程，IOS开发可以从这里开始', 'iOS', 'https://img.mukewang.com/576b7aba0001339506000338-240-135.jpg', 'https://www.imooc.com/learn/218', '3小时32分', 9.7, 9.7, 9.9, 9.6, '简介：本课程作为零基础学习Objective－c语言的优秀教程，教学核心在于教会学生像计算机一样思考，并且使用符合OC编程哲学的方式写出如其他苹果产品一般优雅的程序，最终为作出优秀的IOS与Mac OS应用程序打好基础', 'DavidChin', 'https://img.mukewang.com/5451aa250001e38236482736-80-80.jpg', NULL, '本课程是针对零基础的学员展开的，学习该教程不需要提前学习C语言，即使你有其他面向对象语言编程基础也请你认真的去体会一下OC的面向对象部分，因为你通过学习本教程后会明显感觉到OC带来的不一样的面向对象编程哲学', '通过本课程，你讲学习到：
1、程序设计是什么
2、计算机指令执行的方式和程序工作原理
3、如何用好OC的指针
4、面向对象的C语言是如何工作的
5、编写精彩的IOS程序所需要的一切
', '2018-09-02 20:37:36.348418', '2018-08-12 23:48:27.455903');
INSERT INTO "public"."tb_imooc_course" VALUES (611, 383, 'Android-仿微信语音聊天', '高级', 40808, '结合自定义View和API，Dialog管理等实现实现微信语音', 'Android', 'https://img1.mukewang.com/55403cbd0001f88806000338-240-135.jpg', 'https://www.imooc.com/learn/383', '2小时15分', 9.3, 10, 9.6, 8.5, '简介：本课程通过结合自定义View、媒体相关API、Dialog管理等实现Android仿微信语音功能，课程主要涉及自定义录音Button与用户的交互，MediaRecorder实现录音, MediaPlayer实现播放，以及三者间的交互与协作和一系列的UI效果。', 'hyman', 'https://img4.mukewang.com/54169c430001face18403264-80-80.jpg', '移动开发工程师', '本课程是基于Android开发的案例，需要大家对Android的了解要达到小成的境界：
1、掌握自定义View的流程与步骤
2、了解MediaPlayer、MediaRecorder相关API
3、了解Dialog相关API
', '1、自定义控件如何处理与用户的交互
2、如何创建并动态更新Dialog
3、MediaRecorder的使用，实现录音功能
4、MediaPlayer的使用，实现播放功能
5、多个管理类对象间的交互与协作
', '2018-09-02 20:37:23.979348', '2018-08-12 23:48:17.007081');
INSERT INTO "public"."tb_imooc_course" VALUES (780, 170, '在Ubuntu Server下搭建LAMP环境', '中级', 37989, '想学PHP要会搭建LAMP环境，本教程为你学习PHP铺平道路', 'PHP, Linux', 'https://img3.mukewang.com/53ed6e6d0001122a06000338-240-135.jpg', 'https://www.imooc.com/learn/170', '1小时28分', 9.7, 9.9, 9.7, 9.5, '简介：本课程通过详细的细分教学，让你理解LAMP环境各个组件之间的关系与作用，并能掌握从无到有的在Ubuntu Server操作系统下搭建LAMP环境、配置虚拟主机、数据库远程维护等常见的服务器搭建维护技能，为学习PHP铺平道路。', '壞大叔badUnc...', 'https://img2.mukewang.com/59311bea0001e93207410741-80-80.jpg', 'PHP开发工程师', '由于本课程的实现是在Linux环境下进行的，所以建议小伙伴们在学习本课程之前，先亲自动手在虚拟机中安装Ubuntu Server操作系统，除此之外还需要了解Linux系统的一些基础命令，具备操作VIM编辑器的基本能力，这会让你学习本课程时会更加游刃有余。', '1、熟悉LAMP各个组件的基本配置
2、掌握在Ubuntu Server中从无到有搭建LAMP环境
3、熟悉如何采用SSH方式通过终端工具远程操作Linux服务器以及通过FTP工具传输文件
4、掌握MySQL数据存储目录的迁移操作', '2018-09-02 20:37:42.552181', '2018-08-12 23:48:32.95389');
INSERT INTO "public"."tb_imooc_course" VALUES (597, 393, 'How-old 刷脸神器', '中级', 30463, '通过第三方本课程教大家实现人脸识别，通过案例讲解原理', 'Android', 'https://img3.mukewang.com/5552a2f400017c5106000338-240-135.jpg', 'https://www.imooc.com/learn/393', '1小时19分', 9.8, 9.9, 9.9, 9.7, '简介：本课程通过使用Face++实现人脸识别的效果，课程详细介绍了使用第三方SDK时，整个案例的原理，课程的难点在于对服务器返回数据进行解析后，完成人脸区域的绘制以及性别和年龄的气泡的绘制。', 'hyman', 'https://img1.mukewang.com/54169c430001face18403264-80-80.jpg', '移动开发工程师', '本课程是基于Android开发的案例，需要大家对Android的了解要达到小成的境界：
1、掌握Android Http相关知识。
2、熟悉Canvas相关API。
3、了解Json解析相关API
', '1、如何使用Face++进行人脸检测。
2、Canvas相关API的学习。
3、借助View简化我们的绘图工作。
4、Http、Json等相关API的使用。
', '2018-09-02 20:37:24.505293', '2018-08-12 23:48:15.959757');
INSERT INTO "public"."tb_imooc_course" VALUES (895, 276, 'W3Ctech “走进名企”小米专场', '中级', 18064, '本次分享有4位来自小米的前端工程师为大家带来前端最新实践', 'HTML/CSS, Html5', 'https://img3.mukewang.com/54ae5498000113d006000338-240-135.jpg', 'https://www.imooc.com/learn/276', '1小时42分', 9.3, 9.6, 9.3, 9.1, '简介：本次分享共有4位来自小米的前端工程师为大家带来前端最新实践。', 'W3Ctech', 'https://img.mukewang.com/54a9edc3000128ed03000300-80-80.jpg', NULL, NULL, NULL, '2018-09-02 20:37:31.481535', '2018-08-13 09:53:47.766577');
INSERT INTO "public"."tb_imooc_course" VALUES (896, 293, 'openstack最新技术解析', '中级', 20364, '了解openstack最新技术动向，以及了解应用中各种问题', '云计算', 'https://img4.mukewang.com/54b619d70001294906000338-240-135.jpg', 'https://www.imooc.com/learn/293', '2小时30分', 9.2, 9.1, 9.2, 9.5, '简介：本课程主要分享SDN交换机带给云计算的价值 、Docker与KVM性能与隔离性深度分析、HP Helion OpenStack Deep Dive 及 OpenStack与Docker集成等话题。', 'Openstack中...', 'https://img2.mukewang.com/54b630440001e12202200220-80-80.jpg', NULL, NULL, '了解openstack最新技术动向，深入了解实际应用中发生的各种技术问题', '2018-09-02 20:37:31.816894', '2018-08-13 09:53:47.932019');
INSERT INTO "public"."tb_imooc_course" VALUES (608, 370, 'Oracle存储过程和自定义函数', '初级', 44379, 'Java开发重要课程，Oracle数据库开发工程师的加薪利器', 'Oracle', 'https://img3.mukewang.com/5704cd7d0001d01206000338-240-135.jpg', 'https://www.imooc.com/learn/370', '1小时33分', 9.8, 9.9, 9.9, 9.7, '简介：本门课程是Java开发Oracle数据库的一门十分重要的课程。本门课程首先介绍了Oracle的存储过程和存储函数（自定义函数）的创建和调用，之后讲师又通过案例介绍了存储过程和存储函数在Java项目中的应用，以及如何在应用程序中访问包下的存储过程。', '赵强老师', 'https://img1.mukewang.com/545862800001e2d802200220-80-80.jpg', '数据库工程师', '小伙伴们，学习本门课程需要具备PL/SQL基础，可以移步《Oracle数据库开发必备利器之PL/SQL基础》课程。除此以外，在课程中涉及到存储过程和存储函数在Java项目中的应用，因此需要小伙伴们具备Java基础并熟悉JDBC。', '1、存储过程和存储函数的创建和调用
2、存储过程和存储函数在Java项目中的应用
3、如何在应用程序中访问包下的存储过程', '2018-09-02 20:37:23.833776', '2018-08-12 23:48:16.821873');
INSERT INTO "public"."tb_imooc_course" VALUES (659, 329, 'GD库实现图片水印与缩略图', '初级', 18321, '带你快速高效的完成图片处理工作，还可以加深对面向对象的理解', 'PHP', 'https://img4.mukewang.com/57075a1f0001806606000338-240-135.jpg', 'https://www.imooc.com/learn/329', '1小时41分', 9.7, 9.9, 9.6, 9.7, '简介：本课程将带领大家通过PHP中的GD库巧妙的实现图片水印与缩略图功能，大家可以轻松掌握案例的实现思路，同时课程中也讲解了如何将此过程封装成类，可以进一步加深对面向对象的理解。', 'BobWang', 'https://img2.mukewang.com/53e73d3b00011abe04550504-80-80.jpg', 'PHP开发工程师', '学习本门课程之前，建议先了解一下知识，会更有助于理解和掌握本门课程
1、掌握PHP基本的语言语法
2、了解PHP生命周期与PHP运行环境
3、有一定编程基础', '1、加深对GD库的了解
2、利用GD库给图片添加文字和图片水印
3、利用GD库压缩图片
5、如何打造一个属于自己的工具类', '2018-09-02 20:37:28.258497', '2018-08-12 23:48:21.713638');
INSERT INTO "public"."tb_imooc_course" VALUES (661, 289, 'Java实现数字签名', '中级', 35839, '介绍Java实现数字签名，有效保障网络传输过程中的数据安全', 'Java', 'https://img2.mukewang.com/54af7b720001fde306000338-240-135.jpg', 'https://www.imooc.com/learn/289', '44分', 9.5, 9.6, 9.4, 9.4, '简介：数字签名算法在金融领域得到广泛的应用，如网银中常用的U盾。本课程主要介绍数字签名的实现过程，以及RSA、DSA、ECDSA等几种常见的数字签名在Java中的实现。', 'moocer', 'https://img.mukewang.com/58db190e0001643d02000200-80-80.jpg', 'JAVA开发工程师', 'Java加解密是一个系列的课程，为了更好的学习本门课程，请小伙伴们学习前，先学习下网站中的《Java实现Base64加密》和《Java实现非对称加密》这两门课程。', '1、掌握数字签名在Java中的实现
2、了解数字签名的应用场景', '2018-09-02 20:37:28.272963', '2018-08-12 23:48:21.748794');
INSERT INTO "public"."tb_imooc_course" VALUES (558, 404, '与《Yii框架》不得不说的故事—基础篇', '中级', 39648, '通过本视频教程，为学习YII的快速、安全、专业的特性打下基础', 'PHP', 'https://img2.mukewang.com/55657fa600015fe206000338-240-135.jpg', 'https://www.imooc.com/learn/404', '2小时39分', 9.7, 9.9, 9.7, 9.4, '简介：YII是目前比较火的框架，框架里面使用了最新的技术和设计，可以说学习了YII就学习了最新的php技术，本课程主要学习YII的安装和mvc的基本使用方式，为后面学习YII的快速、安全、专业的特性打下基础。', 'withy', 'https://img3.mukewang.com/5564088300017b7510240719-80-80.jpg', 'PHP开发工程师', '学习本门课程之前，建议先了解一下知识，会更有助于理解和掌握本门课程
1、掌握PHP基本的语言语法
2、对MVC开发方式有一定的了解', '1、php的新特征
2、一款前沿的框架的使用方式
3、新颖独到的程序设计', '2018-09-02 20:37:25.37514', '2018-08-12 23:48:12.792105');
INSERT INTO "public"."tb_imooc_course" VALUES (897, 292, '云计算 - 引领阿里生态的技术发展之路', '中级', 25305, '简要介绍天猫云计算环境，在双11背后的技术支撑', '云计算', 'https://img3.mukewang.com/54b5e5af00010ec406000338-240-135.jpg', 'https://www.imooc.com/learn/292', '24分', 9.3, 9.6, 9, 9.3, '简介：1、简要介绍天猫云计算环境 - 聚石塔。
2、云计算如何帮助商家安稳的度过双11。
3、面对更多的腰部商家，服务商需要如何进化自己的软件架构。
4、未来的软件服务商的进化.通过数据提高商家的服务能力。', '阿里云课堂...', 'https://img3.mukewang.com/5460526b000122a302620267-80-80.jpg', NULL, NULL, '1、进行Saas化软件改造,降低硬件成本.提高系统性能
2、对于改造后的软件.在服务平台上打通进行售卖,推广,服务商门户', '2018-09-02 20:37:31.885294', '2018-08-13 09:53:48.031402');
INSERT INTO "public"."tb_imooc_course" VALUES (792, 163, 'PHP开发APP接口', '中级', 78225, 'APP通信接口技术，不得不掌握的法宝，学完之后你会受益良多', 'PHP', 'https://img2.mukewang.com/570765890001f27006000338-240-135.jpg', 'https://www.imooc.com/learn/163', '4小时37分', 9.7, 9.9, 9.7, 9.5, '简介：本课程采用PHP面向对象思想讲解了如何开发APP服务器端接口，课程循序渐进，通俗易懂，对重点难点技术做了详细讲解,通过学习本课程能让你学会如何开APP接口，你会受益良多。', 'singwa', 'https://img2.mukewang.com/59e0d3be0001672a05120512-80-80.jpg', '全栈工程师', '1、熟练掌握PHP基本语法知识
2、熟练掌握PHP面向对象思想
3、具有1-2年开发经验', '1、客户端APP如何与服务器端通信
2、xml、json通信格式数据封装
3、缓存技术
4、crontab定时任务
5、APP接口开发
6、APP版本升级', '2018-09-02 20:37:40.146409', '2018-08-12 23:48:34.379934');
INSERT INTO "public"."tb_imooc_course" VALUES (793, 167, 'JS动画效果', '初级', 100779, '通过本课程JS动画的学习，从简单动画开始，逐步深入各种动画框架封装', 'JavaScript', 'https://img1.mukewang.com/57466d580001d46806000338-240-135.jpg', 'https://www.imooc.com/learn/167', '2小时 8分', 9.6, 9.8, 9.6, 9.4, '简介：通过本课程JS动画的学习，从简单动画开始，逐步深入缓冲动画、多物体动画、链式动画、多动画同时运动到完美运动框架的过程，每一个效果封装成一个小运动框架，逐渐培养和锻炼封装运动框架和编程的思想，让您的逻辑思维不断增强。', 'vivian', 'https://img1.mukewang.com/528abd50000195b120422848-80-80.jpg', 'Web前端工程师', '1.您至少已经具备JavaSript的知识。2.您已经具备一些开发经验。', '1.使用定时器实现简单动画。2.如何一步步封装库。2.培养编程的思想。', '2018-09-02 20:37:40.246163', '2018-08-12 23:48:34.43914');
INSERT INTO "public"."tb_imooc_course" VALUES (790, 164, 'PDO—数据库抽象层', '初级', 27977, '本教程主要通过实战演练深入剖析PDO以加深理解', 'PHP', 'https://img1.mukewang.com/570760dd00013da306000338-240-135.jpg', 'https://www.imooc.com/learn/164', '5小时30分', 9.7, 10, 9.7, 9.6, '简介：PDO扩展为PHP访问数据库定义了一个轻量级的、一致性的接口，PDO解决了数据库连接不统一的问题，本课程以MySQL数据库为例，讲解了PDO的安装和配置方法，以及操作数据的函数，此外还介绍了PDO的事务处理相关知识，最后通过实战演练深入剖析PDO以加深理解。', 'King', 'https://img2.mukewang.com/567ca60000011fae26501720-80-80.jpg', 'PHP开发工程师', '1、掌握PHP的基础语法知识
2、掌握MySQL基本增删改查语句
3、对面向对象的基本概念有清晰的认识，熟悉PHP中类定义的基本语法', '1、掌握PDO的基本概念及安装和配置
2、掌握PDO处理数据的基本操作   
3、理解PDO事务处理   
4、掌握类的封装的方法', '2018-09-02 20:37:41.098489', '2018-08-12 23:48:34.154366');
INSERT INTO "public"."tb_imooc_course" VALUES (791, 109, '版本管理工具介绍---SVN篇', '初级', 83403, '本课程主要介绍版本控制工具之-SVN的安装、简单操作及常见问题解决', 'Java', 'https://img2.mukewang.com/570360980001a2de06000338-240-135.jpg', 'https://www.imooc.com/learn/109', '47分', 9.7, 9.9, 9.8, 9.6, '简介：多人协作开发是程序猿不可避免的话题，版本控制工具不可或缺，学会 SVN ，让初入公司的你与他人的合作不再尴尬！本课程主要介绍版本控制工具之一 SVN 的安装、结合Java代码的简单操作及常见问题解决。版本控制的环境下才能共创程序猿梦想，大家代码都好才是真的好！', '源生活', 'https://img1.mukewang.com/5372ea2300010f9701400140-80-80.jpg', 'JAVA开发工程师', '本课程的学习，对小伙伴们的学习基础有以下几点要求：
1、 编程零基础可听
2、 写过一段时间代码再听更好
3、 有与他人协作开发意向者最佳', '1、 SVN 服务端与客户端的安装
2、 SVN 的简单操作
3、 SVN 出现冲突时的解决办法', '2018-09-02 20:37:40.31266', '2018-08-12 23:48:34.338378');
INSERT INTO "public"."tb_imooc_course" VALUES (789, 122, '与MySQL的零距离接触', '入门', 333728, '本课程涵盖全部MySQL数据库的基础，学习MySQL数据库的基础知识', 'MySQL', 'https://img.mukewang.com/570756b0000146fc06000338-240-135.jpg', 'https://www.imooc.com/learn/122', '8小时29分', 9.7, 9.9, 9.6, 9.5, '简介：本课程涵盖全部MySQL数据库的基础，主要学习MySQL数据库的基础知识、数据表的常用操作及各种约束的使用，以及综合的运用各种命令实现记录进行CURD等操作，本课程的目标就是“看得懂、学得会、做得出”，为后续的学习打下夯实的基础。', '平然', 'https://img4.mukewang.com/5333a17a0001592502000200-80-80.jpg', '学生', '要想学习本课程，你只需要知道数据库是个什么东东就足够了，是不是很easy？！', '1、MySQL安装与配置
2、数据类型
3、流程控制与运算符 
4、DDL、DCL、DQL、DML
5、常用函数
6、表类型(存储引擎)
7、图形化工具', '2018-09-02 20:37:41.082042', '2018-08-12 23:48:34.058032');
INSERT INTO "public"."tb_imooc_course" VALUES (391, 641, 'Android-五子连珠', '初级', 34730, 'Android游戏开发-五子连珠，本教程通过UI与逻辑实现双人对战', 'Android', 'https://img2.mukewang.com/56f9e7e3000119fe06000338-240-135.jpg', 'https://www.imooc.com/learn/641', '1小时16分', 9.5, 9.8, 9.5, 9.2, '简介： 阿尔法狗赢了,标志着人工智能的崛起。至于以后的社会会不会像机械公敌那样我们不知道，但是和AI下五子棋你可以做到。本门课程带领小伙伴们实现Android五子棋小游戏，通过UI与逻辑实现双人对战！', 'hyman', 'https://img1.mukewang.com/54169c430001face18403264-80-80.jpg', '移动开发工程师', '本课程为中级案例课程，学习该门课程的同学需具备一定的Android基础。', '1、绘制棋牌与棋子
2、逻辑判断
3、View的存储与恢复', '2018-09-02 20:37:07.756479', '2018-08-12 23:47:57.279133');
INSERT INTO "public"."tb_imooc_course" VALUES (562, 406, 'Android必学-异步加载', '中级', 49112, '了解Android中的异步加载处理方法，这是面试问的最多的知识点', 'Android', 'https://img3.mukewang.com/55666c0a0001d6b506000338-240-135.jpg', 'https://www.imooc.com/learn/406', '1小时57分', 9.7, 9.9, 9.6, 9.5, '简介：重量级的课程来了：Android必须系列。本系列课程中的内容为Android开发中用处最多，面试问的最多的知识点。本次课程将带领大家了解Android中异步加载的一般处理方法', 'eclipse_xu', 'https://img1.mukewang.com/54cb9b5f0001827024483264-80-80.jpg', '移动开发工程师', '1、了解异步处理的一般方法	
2、掌握如何使用多线程进行异步加载	
3、掌握如何使用ASyncTask进行异步加载	
4、异步加载的缓存与优化	
', '本课程是Android中级课程
1、熟练掌握基本的Android应用程序开发方法', '2018-09-02 20:37:25.676035', '2018-08-12 23:48:13.198522');
INSERT INTO "public"."tb_imooc_course" VALUES (688, 30, 'Grunt-beginner前端自动化工具', '高级', 58477, '通过配置Grunt自动化工具，提高您的工作效率，出乎您的想象', '前端工具', 'https://img2.mukewang.com/5705d297000175a806000338-240-135.jpg', 'https://www.imooc.com/learn/30', '4小时55分', 9.6, 9.9, 9.5, 9.4, '简介：作为一名开发人员，在WEB前端项目开发中，重复而枯燥的工作太多，Grunt自动化的项目构建工具，帮你解决这些问题，对重复执行的任务像压缩，合并，编译，单元测试及代码检查等， 通过配置Grunt自动化工具，可以减轻您的劳动，简化您的工作。', 'Materliu', 'https://img3.mukewang.com/558f98f00001537842083120-80-80.jpg', 'Web前端工程师', '1.想提高运行前端开发工作流程 ；
2.有一些项目开发经验，效果会更好。', '1. Grunt工具和插件的安装
2. 如何进行项目配置
3. 如何配置任务
4. 如何执行任务
5. Grunt的使用', '2018-09-02 20:37:33.821827', '2018-08-12 23:48:23.796145');
INSERT INTO "public"."tb_imooc_course" VALUES (648, 298, 'MongoDB地理数据模块与MongoGIS', '中级', 10543, '本教程教你使用GDAL类库处理存储在MongoDB中的地理数据', 'MongoDB', 'https://img4.mukewang.com/5707776b00018f3106000338-240-135.jpg', 'https://www.imooc.com/learn/298', '24分', 9.7, 9.9, 9.9, 9.4, '简介：MongoDB具有一个定义良好的地理数据模块，但是使用该模块处理地理数据却常常感到工具匮乏。GIS领域已经发展出一套专门处理地理数据的工具与模型，处理大规模地理数据，MongoDB不用再造轮子。本课程主要讨论如何使用GDAL类库处理存储在MongoDB中的地理数据。', 'MongoDB中文...', 'https://img4.mukewang.com/54bf1a320001cc8802200220-80-80.jpg', NULL, '1、为何使用mongodb处理地理数据
2、如何使用GDAL处理MongoDB中的地理数据
3、MongoDB作为空间数据库的不足
4、什么是MongoGIS项目', '对地理数据、GDAL、MongoDB有基本了解', '2018-09-02 20:37:34.809627', '2018-08-12 23:48:20.417085');
INSERT INTO "public"."tb_imooc_course" VALUES (800, 160, '“Doge”变身术 ', '初级', 57174, '让你在小例子中掌握如何做出动态的Doge图片效果', '设计工具', 'https://img3.mukewang.com/53f43ebf0001bcf106000338-240-135.jpg', 'https://www.imooc.com/learn/160', '11分', 9.6, 9.7, 9.7, 9.4, '简介：课程通过简单介绍FotoMorph的用户界面，让你在小例子中掌握如何使用FotoMorph来完成图片的合成变形效果。', 'Oeasy', 'https://img1.mukewang.com/53855e6f0001034501400140-80-80.jpg', '页面重构设计', '1、对FotoMorph感兴趣
2、Doge的忠实粉丝', '使用FotoMorph来完成图片的合成变形效果。', '2018-09-02 20:37:39.590953', '2018-08-12 23:48:35.031322');
INSERT INTO "public"."tb_imooc_course" VALUES (802, 148, '手把手教你实现电商网站后台开发', '中级', 110660, '手把手教你用PHP搭建电子商务平台，由浅入深教你搭建电商系统', 'PHP', 'https://img4.mukewang.com/53c4bf6d00015b0106000338-240-135.jpg', 'https://www.imooc.com/learn/148', '10小时 0分', 9.8, 9.9, 9.8, 9.7, '简介：本系统从慕课网电子商务系统的需求分析、数据表设计入手，从后台搭建，到后台模块实现，由浅入深教你如何搭建电子商务系统，包括前台数据的显示并详细讲解了电商系统开发流程以及开发过程中会遇到的问题及如何解决。', 'King', 'https://img4.mukewang.com/567ca60000011fae26501720-80-80.jpg', 'PHP开发工程师', '1、本课程适合具备PHP基础与MySQL基础的程序猿们
2、想通过案例将所掌握知识应用到实际案例的小伙伴们
', '1、电商系统的搭建流程
2、PHP常用功能函数的封装与应用
3、项目开发的思想与解决问题的能力
', '2018-09-02 20:37:39.900777', '2018-08-12 23:48:35.173799');
INSERT INTO "public"."tb_imooc_course" VALUES (561, 394, 'Linux C语言指针与内存', '初级', 91711, '指针-C语言的核心，代领大家对c语言有更加深刻的理解', 'C', 'https://img2.mukewang.com/5707624d0001423906000338-240-135.jpg', 'https://www.imooc.com/learn/394', '2小时 5分', 9.6, 9.9, 9.5, 9.4, '简介：本课程通过图形与程序实验，配合gdb调试工具，将c语言编程中最难理解的内存管理与指针形象的展示在大家面前。由于内存地址的概念偏底层，想真正掌握还需按照课程中教授的方法多做实验以加深映像，相信反复试验几次之后，大家都能够对c语言有更加深刻的理解。', 'DavidChin', 'https://img3.mukewang.com/5451aa250001e38236482736-80-80.jpg', NULL, '本课程是C语言中级课程，为了更好的学习效果：
1、需要有一定的C语言基础，如果没有基础的同学可以看《C语言入门》这门课。
2、本课程是在Linux环境下讲解，需要熟悉一些Linux命令。如果不了解的话可以在《Linux C语言编程基本原理与实践》这门课程中补充', '1、C语言中的指针是怎么回事
2、Linux下gdb调试工具是怎样使用的
3、指针与内存有着怎样的关系
4、数组与字符串之间的联系', '2018-09-02 20:37:25.651599', '2018-08-12 23:48:13.11751');
INSERT INTO "public"."tb_imooc_course" VALUES (808, 57, '如何用CSS进行网页布局', '初级', 190898, '用最简洁的案例教你布局的那些知识，这是前端工程师基本技能', 'HTML/CSS', 'https://img.mukewang.com/576b7b6c0001594106000338-240-135.jpg', 'https://www.imooc.com/learn/57', '22分', 9.6, 9.8, 9.6, 9.4, '简介：如何用CSS进行网页布局？这可是前端工程师最最基本的技能，本课程教你怎么制作一列布局、二列布局、三列布局当然还有最通用的混合布局，而且你还可以选择让它固定还是自适应。用CSS重新规划你的网页，让你的网页从此更美观、更友好。', '江老实', 'https://img2.mukewang.com/5269cc190001854d14561456-80-80.jpg', 'Web前端工程师', '1.你需要掌握html+css样式基础知识
2.有一定的前端实际开发经验', '1.掌握网页布局的相关知识
2.能对不同的网页进行布局结构划分
3.掌握固定宽度和自适应宽度的实现方法
', '2018-09-02 20:37:46.768954', '2018-08-12 23:48:35.549783');
INSERT INTO "public"."tb_imooc_course" VALUES (806, 140, '移动端的WEB相册', '中级', 46682, '本课程通过一个移动端相册案例，带您一步步了解移动端框架', 'WebApp', 'https://img1.mukewang.com/53acc68600017f4506000338-240-135.jpg', 'https://www.imooc.com/learn/140', '1小时32分', 9.5, 9.8, 9.4, 9.3, '简介：移动端开发越来越火热，WebAPP应用也层出不穷，如何开发常用移动端相册类网页，本课程通过一个移动端相册，将移动端框架，常见优化手段和触屏设备开发等理论串联起来，使用当下比较流行的CSS3和HTML5技术实现一个针对移动端设备的完整的相册应用。', '远人', 'https://img4.mukewang.com/536b4d120001005f02720306-80-80.jpg', 'Web前端工程师', '您至少具备HTML/CSS、JavaScript、CSS3基础知识。', '针对WEB相册的touch事件、CSS3 动画、Zepto框架、Canvas等知识的应用。', '2018-09-02 20:37:47.714409', '2018-08-12 23:48:35.402457');
INSERT INTO "public"."tb_imooc_course" VALUES (811, 42, '表单美化', '初级', 39537, '本教程讲解表单美化，主要是对方法和思路的分享，让表单与众不同', 'HTML/CSS', 'https://img3.mukewang.com/57466af30001d55506000338-240-135.jpg', 'https://www.imooc.com/learn/42', '1小时26分', 9.5, 9.7, 9.4, 9.3, '简介：本课程主要讲解表单美化，授之以鱼不如授之以渔，所以主要是对方法和思路的分享，对单选按钮、复选按钮（复选框）、文本框及下拉列表进行美化；对象不同，美化方法亦不同，让你网页中的表单与众不同。', 'SunBest', 'https://img2.mukewang.com/52e619cc0001b45b03410395-80-80.jpg', NULL, '1.对HTML+CSS相关知识熟悉
2.掌握FORM表单基本知识，会制作表单；
3.对JavaScript相关知识熟悉
', '1. 对不同类型的表单能够进行美化
2.对表单输入域及标签说明有更深的认识
', '2018-09-02 20:37:46.299712', '2018-08-12 23:48:35.84803');
INSERT INTO "public"."tb_imooc_course" VALUES (715, 251, 'Java眼中的XML  文件写入', '初级', 53090, '举例说明JAVA程序如何生成XML文档，多种生成方式任你选择', 'Java', 'https://img.mukewang.com/570365380001287106000338-240-135.jpg', 'https://www.imooc.com/learn/251', '2小时 0分', 9.7, 9.9, 9.8, 9.5, '简介：XML 在数据传输及存储等方面非常流行，所以使用 JAVA 程序来生成相应用途的 XML 文件就变得非常重要，那么问题来了：如何使用 JAVA 程序生成一个 XML 文档呢？本节课将详细为你解答！', 'JessicaJiang', 'https://img3.mukewang.com/53ec59780001f0b901400140-80-80.jpg', 'JAVA开发工程师', '本课程是 Java 的中级课程，需要各位小伙伴们熟悉 Java 面向对象的思想，并能熟练掌握 Java I/O 的相关知识。对什么是XML，如何读取XML有疑惑的小伙伴们，可以先去学习《Java眼中的XML---文件读取》进修。', '1、通过DOM方式生成xml文档
2、通过SAX方式生成xml文档
3、通过DOM4J方式生成xml文档
4、通过JDOM方式生成xml文档
5、不同生成方法大PK', '2018-09-02 20:37:32.49402', '2018-08-12 23:48:27.239502');
INSERT INTO "public"."tb_imooc_course" VALUES (812, 39, '前端开发工具技巧介绍—DW篇', '入门', 202778, '本教程主要讲解Dreamweaver使用技巧和重要实用模块，新手入门必备', '前端工具', 'https://img1.mukewang.com/5704a5d50001582f06000338-240-135.jpg', 'https://www.imooc.com/learn/39', '40分', 9.6, 9.8, 9.6, 9.5, '简介：“工欲善其事，必先利其器”。本课主要以Dreamweaver CS6为例，讲授Dreamweaver的使用技巧和重要实用模块，将会覆盖实际开发过程中90%以上的功能，新手入门必备！', '江老实', 'https://img2.mukewang.com/5269cc190001854d14561456-80-80.jpg', 'Web前端工程师', '1.了解HTML相关的基础知识
2. 对CSS和JavaScript有初步的认识', '让新手可以熟练使用Dreamweaver 开发工具', '2018-09-02 20:37:46.316212', '2018-08-12 23:48:35.896202');
INSERT INTO "public"."tb_imooc_course" VALUES (809, 119, 'impress让你的内容“舞”起来', '初级', 53038, '本教程向你介绍功能强大的制作演示文稿的工具，他叫做impress.js', 'JavaScript', 'https://img.mukewang.com/5386fece00016e0006000338-240-135.jpg', 'https://www.imooc.com/learn/119', '30分', 9.1, 9.3, 9.1, 9, '简介：本课程讲解一个功能强大的制作演示文稿的工具，他叫做impress.js，如果你已经厌烦了PPT，那么不妨开始学习使用impress.js，他将会使你随便设置几个参数就能实现效果炫酷吊炸天的演示文稿', 'Oeasy', 'https://img1.mukewang.com/53855e6f0001034501400140-80-80.jpg', '页面重构设计', '请做好放弃PPT的心理准备
请做好疯狂爱上impressde心理准备', '了解在线演示工具impress
掌握impress的基本使用方法
学会使用impress制作炫酷的演讲稿', '2018-09-02 20:37:43.34528', '2018-08-12 23:48:35.730709');
INSERT INTO "public"."tb_imooc_course" VALUES (460, 538, 'Shell典型应用之系统信息及运行状态获取', '中级', 20324, 'Linux系统常用信息及运行状态监控，能够使用shell脚本进行分析', 'Linux', 'https://img1.mukewang.com/5653bd1d0001801906000338-240-135.jpg', 'https://www.imooc.com/learn/538', '49分', 9.5, 9.6, 9.5, 9.2, '简介：本门课程是《shell典型应用》系列的第二门课程，主要分为两个部分，一是介绍如何提取内核版本、系统版本和网络地址等操作系统信息。二是介绍如何分析系统的运行状态，包括CPU负载、内存及磁盘使用率等。', 'Jeson老师', 'https://img1.mukewang.com/5510c7a600016ea802200220-80-80.jpg', 'Python工程师', '学习本课程前需要熟悉Linux的基础知识，熟练使用VIM文本编辑器，并对shell基础有所了解。作为《shell典型应用》系列的第二门课程，请先学习《Shell典型应用之主控脚本实现》。', '1、能够进一步了解shell基础。
2、能够使用shell脚本提取Linux操作系统信息。
3、能够使用shell脚本分析系统的运行状态。
', '2018-09-02 20:37:15.001035', '2018-08-12 23:48:03.950339');
INSERT INTO "public"."tb_imooc_course" VALUES (820, 92, 'When iOS loves JS', '中级', 26799, '了解iOS 7中内置的jsbinding技术，两者到底能产生怎样的化学反应', 'JavaScript, iOS', 'https://img4.mukewang.com/536ae635000121e906000338-240-135.jpg', 'https://www.imooc.com/learn/92', '1小时 1分', 9.7, 9.9, 9.5, 9.7, '简介：JSBinding 技术的出现, 架起JavaScript 与原生语言之间的桥梁, 让我们能够充分发挥两者的优点.但是这项技术在过去仍然偏小众, 并没有被非常广泛的应用。不过随着iOS 7的推出, JSBinding终于从某个角落里被请到了台前.', '大城小胖', 'https://img2.mukewang.com/52e0ebbc000130fb16041604-80-80.jpg', 'Web前端工程师', 'JS 和 Objective-C 的基本知识', '了解iOS 7中内置的jsbinding技术，并学会如何利用jsbinding混合使用js和oc，从而更好的发挥两者各自的优点', '2018-09-02 20:37:43.292474', '2018-08-12 23:48:36.850578');
INSERT INTO "public"."tb_imooc_course" VALUES (815, 20, '网页简单布局之结构与表现原则', '初级', 103236, '入门必杀技之结构与表现相分离，课程会有3个案例，不同角度讲解', 'HTML/CSS', 'https://img4.mukewang.com/57466b8c0001389b06000338-240-135.jpg', 'https://www.imooc.com/learn/20', '22分', 9.7, 9.8, 9.7, 9.5, '简介：在网页制作当中，结构与表现分离的思想，不仅仅是将html、css分别写在不同文件当中这么简单，要从更深层次上去进行理解。本课程通过3个案例，分别从不同角度，对结构和表现分离的思想进行了展示和分析。', '江老实', 'https://img.mukewang.com/5269cc190001854d14561456-80-80.jpg', 'Web前端工程师', '1.html+css简单的基础知识
2.有网页制作实战经验', '1.根据效果图能正确分解结构和表现
2. 能够深入理解网页结构与表现分离的思想
', '2018-09-02 20:37:46.679683', '2018-08-12 23:48:36.246078');
INSERT INTO "public"."tb_imooc_course" VALUES (818, 118, 'CSS圆角进化论', '初级', 25599, 'CSS小圆角，三种制作方式都教给你，并详细讲解每一种的实现方式', 'HTML/CSS', 'https://img3.mukewang.com/5704a89a00016cf706000338-240-135.jpg', 'https://www.imooc.com/learn/118', '1小时 5分', 9.6, 9.7, 9.7, 9.4, '简介：CSS圆角的实现，经历了三大发展阶段：背景图片（贴图）方式、CSS2.0+HTML标签模拟、CSS3.0圆角属性（border-radius）。本案例详细讲解每一种的实现方式，并对实现的优缺点进行对比分析。', '婧享人生', 'https://img1.mukewang.com/53216f1e0001149503600573-80-80.jpg', NULL, '1.具备HTML+CSS知识基础；2.对PS切图有一定的了解；3.对CSS3的圆角属性属性。', '1.三种方式制作圆角；2.了解每种方式的优劣，并根据实际情况进行选择。', '2018-09-02 20:37:43.247056', '2018-08-12 23:48:36.469703');
INSERT INTO "public"."tb_imooc_course" VALUES (817, 114, 'QQ空间时光轴特效', '初级', 26751, '教你最流行的QQ空间时光轴特效，具有简洁，交互性好特点', 'JavaScript', 'https://img3.mukewang.com/57466c260001ef3406000338-240-135.jpg', 'https://www.imooc.com/learn/114', '1小时40分', 9.7, 9.7, 9.8, 9.6, '简介：QQ空间时光轴特效信息展示简洁，交互性好。本课程首先分析特效的界面代码结构：时序菜单和日志列表，还将引入一个重要的知识点：前端模板，并从界面中抽出模板备用。特效部分将会重点分享跳转特效、高亮特效以及滚动页面自动展开时序标签。', 'Lyn', 'https://img4.mukewang.com/53216f440001f5a904330473-80-80.jpg', 'Web前端工程师', '1.熟练掌握HTML+CSS相关知识，尤其是对CSS定位、浮动清除，圆角、三角形等了解；2.对JS基础知识熟悉', '1.你将学会如何实现QQ空间时光轴特效；2.掌握前端模板知识', '2018-09-02 20:37:46.595667', '2018-08-12 23:48:36.325736');
INSERT INTO "public"."tb_imooc_course" VALUES (819, 113, 'PHP加密技术专题', '中级', 26235, '本课程介绍几种常见的数据处理方式，以及数据加密的几种形式', 'PHP', 'https://img2.mukewang.com/570761ac000147d306000338-240-135.jpg', 'https://www.imooc.com/learn/113', '1小时13分', 9.5, 9.7, 9.6, 9.3, '简介：从互联网诞生起，网站安全就一直伴随我们左右，尤其是网站数据的安全性显得尤为重要，做为一个成熟的程序员对网站数据的处理显得尤为重要，本课程介绍几种常见的数据处理方式，以及数据加密的几种形式！', 'King', 'https://img4.mukewang.com/567ca60000011fae26501720-80-80.jpg', 'PHP开发工程师', '本课程适合正在企业中奋战的phper们，如何保证网站数据的安全，如何对数据进行加密处理，小伙伴们，让我们一起捍卫吧！', '1、常见的数据加密方式
2、数据加密技术底层是如何实现的
3、常见的数据加密技术：单项散列加密、对称加密和非对称加密
4、如何保证网站数据的安全
', '2018-09-02 20:37:46.978757', '2018-08-12 23:48:36.83392');
INSERT INTO "public"."tb_imooc_course" VALUES (529, 477, 'C++远征之模板篇', '中级', 78900, '本C++教程力求即学即会，所有知识以实践方式讲解到操作层面', 'C++', 'https://img4.mukewang.com/570760280001c89106000338-240-135.jpg', 'https://www.imooc.com/learn/477', '3小时21分', 9.8, 9.9, 9.9, 9.6, '简介：本课程将带领大家体会更为奇妙的C++，讲述了静态、友元、运算符重载的定义及使用方法，其中重点讲述函数模板、类模板以及标准模板库的相关知识，知识内容更重实用性，本门课程对于面向对象的语言的学习将大有裨益，所有知识均以实践的方式讲解到操作层面，力求即学即会。', 'james_yuan', 'https://img3.mukewang.com/550f82810001c44902200220-80-80.jpg', '学生', '学习本课程需要有一定的C语言和C++语言基础。如基础不太扎实的同学可以，参与C++远征攻略的学习计划，友情链接 http://www.imooc.com/course/programdetail/pid/42', '1、友元函数及友元类的定义及使用方法
2、静态数据成员和静态成员函数的定义及使用方法
3、运算符重载的技巧
4、函数模板和类模板的定义及使用方法
5、标准模板库的使用方法及基本原理', '2018-09-02 20:37:17.650875', '2018-08-12 23:48:09.870422');
INSERT INTO "public"."tb_imooc_course" VALUES (702, 295, 'mongoDB入门篇', '入门', 91964, 'mongoDB入门视频教程，慕课网带你进入mongoDB神秘世界', 'MongoDB', 'https://img2.mukewang.com/5707779600011fdf06000338-240-135.jpg', 'https://www.imooc.com/learn/295', '5小时20分', 9.4, 9.6, 9.2, 9.3, '简介：本课程介绍了mongoDB简单数据库的搭建，从使用方面了解mongoDB的特性与基本的操作，让小伙伴们对mongoDB在业务层的使用有较为详细的了解，可以使用mongoDB完成基本的业务开发。', 'SeanZ', 'https://img2.mukewang.com/54bcba130001fc2305680568-80-80.jpg', NULL, '1、对数据库的概念有比较清晰的认识。
2、了解一些简单的shell操作。', '1、了解mongoDB的特性
2、掌握mongoDB的基本操作 
3、了解mongoDB在业务层的使用，并学会使用mongoDB来进行应用开发', '2018-09-02 20:37:34.568107', '2018-08-12 23:48:25.224132');
INSERT INTO "public"."tb_imooc_course" VALUES (822, 120, 'Tooltip浮动提示框效果', '初级', 24554, '小效果大作用，提升用户体验度，提升编程兴趣和水平', 'JavaScript', 'https://img1.mukewang.com/53913e120001096306000338-240-135.jpg', 'https://www.imooc.com/learn/120', '50分', 9.8, 10, 9.7, 9.8, '简介：本课程详细讲述使用原生JavaScript如何设计和实现Tooltip浮动提示框特效。并通过一步一步的代码实现和代码优化过程，不仅让您掌握特效的实现，还掌握解决问题的思路，了解诸如代码简化、事件绑定、事件冒泡等更多的JavaScript技巧和知识，提升编程兴趣和水平。', '姜维_Wayne', 'https://img2.mukewang.com/599ea79c0001a1bc05000500-80-80.jpg', 'Web前端工程师', '您至少具备HTML/CSS和JavaScript知识。', '1.掌握DOM操作，创建和追加元素。2.如何使用定时器方法。3.鼠标事件、事件绑定、事件冒泡。', '2018-09-02 20:37:43.761158', '2018-08-12 23:48:36.903767');
INSERT INTO "public"."tb_imooc_course" VALUES (828, 130, '拍摄与剪辑“怀孕日记”', '入门', 47627, '本课程通过用固定机位拍摄和制作定格动画“准妈妈的怀孕日记”', '动效动画', 'https://img3.mukewang.com/570779580001abe306000338-240-135.jpg', 'https://www.imooc.com/learn/130', '30分', 9.7, 9.9, 9.8, 9.5, '简介：本课程通过用固定机位来拍摄和制作定格动画“准妈妈的怀孕日记”。不仅告诉你拍摄的创意和想法，同时教你使用时下最流行的后期剪辑软件Premiere。对于有生活情趣并热爱记录的你，这是专门为你量身定制的私人“摄影和剪辑”课程。', '浅调雨', 'https://img4.mukewang.com/53997e5a0001399004530456-80-80.jpg', NULL, '课程针对所有对拍摄和记录生活有浓厚兴趣的小伙伴，或者从事后期制作、摄影的小白用户。
', '1、拍摄前的创意想法
2、拍摄时的技巧
3、后期制作软件Premiere的使用方法 
4、记录生活的新方法和idear', '2018-09-02 20:37:44.01411', '2018-08-12 23:48:37.436461');
INSERT INTO "public"."tb_imooc_course" VALUES (824, 128, '“Doge”变化术', '初级', 82533, '本课程通过使用Photoshop来演示如何制作各种有趣的“Doge图”', '设计工具', 'https://img1.mukewang.com/5396d3a10001849906000338-240-135.jpg', 'https://www.imooc.com/learn/128', '10分', 9.5, 9.6, 9.7, 9.3, '简介：本课程通过使用Photoshop来演示如何制作各种有趣的“Doge图”。如果这只萌狗也hit到了你的萌点，那么快点动手和老师一起制作有趣的图片和小伙们们互动吧！', 'Oeasy', 'https://img3.mukewang.com/53855e6f0001034501400140-80-80.jpg', '页面重构设计', '对Photoshop感兴趣
Doge的忠实粉丝
', '使用Photoshop来完成简单趣图的制作', '2018-09-02 20:37:44.110632', '2018-08-12 23:48:36.934491');
INSERT INTO "public"."tb_imooc_course" VALUES (835, 136, 'Android的ListView分页功能', '中级', 39561, '本课程讲解一种实现ListView分页功能，看视频就有答案', 'Android', 'https://img3.mukewang.com/57075a080001553f06000338-240-135.jpg', 'https://www.imooc.com/learn/136', '25分', 9.7, 9.9, 9.8, 9.4, '简介：本课程讲解一种实现ListView分页功能，listView是我们开发中使用最平凡的一个控件，当我们的数据很多的时候一页并不能放下，这个时候我们就需要listView的分页加载来实现，将数据分开显示出来。那么如何去分页呢，分页操作过程中有什么需要注意的呢？看视频就有答案', '邦蜀黍', 'https://img4.mukewang.com/539ff88a0001210601400140-80-80.jpg', '移动开发工程师', '1、有一定Android开发基础
2、有一定Android开发经验
', '一种实现ListView分页功能的方法
学习分页加载的逻辑思路的出发
', '2018-09-02 20:37:43.261623', '2018-08-12 23:48:37.851717');
INSERT INTO "public"."tb_imooc_course" VALUES (634, 352, '细说Java多线程之内存可见性', '中级', 49161, '用两种方式实现内存可见性，代领大家深层次学习Java中的内存', 'Java', 'https://img1.mukewang.com/57466966000135b806000338-240-135.jpg', 'https://www.imooc.com/learn/352', '57分', 9.6, 9.9, 9.7, 9.4, '简介：本课程带领大家深层次学习Java中的内存可见性、Java内存模型、指令重排序、as-if-serial语义等多线程中偏向底层的一些知识，以及synchronized和volatile实现内存可见性的原理和方法。', 'MartonZhang', 'https://img4.mukewang.com/54f163420001c4dd02200220-80-80.jpg', NULL, '学习本课程前，你需要熟练掌握Java的基础语法，熟悉Java多线程的基础知识，以及synchronized实现线程同步的方法。', '1、内存可见性 
2、指令重排序  
3、as-if-serial语义  
4、synchronized实现可见性  
5、volatile实现可见性 		', '2018-09-02 20:37:27.384925', '2018-08-12 23:48:19.13673');
INSERT INTO "public"."tb_imooc_course" VALUES (713, 222, 'jQuery源码解析（DOM与核心模块）', '高级', 66736, '由浅入深的剖析jQuery库的设计与实现，揭开框架背后的秘密', 'jQuery', 'https://img3.mukewang.com/570b05f4000194e506000338-240-135.jpg', 'https://www.imooc.com/learn/222', '4小时 0分', 9.4, 9.9, 9.4, 8.8, '简介：本课程是目前真正意义上第一部完整的jQuery 2.1.1版本源码课程，课程共14章，分两个部分，本课程是第一部分课程。本课程主要讲解DOM处理与核心模块部分，可以让我们由浅入深的剖析jQuery库的设计与实现。', 'Aaron艾伦', 'https://img2.mukewang.com/54bf47ea000132d002200220-80-80.jpg', 'Web前端工程师', '源码的阅读不是一蹴而就的，需要大家有一定的功底，比如jQuery的基础运用以及API的熟悉度，除此之外要有牢固的javascript、DOM、CSS的基础功底，甚至还需要理解常见的设计模式、数据结构等等。当然大家也不要被这些给吓住了，理解，总是需要一种慢慢的学习过程。', '通过本课程的学习，您可以由浅入深地剖析jQuery库的设计与实现。
其中我们围绕的重心：
1、设计理念
2、结构组织
3、接口设计
4、模式运用
5、场景套用
', '2018-09-02 20:37:32.461769', '2018-08-12 23:48:27.052506');
INSERT INTO "public"."tb_imooc_course" VALUES (832, 135, 'Android的ListView下拉刷新', '中级', 43472, '本课程就分享一个Android实现ListView下拉刷新功能的技巧', 'Android', 'https://img4.mukewang.com/57075a320001c61f06000338-240-135.jpg', 'https://www.imooc.com/learn/135', '40分', 9.8, 10, 9.7, 9.7, '简介：ListView是Android开发中最常用的控件之一，各种应用都在想尽办法的挖掘其潜能，下拉刷新功能就是目前非常流行的一个功能，本课程就将分享一个实现ListView下拉刷新功能的技巧', '邦蜀黍', 'https://img4.mukewang.com/539ff88a0001210601400140-80-80.jpg', '移动开发工程师', '1、有一定Android开发基础
2、有一定Android开发经验
', '1、将学会如何实现ListView下拉刷新功能
2、将会学习类似新闻客户端中的功能
3、学会listView的另一个独特的功能
', '2018-09-02 20:37:47.232371', '2018-08-12 23:48:37.557098');
INSERT INTO "public"."tb_imooc_course" VALUES (851, 81, '人人网评论功能', '初级', 24565, '仿人人网评论，让你的网页活跃起来，赶快来学习让功能的实现吧', 'JavaScript', 'https://img4.mukewang.com/574676e50001587a06000338-240-135.jpg', 'https://www.imooc.com/learn/81', '1小时23分', 9.8, 10, 9.6, 9.8, '简介：社交化媒体盛行时代，大家经常会使用评论、回复、点赞等各种功能，这些功能是如何实现的？本课程通过分析评论功能的逻辑关系，讲解如何使用JavaScript语言实现人人网的评论功能。赶快来学习网络评论功能的实现吧！', '阿安', 'https://img3.mukewang.com/52b2a15e0001825906700451-80-80.jpg', 'JS工程师', '您至少具备HTML/CSS/JavaScript的基础知识。', '1.学会JavaScript处理日期和时间。2.掌握Dom操作中的添加/删除子节点方法。3.使用setTimeout设置定时器。4.使用clearTimeout清除定时器以及事件代理的运用。', '2018-09-02 20:37:45.544889', '2018-08-12 23:48:39.17988');
INSERT INTO "public"."tb_imooc_course" VALUES (834, 137, 'WEB调试工具---Firebug', '初级', 73987, 'Firebug让您快速找到问题所在，给Web开发带来极大的便利', '前端工具', 'https://img4.mukewang.com/5705b5990001312206000338-240-135.jpg', 'https://www.imooc.com/learn/137', '33分', 9.7, 9.8, 9.7, 9.5, '简介：Firebug是WEB调试工具之一，是网页浏览器 Firefox 下的一款开发类插件。它集HTML查看和编辑、JS控制台、网络状况监视器于一体，是开发JavaScript、CSS、HTML和Ajax的得力助手。掌握Firebug的使用，可从各个不同的角度剖析Web页面内部的细节，给Web开发带来极大的便利。', '姜维_Wayne', 'https://img2.mukewang.com/599ea79c0001a1bc05000500-80-80.jpg', 'Web前端工程师', '只要您对WEB开发感兴趣，想提高开发效果，赶快来学习本课程。', '运用Firebug 编辑HTML、处理CSS、调试Javascript、监听Ajax、评估页面速度等', '2018-09-02 20:37:43.043313', '2018-08-12 23:48:37.733777');
INSERT INTO "public"."tb_imooc_course" VALUES (837, 146, '模式的秘密---适配器模式', '中级', 31432, '适配器教你如何“到什么山唱什么歌”，将你锻造成java大人', 'Java', 'https://img3.mukewang.com/5704a3d100016e9206000338-240-135.jpg', 'https://www.imooc.com/learn/146', '30分', 9.5, 9.8, 9.4, 9.3, '简介：所谓适配器，就是连接“源”和“目标”的纽带。本课程由生活中常见的例子入手，深入浅出的讲解适配器模式的含义以及该模式的角色关系，讲解在适配器模式中如何通过“组合”和“继承”实现代码重用，为你的 Java 达人锻造添砖加瓦~~', 'tuohuangs', 'https://img2.mukewang.com/53b616cf00012bc301400140-80-80.jpg', 'JAVA开发工程师', '本课程的学习，需要小伙伴们具有以下基础
1、Java基础
2、掌握面向对象的思想
如果您是新手，建议先移步 《Java入门第一季》 和 《Java入门第二季》', '1、理解适配器模式的含义及该模式的角色关系
2、理解两种模式的区别
3、领悟适配器模式是如何通过“组合”和“继承”实现代码重用
4、学会灵活运用适配器解决问题', '2018-09-02 20:37:40.726576', '2018-08-12 23:48:38.082132');
INSERT INTO "public"."tb_imooc_course" VALUES (841, 100, '手把手教你实现电商网站开发', '初级', 154560, '本课程主要介绍电商网站基本制作流程，掌握整站开发过程，增加经验', 'HTML/CSS', 'https://img3.mukewang.com/53c4bf8200011aac06000338-240-135.jpg', 'https://www.imooc.com/learn/100', '8小时 0分', 9.5, 9.7, 9.3, 9.5, '简介：本课程主要介绍电商网站基本制作流程，通过电商网站分步的教学让大家了解和掌握电商网站制作的流程和注意事项。并且运用网站内学习过的知识点，更加快速的掌握整站的开发过程，增加开发经验。', 'Busy', 'https://img3.mukewang.com/53796b7f0001d38801200120-80-80.jpg', 'Web前端工程师', '1.要对HTML+CSS相关标签有所掌握；2.对网页布局知识有简单的了解；3.掌握一定的JS基础知识', '让用户了解和掌握整站制作的流程、整站兼容性的系列知识。整个视频为用户讲解网页整站构建的知识和技巧，适时添加“提示”，以补充使用技巧和知识链接，读者可以快捷地学习操作和应用，实战性非常强。', '2018-09-02 20:37:47.479324', '2018-08-12 23:48:38.313852');
INSERT INTO "public"."tb_imooc_course" VALUES (843, 112, '模式的秘密---单例模式', '中级', 64903, '单例模式是在Java中最重要模式之一，让我们揭开单例模式神秘面纱', 'Java', 'https://img.mukewang.com/5704a3b20001861306000338-240-135.jpg', 'https://www.imooc.com/learn/112', '30分', 9.7, 9.8, 9.7, 9.5, '简介：设计模式是前辈们在多年开发工作中经验的总结，可以提高代码的可重用性、可靠性和规范性，让代码更容易理解，而单例模式是在Java中最重要、最简单、最常用的设计模式之一，让我们一起来揭开它的神秘面纱吧。', '汤小洋', 'https://img1.mukewang.com/596b71040001ff8206400640-80-80.jpg', '全栈工程师', '本课程是 Java 开发课程的高级课程，如果您是新手，建议先移步 《Java入门第一季》和《Java入门第二季》
', '1、 了解设计模式
2、 理解单例模式的含义及应用场合
3、 掌握单例模式中饿汉模式和懒汉模式的使用
4、 理解两种模式的区别', '2018-09-02 20:37:47.65454', '2018-08-12 23:48:38.376392');
INSERT INTO "public"."tb_imooc_course" VALUES (842, 152, 'PS入门基础-魔幻调色', '入门', 134139, '本课程将带你学习有关ps调色的技能，魔幻调色炫起来', '设计工具', 'https://img3.mukewang.com/53c4c0b30001290b06000338-240-135.jpg', 'https://www.imooc.com/learn/152', '1小时 7分', 9.5, 9.8, 9.5, 9.2, '简介：本课程将带你学习有关ps调色的技能，例如色彩调整层基础知识，亮度对比，自动调整颜色，色阶，曲线，曝光度，自然饱和度，色相饱和度，色彩平衡度等 。相信童鞋们通过本课程的学习，一定能制作出最绚丽的美图。', '祁连山', 'https://img2.mukewang.com/53c49d460001056f08010792-80-80.jpg', NULL, 'ps基本调色工具的操作和技能', '喜欢photoshop的童靴来这里互动学习吧 ', '2018-09-02 20:37:47.669769', '2018-08-12 23:48:38.343644');
INSERT INTO "public"."tb_imooc_course" VALUES (860, 40, '前端开发工具技巧介绍—Sublime篇', '入门', 166586, '一款技术大牛高效编码神器，极大提高你的生产力', '前端工具', 'https://img4.mukewang.com/5704a54300013d5d06000338-240-135.jpg', 'https://www.imooc.com/learn/40', '1小时 0分', 9.7, 9.9, 9.7, 9.5, '简介：本课程主要对Sublime Text这款前端开发工具中的非常优秀的特性进行介绍，命令模式、Goto anything、多行游标等这些能极大提高你的生产力，不愧是码农进阶必备神器。', 'GreenBoots', 'https://img4.mukewang.com/52e4bdfc0001068e02190219-80-80.jpg', 'Web前端工程师', '1.具有前端开发经验；
2.对HTML+CSS+JavaScript内容熟悉掌握。', '1.快速提高编辑水平；
2.增加网络开发专业能力。', '2018-09-02 20:37:48.220639', '2018-08-12 23:48:40.046882');
INSERT INTO "public"."tb_imooc_course" VALUES (671, 359, 'Avalon探索之旅基础教程——复杂绑定', '中级', 9202, '本课程为Avalon基础教程，带你领略前端迷您MVVM框架 Avalon', 'JavaScript', 'https://img4.mukewang.com/5705d1a80001251b06000338-240-135.jpg', 'https://www.imooc.com/learn/359', '2小时53分', 9.6, 10, 10, 8.7, '简介：Avalon是一款迷你的MVVM框架，其API设计非常简单易用，兼容IE6-8，更好维护，大大地提高生产力。本课程为Avalon探索之旅基础教程的复杂绑定篇，主要讲解:内联样式、事件绑定、循环操作、属性监听、模块通信，并通过实例演示，让您掌握相关知识与技能。', '司徒正美', 'https://img2.mukewang.com/549d354a0001f37201400140-80-80.jpg', '其它', '1.《Avalon探索之旅基础教程——简单绑定篇》是该课程前导课程，建议先学习前导课程。
2. 您要具备JavaScript基础知识。', '您将学习到:
1. 内联样式操作ms-css绑定属性
2. 事件绑定属性、事件绑定属性的值及多投事件机制
3. 循环操作的各个绑定属性
4. Avalon如何进行模板应用
5. 如何监听属性的变化
6. 模块间是如何通信的', '2018-09-02 20:37:30.013708', '2018-08-12 23:48:22.416695');
INSERT INTO "public"."tb_imooc_course" VALUES (838, 76, '慕课网2048私人订制', '中级', 62934, '慕课网这款“2048私人订制”通过大神老的讲解学习到游戏结构的开发', 'WebApp', 'https://img1.mukewang.com/5358a36b0001503f06010338-240-135.jpg', 'https://www.imooc.com/learn/76', '2小时27分', 9.8, 9.9, 9.7, 9.7, '简介：慕课网这款“2048私人订制”是让小伙伴通过大神老湿对2048这个游戏的讲解，让小伙伴们边玩边学，并且在玩的过程心中学习到游戏结构的开发、移动端的适配以及IOS、安卓端的开发过程，真正让你从各个角度定制自己的2048游戏！', 'liuyubobobo', 'https://img2.mukewang.com/5347593e00010cfb01400140-80-80.jpg', '全栈工程师', '具备HTML、CSS及JavaScript基本知识,掌握jQuery基本用法。
', '游戏结构的开发、移动端的适配以及IOS、安卓端的开发过程。
', '2018-09-02 20:37:40.298676', '2018-08-12 23:48:38.107254');
INSERT INTO "public"."tb_imooc_course" VALUES (731, 208, '版本管理工具介绍—Git篇', '中级', 136307, '本课程主要讲解了git在各平台的安装和基本使用，来学习Git吧', 'PHP', 'https://img1.mukewang.com/5774d9c40001841306000338-240-135.jpg', 'https://www.imooc.com/learn/208', '50分', 9, 9.3, 8.9, 8.9, '简介：本课程主要讲解了git在各平台的安装和基本使用，Git能够帮助我们解决文件的提交、检出、回溯历史、冲突解决、多人协作模式等问题，并且大大提升我们的工作效率。', '龙猫', 'https://img.mukewang.com/543742650001e18d02250202-80-80.jpg', NULL, '如果你学过编程，有过代码或者项目经验学习期本课程更容易体会到他的强大之处，如果你想在coding方面有长远的发展，那么掌握此工具会助你更上一层楼。', '1、git和github的基本使用
3、使用git和github来解决多人协作问题', '2018-09-02 20:37:38.204279', '2018-08-12 23:48:28.504109');
INSERT INTO "public"."tb_imooc_course" VALUES (543, 467, '与《Yii框架》不得不说的故事—安全篇', '中级', 16476, '本教程主要讲解Yii对4种流行攻击方式的防范和处理', 'PHP', 'https://img3.mukewang.com/55bec3dd0001f71606000338-240-135.jpg', 'https://www.imooc.com/learn/467', '3小时 1分', 9.8, 9.8, 9.9, 9.6, '简介：YII是目前比较火的框架，框架里面使用了最新的技术和设计，可以说学习了YII就学习了最新的php技术，本课程主要学习XSS、CSRF、SQL注入、文件上传漏洞等攻击方式，以及YII框架对它们的防范和处理方式。', 'withy', 'https://img4.mukewang.com/5564088300017b7510240719-80-80.jpg', 'PHP开发工程师', '学习本门课程之前，建议先了解一下知识，会更有助于理解和掌握本门课程
1、掌握PHP基本的语言语法
2、了解sql语句和数据库
3、对互联网安全有一定的了解', '1、XSS、CSRF、SQL注入、文件上传漏洞等攻击方式。
2、YII框架中使用的lexer解析、cookie校验、pdo防范措施。', '2018-09-02 20:37:22.954662', '2018-08-12 23:48:11.400516');
INSERT INTO "public"."tb_imooc_course" VALUES (847, 94, 'WEB在线文件管理器', '初级', 33673, '通过本课程文件目录函数库的学习，让你掌握文件、目录函数库的应用', 'PHP', 'https://img3.mukewang.com/572b0752000142ef06000338-240-135.jpg', 'https://www.imooc.com/learn/94', '3小时 0分', 9.8, 10, 9.8, 9.5, '简介：作为嗷嗷待补的程序猿，我们在不断觅食，不断接收和掌握新技能和新知识，而作为PHP开发中我们必不可少的一项就是文件目录函数库。通过本课程文件目录函数库的学习，可以把他应用到我们真实项目中实现对项目文件目录的管理，如果你具备前端的技能，可以把它变得更绚丽多彩！', 'King', 'https://img1.mukewang.com/567ca60000011fae26501720-80-80.jpg', 'PHP开发工程师', '本课程适合PHP初学者或者自学的童鞋们，通过简单案例来掌握编程思想。需要掌握基础的 html/css/javascript技能。', '1、文件函数库的应用
2、目录函数库的应用
3、如何一步步实现在线文件管理系统
4、如何领悟编程思想，代码不重要，重要的是编程思想，“思想是程序的灵魂”
', '2018-09-02 20:37:45.053444', '2018-08-12 23:48:38.765643');
INSERT INTO "public"."tb_imooc_course" VALUES (849, 60, '鼠标拖拽效果', '初级', 22958, '用你的鼠标任意拖拽屏幕上的弹出窗口，了解把元素设置为可拖拽的原理', 'JavaScript', 'https://img.mukewang.com/532be5b00001b4ee06000338-240-135.jpg', 'https://www.imooc.com/learn/60', '34分', 9.7, 9.9, 9.7, 9.5, '简介：用鼠标拖拽弹出窗口是我们每天用到最多的功能之一。本案例以百度网站的登录窗口为例，讲解鼠标拖拽效果如何实现，拖拽范围限定以及登陆窗口自动居中。通过本案例，你将学会如何制作弹出窗口特效，了解把元素设置为可拖拽的原理。', 'Lyn', 'https://img2.mukewang.com/53216f440001f5a904330473-80-80.jpg', 'Web前端工程师', '1.对DIV和CSS基本内容掌握，理解元素的定位的概念
2.对JS基本语法掌握，理解函数和事件的概念 3.适合一定实战经验的中级以上层次人员学习。', '1.掌握对可拖拽对话框的实现原理
2.了解元素如何触发脚本方法以及如何编写侦听事件
3. 学会设置元素在页面中居中和全屏', '2018-09-02 20:37:46.285342', '2018-08-12 23:48:38.834368');
INSERT INTO "public"."tb_imooc_course" VALUES (748, 26, 'PHP进阶篇', '初级', 159112, '轻松学习PHP中级课程，进行全面了解，用PHP快速开发网站程序', 'PHP', 'https://img1.mukewang.com/572b06470001a42e06000338-240-135.jpg', 'https://www.imooc.com/learn/26', '9小时28分', 8.9, 9.3, 8.8, 8.6, '简介：通过PHP学习的进阶篇的学习，你可以对PHP的理论知识由浅入深有更深一步的掌握，这些知识能够使您更加全面的掌握PHP，从而助您在实际工作中使用PHP快速开发网站程序。', 'Jason', 'https://img1.mukewang.com/53201ffa000197cd06510669-80-80.jpg', 'PHP开发工程师', '需要有一定的网页基础知识如HTML、CSS样式等，并且已经学习完成《PHP入门篇》对PHP已经有了简单的了解，如变量、常量、数据类型等。', '全面的掌握PHP的理论知识与实践中的应用方法，提高编程能力与掌握网页开发技能。', '2018-09-02 20:37:37.272804', '2018-08-12 23:48:30.191051');
INSERT INTO "public"."tb_imooc_course" VALUES (850, 37, 'Fiddler工具使用', '中级', 48213, '工具在手，效率不愁，内容紧扣实际工作，实战性极强，赶快学习吧', '前端工具', 'https://img.mukewang.com/574671a2000109f806000338-240-135.jpg', 'https://www.imooc.com/learn/37', '1小时 0分', 9.7, 9.9, 9.5, 9.6, '简介：Fiddler是非常最犀利的web调试工具，本课程全面讲解了Fiddler工具的使用，包括工作原理、使用场景、操作界面、常用功能以及相关插件的使用，讲解详细，内容紧扣实际工作，实战性极强。', '远人', 'https://img2.mukewang.com/536b4d120001005f02720306-80-80.jpg', 'Web前端工程师', '熟悉JavaScript，了解HTTP协议，理解Web开发的原理。', '掌握Fiddler工具使用，提高Web调试的效率与质量。', '2018-09-02 20:37:45.514453', '2018-08-12 23:48:39.158167');
INSERT INTO "public"."tb_imooc_course" VALUES (848, 72, '手风琴效果', '初级', 36301, '本视频教程通过实例讲解，教你轻松制作手风琴效果，学起来吧', 'HTML/CSS, JavaScript', 'https://img4.mukewang.com/533a6cf10001e93806000338-240-135.jpg', 'https://www.imooc.com/learn/72', '35分', 9.5, 9.8, 9.3, 9.3, '简介：知道什么是手风琴效果吗？当鼠标滑过一排列表时，鼠标悬停的列表项会发生明暗度的变化，同时图片会放大显示。本课程通过讲解浮动布局、遮罩层、CSS3的transition属性、鼠标事件等知识点，教你实现鼠标悬停时图片明暗度变化、图片伸缩以及图片切换时速度的平滑过渡等效果等', 'mark', 'https://img2.mukewang.com/533943ec0001a7d101400140-80-80.jpg', 'Web前端工程师', '1.HTML中无序列表的相关知识
2.掌握CSS样式的内容，尤其是CSS3的基础内容
3.对JavaScript中鼠标事件等知识熟悉', '1.浮动布局的相关知识
2.掌握CSS3的transition属性
3.会用代码实现手风琴效果', '2018-09-02 20:37:45.92929', '2018-08-12 23:48:38.806025');
INSERT INTO "public"."tb_imooc_course" VALUES (853, 77, 'CSS3 3D 特效', '中级', 71234, '使用CSS3当中的属性，创建真实可用的三维效果', 'CSS3', 'https://img1.mukewang.com/57466c6a0001671406000338-240-135.jpg', 'https://www.imooc.com/learn/77', '1小时 0分', 9.7, 9.9, 9.7, 9.5, '简介：通过CSS3 当中的transition属性、perspective属性、transform属性来创建真实可用的三维效果。', 'liuyubobobo', 'https://img3.mukewang.com/5347593e00010cfb01400140-80-80.jpg', '全栈工程师', '本课程适合有html、css基础知识的同学进阶学习', '如何使用CSS3来创建一个3D的动画效果', '2018-09-02 20:37:48.502722', '2018-08-12 23:48:39.460935');
INSERT INTO "public"."tb_imooc_course" VALUES (857, 52, '固定边栏滚动特效', '初级', 35620, '剖析淘宝首页固定边栏滚动特效，通过JavaScript、jQuery等前端技术实现', 'JavaScript', 'https://img3.mukewang.com/574677840001a33a06000338-240-135.jpg', 'https://www.imooc.com/learn/52', '31分', 9.8, 9.9, 9.9, 9.6, '简介：前端开发中固定边栏滚动特效是各大网站都有的木块，是当今非常流行的的一个技术，那么本课程深刻剖析了淘宝首页固定边栏滚动特效，并通过JavaScript、jQuery等前端技术实现了这一特效。', '远人', 'https://img4.mukewang.com/536b4d120001005f02720306-80-80.jpg', 'Web前端工程师', '在学习本案例之前，您最好具备HTML、CSS、JavaScript、jQuery这几个方面技能。', '通过JavaScript、jQuery实现固定边栏特效，提升技术熟练度，增强技能应用水平。', '2018-09-02 20:37:48.183915', '2018-08-12 23:48:39.542315');
INSERT INTO "public"."tb_imooc_course" VALUES (855, 68, 'JSON应用场景与实战', '初级', 68722, '你还不知道JSON吗，快快加入我们吧，通过学习加深对Json的理解', 'PHP', 'https://img1.mukewang.com/578386af00010eea06000338-240-135.jpg', 'https://www.imooc.com/learn/68', '1小时 0分', 9, 9.6, 8.9, 8.7, '简介：现今Json数据以短小、读取方便等优点，越来越受广大开发人员喜欢。本课分为两部分，前半部分详细介绍JSON的基础知识，后半部分通过两个实站案例再次加深对Json的理解，并演示Json在各个实际场景的用法。', 'eric', 'https://img2.mukewang.com/53353df50001bc0301400140-80-80.jpg', NULL, '1、对html基础知识已经掌握。
2、对php的基础知识掌握，如数组、类、对象。
', '1、JSON数据格式和serialize数据格式的异同和使用 
2、PHP中操作JSON的重要函数 
3、一维数组到JSON数据格式的转换 
4、多维数组到JSON数据格式的转换 
5、对象到JSON数据格式的转换  
6、转换JSON数据格式到对象类型 
7、转换JSON数据格式到数组类型 
', '2018-09-02 20:37:48.402336', '2018-08-12 23:48:39.502076');
INSERT INTO "public"."tb_imooc_course" VALUES (856, 21, '搜索框制作', '初级', 63847, '本课程从简入深讲解搜索框的制作，学习JQ与JS实现Ajax技术的不同点', 'JavaScript', 'https://img3.mukewang.com/52d11ce00001e81a06000338-240-135.jpg', 'https://www.imooc.com/learn/21', '3小时 0分', 9.2, 9.5, 9.2, 9, '简介：本课程中，我们将使用jQuery和JavaScript两种技术来实现搜索框效果功能,并对jQuery和JavaScript两种技术进行了对比，你将可以了解到JQ与JS实现Ajax技术的不同点。赶快行动吧！', '远人', 'https://img.mukewang.com/536b4d120001005f02720306-80-80.jpg', 'Web前端工程师', '具有HTML、CSS样式、Javascript、jQuery基础知识', '可以利用HTML、CSS样式制作出搜索框效果，并使用Javascript及jQuery代码实现Ajax技术分别实现搜索引擎的制作。 
1. 定位元素
2. 输入框、按钮美化
3. 修复IE兼容性问题
4.使用Javascript代码实现Ajax技术
5.使用 jQuery代码实现Ajax技术
6.同源原理', '2018-09-02 20:37:48.597786', '2018-08-12 23:48:39.520225');
INSERT INTO "public"."tb_imooc_course" VALUES (852, 35, '用Socket.io打造协作应用', '中级', 17377, '了解Socket.io在不同版本的浏览器，课程内容前沿，讲解透彻', 'JavaScript', 'https://img4.mukewang.com/52e22c4200016e6e06000338-240-135.jpg', 'https://www.imooc.com/learn/35', '1小时 0分', 9.6, 10, 9.5, 9.4, '简介：Socket.io是一个为实时应用提供跨平台实时通信的库，它旨在使实时应用在每个浏览器和移动设备上成为可能，模糊不同的传输机制之间的差异。本视频精准扼要的讲解了Socket.io在不同版本的浏览器之间实现实时通信的步骤与原理，以及性能瓶颈、框架搭建、包管理、任务管理等方面的技能，内容前沿，讲解透彻，是了解Socket.io技术不可或缺的经典之作。', '俊元', 'https://img3.mukewang.com/52e2470f00019b1001400140-80-80.jpg', NULL, '学习本课程，你需要了解HTML，熟悉CSS，精通JavaScript。', '1、了解Socket.io在不同版本的浏览器之间实现实时通信的步骤与原理
2、了解性能瓶颈、框架搭建、包管理、任务管理等方面的知识', '2018-09-02 20:37:45.088711', '2018-08-12 23:48:39.192501');
INSERT INTO "public"."tb_imooc_course" VALUES (859, 56, '网页定位导航特效', '初级', 66602, '本课程讲解网页定位导航特效，仿天猫版地狗购物网，你值得拥有', 'JavaScript', 'https://img4.mukewang.com/574676670001271f06000338-240-135.jpg', 'https://www.imooc.com/learn/56', '1小时 1分', 9.8, 9.9, 9.7, 9.7, '简介：本课程我们将为大家介绍从静态布局到动态效果实现，从浅到深，循循渐进，讲解如何定位到所需位置，运用jQuery、JavaScript两种方式实现网页定位导航。赶快行动吧！', '姜维_Wayne', 'https://img1.mukewang.com/599ea79c0001a1bc05000500-80-80.jpg', 'Web前端工程师', '学习本课程之前，您需要具备HTML、CSS、JavaScript、jQuery几个方面的基础知识。', '如何使用jQuery、JavaScript两种方式实现网页定位导航，提升HTML、CSS、JavaScript、jQuery的综合应用能力。', '2018-09-02 20:37:47.819338', '2018-08-12 23:48:39.977519');
INSERT INTO "public"."tb_imooc_course" VALUES (643, 300, 'Android实现卫星菜单', '中级', 25660, '学习仿Path的卫星式菜单，课程涵盖了自定义控件的整个过程', 'Android', 'https://img.mukewang.com/5746684d0001d62b06000338-240-135.jpg', 'https://www.imooc.com/learn/300', '1小时30分', 9.8, 10, 9.5, 9.9, '简介：本课程将带领大家通过自定义ViewGroup结合动画实现一个卫星式菜单，课程涵盖了自定义控件的整个过程，包括自定义属性的定义与获取、控件的测量、布局等相关知识。该菜单效果也包含相当多的传统View动画效果，大家可以对其进行深入理解', 'hyman', 'https://img3.mukewang.com/54169c430001face18403264-80-80.jpg', '移动开发工程师', '本课程需要大家对Android的了解要达到小成的境界：
1、掌握自定义控件的流程
2、熟悉常用的控件以及API
3、对传统View动画有一定的了解。', '通过本课程，你将学到：
1、自定义属性的声明和获取以及应用
2、按需求定制的自定义控件的测量和布局
3、对传统View动画的进一步理解', '2018-09-02 20:37:27.882279', '2018-08-12 23:48:19.746313');
INSERT INTO "public"."tb_imooc_course" VALUES (866, 24, 'HTML5之元素与标签结构', '初级', 169732, '详细探讨HTML5元素与标签结构知识，并深入拓展了全局属性的相关知识', 'Html5', 'https://img4.mukewang.com/5774db480001229006000338-240-135.jpg', 'https://www.imooc.com/learn/24', '1小时 0分', 9.2, 9.6, 9, 9, '简介：知识与实例相结合，本部分是HTML5课程的基础内容，主要讲解HTML5的标签结构，与传统的HTML4相比，新增和删去的标签及相关属性，并深入拓展了全局属性的相关知识。', 'Alex', 'https://img.mukewang.com/52d7a0cf00017a3811990799-80-80.jpg', NULL, '1.具有一定的前端开发经验 2.掌握HTML+CSS+JavaScript相关知识
', '1.了解HTML5的结构标签；
2.掌握新增和删去的标签及相关属性
3.运用HTML5相关知识进行实际开发
', '2018-09-02 20:37:48.203915', '2018-08-12 23:48:40.414716');
INSERT INTO "public"."tb_imooc_course" VALUES (867, 17, '信息滚动效果制作', '初级', 46941, '萌妹子带您快速学习滚动效果，掌握无缝滚动和歇间性滚动的制作方法', 'JavaScript', 'https://img4.mukewang.com/574673fc0001097106000338-240-135.jpg', 'https://www.imooc.com/learn/17', '39分', 9.6, 9.8, 9.6, 9.5, '简介：本课程简单介绍marquee标签制作简单滚动的方法，通过分析滚动原理，让您知道效果实现的思路，详细讲解如何复制元素、定时等知识的使用，运用JavaScript技术，让您掌握无缝滚动和歇间性滚动的制作方法。', 'vivian', 'https://img4.mukewang.com/528abd50000195b120422848-80-80.jpg', 'Web前端工程师', '1.您至少具备HTML/CSS基础知识；
2.您至少具备JavaSript基础知识；', '1.学会<marquee>标签及属性，制作简单信息滚动。
2.掌握无缝滚动原理，运用JavaScript实现效果。
3.通过设定定时时间，实现间歇性无缝滚动。', '2018-09-02 20:37:44.335003', '2018-08-12 23:48:40.462837');
INSERT INTO "public"."tb_imooc_course" VALUES (861, 90, '展开与收起效果', '初级', 32131, '通过效果展示与案例分析，教您实现不同类型的展开与收起效果', 'JavaScript', 'https://img3.mukewang.com/574672fa0001e77b06000338-240-135.jpg', 'https://www.imooc.com/learn/90', '1小时 0分', 9.8, 9.8, 9.8, 9.7, '简介：门户网站顶部广告、阅读类网站“查看全文”，电商网站分类导航，都会应用到展开与收起效果。本课程讲解使用JavaScript、jQuery实现动态效果、动画效果原理以及节点式查找控件的方法。通过效果展示与案例分析，让你掌握不同类型展开与收起效果的实现。', 'zongran', 'https://img.mukewang.com/5359d6530001fef001400140-80-80.jpg', 'Web前端工程师', '您至少具备HTML/CSS、JavaScript基础知识。', '1.掌握使用定时器控件动画。2.掌握节点式查找控件的方法。', '2018-09-02 20:37:48.638853', '2018-08-12 23:48:40.07817');
INSERT INTO "public"."tb_imooc_course" VALUES (865, 23, '从D2到D2(大话游戏开发实战技巧)', '中级', 23108, '萌系攻城师演绎HTML5游戏开发技巧，掌握HTML5游戏开发中知识点', 'Html5', 'https://img2.mukewang.com/52d5f01c0001d85b06000338-240-135.jpg', 'https://www.imooc.com/learn/23', '1小时 0分', 9.8, 10, 9.9, 9.7, '简介：以2013年D2前端论坛上的发言和《异类》游戏开发为基础，介绍云朵、色彩和文字制作技巧、thanks、雨、星空、音乐、虚拟控制器、缓动动画等游戏中的各个环节的开发技巧。', '大城小胖', 'https://img2.mukewang.com/52e0ebbc000130fb16041604-80-80.jpg', 'Web前端工程师', '1.对游戏开发感兴趣；
2.有一些实际开发经验，学习效果更佳！', '1.了解游戏开发中经常用到的工具
2.掌握HTML5游戏开发中的一些实用技巧', '2018-09-02 20:37:48.07692', '2018-08-12 23:48:40.162952');
INSERT INTO "public"."tb_imooc_course" VALUES (868, 18, '焦点图轮播特效', '初级', 56484, '通过本教程学习您将能掌握非常实用的焦点图轮播特效的制作过程', 'JavaScript', 'https://img1.mukewang.com/574677390001be5006000338-240-135.jpg', 'https://www.imooc.com/learn/18', '1小时 1分', 9.7, 9.9, 9.7, 9.6, '简介：通过学习您可以理解图片轮播原理，还将讲解setTimeout()、setInterval()函数设置定时器与清除定时器clearInterval()函数，使用函数递归实现图片滑动切换，采用辅助图片实现图片无限滚动等编程技巧。', '阿安', 'https://img3.mukewang.com/52b2a15e0001825906700451-80-80.jpg', 'JS工程师', '您需要有HTML，CSS经验，能使用CSS制作静态页面，并对JS基础知识有一定的了解', '您将能掌握非常实用的焦点图轮播特效的制作过程。', '2018-09-02 20:37:44.494478', '2018-08-12 23:48:40.485271');
INSERT INTO "public"."tb_imooc_course" VALUES (862, 15, '分页页码制作', '初级', 48528, '制作出具有高大尚样式的分页页码，学习到更多技术知识', 'HTML/CSS', 'https://img4.mukewang.com/574671a30001bffe06000338-240-135.jpg', 'https://www.imooc.com/learn/15', '1小时 0分', 9.4, 9.6, 9.5, 9, '简介：通过本课程的学习，我们可以学习到利用HTML、CSS样式技术制作出分页页码的效果。包括最简单的直角分页页码效果，修复行内元素之间的间隔bug问题分析，代码整理，为分页页码插入小图标。', 'lilian', 'https://img4.mukewang.com/52a1a7a900016abb01600160-80-80.jpg', NULL, '您需要具备HTML、CSS样式基础知识。', '通过本课程的学习，我们可以学到以下技术：
1. 制作分页页码时的语义化
2. 行内标签居中
3. 使用css sprite 技术实现小icon插入
', '2018-09-02 20:37:48.169863', '2018-08-12 23:48:40.096059');
INSERT INTO "public"."tb_imooc_course" VALUES (875, 50, 'Yahoo军规', '中级', 34859, '您要知道的网站性能优化规则，提高网站性能、快速访问网站不在是梦', 'JavaScript', 'https://img.mukewang.com/574670820001f87006000338-240-135.jpg', 'https://www.imooc.com/learn/50', '1小时 0分', 9.9, 9.9, 9.9, 9.8, '简介：互联网高速发展当今,用户对快速访问网页需求越来越高，做为网站建设者，如何提高网站性能，成为炙手可热的问题，本课程让你清楚影响网站性能的原因，从而避免不利于网站性能的因素，借助Yslow工具快速找到问题所在，提高网站性能，让提高网站性能、快速访问网站不在是梦想。', 'Marvin', 'https://img3.mukewang.com/531698ad0001e16501400140-80-80.jpg', NULL, '1.您至少具备前端技术基础知识。2.您对网站性能优化感兴趣。', '1.让您了解网站性能优化的规则。2.让您了解如何提高网站性能。3.让您掌握网站性能优化工具Yslow。', '2018-09-02 20:37:44.840374', '2018-08-12 23:48:40.977312');
INSERT INTO "public"."tb_imooc_course" VALUES (876, 43, '移动优先的跨终端 Web', '中级', 36907, '移动互联时代您必须知道的跨终端技术，课程采用数据与案例，有章可循', 'WebApp', 'https://img1.mukewang.com/5746729300016b5206000338-240-135.jpg', 'https://www.imooc.com/learn/43', '33分', 9.3, 9.4, 9.1, 9.4, '简介：跨终端Web技术旨在解决普通Web页面在移动终端上展示时面临的屏幕尺寸、处理能力、软件兼容性等方面的问题。本课程按照“基准—检测—接口—定位—预览”的流程讲解，思路清晰，逻辑明了。讲解过程，采用数据与案例，有章可循，渲染十足，是不可多得的学习宝典。', 'guidao', 'https://img4.mukewang.com/52e6151e0001161901400140-80-80.jpg', NULL, '1. 如果您对移动优先的跨终端 Web技术感兴趣。
2. 如果您有一些前端实践经验，学习效果会更好。', '1. 让您了解移动优先、跨终端及问题。
2. 让您了解移动跨终端解决方案。', '2018-09-02 20:37:44.952456', '2018-08-12 23:48:41.150477');
INSERT INTO "public"."tb_imooc_course" VALUES (872, 41, '响应式布局', '中级', 118949, '使用Bootstrap前端框架，本教程让网站兼容不同终端不再是梦', 'Bootstrap', 'https://img.mukewang.com/53e1d1f90001400a06000338-240-135.jpg', 'https://www.imooc.com/learn/41', '54分', 9.4, 9.7, 9.4, 9.2, '简介：随着移动设备的普及，如何让用户通过移动设备浏览您的网站获得良好的视觉效果，已经是一个不可避免的问题了。本课程介绍了响应式布局，并通过使用Bootstrap前端框架讲解如何进行响应式布局的设计，理论联系实际，有例有据有节操有内涵。', '远人', 'https://img3.mukewang.com/536b4d120001005f02720306-80-80.jpg', 'Web前端工程师', '小伙伴，在学习本课程之前，需要你熟悉HTML、CSS3和JavaScript。', '1、了解什么是响应式布局。
2、理解响应式布局的优缺点、设计原则和实现方法。
3、掌握使用Bootstrap前端框架实现响应式布局。', '2018-09-02 20:37:44.898135', '2018-08-12 23:48:40.701935');
INSERT INTO "public"."tb_imooc_course" VALUES (873, 91, '鼠标悬浮效果', '初级', 20571, '通过JS在鼠标移动的时候以淡入淡出的方式出现和隐藏相应的实景图', 'JavaScript', 'https://img3.mukewang.com/535ef69a0001791f06000338-240-135.jpg', 'https://www.imooc.com/learn/91', '1小时 0分', 8.9, 9.2, 8.6, 8.9, '简介：本课程分三个章节，从简单介绍到完成html、css代码到完成JS代码，来给大家介绍了通过JS实现鼠标悬浮的效果。', 'situ_0002', 'https://img3.mukewang.com/535f375a000170ea03000300-80-80.jpg', NULL, 'HTML CSS JS', '通过JS在鼠标移动的时候以淡入淡出的方式出现和隐藏相应的实景图', '2018-09-02 20:37:44.867001', '2018-08-12 23:48:40.744926');
INSERT INTO "public"."tb_imooc_course" VALUES (874, 48, 'IT菜鸟逆袭指南（江湖篇）', '入门', 103595, '屌爆了！码农逆袭有秘诀，想必会给正在启程的你一些启发', 'HTML/CSS', 'https://img4.mukewang.com/530c732400013e5106000338-240-135.jpg', 'https://www.imooc.com/learn/48', '4分', 9.5, 9.6, 9.5, 9.4, '简介：每个挨踢菜鸟都渴望成功逆袭，摆脱悲催的现状成为技术大咖。近日，慕课新闻报道了一则关于IT大侠慕无忌的神奇历练历程。想必会给正在启程的你一些启发。屌丝逆袭，不是传说！', NULL, NULL, NULL, '1.如果您对WEB技术感兴趣。2.如果您想成为一名WEB攻城师。', '1.让您了解WEB技术。2.为您学习WEB技术进阶指明方向。', '2018-09-02 20:37:47.039882', '2018-08-12 23:48:40.960459');
INSERT INTO "public"."tb_imooc_course" VALUES (442, 565, 'CSS深入理解之relative', '中级', 44561, 'relative实际使用经验分享，同时分享一些relative实践准则', 'HTML/CSS', 'https://img1.mukewang.com/57076ab20001abea06000338-240-135.jpg', 'https://www.imooc.com/learn/565', '27分', 9.6, 9.8, 9.7, 9.3, '简介：relative和absolute的关系总让我们头疼。张鑫旭大大将在本次课程中给大家生动且深入的剖析二者的关系，以及relative与z-index层级的关系，同时给大家分享一些好的relative实践准则。小伙伴们还等什么？', '张鑫旭', 'https://img4.mukewang.com/549beab90001be9037445616-80-80.jpg', '页面重构设计', '既适合学习过CSS基础知识的新手深入学习，也欢迎有经验的小伙伴加深了解噢！', '1、relative与absolute；
2、relative与z-index；
3、relative的最小化影响准则。', '2018-09-02 20:37:11.460624', '2018-08-12 23:48:02.050115');
INSERT INTO "public"."tb_imooc_course" VALUES (877, 65, '回到顶部效果', '初级', 42369, '回到顶部网站不可缺少的一部分，用JS实现炫酷拉风的回到顶部效果', 'HTML/CSS, JavaScript', 'https://img2.mukewang.com/574672e300010a5d06000338-240-135.jpg', 'https://www.imooc.com/learn/65', '40分', 9.6, 9.9, 9.6, 9.4, '简介：回到顶部效果是目前大型网站不可缺少的一部分，也许你已经会用锚链接的方式来实现，是不是不满意呢？这里将重点分享用JavaScript技术来实现，不仅可以设定按钮出现的时机，还能实现对滚动条速度的控制，是不是很炫酷呀！', 'York', 'https://img4.mukewang.com/5333f7ff000136c105000500-80-80.jpg', NULL, '1.掌握HTML+CSS基础知识；2.了解JavaScript中onclick事件、简单dom操作、定时器等知识。', '1.掌握两种实现顶部效果的方法；
2.学会定时器、window.onscroll等知识
', '2018-09-02 20:37:47.017768', '2018-08-12 23:48:41.327909');
INSERT INTO "public"."tb_imooc_course" VALUES (878, 32, '用JS实现放大镜特效', '初级', 26168, '让图片看起来更美观，同时课程中详细介绍了JavaScript相关的知识点
', 'JavaScript', 'https://img2.mukewang.com/574677c300019bf706000338-240-135.jpg', 'https://www.imooc.com/learn/32', '31分', 9.8, 9.9, 9.7, 9.7, '简介：本课程让我们了解了电商放大镜特效的整个实现过程，本案例将向您讲解如何分析和解决问题的思路，详细介绍了JavaScript相关的知识点，多浏览器调试等技能。', '姜维_Wayne', 'https://img4.mukewang.com/599ea79c0001a1bc05000500-80-80.jpg', 'Web前端工程师', '您至少需要掌握HTML、CSS、Javascript的基础语法和知识。
', '通过本课程的学习，您将初步掌握分析和解决问题的思路，JS鼠标事件的运用，页面元素定位和移动，多浏览器调试等技巧。
', '2018-09-02 20:37:46.542428', '2018-08-12 23:48:41.697168');
INSERT INTO "public"."tb_imooc_course" VALUES (9, 139, 'PS入门教程——新手过招', '入门', 526175, '慕课网推出的PS入门教程，PS入门学习必备课程，带你轻松入门', '设计工具', 'https://img4.mukewang.com/53a28e960001311b06000338-240-135.jpg', 'https://www.imooc.com/learn/139', '9小时45分', 9.7, 9.9, 9.7, 9.4, '简介：慕课网推出的PS入门教程，PS入门学习必备课程，本课程将带你从PS的基本界面开始熟悉，ps入门课程主要分为三个章节，ps基本工具，ps选择与变形，ps色彩调整，通过小案例来学习简单的工具，终极目标就是先揭开PS的面纱，让你掌握PS的基本用法。', 'Oeasy', 'https://img.mukewang.com/53855e6f0001034501400140-80-80.jpg', '页面重构设计', '零基础好上手，所有对Photoshop感兴趣的小伙伴都可以来学习', 'PS基本界面及工具介绍', '2018-09-02 20:36:40.282064', '2018-08-12 23:47:26.852494');
INSERT INTO "public"."tb_imooc_course" VALUES (728, 159, 'PS大神通关教程', '入门', 301539, '讲师分享实战经验，让你真正掌握PS使用方，实现ps菜鸟到大神的逆袭', '设计工具', 'https://img.mukewang.com/53d068840001a89906000338-240-135.jpg', 'https://www.imooc.com/learn/159', '8小时12分', 9.7, 9.9, 9.7, 9.5, '简介：祁大湿带你梳理PS知识体系，分享实战经验，让你真正掌握PS使用方法。工具使用，图层操作，色彩调整，十八般武艺样样精通。真正实现菜鸟到大神的华丽转身。', '祁连山', 'https://img3.mukewang.com/53c49d460001056f08010792-80-80.jpg', NULL, '本课程是PS的系列教程，从初级的知识介绍到高级实战技能一应俱全。   适合全阶段的学习者，从小白到大神。', '1.理解PS基础知识和概念 
2.掌握PS工具的基础使用 
3掌握PS图层基础和使用技巧
4.掌握图片色彩调整的方法
			
', '2018-09-02 20:37:35.618878', '2018-08-12 23:48:28.414409');
INSERT INTO "public"."tb_imooc_course" VALUES (795, 10, 'JavaScript进阶篇', '入门', 377188, '本课程从如何插入JS代码开始，带您进入网页动态交互世界', 'JavaScript', 'https://img3.mukewang.com/574678bd00010a7206000338-240-135.jpg', 'https://www.imooc.com/learn/10', '8小时55分', 9.5, 9.8, 9.4, 9.3, '简介：做为WEB攻城师必备技术JavaScript，本课程从如何插入JS代码开始，学习JS基础语法、语法、函数、方法等，让你掌握JS编程思路、知识的使用等，实现运用JS语言为网页增加动态效果，达到与用户交互的目的。', NULL, NULL, NULL, '您至少掌握HTML+CSS基础知识', '通过JavaScript学习，掌握基本语法，制作简单交互式页面', '2018-09-02 20:37:41.121531', '2018-08-12 23:48:34.466873');
INSERT INTO "public"."tb_imooc_course" VALUES (730, 166, 'JAVA遇见HTML——JSP篇', '入门', 202585, 'Java Web入门级教程JSP，带你轻松的学习JSP基础知识', 'Java', 'https://img.mukewang.com/576b7afb00019e4906000338-240-135.jpg', 'https://www.imooc.com/learn/166', '7小时 0分', 9.7, 9.9, 9.6, 9.5, '简介：亲，这里有资深讲师为初学者量身打造的Java Web入门级课程JSP，讲师将通过大量的案例向您展示JavaWeb开发环境搭建、工具使用和JSP的基本语法，深入理解Java Web开发思想，最终使您能独立开发简单的Java Web应用。', 'milanlover', 'https://img2.mukewang.com/53df3b7a0001b45c01400140-80-80.jpg', 'JAVA开发工程师', 'Hi，我是JSP。为了让您更好的了解我，请先学习我的小伙伴JAVA和HTML。', '学完JSP，您可以掌握JSP基本语法，理解Java Web开发思想，进而能独立开发简单的Java Web应用。', '2018-09-02 20:37:35.80795', '2018-08-12 23:48:28.486911');
INSERT INTO "public"."tb_imooc_course" VALUES (1, 9, 'HTML+CSS基础课程', '入门', 920116, 'HTML+CSS基础教程8小时带领大家步步深入学习标签用法和意义', 'HTML/CSS', 'https://img2.mukewang.com/529dc3380001379906000338-240-135.jpg', 'https://www.imooc.com/learn/9', '9小时18分', 9.5, 9.8, 9.5, 9.2, '简介：本课程从最基本的概念开始讲起，步步深入，带领大家学习HTML、CSS样式基础知识，了解各种常用标签的意义以及基本用法，后半部分教程主要讲解CSS样式代码添加，为后面的案例课程打下基础。', NULL, NULL, NULL, '没有任何WEB经验的WEB应用程序开发者、对WEB前端技术感兴趣的用户均可学习本教程。', '本教程代领大家轻松学习HTML、CSS样式基础知识，可以利用HTML、CSS样式技术制作出简单页面。', '2018-09-02 20:36:40.071255', '2018-08-12 23:47:26.212337');
INSERT INTO "public"."tb_imooc_course" VALUES (165, 862, '实例学习 PHP QRCode生成二维码', '中级', 11497, '本门课程主要讲解如何使用 PHP 生成识别二维码!', 'PHP', 'https://img4.mukewang.com/5968262c00011d2606000338-240-135.jpg', 'https://www.imooc.com/learn/862', '50分', 9.9, 9.7, 10, 10, '简介：二维码给我们的生活带来了便利，获取信息，付款，都只需要扫一扫即可。本课程分为理论和实践两部分，理论部分主要讲解二维码的历史，如何存储信息，实战阶段通过实战案例为大家讲解二维码的产生和识别的全过程。', '逆袭文艺女...', 'https://img.mukewang.com/5458463b0001358f02200220-80-80.jpg', NULL, '1、课程难度属于初级
2、了解基本的php和js语法', '1、二维码的发展历史
2、二维码的分类
3、二维码优缺点
4、QR Code二维码介绍 
5、php 生成二维码 
6、js生成二维码
7、php识别二维码', '2018-09-02 20:36:50.856035', '2018-08-12 23:47:39.867856');
INSERT INTO "public"."tb_imooc_course" VALUES (858, 71, '帝堵抢车位动画制作', '初级', 34023, '带领大家做一个抢车动画效果，学会滑动动画效果，成为抢车位达人', 'HTML/CSS', 'https://img1.mukewang.com/57466ccf0001d9cf06000338-240-135.jpg', 'https://www.imooc.com/learn/71', '1小时 0分', 9.6, 9.6, 9.6, 9.6, '简介：对于生活在首都的人民来说，不仅要忍受堵车的无奈，就连车位也是要靠运气抢的。现实如此骨感，就让程序和代码来帮你排忧解难。本课程教你使用html、css样式、jQuery来制作最炫酷的抢车位动画效果。学会滑动动画效果，让你成为抢车位达人！', NULL, NULL, NULL, '1、熟练掌握html基础知识。
2、熟练掌握css样式基础知识。', '1、掌握position:absolute定义绝对定位方法。
2、掌握position:relative定义相对坐标原点方法。
3、掌握jQuery中hover(函数1，函数2 )事件用法，模拟光标悬停。
4、掌握jQuery中animate( )函数用法，创建自定义动画。
', '2018-09-02 20:37:48.582338', '2018-08-12 23:48:39.777156');
INSERT INTO "public"."tb_imooc_course" VALUES (740, 172, 'jQuery源码解析（架构与依赖模块）', '高级', 76989, '由浅入深地剖析jQuery库的设计与实现，揭开框架背后的秘密', 'jQuery', 'https://img.mukewang.com/570b064a00015a0c06000338-240-135.jpg', 'https://www.imooc.com/learn/172', '6小时 0分', 9.4, 9.6, 9.2, 9.2, '简介：本课程是目前真正意义上的第一部完整的jQuery 2.1.1版本源码课程，课程共14章，分两个部分，本课程是第一部分课程。先从整体入手理解架构，再逐个攻破每个依赖模块包括回调函数、异步加载、数据缓存、动画队列等。最后整合分析选择器、DOM处理、事件、AJAX、动画模块。', 'Aaron艾伦', 'https://img1.mukewang.com/54bf47ea000132d002200220-80-80.jpg', 'Web前端工程师', '源码的阅读不是一蹴而就的，需要大家有一定的功底，比如jQuery的基础运用以及API的熟悉度，除此之外要有牢固的javascript、DOM、CSS的基础功底，甚至还需要理解常见的设计模式、数据结构等等。当然大家也不要被这些给吓住了，理解，总是需要一种慢慢的学习过程。', '通过本课程的学习，您可以由浅入深地剖析jQuery库的设计与实现。
其中我们围绕的重心：
1、设计理念
2、结构组织
3、接口设计
4、模式运用
5、场景套用
', '2018-09-02 20:37:36.715568', '2018-08-12 23:48:29.544079');
INSERT INTO "public"."tb_imooc_course" VALUES (25, 979, 'iOS开发之传感器', '高级', 1670, '结合实际Demo演示并讲解加速度传感器及角速度传感器！', 'iOS', 'https://img3.mukewang.com/5ad5cc9c0001c91906000338-240-135.jpg', 'https://www.imooc.com/learn/979', '19分', 8.9, 10, 9.3, 7.3, '简介：本课程给大家补充介绍iOS中常见的传感器，并通过图解的方式详细介绍了加速度传感器以及角速度传感器。最后通过实际的Demo源码演示并分析整个实现的过程。', 'gix_ic', 'https://img1.mukewang.com/5458626a0001503602200220-80-80.jpg', '移动开发工程师', '1、有相对基础的数学思维逻辑；
2、熟练掌握OC基础语法；
3、熟悉框架的使用。', '1、了解iOS中常见的传感器；
2、了解CoreMotion框架；
3、了解加速度传感器、角速度传感器的实现过程
', '2018-09-02 20:36:45.989395', '2018-08-12 23:47:27.891602');
INSERT INTO "public"."tb_imooc_course" VALUES (18, 980, 'vue2.5入门', '中级', 43297, '快速理解Vue编程理念上手Vue2.0开发。', 'Vue.js', 'https://img1.mukewang.com/5ad5cc490001e53006000338-240-135.jpg', 'https://www.imooc.com/learn/980', '2小时13分', 9.5, 9.8, 9.4, 9.4, '简介：对于很多刚接触Vue的同学，最难做到的就是编程思路的切换，这门课程，我们将通过形象的例子给大家讲解Vue的基础语法及编程思路，带大家快速的上手Vue的基础开发，这门课也包含了关于组件话和vue-cli等内容的基础讲解。', 'DellLee', 'https://img1.mukewang.com/5abe468b0001664107390741-80-80.jpg', 'Web前端工程师', '1、对Javascript基础知识已经掌握。
2、对Es6和webpack有简单了解。', '使用Vue2.0版本实现响应式编程 
2、理解Vue编程理念与直接操作Dom的差异 
3、Vue常用的基础语法 
4、使用Vue编写TodoList功能 
5、什么是Vue的组件和实例 
6、Vue-cli脚手架工具的使用 
7、但文件组件，全局样式与局部样式', '2018-09-02 20:36:46.054683', '2018-08-12 23:47:27.418705');
INSERT INTO "public"."tb_imooc_course" VALUES (664, 330, 'PHP实现页面静态化', '中级', 51259, '网站开发必备技能—页面静态化，帮助大家掌握一项加薪利器', 'PHP', 'https://img1.mukewang.com/578741410001f70006000338-240-135.jpg', 'https://www.imooc.com/learn/330', '2小时43分', 9.6, 9.8, 9.6, 9.6, '简介：众所周知，页面静态化是门户网站研发中必备的一项技能，本课程从纯静态化和伪静态化两个角度进行分析，带领大家掌握在PHP中如何生成纯静态化页面，在WEB服务器中如何配置伪静态，帮助大家掌握又一项加薪利器。', 'singwa', 'https://img3.mukewang.com/59e0d3be0001672a05120512-80-80.jpg', '全栈工程师', '要想更好的掌握本门课程的精髓，首先必须要具备PHP的基本语法，并且对JQuery有一定的认知， 会更加有助于您的理解和掌握，如果你有一定的LAMP环境下的项目经验的话，本门课程会让你的开发技能更上一层楼。', '1、区分动态页面、静态页面
2、掌握什么是静态化
3、掌握PHP实现静态化的原理
4、触发生成纯静态的几种方式
5、局部动态化实现
6、PHP方式处理伪静态
7、web服务器下配置伪静态规则', '2018-09-02 20:37:28.43911', '2018-08-12 23:48:21.913951');
INSERT INTO "public"."tb_imooc_course" VALUES (637, 239, '打造个性的图片预览与多点触控', '中级', 22437, '实现图片自由缩放与多点触控效果，对Matrix以及手势检测API深入学习', 'Android', 'https://img.mukewang.com/546c0d940001f49e06000338-240-135.jpg', 'https://www.imooc.com/learn/239', '1小时55分', 9.6, 9.8, 9.5, 9.6, '简介：本课程将带领大家通过自定义控件，使用Matrix API结合手势检测实现Android自由缩放的图片预览效果。课程采用循序渐进的方式，首先实现图片的自由缩放，然后引入自由移动，最后实现双击放大与缩小的功能。通过该课程，大家可以对Matrix以及手势检测相关API进行深入的学习。', 'hyman', 'https://img.mukewang.com/54169c430001face18403264-80-80.jpg', '移动开发工程师', '本课程是基于Android开发的案例，需要大家对Android的了解要达到小成的境界：
1、掌握自定义控件的流程。
2、熟悉常用的控件以及API。
3、对手势检测相关API有一定的了解。
', '1、Matrix的介绍与实战。
2、ScaleGestureDetector的介绍与实战。
3、GestureDetector的介绍与实战。
4、自定义控件中如何与用户交互。
5、自定义控件中如何实现友好的过渡效果。
6、与ViewPager结合使用时的冲突处理。
', '2018-09-02 20:37:29.194123', '2018-08-12 23:48:19.374281');
INSERT INTO "public"."tb_imooc_course" VALUES (49, 1017, 'Python最火爬虫框架Scrapy入门与实践', '初级', 15465, '做为爬虫工程师Python Scrapy主流爬虫框架你必须要会！', 'Python, 爬虫', 'https://img2.mukewang.com/5b5188020001677306000338-240-135.jpg', 'https://www.imooc.com/learn/1017', '1小时31分', 9.8, 10, 10, 9.3, '简介：Scrapy，Python开发的一个快速,高层次的web抓取框架，用于抓取web站点并从页面中提取结构化的数据。Scrapy用途广泛，可以用于数据挖掘、监测和自动化测试。任何人都可以根据需求方便的修改。它也提供了多种类型爬虫的基类，如BaseSpider、sitemap爬虫等，最新版本又提供了web2.0爬虫的支持。本课程将带你入门并实践Scrapy框架！', '大壮老师', 'https://img2.mukewang.com/54584f850001c0bc02200220-80-80.jpg', 'Python工程师', '1、具有一定的Python基础
2、具有一定的linux系统管理基础，编译安装软件，yum包管理工具等
3、具有一定的Mongdb数据库管理基础，增删改查
', '1、scrapy框架简介、数据在框架内如何进行流动
2、scrapy框架安装、mongodb数据库安装 
3、scrapy抓取项目如何创建
4、scrapy抓取项目如何进行数据解析 
5、scrapy抓取项目如何绕过反爬机制抓取数据 
6、scrapy抓取项目如何存储数据到不同的格式 
', '2018-09-02 20:36:41.288014', '2018-08-12 23:47:29.80456');
INSERT INTO "public"."tb_imooc_course" VALUES (43, 996, 'HBase 存储原理剖析', '高级', 5833, '从底层存储架构分析HBase存储数据的原理', 'Hadoop, Hbase', 'https://img1.mukewang.com/5b0248080001dcc306000338-240-135.jpg', 'https://www.imooc.com/learn/996', '2小时 0分', 9.5, 10, 9, 9.5, '简介：本课程由浅到深的对 HBase 的存取数据原理进行分析介绍，从基础存储数据到元数据，再到数据在系统中的组织形式依次进行详细的分析，理清整个 HBase 系统的运行原理，老师的实战课《JAVA分布式优惠券系统后台 手把手实战开发》数据库就是基于HBase ，有兴趣的小伙伴千万不要错过：https://coding.imooc.com/class/254.html', '张勤一', 'https://img1.mukewang.com/5b470fc700019ea112800850-80-80.jpg', 'JAVA开发工程师', '需要对HBase有一定了解后', 'HBase 基本的数据存取方法			
HBase 系统的整体架构			
HBase 存取数据的原理以及各个模块之间是怎样协同工作的			
', '2018-09-02 20:36:42.240075', '2018-08-12 23:47:29.203436');
INSERT INTO "public"."tb_imooc_course" VALUES (65, 938, 'PhpStorm的基本应用', '入门', 17178, 'PHP开发者神器PhpStorm ', 'PHP', 'https://img3.mukewang.com/5a6190720001551506000338-240-135.jpg', 'https://www.imooc.com/learn/938', '1小时 0分', 8, 7.9, 8.3, 7.7, '简介：PhpStorm是PHP集成开发工具，能提高我们的开发效率，提供智能代码补全，快速导航以及即时错误检查。', 'singwa', 'https://img2.mukewang.com/59e0d3be0001672a05120512-80-80.jpg', '全栈工程师', '1、课程难度属于初级
2、了解PHP基本语法', '1、phpstorm安装
2、导入项目
3、phpstorm工作区的认知
4、 和其他编辑器的区别
5、代码补全，快速定位类以及方法
6、其他小技巧的使用
', '2018-09-02 20:36:46.635255', '2018-08-12 23:47:30.979275');
INSERT INTO "public"."tb_imooc_course" VALUES (676, 346, '如何使用高德Windows Phone SDK进行基于LBS的开发', '入门', 1546, '迅速使用WP SDK进行基于LBS的开发，轻松构建功能丰富的地图应用', '', 'https://img2.mukewang.com/570779a0000133e506000338-240-135.jpg', 'https://www.imooc.com/learn/346', '55分', 9.3, 8.7, 9.3, 10, '简介：本课程为大家带来如何使用Windows Phone SDK进行基于LBS的开发。高德地图Windows Phone8 SDK(V2)是一套基于Windows Phone8及以上版本的地图应用程序开发接口,通过该接口,你可使用高德地图数据和服务轻松构建功能丰富的地图应用。通过学习你可以动手实现你的第一个地图应用！', '高德LBS开放...', 'https://img3.mukewang.com/54a209d000013b9c03450360-80-80.jpg', NULL, '1、计算机、软件专业等小白用户或在校生
2、互联网从业人员', '1、如何配置高德地图WP端SDK以嵌入控件显示地图
2、如何结合搜索SDK进行一些搜索服务，完成一些基础功能，如添加marker，显示轨迹等', '2018-09-02 20:37:29.325177', '2018-08-12 23:48:22.790104');
INSERT INTO "public"."tb_imooc_course" VALUES (86, 963, 'MAYA-2017初识与基础操作', '入门', 3008, '本套课程针对零基础学员，帮助学员快速了解Maya轻松入门', '动效动画', 'https://img4.mukewang.com/5ab870920001bf5806000338-240-135.jpg', 'https://www.imooc.com/learn/963', '1小时12分', 9.8, 10, 9.3, 10, '简介：通过学习Maya2017软件基础教程，让学员快速了解Maya软件，学会如何安装，了解软件的应用领域。学习Maya2017软件常用菜单，工具架，工具栏等等。让每个学员快速了解和掌握软件，为以后的学习打下良好的基础......', '慕凌枫', 'https://img2.mukewang.com/533e4c9c0001975102200220-80-80.jpg', 'CG影视动画师', '1、安装Maya软件快速入门
2、零基础学员，兴趣爱好者
3、相信自己3D并不难', '1、创建项目工程文件，保存打开文件
2、菜单栏，状态栏，工具架，工具栏介绍
3、通道栏，层编辑器，动画时间栏
4、 大纲视图，快捷键设置，工具架设置
5、视图基本操作
6、物体的不同复制
7、坐标轴切换，捕捉命令介绍
8、物体点线面的选择和编辑
9、布尔运算', '2018-09-02 20:36:45.455481', '2018-08-12 23:47:32.489215');
INSERT INTO "public"."tb_imooc_course" VALUES (69, 945, 'SpringBoot+MyBatis搭建迷你小程序', '中级', 40765, 'SpringBoot+MyBatis搭建小程序后台', 'Java, SpringBoot', 'https://img3.mukewang.com/5a72827d0001cb8006000338-240-135.jpg', 'https://www.imooc.com/learn/945', '3小时18分', 9.8, 9.9, 9.6, 9.8, '简介：用Spring Boot框架大大简化了新Spring应用的初始搭建以及开发过程，在开发人员中越来越受到欢迎。微信小程序作为目前炙手可热的应用，很有可能在未来占据轻应用的市场。本门课程的主要目的是将两者结合起来，同时希望作为入门翔仔之前实战课的一个更低门槛的课程进行讲解。本课分为三大部分：第一部分带领大家明确需求，从零开始进行SpringBoot+MyBatis的框架搭建；第二部分咱们将依据业务模块配合UT实现后端完整的增删改查功能；最后我们将来到微信小程序开发部分，帮大家入门微信小程序开发，并教会大家前后联调。老师相关实战课程：http://coding.imooc.com/class/144.html', 'xiangzepro', 'https://img2.mukewang.com/59c8c33700014dd002140206-80-80.jpg', 'JAVA开发工程师', '1、SpringBoot和Mybatis的非常基础的知识。
2、Jdk、Maven、Mysql、Intellij Idea的安装与配置。
3、非常基础的前端开发知识（HTML、Jquery）
', '1、SpringBoot + Mybatis框架的搭建
2、单元测试
3、分层设计
4、微信小程序的基本知识及本地开发
5、前后分离及联调
6、写出健壮的程序
', '2018-09-02 20:36:46.704276', '2018-08-12 23:47:31.3806');
INSERT INTO "public"."tb_imooc_course" VALUES (113, 928, 'Hadoop基础及演练', '初级', 26296, '与大数据密不可分的Hadoop框架，你值得学习', '大数据, Hadoop', 'https://img2.mukewang.com/5a3797860001217406000338-240-135.jpg', 'https://www.imooc.com/learn/928', '1小时 6分', 9.1, 9.4, 8.7, 9.2, '简介：在大数据日益火爆的今天，很多猿友都将其作为自己以后的职业方向，本门课程本着细化提取概念点并逐步应用的原则，对大数据生态做了简单的介绍并着重的讲述了开源大数据框架Hadoop的使用和原理。并对Hadoop生态圈的其他开源项目做了简单的介绍，以帮助我们快速的构建大数据的知识图谱。另外讲师的实战课《HBase+SpringBoot实战分布式文件存储》已经上线，有兴趣的小伙伴可以进行深入学习~', '叁金', 'https://img1.mukewang.com/5abb52a8000151b802250225-80-80.jpg', 'Python工程师', '有Linux命令使用基础，有Python编程基础', '大数据到底是个啥，大数据方向到底怎么样			
Hadoop基础原理与两个核心			
Hadoop的基础应用			
Hadoop生态圈简介			
Hadoop生态圈常用开源项目介绍			
', '2018-09-02 20:36:50.033133', '2018-08-12 23:47:34.897218');
INSERT INTO "public"."tb_imooc_course" VALUES (75, 950, 'web端功能自动化定位元素', '初级', 6769, '页面元素高级定位方式,在不同的浏览器上查看元素，Xpath，CSS定位', '自动化测试', 'https://img2.mukewang.com/5a9371160001ecb106000338-240-135.jpg', 'https://www.imooc.com/learn/950', '1小时56分', 9.5, 9.6, 9.6, 9.3, '简介：整个这一套课主要讲如何在不同的浏览器中查看元素和元素的高级定位方式,做自动化测试的时候定位元素非常重要,做好这些是web自动化测试的前提,会介绍如何用火狐开发者工具查看元素，火狐的Add On-TryXpath，如何用Chrome开发者工具查看元素，获取默认xpath或CSS技巧，CSS选择器定位：用CSS Selector - IDs定位元素，用多个CSS Classes定位元素，用CSS 通配符定位元素，用CSS 定位子节点。XPath定位：Xpath中绝对路径相对路径的区别，如何构建一个有效的Xpath，用Text构建有效的Xpath，用Contains关键字构建有效的Xpath，用StartWith关键字构建有效的Xpath，如何查找到父节点和平级节点。', 'i夏天i', 'https://img.mukewang.com/545868640001148702200220-80-80.jpg', '软件测试工程师', '1.不需要有编程和自动化测试经验，初学者可以很容易上手
2.浏览器 (Firefox or Chrome)
3.Windows 电脑
', '用不同浏览器查看元素
重点讲xpath 和 css 选择器定位这些是怎么创建的
学完了这些页面上所有元素都能定位到了
', '2018-09-02 20:36:44.881003', '2018-08-12 23:47:31.927604');
INSERT INTO "public"."tb_imooc_course" VALUES (71, 946, 'C4D零基础入门（上）', '入门', 8852, '带你了解C4D的用途以及基本使用，让你的设计升个维度！', '模型制作', 'https://img3.mukewang.com/5a7d5cba00014f2206000338-240-135.jpg', 'https://www.imooc.com/learn/946', '1小时14分', 9.1, 10, 7.7, 9.7, '简介：本套教程为C4D基础教程的第一部分，带领大家了解C4D的界面、功能与基本操作，详细讲解各个工具的功能与用法，让你在最短的时间内快速入门。快来一起领略C4D的无穷魅力吧！更多实战课戳https://coding.imooc.com/class/184.html', 'MAZIN_zhao', 'https://img1.mukewang.com/5a52dca2000169ac06180618-80-80.jpg', NULL, '1、自行安装好C4D软件
2、零基础入门，放松心态', '1、对C4D有个大致的了解
2、C4D各个功能面板的简介
3、详细了解视图窗口、工具栏、对象浏览器/层属性面板
4、掌握参数化对象
5、掌握样条工具
6、掌握生成器工具
7、掌握造型工具', '2018-09-02 20:36:44.355867', '2018-08-12 23:47:31.558071');
INSERT INTO "public"."tb_imooc_course" VALUES (131, 904, 'Fragment应用下', '初级', 4502, '在项目中，灵活使用Fragment做视图组装，开销比Activity更小。', 'Android', 'https://img1.mukewang.com/59e80cd60001341b06000338-240-135.jpg', 'https://www.imooc.com/learn/904', '3小时 0分', 9.9, 10, 9.8, 10, '简介：将带领大家一起学习Fragment与Activity间的通信，以及Fragment与Fragment间的通信，以案例的形式展开，让大家能够轻松掌握。', 'Summer321', 'https://img.mukewang.com/57ec719d00012e3706400640-80-80.jpg', NULL, '学习本课程之前需要有Android基础知识，如UI，Activity等基础知识。并且已经预先学习了《Fragment应用上》。', '你不仅能够学到Fragment的通信问题，还能学习到ListFragment与DialogFragment的应用场景以及具体使用方式。', '2018-09-02 20:36:48.288442', '2018-08-12 23:47:36.599877');
INSERT INTO "public"."tb_imooc_course" VALUES (742, 141, '玩转Bootstrap（基础）', '初级', 274352, '告诉你使用Bootstrap，并且能够独立定制出适合自己的Bootstrap', 'Bootstrap', 'https://img2.mukewang.com/5704ae850001f59906000338-240-135.jpg', 'https://www.imooc.com/learn/141', '10小时 0分', 9.5, 9.8, 9.4, 9.4, '简介：本Bootstrap教程能够让您了解到，Bootstrap框架是一个非常受欢迎的前端开发框架，他能让后端程序员和不懂设计的前端人员制作出优美的Web页面或Web应用程序。在这个Bootstrap教程中，将带领大家了解Bootstrap框架以及如何使用Bootstrap框架，通过本教程学习能够独立定制出适合自己的Bootstrap。', '大漠', 'https://img1.mukewang.com/53216e780001060f01600160-80-80.jpg', 'Web前端工程师', '本教程适合具有一定前端基础的人员，对HTML和CSS有一定的了解，对于定制Bootstrap的同学需要具备LESS和Sass基础知识。', '1、了解Bootstrap框架
2、如何使用Bootstrap制作Web页面或Web应用程序
3、如何定制个性化Bootstrap
', '2018-09-02 20:37:36.585406', '2018-08-12 23:48:29.606246');
INSERT INTO "public"."tb_imooc_course" VALUES (135, 879, 'Android代码混淆与加固技术', '中级', 6331, 'Android代码混淆与加固技术实战', 'Android', 'https://img3.mukewang.com/598d7b8000017aad06000338-240-135.jpg', 'https://www.imooc.com/learn/879', '54分', 8.6, 9.3, 8.5, 8, '简介：Android代码混淆与加固技术实战', 'jltxgcy1', 'https://img3.mukewang.com/5333a24400017ccd02000200-80-80.jpg', '移动开发工程师', '需要具备安卓四大组件基础知识', 'Android代码混淆与加固技术实战', '2018-09-02 20:36:48.684833', '2018-08-12 23:47:36.975699');
INSERT INTO "public"."tb_imooc_course" VALUES (714, 254, '创建Android后端服务之Bmob', '初级', 26056, '服务器端对于移动开发者不再是苦恼，快快学起来吧', 'Android', 'https://img1.mukewang.com/57075948000117fb06000338-240-135.jpg', 'https://www.imooc.com/learn/254', '1小时 0分', 9.8, 9.9, 9.9, 9.7, '简介：作为一个移动平台开发者，你是否曾因为不会搭建服务端程序而苦恼，是否因为服务器端性能优化、功能实现而四处学习？现在，有了Android移动后端服务（Baas），所有苦恼即将不在，数据存储、消息推送、数据分析等种种功能，Baas已全部帮你搞定，心动不如行动，快快学起来吧!', 'eclipse_xu', 'https://img3.mukewang.com/54cb9b5f0001827024483264-80-80.jpg', '移动开发工程师', 'mob后台为android第三方的开发提供了很大的帮助，不但可以实现第三方的分享，还可以实现短信验证等等，是一个很值得学习的网站。', '通过本课程，你将学习到：
1、近来流行的移动后端服务（Baas）
2、市场上流行的移动后端服务提供商
3、了解移动后端服务的API及功能
4、如何使用移动后端服务搭建App的服务端
', '2018-09-02 20:37:33.635813', '2018-08-12 23:48:27.121903');
INSERT INTO "public"."tb_imooc_course" VALUES (727, 217, 'Android智能机器人“小慕”的实现', '初级', 33817, '无聊的时候就来作个机器人陪你聊天吧，打造自己的专属智能机器人', 'Android', 'https://img2.mukewang.com/544f48510001906806000338-240-135.jpg', 'https://www.imooc.com/learn/217', '1小时 0分', 9.9, 10, 9.8, 9.8, '简介：Android智能问答机器人是时下非常流行的一种服务，微软“小冰”的出现更是让其实实在在的风靡了一把。那么，本课程就将带领大家完整的实现整个问答机器人的制作。大家可通过本课程的学习，即将可以打造自己的专属智能机器人', 'hyman', 'https://img.mukewang.com/54169c430001face18403264-80-80.jpg', '移动开发工程师', '本课程对于学习者要求较高，对学习者有以下几个要求:首先，对Java语言的掌握是必须的必，哪怕不精通，但是也要熟练；其次，要对Android中常用的一些API信手拈来；最后，如果想很好的跟上老师的讲课速度，熟悉Eclipse IDE很重要', '通过本课程，你将学习到：
1、图灵机器人第三方服务API的使用
2、如何使用AndroidTestCase对代码进行测试
3、ListView的Item多种布局时的处理
4、如何利用ListView实现聊天对话界面
', '2018-09-02 20:37:38.244481', '2018-08-12 23:48:28.388327');
INSERT INTO "public"."tb_imooc_course" VALUES (898, 263, 'Android属性动画赏析', '中级', 36291, '本次课程，将向你介绍如何使用属性动画做出更好的动画', 'Android', 'https://img.mukewang.com/5707589c00017bf606000338-240-135.jpg', 'https://www.imooc.com/learn/263', '1小时20分', 9.8, 9.9, 9.8, 9.7, '简介：动画几乎是一个好的App所不可缺少的一部分，它体现了一种更友好的交互方式，在iOS、Android L中动画的使用越来越多，特别是后者更是着重强调设计更好的动画。从3.0开始，Android就提供了一种更为强大的属性动画框架。本次课程，将向你介绍如何使用属性动画做出更好的动画', 'eclipse_xu', 'https://img1.mukewang.com/54cb9b5f0001827024483264-80-80.jpg', '移动开发工程师', NULL, '通过本课程，你将学到：
1、3.0之后新增的属性动画介绍
2、旧动画框架的局限性
3、实际演示属性动画的基本用法
4、介绍关于动画的高级技巧：插值器、估值器等
5、各种动画的使用场景', '2018-09-02 20:37:33.669371', '2018-08-13 09:53:50.358946');
INSERT INTO "public"."tb_imooc_course" VALUES (114, 886, 'iOS开发之Audio特辑', '初级', 2497, 'Audio特辑教你完成音频处理以及语音识别！', 'iOS', 'https://img4.mukewang.com/599ac6dd000118c406000338-240-135.jpg', 'https://www.imooc.com/learn/886', '1小时50分', 10, 10, 10, 10, '简介：本课程主要讲解iOS开发中的音频处理，涉及Audio的架构、如何获取Audio的信息、Audio的相关框架、Audio的系统声音获取，并且还为大家准备了播放器的小案例，以及如何完成语音识别操作。', 'Jones__', 'https://img3.mukewang.com/5aa23ce700016f2a02560172-80-80.jpg', '算法工程师', '1、熟练掌握OC语法基础。
2、熟练UI控件的使用。
3、熟悉代理的使用。
4、了解如何获取相关方法的代理方法。', '1、如何获取Audio信息。
2、如何获取系统声音。
3、如何完成语音识别。
', '2018-09-02 20:36:51.997358', '2018-08-12 23:47:34.90752');
INSERT INTO "public"."tb_imooc_course" VALUES (129, 900, 'Sketch基础入门', '入门', 9831, '即使没有设计基础的人也能熟练使用sketch绘制图标', '设计工具', 'https://img.mukewang.com/59cefd4c0001633206000338-240-135.jpg', 'https://www.imooc.com/learn/900', '1小时 8分', 9.5, 9.7, 9.5, 9.4, '简介：本门课程详细介绍这款Sketch 的起源、优势及在移动端时代广泛流行的原因，深入浅出的通过一个个实例来介绍软件的功能及操作技巧，帮助没有接触过sketch的设计师快速的上手这款设计利器，而没有设计背景的人也能够使用学会最基本的操作，创作简单的设计作品。老师相关实战课《App界面设计利器Sketch 精选案例合集》也已经上线：https://coding.imooc.com/class/199.html', 'Juess', 'https://img3.mukewang.com/5abc53040001fe1602000200-80-80.jpg', 'UI设计师', '1、无论是否有设计背景都可以学习
2、Sketch的基础课程，熟练使用Sketch的设计师可酌情观看。', '1、为什么说Sketch是一款新的设计利器？
2、如何下载使用Sketch素材文件？
3、使用Sketch能完成哪些设计作品？
4、如何使用Sketch完成苹果LOGO的设计？', '2018-09-02 20:36:48.131855', '2018-08-12 23:47:36.225974');
INSERT INTO "public"."tb_imooc_course" VALUES (133, 903, '从JS到TS开发数独游戏（TS版）', '中级', 10900, '使用TS语言为主的前端开发技术实现数独游戏', 'JavaScript', 'https://img1.mukewang.com/59df4dd500013d0606000338-240-135.jpg', 'https://www.imooc.com/learn/903', '1小时18分', 9.9, 10, 9.8, 9.8, '简介：通过前端技术实现一个简单的数独游戏，介绍相对简单的数独生成算法(递归)和检查算法。主要使用的前端技术包括 JavaScript、TypeScript 和 LESS 等。同时会讲到前端构建（打包）技术，使用的工具有 Gulp、Webpack、 Babel 和 TSC(TypeScript Compiler) 等。课程的重点在于关键算法和从 JavaScript 技术实现向 TypeScript 技术实现的转换。', '边城__', 'https://img4.mukewang.com/59e6f3f20001178202800280-80-80.jpg', '全栈工程师', '1、需要了解基本的 HTML、LESS/CSS 相关知识
2、需要熟悉 JavaScript 语言并了解 ES6/ES2015 语法', '1、JavaScript向TypeScript转换的要点
2、TypeScript基本语法
3、JavaScript ES6/ES2015部分语法
4、基于 Gulp+(TSC)+Babel+Webpack的前端构建技术
5、数据游戏生成和验证算法
6、Fisher-Yates洗牌算法
7、使用手边的工具如Excel进行简单的设计
8、部分前端调试技巧', '2018-09-02 20:36:48.471098', '2018-08-12 23:47:36.773046');
INSERT INTO "public"."tb_imooc_course" VALUES (316, 745, 'zepto设计和源码分析', '高级', 13806, '介绍zepto的设计框架和实现原理，看完后能轻松解读zepto所有源码', 'JavaScript', 'https://img1.mukewang.com/58048dfb0001a10606000338-240-135.jpg', 'https://www.imooc.com/learn/745', '1小时36分', 9.8, 9.7, 9.9, 9.7, '简介：当熟练使用zepto的API之后，也应该解读一下zepto的源码，了解一下zepto的设计原理。教程深入浅出的介绍了zepto最核心的设计原理，看完之后即能轻松解读zepto所有源码。', '双越', 'https://img1.mukewang.com/5a9fc8070001a82402060220-80-80.jpg', 'Web前端工程师', '1、有javascript语法基础
2、了解zepto的基本使用', '1、javascript原型链的基础知识
2、zepto中原型链的应用
3、zepto的核心设计思想 ', '2018-09-02 20:37:00.393928', '2018-08-12 23:47:51.959393');
INSERT INTO "public"."tb_imooc_course" VALUES (158, 910, 'DevOps和云计算初识', '初级', 9970, '学习DevOps和云计算的初步知识', '云计算, Go', 'https://img1.mukewang.com/59f68815000169b006000338-240-135.jpg', 'https://www.imooc.com/learn/910', '50分', 9.6, 9.5, 9.7, 9.5, '简介：DevOps几乎是和云计算同一时间出现在IT行业，没有云平台的弹性和按需资源分配，DevOps就没有办法落地。二者的出现彻底将瀑布式开发甚至Agile敏捷扫入历史的废墟，以AWS为首的西方公司已经可以做到每天上千次的迭代和变更，这些都是技术发展的结果。本课程从一个简单的网站开发部署上线，变更，监控，自恢复等等方面简单介绍利用阿里云平台如何践行简单的DevOps。', '艾文西', 'https://img1.mukewang.com/53339fdf00019de902200220-80-80.jpg', '全栈工程师', 'Linux基本命令，网络相关基本知识', '通过简单的网站搭建，让学生了解阿里云的基本用法以及DevOps的基本概念。包括持续构建，持续集成，监控，自恢复等DevOps初级理念', '2018-09-02 20:36:48.810096', '2018-08-12 23:47:39.336126');
INSERT INTO "public"."tb_imooc_course" VALUES (177, 883, 'web安全之SQL注入', '中级', 20818, 'SQL注入是整个WEB安全领域中比较重要的一部分', 'PHP', 'https://img3.mukewang.com/5991489e00019f5c06000338-240-135.jpg', 'https://www.imooc.com/learn/883', '1小时10分', 9.6, 9.7, 9.6, 9.4, '简介：SQL注入自从WEB和数据库发展以来就一直存在，而且给WEB应用带来很大的安全问题，会造成用户隐私数据的泄露，数据库版本信息泄露和数据库攻击等，给业务带来很大的损失和不好的社会影响。所以对于我们WEB开发人员来说，项目开发过程中一定要培养一定的安全意识，了解SQL注入的定义，产生的原理、具体的一些攻击手法和相应的预防措施，为了更好的增加开发项目的健壮性和安全性', 'wbmcloud', 'https://img4.mukewang.com/545896c300019b2f01800180-80-80.jpg', 'PHP开发工程师', '1、具备一定的php基础
2、具备一定的mysql数据库基础知识', '1、什么是SQL注入？
2、如何寻找SQL注入？
3、如何进行SQL注入攻击？
4、如何预防SQL注入？ ', '2018-09-02 20:36:51.491591', '2018-08-12 23:47:40.605565');
INSERT INTO "public"."tb_imooc_course" VALUES (384, 418, 'jQuery基础 (一)—样式篇', '入门', 183658, 'jQuery初入开启样式修炼,体验万能的jQuery样式集搭建网站布局', 'jQuery', 'https://img1.mukewang.com/5704a68f0001e20206000338-240-135.jpg', 'https://www.imooc.com/learn/418', '2小时23分', 9.3, 9.6, 9.2, 9.1, '简介：jQuery基础课程总共分为4个部分，分别是样式篇、事件篇、动画篇、DOM篇。此为第一个部分—样式篇，本课程主要介绍jQuery的基础语法，选择器以及jQuery的一些属性和样式，通过本课程的学习，我们可以用最少的代码做更多的事，让我们一起出发学习吧！', 'Aaron艾伦', 'https://img.mukewang.com/54bf47ea000132d002200220-80-80.jpg', 'Web前端工程师', '1、有HTML/CSS基础
2、有JavaScript基础', '1、jQuery的基础语法
2、jQuery当中的选择器
3、jQuery中的属性和样式', '2018-09-02 20:37:18.702701', '2018-08-12 23:47:56.74499');
INSERT INTO "public"."tb_imooc_course" VALUES (899, 247, 'Android UI模板设计', '初级', 69787, '快来学习如何在Android中自定义View，本次课程一定会让你获益匪浅', 'Android', 'https://img1.mukewang.com/570758010001b33006000338-240-135.jpg', 'https://www.imooc.com/learn/247', '1小时 0分', 9.8, 9.9, 9.7, 9.8, '简介：UI设计一直是程序设计中非常重要的一环，也是最让人抓狂的一环，好的设计需要不断修改、不断完善，那么我们如何才能减少UI设计中的重复劳动呢、如何在修改设计时减少工作量呢、如何一次开发，重复使用呢？如果你也有这样的疑问，那么本次课程一定会让你获益匪浅。', 'eclipse_xu', 'https://img1.mukewang.com/54cb9b5f0001827024483264-80-80.jpg', '移动开发工程师', NULL, '通过本次课程，你将学到：
1、了解为什么要使用模板开发
2、使用模板开发的好处
3、学会自定义属性
4、学会自定义View
', '2018-09-02 20:37:37.421712', '2018-08-13 09:53:52.957736');
INSERT INTO "public"."tb_imooc_course" VALUES (230, 829, 'JS实现京东无延迟菜单效果', '初级', 46556, 'JS模拟京东商城无延迟菜单效果，学习菜单结构和样式处理', 'HTML/CSS, JavaScript', 'https://img1.mukewang.com/5909383700016b7906000338-240-135.jpg', 'https://www.imooc.com/learn/829', '48分', 9.4, 9.7, 9.4, 9.1, '简介：通过模仿京东商城的无延迟菜单效果，学习到菜单的结构和样式处理，菜单常见交互如何开发，介绍了普通二级菜单的问题，并通过逐步优化去解决该问题。', '呵呵SN', 'https://img.mukewang.com/57c7e45a0001634d01000100-80-80.jpg', 'JS工程师', '1、基本的HTML,CSS和JS语法
2、JQuery的常用API
', '1、如何写菜单结构
2、如何写菜单样式
3、如何实现菜单交互
4、如何优化菜单交互
5、如何实现无延迟切换', '2018-09-02 20:36:56.13462', '2018-08-12 23:47:44.927882');
INSERT INTO "public"."tb_imooc_course" VALUES (234, 841, 'Java定时任务调度工具详解之Timer篇', '中级', 19392, 'Java定时任务调度工具详解之Timer篇', 'Java', 'https://img2.mukewang.com/59195b4a00019b0d06000338-240-135.jpg', 'https://www.imooc.com/learn/841', '1小时28分', 9.6, 9.9, 9.5, 9.3, '简介：本课程是系列课程Java定时任务调度工具详解中的Timer篇，本系列课程旨在通过详细讲述Java定时调度工具的基本概念、工具，和这些工具里面包含的各个组件之间的关系，以及如何使用这些工具来实现定时调度功能，让学生能够对Java定时调度工具有一个清晰而准确的认识。然后结合一些经典的使用场景通过手把手的命令行操作进行教学，使同学们得心用手地使用这些定时调度工具来实现自己想要的功能。讲师实战课程已经上线，从0开始部署项目，掌握SSM和SpringBoot两大主流框架。详解SSM无缝迁移到SPRINGBOOT + MYBATIS的框架转换，远程调试项目并与微信结合，利用阿里SUI，实现前后端的全栈开发。详情：http://coding.imooc.com/learn/list/144.html', 'xiangzepro', 'https://img1.mukewang.com/59c8c33700014dd002140206-80-80.jpg', 'JAVA开发工程师', '本课程是初级课程，了解基本java语法可听。', '定时任务的基本概念，Timer的函数，综合运用和缺陷', '2018-09-02 20:36:57.032847', '2018-08-12 23:47:45.203121');
INSERT INTO "public"."tb_imooc_course" VALUES (229, 826, 'bootstrap快速入门', '中级', 69622, 'bootstrap是目前最流行的框架之一，能够带你快速搭建网页！', 'Bootstrap', 'https://img4.mukewang.com/590053190001556d06000338-240-135.jpg', 'https://www.imooc.com/learn/826', '2小时 5分', 9.5, 9.7, 9.6, 9.2, '简介：本教程主要向大家介绍了什么是bootstrap，bootstrap的环境及bootstrap中常用的样式、组件、插件的用法等。', '袁三日', 'https://img.mukewang.com/5909d97d00010d0a02000200-80-80.jpg', 'Web前端工程师', '本教程适合具有一定前端基础的人员，对HTML、CSS、JavaScript有一定的了解。', '（1）如何快速搭建网页
（2）如何使用组件开发
（3）使用bootstrap插件实现网页的开发', '2018-09-02 20:36:53.848354', '2018-08-12 23:47:44.703578');
INSERT INTO "public"."tb_imooc_course" VALUES (189, 840, 'iOS之多媒体开发', '初级', 4330, '教程为大家讲解音频、视频以及图片的处理，轻松搞定多媒体开发', 'iOS', 'https://img.mukewang.com/59194c300001f2d606000338-240-135.jpg', 'https://www.imooc.com/learn/840', '1小时21分', 9.5, 9.8, 8.9, 9.8, '简介：本课程将为大家讲解音频、视频以及图片的处理。并且会给大家介绍多媒体开发的相关框架，如AVKit、AVFoundation。手把手教大家完成图片的采集和显示，音频的录制和播放，以及视屏的录制和播放。', '青年小Y', 'https://img.mukewang.com/5820909c000173be02000200-80-80.jpg', '移动开发工程师', '1、熟练掌握iOS基础语法；
2、熟悉UI控件的使用。', '1、图片的采集和显示；
2、音频的录制和播放；
3、视频的录制和播放。', '2018-09-02 20:36:56.597859', '2018-08-12 23:47:41.628515');
INSERT INTO "public"."tb_imooc_course" VALUES (236, 834, 'Discuz!X二次开发——前台篇', '高级', 6253, 'Discuz你一定听说过，一起跟着我搞定Discuz二次开发，与众不同！', 'PHP', 'https://img3.mukewang.com/590c54d40001973c06000338-240-135.jpg', 'https://www.imooc.com/learn/834', '3小时42分', 9.6, 10, 9.9, 9, '简介：Discuz作为国内最流行的论坛软件管理系统，一直以来深受大家喜爱。本次教程从一个实际案例入手，从零开始带你一起学习如何对Discuz前台的内容进行二次开发。', 'PHPChina春阳...', 'https://img4.mukewang.com/57d0fd160001736802000200-80-80.jpg', 'PHP开发工程师', '对PHP语法有基础的掌握，有一定开发经验', '1、Discuz二次开发基本流程 
2、Discuz框架运行流程
3、Discuz模板机制
4、如何在Discuz中建立Controller、Model与View
5、在Discuz中如何操作MySQL数据库
6、Discuz模板语法
7、一起完成工具上传实例', '2018-09-02 20:36:56.613339', '2018-08-12 23:47:45.258238');
INSERT INTO "public"."tb_imooc_course" VALUES (196, 788, 'Android视频播放器', '中级', 15888, 'Android系统自带的以及自定义播放器', 'Android', 'https://img2.mukewang.com/5878a4180001d86f06000338-240-135.jpg', 'https://www.imooc.com/learn/788', '2小时 0分', 9.6, 9.8, 9.6, 9.5, '简介：本课程主要讲解Android系统自带的视频播放器来播放本地视频和网络视频，同时也讲解自定义播放器实现视频播放，包括视频亮度的调节，声音大小的改变和横竖屏的切换以及在开发中常见的一些问题', 'Smile浅笑', 'https://img2.mukewang.com/537435a2000123b506400600-80-80.jpg', 'JAVA开发工程师', '1.一定的Android基础
2.一定的自定义控件基础
3.一定的编程思想
', '1.熟练掌握Android系统自带的播放器的基本使用
2.熟练掌握自定义控件的知识
3.熟练掌握自定义视频播放器的各种设置', '2018-09-02 20:36:58.880307', '2018-08-12 23:47:42.183061');
INSERT INTO "public"."tb_imooc_course" VALUES (746, 227, 'CSS3绚丽照片墙', '初级', 52228, 'CSS3属性轻松实现绚丽照片墙效果，展示不同位置不同角度多张照片', 'CSS3', 'https://img4.mukewang.com/547ed1c9000150cc06000338-240-135.jpg', 'https://www.imooc.com/learn/227', '30分', 9.6, 9.7, 9.5, 9.5, '简介：通过纯CSS实现绚丽的照片墙效果，展示不同位置不同角度摆放的多张照片，鼠标移动上去照片会旋转放大并且显示在最上面。主要通过CSS3中transform中的rotate属性设置照片角度，scale设置照片的缩放，最后通过transition属性设置动画时间等。', 'Ben', 'https://img2.mukewang.com/534f89d7000146bf01400140-80-80.jpg', '产品经理', '本课程适合对CSS3感兴趣的初学者，通过简单绚丽的案例来熟悉重要的部分CSS3动画属性。', '1、简单CSS3实现任意设置元素的旋转角度。
2、简单CSS3实现图片的等比缩放。
3、利用CSS3将元素的样式变化以动画的方式展现出来。
', '2018-09-02 20:37:37.15531', '2018-08-12 23:48:30.157275');
INSERT INTO "public"."tb_imooc_course" VALUES (729, 219, 'PHP实现文件上传与下载', '初级', 39998, '本课程讲解了文件上传的原理和配置，学会两种方式实现文件上传与下载', 'PHP', 'https://img2.mukewang.com/578741680001e3a506000338-240-135.jpg', 'https://www.imooc.com/learn/219', '2小时35分', 9.9, 9.9, 9.9, 9.9, '简介：本课程讲解了文件上传的原理和配置，并带领大家使用面向对象和面向过程两种方式，完成了对单文件和多文件上传的处理，以及文件下载功能的实现，通过本课程的学习，能够掌握对文件上传和下载的处理办法，并加深对类与面向对象的封装的理解。', 'King', 'https://img4.mukewang.com/567ca60000011fae26501720-80-80.jpg', 'PHP开发工程师', '要想更好的掌握本课程的核心知识点，最好能对PHP的基础语法有一定的理解，尤其是循环、数组和面向对象这三大部分，这将更有助于你对本门课程的理解和掌握。', '1、单文件上传的原理与配置
2、多文件上传的处理方法
3、文件下载的代码实现
', '2018-09-02 20:37:38.227914', '2018-08-12 23:48:28.428778');
INSERT INTO "public"."tb_imooc_course" VALUES (786, 211, 'QQ5.0侧滑菜单', '中级', 62614, '本教程将带领大家通过自定义控件实现QQ5.0侧滑菜单', 'Android', 'https://img4.mukewang.com/574667f400014de706000338-240-135.jpg', 'https://www.imooc.com/learn/211', '1小时30分', 9.5, 9.8, 9.4, 9.3, '简介：本课程将带领大家通过自定义控件实现QQ5.0侧滑菜单，课程将循序渐进，首先实现最普通的侧滑菜单，然后引入属性动画与拖动菜单效果相结合，最终实现QQ5.0侧滑菜单效果。通过本课程大家会对侧滑菜单有更深层次的了解，通过自定义控件和属性动画打造千变万化的侧滑菜单效果', 'hyman', 'https://img3.mukewang.com/54169c430001face18403264-80-80.jpg', '移动开发工程师', '本课程对于学习者要求较高，对学习者有以下几个要求:首先，对Java语言的掌握是必须的必，哪怕不精通，但是也要熟练；其次，要对Android中常用的一些API信手拈来；再次，还要了解自定义控件和属性动画，最后，如果想很好的跟上老师的讲课速度，熟悉Eclipse IDE很重要', '1、侧滑菜单的原理
2、如何自定义ViewGroup
3、自定义ViewGroup中需要掌握的几个方法
4、如何为自己设计的控件抽取自定义属性
5、如何使用属性动画
', '2018-09-02 20:37:38.780986', '2018-08-12 23:48:33.518203');
INSERT INTO "public"."tb_imooc_course" VALUES (726, 204, 'SEO在网页制作中的应用', '初级', 81185, '让您快速迈进SEO的门，让更多的人来访问你的网站，不容错过', 'HTML/CSS', 'https://img2.mukewang.com/54214727000160e306000338-240-135.jpg', 'https://www.imooc.com/learn/204', '39分', 9.7, 9.7, 9.7, 9.5, '简介：本课程将通过对网页结构以及前端代码两个方面介绍前端SEO知识。作为前端工程师，可能你每天只关注怎样实现一个又一个的网页特效，怎样让自己的网站更酷更炫，但是本课程能教你怎样让更多的人来访问你的网站！', '格格', 'https://img3.mukewang.com/5427a9c00001b38306330627-80-80.jpg', 'Web前端工程师', '学习本课程之前，您需要掌握HTML基本知识，对网站建设有所了解。如果您之前懂得一点SEO但没有系统地学习过，就来听这个课程吧！', '你能通过学习本课程了解到符合搜索引擎要求的SEO基础知识，我们将从网页结构设计方面和代码编写方面学习SEO方法。也许你打开一个网站，从未想过为什么导航在这里，标题这么大？本课程将让你面对茫茫互联网的万千网页，一眼看出个中的SEO奥秘。', '2018-09-02 20:37:38.821665', '2018-08-12 23:48:28.331611');
INSERT INTO "public"."tb_imooc_course" VALUES (208, 806, 'C#面向对象编程', '入门', 42010, '本系列教程主要是，带你学习C#面向对象编程的编程思想、编程技巧', 'C#', 'https://img2.mukewang.com/58ab9ee00001207406000338-240-135.jpg', 'https://www.imooc.com/learn/806', '3小时17分', 9.5, 9.7, 9.3, 9.5, '简介：本系列课程主要学习c#的面向对象编的编程思想、编程技巧，以及继承、多态、静态类、接口、重载运算符、泛型和委托知识点。通过一个宠物商店的简单案例，贯穿整个课程，让学习变得轻松有趣！', 'kong66', 'https://img2.mukewang.com/533e505f00011ad102000200-80-80.jpg', '全栈工程师', '1、需要掌握c#基础语法和基本概念
2、建议听课和写代码实践相结合，更好的掌握知识点', '1、通过学习继承和多态，构建对象的森林，减少重复代码
2、学习静态成员静态类，实现对象间的共享资源和扩展非派生类
3、学习接口，可以跨类型地实现对象的统一管理
4、学习操作符重载，大大简化我们自定义对象的相关操作
5、学习泛型，极大地降低了开发的工作量', '2018-09-02 20:36:53.934965', '2018-08-12 23:47:42.924751');
INSERT INTO "public"."tb_imooc_course" VALUES (249, 767, '2小时学会Spring Boot', '初级', 141413, 'Spring Boot入门视频教程，你将学会使用Spring Boot快速构建应用程序', 'Java, SpringBoot', 'https://img3.mukewang.com/5847d579000178ac06000338-240-135.jpg', 'https://www.imooc.com/learn/767', '1小时45分', 9.5, 9.8, 9.5, 9.3, '简介：Spring Boot是用来简化Spring应用初始搭建以及开发过程的全新框架，被认为是Spring MVC的“接班人”，和微服务紧密联系在一起。通过本门课程的学习，你将学会如何使用Spring Boot快速构建应用程序，初步领略Spring Boot的魅力！其后续课程《Spring Boot进阶之Web进阶》.此课专为IT屌丝男程序员打造，女生请慎入！
讲师实战课程《Spring Boot微信点餐系统》
http://coding.imooc.com/class/117.html 
《Spring Cloud微服务实战》
http://coding.imooc.com/class/187.html 均已上线', '廖师兄', 'https://img4.mukewang.com/5a9fd02e00018e3308000751-80-80.jpg', 'JAVA开发工程师', '学习本门课程之前，您需要了解一些前置知识： 1、如何利用maven构建项目 2、Spring注解相关知识 3、MVC的思想的基本概念 4、RestfulApi相关知识', '1、创建第一个Spring Boot应用 2、Spirng Boot中自定义属性配置 3、Spring Boot中Controller的使用 4、Spirng Boot中使用spirng-data-jpa和事务操作', '2018-09-02 20:36:59.819886', '2018-08-12 23:47:46.402769');
INSERT INTO "public"."tb_imooc_course" VALUES (257, 633, 'Java实现SSO单点登录', '初级', 39719, 'Java视频教程介绍实现同域和跨域SSO，对核心技术和原理进行分析', 'Java', 'https://img1.mukewang.com/56e6177e0001fada06000338-240-135.jpg', 'https://www.imooc.com/learn/633', '2小时20分', 8.5, 8.6, 8.5, 8.5, '简介：本课程首先以新浪为例介绍了单点登录SSO的实现场景，然后对实现SSO所用的核心技术和原理进行分析，最后通过案例演示了同域SSO和跨域SSO的实现。', 'purp_blue', 'https://img.mukewang.com/56e6d1b30001d18002200220-80-80.jpg', 'JAVA开发工程师', '学习本门课程前需要：
1、对Java Web的基础知识有所了解
2、能够熟练使用Struts2进行程序开发', '1、了解单点登录的原理
2、使用Struts2实现同域SSO
3、使用Struts2实现跨域SSO', '2018-09-02 20:36:57.488983', '2018-08-12 23:47:46.971817');
INSERT INTO "public"."tb_imooc_course" VALUES (250, 764, 'Android网络框架-OkHttp使用', '中级', 18037, '本视频教程主要讲解Android SDK 6.0之后网络请求框架，赶快学起来吧', 'Android', 'https://img2.mukewang.com/5848fe1f0001ed9f06000338-240-135.jpg', 'https://www.imooc.com/learn/764', '1小时37分', 9.8, 9.9, 9.8, 9.8, '简介：本门课程主要给大家讲解Android SDK 6.0之后的网络请求的高级框架，其中包括Web端和服务器端的交互，常用的请求方式，请求图片，文件以及服务器搭建，session问题和常用框架的封装', 'hyman', 'https://img2.mukewang.com/54169c430001face18403264-80-80.jpg', '移动开发工程师', '1.必须有一定的Android基础
2.必须有一定的JAVA基础
3.了解Struts，Hibernate以及TomCat服务器的使用
4.有一定的网络基础知识', '1.熟练掌握SDK 6.0之后的网络请求
2.熟练掌握图片请求
3.熟练掌握文件请求
4.熟练掌握session问题
5.熟练掌握网络请求框架封装', '2018-09-02 20:36:57.590911', '2018-08-12 23:47:46.44328');
INSERT INTO "public"."tb_imooc_course" VALUES (260, 784, 'Dwr实现JAVA服务器端向客户端推送消息', '中级', 13984, 'dwr轻松帮你实现server push。', 'Java', 'https://img4.mukewang.com/5861d2500001d39406000338-240-135.jpg', 'https://www.imooc.com/learn/784', '58分', 9.1, 9.6, 9.3, 8.4, '简介：在实际项目中经常会遇到服务器端向单个客户端或多个客户端推送消息的需求，dwr配置简单，代码简洁，功能强大，在很多项目中得到广泛的应用。本课程不仅介绍了dwr的产生、应用、配置，更以实战模拟项目演示了dwr的强大与魅力。', 'weixin_小猪_...', 'https://img3.mukewang.com/59dee7210001200509900990-80-80.jpg', 'JAVA开发工程师', '1、熟悉SSH框架及使用。
2、熟悉jQuery的使用。
3、熟悉Java基础知识。
', '1、web服务器端推送技术的产生、应用场景 
2、dwr及其运行原理 
3、工程中如何加入dwr 
4、dwr的xml配置 
5、srciptSession的概念 
6、如何在jsp页面调用Java方法 
7、Java类中如何获取scriptSession 
8、服务器端如何向所有客户端推送消息 
', '2018-09-02 20:36:58.179981', '2018-08-12 23:47:47.246663');
INSERT INTO "public"."tb_imooc_course" VALUES (217, 813, '机器学习-实现简单神经网络', '初级', 51978, '人工智能时代，你准备好成为抓住机遇的那百分之二吗。', 'Python, 机器学习', 'https://img4.mukewang.com/58cf6639000183f406000338-240-135.jpg', 'https://www.imooc.com/learn/813', '1小时53分', 9.4, 9.6, 9.3, 9.2, '简介：本课程将构建AlphaGo的深度学习技术，通过通俗易懂的方式，向你娓娓道来。并通过Pyhton构建起一个简单的神经网络，通过“说做”结合，让大家一窥深度学习的强大魅力。
课程分为两部分，首先讲述深度学习有关的基本概念和算法。第二部分通过Python实现第一部分所讲的算法，通过编码的方式，实现两个简单但功能强大的神经网络，以期通过实践的方式让大家加深对概念和算法的理解。', 'coding迪斯尼...', 'https://img.mukewang.com/57a333b400010f6006400478-80-80.jpg', '全栈工程师', '有一定的编程基础，例如掌握C语言。', '1、机器学习的基本概念介绍 
2、数据分类算法介绍
3、神经元感知器分类算法并进行实现 
4、数据解析和可视化设计 
5、使用数据训练神经网络 
6、如何使用训练后的神经网络分类数据 
7、适应性线性神经元的基本原理并实现
8、适应性线性神经元网络进行数据分类
', '2018-09-02 20:36:54.806992', '2018-08-12 23:47:43.677767');
INSERT INTO "public"."tb_imooc_course" VALUES (244, 759, '浏览器开发者工具使用技巧', '初级', 34417, '在前端的开发和学习过程常用工具，定位前端常见BUG，提升解决问题能力', '前端工具', 'https://img.mukewang.com/5833cee1000166b206000338-240-135.jpg', 'https://www.imooc.com/learn/759', '1小时 0分', 9.6, 9.7, 9.7, 9.5, '简介：我们在前端的开发和学习过程中，经常碰到一些奇怪的问题。很多新手的选择是一句一句的看代码，如果开发工具没有报错的代码，只能去问别人。本课程将教会你自我查找和解决问题的能力。', '秋名山车神...', 'https://img1.mukewang.com/5b235a770001546c09600960-80-80.jpg', '全栈工程师', '1、对html基础知识已经掌握。
2、对css样式js有一定的了解。
', '1、使用浏览器开发者工具调试样式
2、调试js代码
3、通过移动端视图来调试不同手机上页面的效果
4、查找和解决前端问题的能力
', '2018-09-02 20:36:59.761754', '2018-08-12 23:47:45.912366');
INSERT INTO "public"."tb_imooc_course" VALUES (265, 791, 'JMeter之HTTP协议接口性能测试', '初级', 20774, '快速上手接口功能及性能测试', '性能测试, 接口测试', 'https://img.mukewang.com/58733f730001a55406000338-240-135.jpg', 'https://www.imooc.com/learn/791', '2小时14分', 9.5, 9.9, 9.2, 9.2, '简介：接口的测试，并不仅仅是掌握某一种工具。工具是死的，并且是多种多样的，本课程通过层层剖析的方式来帮助同学们了解http协议，让学习的同学并不仅仅会做接口的功能和性能测试，并且能够了解什么是真正的接口，消除歧义。
慕课网测试交流群 559506833', '大周16', 'https://img1.mukewang.com/5333a0350001692e02200220-80-80.jpg', '软件测试工程师', '1、有一定测试理论基础
2、适合已从事软件测试行业的同学
慕课网测试交流群 559506833', '1、通过本课程的学习，能够清楚的理解不同角色眼中接口的定义。
2、能够使用jmeter这个工具来进行接口的功能和性能测试
3、了解了接口的原理，能够举一反三，在未来的工作中可进行任意协议的接口测试。
慕课网测试交流群 559506833', '2018-09-02 20:36:58.763333', '2018-08-12 23:47:47.597814');
INSERT INTO "public"."tb_imooc_course" VALUES (799, 121, 'CSS深入理解之float浮动', '初级', 66667, '课程将会从感性的认识的角度讲解CSS float属性，浮动的前世今生', 'HTML/CSS', 'https://img4.mukewang.com/57076c9b00015e4506000338-240-135.jpg', 'https://www.imooc.com/learn/121', '50分', 9.2, 9.6, 9.2, 8.9, '简介：当我们有了一定的前端经验后，关于CSS代码，我们已经形成了自己的世界观和属于自己的准则，本课程将会从感性的认识的角度讲解CSS float属性。', '张鑫旭', 'https://img.mukewang.com/549beab90001be9037445616-80-80.jpg', '页面重构设计', '既适合学习过CSS基础知识的新手深入学习，也欢迎有经验的小伙伴加深了解噢！', '通过追溯CSS/HTML发展历史，知道Float出现的原本作用是什么，从而可以帮助我们解答很多疑惑。', '2018-09-02 20:37:40.505273', '2018-08-12 23:48:34.740833');
INSERT INTO "public"."tb_imooc_course" VALUES (778, 186, '电商网站前端架构', '中级', 93084, '整个项目组织、开发、发布等流程，教你如何创建一个电子商务网站', 'JavaScript', 'https://img4.mukewang.com/5705d54c0001528306000338-240-135.jpg', 'https://www.imooc.com/learn/186', '3小时 0分', 9.5, 9.8, 9.5, 9.3, '简介：目前电商网站非常火，我们这个课程就是教你如何创建一个电子商务网站。课程通过一个垂直电子商务网站，介绍前端架构搭建和实现的步骤和方法，以及在这个过程中我们需要做什么才能帮助项目最终从设计走向实现，是不是很诱人啊？我们一起来学习吧！', '远人', 'https://img1.mukewang.com/536b4d120001005f02720306-80-80.jpg', 'Web前端工程师', '做为前端开发工程师，您如果想更好更快的开发项目，那么您的福音来了，该课程分享电商网站整个项目如何组织如何开发等前端架构的内容，所以希望您具备较好的开发语法基础，有些小项目的开发经验，这样课程学习起来才会得心应手。', '前端架构的基本技能，前端优化和大规模代码组织方式，基础的架构搭建方式和设计方法，前端设计模式的应用。', '2018-09-02 20:37:39.083793', '2018-08-12 23:48:32.717415');
INSERT INTO "public"."tb_imooc_course" VALUES (718, 244, '洪大师带你解读Symfony 2框架', '中级', 19239, '洪大师教你玩转强大的框架-Symfony2，提高代码性能', 'PHP', 'https://img4.mukewang.com/572afefd0001383b06000338-240-135.jpg', 'https://www.imooc.com/learn/244', '8小时44分', 9.8, 9.8, 9.9, 9.5, '简介：全网首发，Symfony2是国外最流行的PHP开发框架，近年来Symfony2正以迅雷不及掩耳之势迅速占据国内PHP开发框架的市场份额， 鉴于symfony2高度重视业务逻辑，代码易读，维护轻松，能大大提升团队的开发效率，提高代码性能，现在Symfony2框架已成为大型互联网公司的首选框架。', '洪涛', 'https://img1.mukewang.com/5472e4a70001ead602200220-80-80.jpg', '其它', '1、熟练掌握PHP基本语法知识
2、熟练掌握PHP面向对象思想
3、具有1-2年开发经验', '1、如何搭建Symfony2的开发环境
2、如何使用Symfony2框架进行网站开发
3、如何部署Symfony2项目', '2018-09-02 20:37:33.110957', '2018-08-12 23:48:27.501917');
INSERT INTO "public"."tb_imooc_course" VALUES (262, 785, '微服务架构在二手交易平台（转转）中的实践', '高级', 18922, '本课程是大会分享内容，微服务架构在转转(58集团)的落地实践', 'Java, 微服务', 'https://img2.mukewang.com/586395f4000145e006000338-240-135.jpg', 'https://www.imooc.com/learn/785', '50分', 9.9, 10, 9.9, 9.9, '简介：本课程是大会分享内容，讲述了微服务架构在转转(58集团)的落地实践。', 'musicml', 'https://img2.mukewang.com/586f93c30001fd9b01410144-80-80.jpg', '全栈工程师', '随着移动互联时代的到来，研发项目时，需要快速应对需求变化，构建易扩展、高可用的系统。
传统的架构已无法满足业务持续快速创新的需求，微服务架构（MicroService Architecture）应运而生。
', '也许大家对微服务架构有一定的认识，但对微服务架构如何在项目中落地实践，缺乏一些经验。
本课程将结合二手交易平台的特点，详细讲述微服务架构实践。', '2018-09-02 20:36:58.44982', '2018-08-12 23:47:47.347528');
INSERT INTO "public"."tb_imooc_course" VALUES (327, 748, 'Android基础-初识SQLite', '初级', 17837, '学习Android数据库操作技巧', 'Android', 'https://img4.mukewang.com/5811c6c80001c83e06000338-240-135.jpg', 'https://www.imooc.com/learn/748', '1小时 5分', 9.4, 9.6, 9.2, 9.3, '简介：本课程主要讲解Android数据库中数据的添加，修改  ，查询和删除等常用操作，常用的Sql语句等', 'Summer321', 'https://img4.mukewang.com/57ec719d00012e3706400640-80-80.jpg', NULL, '1.必须掌握Android简单UI
2.必须掌握Android中的基本事件
3.有一定的sql语句基础', '1.基础控件的使用
2.数据库的增加，删除，修改和查询操作
3.数据库操作中常用的sql语句
4.Android中的事件', '2018-09-02 20:37:03.172394', '2018-08-12 23:47:52.640798');
INSERT INTO "public"."tb_imooc_course" VALUES (280, 760, 'Android框架-GreenDao', '初级', 10611, 'GreenDao对象和数据库之间的媒介，本教程将从零开始介绍GreenDao', 'Android', 'https://img.mukewang.com/5833e62b0001c2ad06000338-240-135.jpg', 'https://www.imooc.com/learn/760', '2小时43分', 9.7, 10, 9.7, 9.3, '简介：GreenDao作为目前最火的数据库框架(没有之一)，其性能和效率远胜于ORMLite与Xutils。GreenDao的诞生简化了我们的SQLite操作，使得访问数据库变得如此简单。本课程将从零开始为大家介绍GreenDao的配置方法与使用步骤', 'nate', 'https://img1.mukewang.com/547697d10001e0b110240679-80-80.jpg', '移动开发工程师', '需要有Android基础知识，对SQLite数据库有所了解', '1.GreenDao的配置
2.GreenDao的多线程查询
3.GreenDao 1v多数据模型构建', '2018-09-02 20:37:03.746878', '2018-08-12 23:47:49.467889');
INSERT INTO "public"."tb_imooc_course" VALUES (303, 714, '美女带你走入LR性能测试框架基础', '初级', 35443, '带领大家进入LoadRunner性能测试领域', '性能测试', 'https://img2.mukewang.com/5800999f0001ac1106000338-240-135.jpg', 'https://www.imooc.com/learn/714', '1小时55分', 9.2, 9.6, 9, 9, '简介：性能测试的实施不仅仅是掌握LoadRunner即可，还需要进行性能测试设计与性能测试构建实施等。本课程的目标就是帮助各位朋友提高实战能力，让性能测试落地，接地气，课程中会拿实际案例作为分析手段进行演练，增强动手操作技能。
项目实战进阶推荐课程！！！
性能测试 LoadRunner 工具实战-慕课网实战 http://coding.imooc.com/class/127.html', '石清露', 'https://img.mukewang.com/57f9a0680001375006400961-80-80.jpg', '软件测试工程师', ' 1.有一定的测试理论基础；
 2.有一定的C语言基础项目实战
进阶推荐课程！！！
性能测试 LoadRunner 工具实战-慕课网实战 http://coding.imooc.com/class/127.html', '可以模拟上千万用户实施并发访问，并能实时监测性能，进而帮助开发人员确认和查找问题根源。本套LR课程将带领大家认识这个软件，并学会它的三大功能
项目实战进阶推荐课程！！！
性能测试 LoadRunner 工具实战-慕课网实战 http://coding.imooc.com/class/127.html ', '2018-09-02 20:37:00.868296', '2018-08-12 23:47:50.968813');
INSERT INTO "public"."tb_imooc_course" VALUES (297, 710, 'CSS深入理解之padding', '中级', 47780, '本css视频教程中，将深入介绍CSS中padding属性的特点，常用特性', 'HTML/CSS', 'https://img2.mukewang.com/57fcab030001707f06000338-240-135.jpg', 'https://www.imooc.com/learn/710', '30分', 9.7, 9.8, 9.6, 9.6, '简介：本课程中，张鑫旭老师不仅将为大家深入讲解padding常用的一些特性，比如与元素尺寸的关系，负值和百分比值等，更为大家带来一些padding的小秘密！并为大家介绍如何运用padding来绘制图形，以及padding在布局的一些应用。精彩不容错过噢！', '张鑫旭', 'https://img3.mukewang.com/549beab90001be9037445616-80-80.jpg', '页面重构设计', '本课程适合学习过CSS系列课程的同学，通过学习本课程来深入理解CSS中padding的属性和用法。0基础的同学可能看不懂哦！', '了解padding与元素尺寸之间关系；
了解padding负值和百分比值；
标签元素的内置padding；
利用padding和其他一些CSS来绘制图形；
padding在布局这块一些比较好的应用。', '2018-09-02 20:37:05.677093', '2018-08-12 23:47:50.627509');
INSERT INTO "public"."tb_imooc_course" VALUES (292, 586, '基于SSH实现员工管理系统之框架整合篇', '中级', 43131, '本视频教程主要介绍环境搭建和SSH框架整合，逐层深入理解学习', 'Java', 'https://img1.mukewang.com/57a1ca0a00016fcc06000338-240-135.jpg', 'https://www.imooc.com/learn/586', '1小时24分', 9.7, 9.9, 9.7, 9.5, '简介：本案例介绍如何使用Struts2+Hibernate+Spring框架实现员工管理系统，本套案例课程分为框架整合篇和案例实现篇。本门课程主要介绍环境搭建和SSH框架是如何整合的！分为Struts2整合Spring和Spring整合Hibernate两大步骤进行，逐层深入，更有利于理解和学习！', '慕_神', 'https://img.mukewang.com/55dbe4f1000115e705680568-80-80.jpg', 'JAVA开发工程师', '学习本门课程前，需要对Struts2、Hibernate、Spring的基础知识有所了解，没学过的同学可以观看慕课网的《Struts2入门》、《Spring入门》和《Hibernate初探之单表映射》等课程。', '1、能够自己动手搭建SSH整合环境
2、学会Struts2+Hibernate+Spring三大框架如何整合', '2018-09-02 20:37:05.226503', '2018-08-12 23:47:50.224042');
INSERT INTO "public"."tb_imooc_course" VALUES (317, 729, 'App压力测试入门', '初级', 27126, '结合6个压力测试小案例，教你对Android App进行压力测试', 'Android, 性能测试', 'https://img2.mukewang.com/57fb48700001289806000338-240-135.jpg', 'https://www.imooc.com/learn/729', '1小时59分', 9.8, 9.9, 9.7, 9.7, '简介：本课程首先探讨2个压力测试问题：
 1、为什么要开展压力测试？
 2、什么时候开展压力测试？
然后讲解7个压力测试必要基础知识、最后实战6个压力测试小案例,从而教会大家对任意一款Android App进行压力测试
其他专项测试内容：http://coding.imooc.com/class/53.html', 'IAMTESTER', 'https://img4.mukewang.com/5811a18d000190c405000331-80-80.jpg', '软件测试工程师', '需了解软件测试基础，Android基础，shell基础 
进阶学习：《Android专项测试-Python篇》http://coding.imooc.com/class/53.html', '一、你将学习到以下压力测试必要基础知识：
  1、手工测试场景
  2、自动测试场景
  3、Monkey工具入门 
  4、ADB工具入门
  5、了解Monkey Script
  6、MonkeyRunner入门
  7、压力异常结果分析
二、对Android App进行简单压力测试

慕课网测试群  559506833', '2018-09-02 20:37:02.461819', '2018-08-12 23:47:52.014599');
INSERT INTO "public"."tb_imooc_course" VALUES (381, 613, 'Scala程序设计—基础篇', '初级', 29918, 'Scala基础编程入门视频教程，能够编写简单的Scala代码', '大数据', 'https://img4.mukewang.com/57466a3200012d3406000338-240-135.jpg', 'https://www.imooc.com/learn/613', '2小时13分', 9.7, 9.9, 9.8, 9.5, '简介：Scala语言具备面向对象和函数式两种编程范式，为程序设计带来了更大的灵活性和方便性。本门课程将简明扼要地介绍Scala的语言基础。完成本课程的学习后，同学们将对函数式编程有初步的认识，也能够编写简单的Scala代码。', '辰方', 'https://img.mukewang.com/587e17c80001e54d00400040-80-80.jpg', '其它', '本课程是Scala的基础教程，虽然对学员的基础不做要求，但是学员最好有一门编程语言的经验，这样会更容易理解课程里的一些概念。			
', '1、函数式编程的基本概念			
2、Scala的开发环境			
3、高阶函数			
4、表达式求值策略			
5、Scala Immutable Collection简介			
', '2018-09-02 20:37:18.857873', '2018-08-12 23:47:56.485857');
INSERT INTO "public"."tb_imooc_course" VALUES (293, 684, 'Android的各种Drawable讲解', '入门', 18406, '了解Android各种Drawable用法，解决开发遇到图形的各种问题', 'Android', 'https://img.mukewang.com/5784a3310001c2e506000338-240-135.jpg', 'https://www.imooc.com/learn/684', '1小时 6分', 9.9, 10, 9.9, 9.9, '简介：介绍各自Drawable：BitmapDrawable、LayerDrawable、LevelListDrawable、TransitionDrawable、InsetDrawable等的常见用法和使用场景
慕课网Android讨论群② 170368200', 'ALABO', 'https://img4.mukewang.com/5458657e000125a302200220-80-80.jpg', '移动开发工程师', '需要提前了解Drawable的基础知识（用法、常见api）', '解决实际开发中遇到图形的堆叠、排列展现、透明度渐变等复杂问题
慕课网Android讨论群② 170368200', '2018-09-02 20:37:05.257224', '2018-08-12 23:47:50.272613');
INSERT INTO "public"."tb_imooc_course" VALUES (346, 683, '快速实现不一样的移动拼图', '初级', 14418, '实现一个支持手势的移动拼图小游戏，手把手带你开发小游戏', 'Android', 'https://img1.mukewang.com/57849fd40001638d06000338-240-135.jpg', 'https://www.imooc.com/learn/683', '1小时17分', 9.6, 9.7, 9.6, 9.5, '简介：1、项目演示及搭建方法
2、游戏逻辑判断
（1）移动判断
（2）手势判断
（3）打乱顺序
（4）判赢
慕课网Android讨论群② 170368200', '阿旭_', 'https://img.mukewang.com/577231b50001120902000200-80-80.jpg', '移动开发工程师', '学完课程内讲解的代码后，可尝试修改逻辑实现“2048”小游戏', '1、注释先行：良好的代码编写风格
2、代码分层：了解MVC之间的关系。
（1）M数据：初始化在数据V之前。
（2）V视图：注意尽可能每个视图写在一块，绑定好相应的Model
（3）C控制：先写控制层需要的内容注释，再写相应的实现方法。
慕课网Android讨论群② 170368200', '2018-09-02 20:37:04.681674', '2018-08-12 23:47:53.938727');
INSERT INTO "public"."tb_imooc_course" VALUES (355, 690, '应用自动更新组件开发', '初级', 18581, '实现Android应用自动更新组件式开发，会使用我们开发的自动更新组件', 'Android', 'https://img4.mukewang.com/5795e97a000188dc06000338-240-135.jpg', 'https://www.imooc.com/learn/690', '1小时 1分', 9.4, 9.3, 9.7, 9, '简介：1.应用自动更新及其意义   2.自动更新原理及所需知识   3.开发一个自动更新组件  4.测试我们的自动更新组件   5.组件化开发思想介绍
慕课网Android讨论群② 170368200', 'qndroid', 'https://img2.mukewang.com/5333a0350001692e02200220-80-80.jpg', '移动开发工程师', '学习本课程，必须先掌握安卓四大组件的基础知识和应用', '通过代码实战，实现我们的app自动更新功能,让学生真正的会使用我们开发的自动更新组件
慕课网Android讨论群② 170368200', '2018-09-02 20:37:05.141595', '2018-08-12 23:47:54.505233');
INSERT INTO "public"."tb_imooc_course" VALUES (290, 723, 'Linux Bind负载均衡', '中级', 11987, 'DNS转发、主从模式及传输限制，通过本课了解更多DNS知识', 'Linux', 'https://img4.mukewang.com/57de39800001bc6f06000338-240-135.jpg', 'https://www.imooc.com/learn/723', '1小时10分', 9.4, 9.4, 9.4, 9.4, '简介：《Linux系统下智能DNS服务搭建》系列课程分为三部，分别为Bind服务篇、Bind负载均衡篇和智能DNS篇。本门课程作为系列课程的第二部，首先介绍了DNS的递归地带查询和子域授权，然后介绍了DNS转发的实现过程和配置，以及DNS主从域传输，最后介绍了DNS的数据加密及相关配置。', 'Jeson老师', 'https://img3.mukewang.com/5510c7a600016ea802200220-80-80.jpg', 'Python工程师', '学习本门前：
1、需要了解Linux的基本命令并对Linux网络有所了解。可以参看慕课网课程《Linux达人养成计划I》和《Linux网络管理》。
2、需要学习《Linux智能DNS服务搭建》三部曲中的第一部《Linux智能DNS服务搭建之Bind服务 》。', '学习完本课程后，可以掌握如下内容：
1、DNS递归和迭代查询的过程和配置
2、DNS子域授权的概念和配置
3、DNS转发的实现过程和配置
4、DNS主从域传输的实现
5、DNS数据加密的实现方式和配置', '2018-09-02 20:37:01.853369', '2018-08-12 23:47:50.130744');
INSERT INTO "public"."tb_imooc_course" VALUES (321, 722, '大型PHP电商网站商品秒杀功能实现思路分析', '中级', 21170, '本课程属于PHP高级教程，汇集前沿技术，实现商品秒杀，小白慎入		', 'PHP', 'https://img2.mukewang.com/57de2e670001dedf06000338-240-135.jpg', 'https://www.imooc.com/learn/722', '36分', 9, 9, 8.9, 9.2, '简介：众所周知，对于一个流量凶猛、稳定性要求极高的商品秒杀功能，传统的PHP技术很难满足要求，所以需要借助于网站架构设计、服务器配置、负载均衡、cdn加速、云解析、redis等多种手段方能实现，本课程属于PHP高级课程，主要介绍功能实现思路，不涉及代码具体实现，小白慎入！', 'ziniu', 'https://img2.mukewang.com/57e9e2ba0001998602000200-80-80.jpg', NULL, '本课程是PHP高级课程
1、需要熟练掌握php的基础知识
2、需要熟练掌握mysql基础知识
3、需要熟练掌握redis基础知识
4、需要熟练掌握服务器配置基础知识
5、需要熟练掌握js基础知识', '1、高可用、高并发架构分析思路
2、高可用、高并发服务器构建纪实
3、程序设计的权衡之道', '2018-09-02 20:37:02.535687', '2018-08-12 23:47:52.175686');
INSERT INTO "public"."tb_imooc_course" VALUES (338, 584, 'Java实现权限管理（上）', '中级', 53667, 'Java权限管理系列教程之权限管理系统DAO层和服务层实现', 'Java', 'https://img3.mukewang.com/56e291b40001f72f06000338-240-135.jpg', 'https://www.imooc.com/learn/584', '1小时40分', 8.1, 8.8, 7.8, 7.7, '简介：Java权限管理系列课程介绍如何使用SpringMVC+Spring来实现基于RBAC的权限管理系统。本套系列课程包括两门课程，本课程是第一门课，主要介绍什么是基于角色的访问控制（RBAC），以及数据访问层和服务层的实现。', 'moocer', 'https://img4.mukewang.com/58db190e0001643d02000200-80-80.jpg', 'JAVA开发工程师', '学习本课程前需要学习如下知识：
1、熟悉SpringMVC
2、对Spring有一定的了解', '1、掌握什么是基于角色的访问控制（RBAC）的原理
2、如何编写权限管理系统的DAO层和服务层', '2018-09-02 20:37:04.13022', '2018-08-12 23:47:53.493705');
INSERT INTO "public"."tb_imooc_course" VALUES (352, 693, '360加速球核心效果实现', '初级', 17074, 'Android开发仿360加速球核心效果，助小伙伴进阶，学习之后收获满满', 'Android', 'https://img3.mukewang.com/579f0fb10001c5e006000338-240-135.jpg', 'https://www.imooc.com/learn/693', '1小时51分', 10, 10, 9.9, 10, '简介：本课程通过高仿360加速球核心效果，带大家综合实战自定义控件，事件触摸处理，以及浮窗体等重难点技术。让大家在实战中体会这些知识点在实际项目中的运用，从而能学习致用，打造出更加酷绚的UI和体验更好的产品。', 'petter_2016', 'https://img4.mukewang.com/57739a820001b95804800480-80-80.jpg', '移动开发工程师', '本门课程是针对中级程序员所设计的课程，需要小伙伴们有一定的Android基础，并对自定义控件的绘制流程，事件处理机制，手势识别原理，窗体管理者有基本的了解。当然如有没听明白的地方，小伙伴们可以去问答区提问，我在那恭候大家！', ' 学完本课程，小伙伴们可以收获到如下技术：    
     1：掌握自定义控件的常用步骤与技巧。
     2：掌握如果用手势识别器捕捉各个不同的动作。
     3：掌握自定义动画的实现
     4：掌握通过窗体管理者如何打造浮窗体。
     5：了解项目的架构和构建思路。 ', '2018-09-02 20:37:05.014722', '2018-08-12 23:47:54.416558');
INSERT INTO "public"."tb_imooc_course" VALUES (337, 677, '玩儿转Swift 2.0（第四季）', '初级', 12545, 'Swift泛型、扩展、面向协议编程等，大家真正玩儿转swift', 'iOS', 'https://img4.mukewang.com/579193580001000306000338-240-135.jpg', 'https://www.imooc.com/learn/677', '6小时56分', 9.5, 9.8, 9.2, 9.5, '简介：本课程是基于Swift2.2的基础课程第四季，也是最后一季。liuyubobobo老师将为大家详细讲解swift语言更多高级语言特性：下标、运算符重载、扩展、泛型、协议和面向协议的编程思想、错误处理、内存管理、类型转换。希望通过最终季的学习，大家真正玩儿转swift！', 'liuyubobobo', 'https://img2.mukewang.com/5347593e00010cfb01400140-80-80.jpg', '全栈工程师', '本课程适合至少有一门编程语言基础的同学用于学习Swift语言。也适合在学习使用swift进行iOS开发的过程中，遇到不清楚的swift语言问题随时查询。本课程一共分为四季，没有学习过Swift的同学请按照第一~第四季的顺序学习，有基础的同学可以挑选章节观看，巩固提高。', '这是《玩儿转swift2.0》系列课程的第四季，介绍了诸多swift语言特性。通过整个系列课程的学习，大家可以全面、深入地了解swift的语法与语言特性，理解swift的设计原则和理念，对swift语言的掌握达到中等偏上的水平。', '2018-09-02 20:37:06.328111', '2018-08-12 23:47:53.445964');
INSERT INTO "public"."tb_imooc_course" VALUES (779, 182, '基于bootstrap的网页开发', '中级', 167354, 'Bootstrap框架的基础教程，学会用Bootstrap前端框架搭建网页', 'Bootstrap', 'https://img.mukewang.com/5705b88c0001de9606000338-240-135.jpg', 'https://www.imooc.com/learn/182', '1小时14分', 9.5, 9.8, 9.5, 9.3, '简介：Bootstrap是用于前端开发的工具包，提供了优雅的HTML和CSS规范，并基于jQuery开发了丰富的Web组件。课程介绍了Bootstrap框架的基本知识，并基于Bootstrap框架，实现了一个浏览器介绍的单页面网页，同时网页支持移动设备，通过案例的实现让您对Bootstrap有更深入的了解。', '姜维_Wayne', 'https://img.mukewang.com/599ea79c0001a1bc05000500-80-80.jpg', 'Web前端工程师', '本课程针对Bootstrap基础知识进行概览式介绍，所以希望您已学习本网站的“玩转Bootstrap”课程知识点，同时希望您会使用HTML、CSS、JavaScript做简单的网页，如果您已具备jQuery基础知识会更好。', '1.了解Bootstrap框架基础知识。
2. 如何开始使用Bootstrap框架。
3. 如何运行初始代码，并修改成所需要的代码。
4. 如何利用Bootstrap制作响应式布局的网页。
5. 如何使用Bootstrap中的组件、插件及定制。
', '2018-09-02 20:37:42.781535', '2018-08-12 23:48:32.932516');
INSERT INTO "public"."tb_imooc_course" VALUES (415, 630, 'Java高并发秒杀API之web层', '高级', 53332, 'Java实现高并发秒杀API的第三门课，介绍Web层的设计和实现', 'Java', 'https://img.mukewang.com/5733e1c00001516f06000338-240-135.jpg', 'https://www.imooc.com/learn/630', '2小时29分', 9.7, 9.9, 9.7, 9.6, '简介：本门课程是《Java实现高并发秒杀API》系列课程的第三门课，主要介绍秒杀业务Web层的设计和实现，使⽤用SpringMVC整合spring,实现秒杀restful接⼝。秒杀项目使用流行的SpringMVC+Spring+MyBatis整合框架进行开发。非常值得学习呦！', 'yijun zhang', 'https://img3.mukewang.com/57286e0a0001c22203280318-80-80.jpg', 'JAVA开发工程师', '《Java高并发秒杀API》是系列课程，共四门课，分别为业务分析和DAO层，Service层，Web层和高并发优化。本门课程是第二门课程，学习前需要了解如下知识： 
1、精通JavaWeb基础 
2、熟悉SpringMVC、Spring和MyBatis框架
3、学习《Java高并发秒杀API》系列的前两门课程', '1、掌握秒杀业务
2、能够进行SpringMVC+Spring+MyBatis的整合开发 
3、使⽤用SpringMVC整合spring,实现秒杀restful接⼝', '2018-09-02 20:37:09.485037', '2018-08-12 23:47:59.184054');
INSERT INTO "public"."tb_imooc_course" VALUES (371, 661, 'iOS基础教程-SQLite数据库操作', '初级', 11865, 'SQLite基本语法,使用场景和项目应用，教程步骤清晰、易懂', 'iOS', 'https://img4.mukewang.com/574cf35000018ff106000338-240-135.jpg', 'https://www.imooc.com/learn/661', '1小时19分', 9.9, 10, 9.8, 9.9, '简介：本章由简入繁地对SQLite中增、删、改、查的语法进行详细的讲解，并且以实例的形式演示在项目开发中对SQLite这四中语法的使用。步骤清晰、易懂，很容易就能上手', 'Keegan', 'https://img1.mukewang.com/565e844f0001ff0a04100410-80-80.jpg', '移动开发工程师', '掌握iOS的函数、字符处理等基本的语法', '1. SQLite的基本语法和使用场景。
2. SQLite增删改查方法的对比和组合使用。
3. 项目应用,制作简单交互式页面.', '2018-09-02 20:37:09.909311', '2018-08-12 23:47:55.929172');
INSERT INTO "public"."tb_imooc_course" VALUES (367, 660, 'Unity3D菜鸟先飞之NGUI实战篇', '中级', 13165, 'NGUI系列课程续篇，终极实战，掌握NGUI技术还是有必要的', 'Unity 3D', 'https://img1.mukewang.com/574d21cb0001d69806000338-240-135.jpg', 'https://www.imooc.com/learn/660', '1小时13分', 9.7, 9.9, 9.6, 9.7, '简介：本课程为NGUI课程续篇，结合上一课学习的基础知识，老师讲带领同学们完成登陆以及游戏主界面的功能实现。在Unity3D开发中，NGUI的地位举足轻重，不论版本怎样变化。掌握NGUI技术还是有必要的。', 'Smart_Coder', 'https://img2.mukewang.com/56651a670001be9a06400640-80-80.jpg', '移动开发工程师', '本门课程为Unity3D初-中级课程，需要小伙伴们先去看NGUI基础篇噢！', '1、图集字体制作
2、UI界面制作
3、界面逻辑编写', '2018-09-02 20:37:09.923502', '2018-08-12 23:47:55.785501');
INSERT INTO "public"."tb_imooc_course" VALUES (344, 687, 'Echarts3.0入门基础与实战', '中级', 40683, 'Echarts3.0入门视频教程，带你领略高逼格数据可视化的魅力', 'JavaScript, 大数据', 'https://img3.mukewang.com/578f36fe00011d9006000338-240-135.jpg', 'https://www.imooc.com/learn/687', '1小时20分', 9.6, 9.6, 9.6, 9.4, '简介：Echarts是国人开发的基于canvas的可视化库，以api设计优雅，效果酷炫等优点，越来越受广大前端开发者喜爱，本课主要介绍echarts的入门使用，并配套详细的代码，后面通过实战小项目再次加深对echarts的理解，并且掌握echarts在实战中的用法。', '蜗牛老湿', 'https://img3.mukewang.com/59ed52ea0001ed3902000200-80-80.jpg', 'Web前端工程师', '1、对 HTML 基础知识已经掌握。
2、对 JS 基础知识已经掌握。
', '1、	浏览器可视化的原理
2、	Echarts的入门使用
3、	柱状图和折线图的实现
4、	常见的图标组件
5、	饼图的实现
6、	仪表盘的实现
7、	地图，散点图，K线图的实现
8、	多个x轴的图表
9、	值域漫游
10、	定制化主题
11、	实战项目', '2018-09-02 20:37:04.767037', '2018-08-12 23:47:53.838017');
INSERT INTO "public"."tb_imooc_course" VALUES (596, 376, 'Android-Service系列之多线程断点续传下载', '中级', 21174, '本视频教程主要代领我们要学习的多线程续传下载程序的开发', 'Android', 'https://img.mukewang.com/570763300001d9a706000338-240-135.jpg', 'https://www.imooc.com/learn/376', '1小时32分', 9.8, 9.8, 9.8, 9.7, '简介：在日常下载文件的过程，由于网速问题或者突然断电等等使我们正在下载的东西处于暂停状态，当我们在点击它时还能在之前下载的基础上进行下载，这就是今天我们要学习的多线程续传下载程序的开发', 'XRay_Chen', 'https://img2.mukewang.com/552496a1000142c812740894-80-80.jpg', '移动开发工程师', '适合有一定Android开发基础的同学，要求学生能够有很强的java中多线程以及线程池的基础，灵活使用service和多线程结合实现断点续传功能。', 'Activity和Service的通信方法
ListView和BaseAdapter的使用
数据库操作
多线程分段下载的原理
线程池的使用
线程同步的应用
单例模式的应用
Notification的使用
Messenger的使用
', '2018-09-02 20:37:26.595131', '2018-08-12 23:48:15.913705');
INSERT INTO "public"."tb_imooc_course" VALUES (425, 603, 'oeasy教你玩转css禅意花园', '初级', 42336, 'css设计领域经典例子禅意花园，36个设计让你彻底了解css', 'CSS3', 'https://img.mukewang.com/5707795b00018b7006000338-240-135.jpg', 'https://www.imooc.com/learn/603', '27小时 0分', 10, 10, 10, 10, '简介：本课程使用css设计领域最经典的例子禅意花园来学习css实战，36个设计让您彻底了解css的方方面面。从设计入手到精通界面，是成为优秀网页设计师的快速路径。', 'Oeasy', 'https://img3.mukewang.com/53855e6f0001034501400140-80-80.jpg', '页面重构设计', '基础的html、css、ps知识
', '设计知识、ps知识、css的精髓
', '2018-09-02 20:37:16.117457', '2018-08-12 23:48:00.14283');
INSERT INTO "public"."tb_imooc_course" VALUES (445, 606, 'AIDL-小白成长记', '中级', 40258, 'AIDL-小白成长记，想要快速入门，看本次的教程就对了', 'Android', 'https://img1.mukewang.com/57075a800001081e06000338-240-135.jpg', 'https://www.imooc.com/learn/606', '1小时45分', 9.7, 9.9, 9.4, 9.6, '简介：AIDL是Android开发中比较常见的技术，想成为一名合格的Android攻城狮，看本次课程就对了！本节课将带领同学们快速入门AIDL相关技术，从基本语法，到案例解析。打造一键式学习过程！', 'Andrew ²º...', 'https://img1.mukewang.com/56cbf5b20001da5b05680568-80-80.jpg', NULL, '本节课需要同学们掌握Android相关基础知识，学习多进程间的通信规则和方式。AIDL语言的基本语法和创建，以及怎样使用AIDL来实现进程间的通信。', '1、AIDL基本语法
2、案例解析
3、数据传递
4、原理剖析', '2018-09-02 20:37:16.209048', '2018-08-12 23:48:02.437403');
INSERT INTO "public"."tb_imooc_course" VALUES (651, 308, 'Android图案解锁', '中级', 34005, '本视频教程将带领大家通过自定义控件实现一个图案解锁的功能', 'Android', 'https://img2.mukewang.com/54c8b23d000162e906000338-240-135.jpg', 'https://www.imooc.com/learn/308', '2小时 0分', 9.2, 9.5, 9.2, 8.7, '简介：本课程将带领大家通过自定义控件实现一个图案解锁的功能，包括自定义控件的使用、常见绘图操作、控件事件处理、监听器使用、以及综合案例的应用', 'JerSuen', 'https://img4.mukewang.com/54584c86000151a502200220-80-80.jpg', '移动开发工程师', '本课程是基于Android开发的案例，需要大家熟练的掌握Android和Java相关知识：
1、了解自定义控件的流程及相关知识
2、熟悉Android中的Paint、 Matrix 、Canvas 
3、熟悉Java中的Math', '通过本课程，你将学到：
1、如何将图案锁应用到实际开发中
2、自定义控件的相关知识
3、常见绘图操作
4、控件的事件处理
5、监听器的应用', '2018-09-02 20:37:30.653998', '2018-08-12 23:48:20.769326');
INSERT INTO "public"."tb_imooc_course" VALUES (680, 299, 'HTML5音乐可视化', '中级', 70234, '利用webAudio和canvas可视化你的音乐，让你的音乐动起来', 'Html5', 'https://img1.mukewang.com/5705d3450001a90106000338-240-135.jpg', 'https://www.imooc.com/learn/299', '2小时 0分', 9.7, 10, 9.7, 9.5, '简介：单纯的音乐播放是否过于单调，在听音乐的同时如果也能看见音乐是否更加带感。本课程将带领你使用webAudio和canvas将你的音乐以你喜欢的形式可视化出来，让你的音乐动起来。', 'Doving', 'https://img2.mukewang.com/54bf46160001222c02200220-80-80.jpg', 'Web前端工程师', '本课程是前端高级课程，您需要具备下以知识:
1、掌握前端 HTML，CSS，JS 的基础知识。
2、如果您能掌握一点 node 和 Canvas 的知识，对课程学习会有很大帮助。
3、如果您没有以上知识，可以先学习平台中的相关课程。
4、如果您已了解 webAudio 相关API，那一起来交流吧!', '1、使用node快速构建服务端
2、使用CSS构建响应式前端界面
3、使用webAudio操作分析音频数据
4、使用Canvas可视化数据', '2018-09-02 20:37:30.883894', '2018-08-12 23:48:23.092965');
INSERT INTO "public"."tb_imooc_course" VALUES (423, 482, 'Java实现图片水印', '初级', 30148, '从实现图片添加单个文字水印开始，逐步深入，到批量添加水印功能', 'Java', 'https://img2.mukewang.com/570364e7000147be06000338-240-135.jpg', 'https://www.imooc.com/learn/482', '1小时15分', 9.8, 10, 9.6, 9.8, '简介：当下的许多互联网站为了保护自身的图片资源，都会为图片添加水印以宣示版权所属。那么在Java Web开发中，如何为图片添加水印呢？本课程从实现图片添加单个文字水印开始，逐步深入，最终实现多图片批量添加水印的功能。', '皇马啸西风...', 'https://img2.mukewang.com/55792b300001c8af02200220-80-80.jpg', 'JAVA开发工程师', '本课程是java web的中高级课程，建议各位小伙伴们先对 Jsp、以及Struts2有初步认识，再来进修。', '1、Java图片水印实现原理
2、Java实现图片添加文字水印
3、Java实现图片添加图片水印
4、Java实现多图片水印的添加', '2018-09-02 20:37:15.898494', '2018-08-12 23:47:59.896404');
INSERT INTO "public"."tb_imooc_course" VALUES (498, 543, 'Android摄像头基础', '高级', 37258, '带你走进Android摄像头的秘密花园，探索Camera的奥秘', 'Android', 'https://img.mukewang.com/574668e30001620506000338-240-135.jpg', 'https://www.imooc.com/learn/543', '1小时23分', 9.7, 9.9, 9.7, 9.5, '简介：本课程为Android摄像头的课程讲解。由浅入深，带领小伙伴们探索Camera的奥秘，带大家学会摄像头的摄像原理和底层的实现。', 'eclipse_xu', 'https://img.mukewang.com/54cb9b5f0001827024483264-80-80.jpg', '移动开发工程师', '本门课程为Android中级课程，需要小伙伴们有一定的Android基础知识，当中涉及Intent,SurfaveView等内容。', '1.Android系统相机的调用（Intent）
2.自定义Android相机
3.学习自定义控件的使用', '2018-09-02 20:37:15.061714', '2018-08-12 23:48:07.015083');
INSERT INTO "public"."tb_imooc_course" VALUES (434, 596, ' PHP第三方登录—QQ登录', '中级', 42841, '使用QQ互联官方SDK快速接入QQ登录，迅速获取海量用户，不容错过', 'PHP', 'https://img4.mukewang.com/56a0932200014c4d06000338-240-135.jpg', 'https://www.imooc.com/learn/596', '1小时13分', 9.7, 10, 9.8, 9.4, '简介：想使用最简单的方法为我们的Web应用获取新用户，你绝对不应该错过。使用QQ互联官方提供的SDK快速接入QQ互联开放平台，迅速获取海量用户。', '壞大叔badUnc...', 'https://img4.mukewang.com/59311bea0001e93207410741-80-80.jpg', 'PHP开发工程师', '学习本课程前，需要首先学习OAuth协议基本原理课程，有一定的PHP语言基础以及OOP思想。', '1、OAuth协议基本原理
2、如何成为QQ互联开发者
3、如何将自己的Web应用接入QQ互联', '2018-09-02 20:37:10.886337', '2018-08-12 23:48:00.940096');
INSERT INTO "public"."tb_imooc_course" VALUES (492, 310, 'Premiere魔术——图片变电影', '初级', 67022, '教你使用剪辑软件Premiere，将图片制作成一部动态小电影', '动效动画', 'https://img2.mukewang.com/570777b20001852906000338-240-135.jpg', 'https://www.imooc.com/learn/310', '24分', 9.2, 9.5, 9.1, 9, '简介：本课程通过用各种图片素材来制作视频动画“大圣归来”。不仅告诉你图片运动的创意和想法还有短频配乐的选取方式，同时教你使用时下最流行的后期剪辑软件Premiere。对于刚初步踏入剪辑殿堂的你，这是专门为你量身定制的私人“新手剪辑”课程。', '凌 晨', 'https://img1.mukewang.com/562858870001ddb502200220-80-80.jpg', NULL, '课程针对所有想学习制作电子相册和小视频的小伙伴，或者从事后期制作的小白用户。', '1、镜头的运动技巧 
2、选取配乐的基本规则 
3、后期制作软件Premiere的使用方法 
', '2018-09-02 20:37:14.980623', '2018-08-12 23:48:06.511326');
INSERT INTO "public"."tb_imooc_course" VALUES (690, 265, 'Java中的文件上传下载', '初级', 69002, '由简入深，用Easy 实现文件上传下载功能及相关框架的使用', 'Java', 'https://img.mukewang.com/570364c90001008b06000338-240-135.jpg', 'https://www.imooc.com/learn/265', '3小时30分', 9.7, 9.9, 9.7, 9.5, '简介：现实 Java Web 开发过程当中经常会遇到文件上传、下载的场景。如何实现轻松、快捷的文件上传下载功能呢？本节课程由简入深，从 Jsp + Servlet 开始逐步分析、实现文件上传下载功能及相关框架的使用。', 'David', 'https://img2.mukewang.com/5445c512000157f702000200-80-80.jpg', 'JAVA开发工程师', '本课程是 Java web 中级课程，建议各位小伙伴们先对 Jsp、Servlet、Jquery以及Struts2有初步认识，再来进修', '1、Java web 文件上传下载原理
2、纯 jsp+servlet 实现文件上传下载思路分析及实现
3、SmartUpload 轻松实现文件上传
4、Struts2 实现文件上传下载', '2018-09-02 20:37:31.237215', '2018-08-12 23:48:23.986206');
INSERT INTO "public"."tb_imooc_course" VALUES (453, 546, 'R语言基础', '入门', 62281, '本R语言基础教程，教你如何在R中操纵自己数据，快速入门', '大数据', 'https://img3.mukewang.com/570778b50001e1c406000338-240-135.jpg', 'https://www.imooc.com/learn/546', '2小时16分', 9.8, 9.9, 9.9, 9.5, '简介：R语言其免费、开源、适用于多平台的特点吸引了大量使用者，现已成为大数据分析必不可少的强大工具之一。本课程旨在让同学们对R进行系统性地了解，掌握构建子集的方法以及操纵数据相关的重要函数，为学习后续R语言的高级应用奠定坚实的基础。', 'Angelayuan', 'https://img4.mukewang.com/559e32dd0001631209601280-80-80.jpg', NULL, '本课程需要学员提前掌握
安装好R和Rstudio', '1、R语言的数据结构
2、构建数据子集
3、重要函数的使用', '2018-09-02 20:37:12.734699', '2018-08-12 23:48:03.413529');
INSERT INTO "public"."tb_imooc_course" VALUES (689, 269, 'JAVA遇见HTML——Servlet篇', '入门', 136395, '本门课程在JSP课程的基础上，深入介绍Servlet的基础知识', 'Java', 'https://img.mukewang.com/579192b500019e4106000338-240-135.jpg', 'https://www.imooc.com/learn/269', '3小时10分', 9.6, 9.8, 9.6, 9.4, '简介：Servlet是JAVA Web开发的核心基础，在项目中的应用非常广泛。本门课程在JSP课程的基础上，深入介绍Servlet的基础知识。包括Servlet的执行流程和生命周期，Tomcat对Servlet的装载情况，如何获取表单数据以及Servlet路径跳转。最后会带大家使用流行的MVC架构进行项目开发。', 'milanlover', 'https://img1.mukewang.com/53df3b7a0001b45c01400140-80-80.jpg', 'JAVA开发工程师', '作为JSP课程的延续，希望小伙伴们学习本门课程前先完成《JAVA遇见HTML——JSP篇》课程的学习。为了更好的完成课程的阶段项目，JDBC的知识也是必备的。', '学习完本门课程，可以学习到以下内容：
1、掌握Servlet的结构和执行流程
2、掌握Servlet的生命周期
3、掌握Servlet在项目中的应用
4、使用MVC架构进行项目开发', '2018-09-02 20:37:34.162769', '2018-08-12 23:48:23.895765');
INSERT INTO "public"."tb_imooc_course" VALUES (503, 496, 'Jquery插件transform旋转焦点图', '初级', 30890, '本视频教程教你制作带旋转效果的焦点图轮播器，结合案例学的更快', 'jQuery', 'https://img4.mukewang.com/5746788d0001677106000338-240-135.jpg', 'https://www.imooc.com/learn/496', '1小时53分', 9.6, 9.7, 9.6, 9.5, '简介：本课程对jQuery的插件transform进行详细的讲解，为了更好理解与使用该插件，本课程将通过旋转焦点图的案例来让大家更好的掌握transform插件的使用。同时也会将将定时器，闭包等技术惯穿在案例中，使我们更好的去理解及运用。', 'jack.xu', 'https://img.mukewang.com/558d050e0001e3b301790179-80-80.jpg', 'Web前端工程师', '本课程是前端中级课程
1、有HTML和CSS基础
2、有一定的javascript基础和jquery基础', '1、学会使用插件jquery.transform
2、学会javascript的两种定时器的使用
3、理解作用域和作用域链
4、理解闭包在时机案例中的应用', '2018-09-02 20:37:11.885751', '2018-08-12 23:48:07.552602');
INSERT INTO "public"."tb_imooc_course" VALUES (473, 525, 'Android面试解密-Layout_weight', '入门', 27773, '本课程为Android面试系列第一课，短小精悍，切入要害', 'Android', 'https://img2.mukewang.com/5746675d0001afc506000338-240-135.jpg', 'https://www.imooc.com/learn/525', '12分', 9.7, 10, 9.6, 9.5, '简介：本课程为Android面试系列第一课，短小精悍，切入要害。由Android大神为你详细解答面试最常见的问题，还等什么？快来学吧！', 'hyman', 'https://img2.mukewang.com/54169c430001face18403264-80-80.jpg', '移动开发工程师', '适用人群：
1.需要有一定的Java基础
2.在初学Android或回顾复习时的小伙们', '可以学到当前各大公司面试中最常见的问题的最完美解答！', '2018-09-02 20:37:13.016032', '2018-08-12 23:48:04.828875');
INSERT INTO "public"."tb_imooc_course" VALUES (479, 526, 'OpenStack+ 企业实践论坛', '中级', 11757, 'OpenStack 企业实践论坛，对云计算感兴趣的同学都来参加哦', '云计算', 'https://img2.mukewang.com/57466b000001f50d06000338-240-135.jpg', 'https://www.imooc.com/learn/526', '2小时21分', 8.2, 8, 7.9, 8.7, '简介：OpenStack 在企业实践中应用', 'Openstack中...', 'https://img1.mukewang.com/54b630440001e12202200220-80-80.jpg', NULL, '对云计算感兴趣的同学都来参加哦 ', 'openstack从企业中来 到实践中去实际应用和《OpenStack应用探讨与展望》', '2018-09-02 20:37:13.400806', '2018-08-12 23:48:05.316981');
INSERT INTO "public"."tb_imooc_course" VALUES (782, 165, '模式的秘密--策略模式', '中级', 27804, '使用策略模式为你的应用提供弹性架构，还等什么呢，快来加入学习吧', 'Java', 'https://img1.mukewang.com/5704a34b0001ae4b06000338-240-135.jpg', 'https://www.imooc.com/learn/165', '1小时 0分', 9.6, 9.7, 9.5, 9.6, '简介：策略模式是在日常开发中使用最为广泛的设计模式之一。在本视频中，@Arthur 将用简单生动的例子带你领略策略模式的真意、如何用 Java 语言实现策略模式、最后还将用实际的行业案例告诉你策略模式的强大功能。小伙伴们，还等什么呢，快来加入学习吧！！', 'Arthur', 'https://img2.mukewang.com/53ba377f0001b4de01400140-80-80.jpg', 'JAVA开发工程师', '本课程的学习，需要小伙伴们具有面向对象基础知识及 Java 语言基础。如果您是新手，建议先移步 《Java入门第一季》和《Java入门第二季》', '1、什么是策略模式，生活中常见的策略模式场景
2、策略模式的实现
3、策略模式所体现的设计思想及适用场景
4、实际案例			', '2018-09-02 20:37:42.311843', '2018-08-12 23:48:32.981524');
INSERT INTO "public"."tb_imooc_course" VALUES (721, 161, 'Java Socket应用---通信是这样练成的', '初级', 110619, '分享的是 Java 中的网络编程，使用Socket实现网络聊天通信', 'Java', 'https://img3.mukewang.com/5704a4ca00013d9106000338-240-135.jpg', 'https://www.imooc.com/learn/161', '2小时 0分', 9.8, 9.9, 9.8, 9.6, '简介：网络无处不在，移动互联时代也早已到来，单机版程序慢慢的已没有生命力，所有的程序都要能够访问网络，比如 QQ 网络聊天程序、迅雷下载程序等，这些程序都要同网络打交道，本次将与各位小伙伴们分享的就是 Java 中的网络编程—— Socket 通信', '汤小洋', 'https://img2.mukewang.com/596b71040001ff8206400640-80-80.jpg', '全栈工程师', '本课程是 Java 开发课程的高级课程，需要对 Java 中的面向对象、IO、多线程，以及网络相关知识有一定的基础', '1、网络相关的基础知识			
2、Java 中网络相关 API 的应用			
3、实现基于 TCP 的 Socket 编程			
4、实现基于 UDP 的 Socket 编程			', '2018-09-02 20:37:38.259152', '2018-08-12 23:48:27.805299');
INSERT INTO "public"."tb_imooc_course" VALUES (763, 195, '二进制基础', '入门', 93651, '二进制是计算机唯一能识别的语言，是学习计算机技术必备的知识', 'Java', 'https://img2.mukewang.com/570360110001371606000338-240-135.jpg', 'https://www.imooc.com/learn/195', '50分', 9, 9.4, 8.9, 8.8, '简介：二进制是计算机唯一能识别的语言，是学习计算机技术必须要懂的知识。本门课程将带您认识二进制的由来，如何进行不同进制间的转换，如二进制与十进制减的相互转换，以及位运算，最后介绍Java中的进制。', 'tuohuangs', 'https://img1.mukewang.com/53b616cf00012bc301400140-80-80.jpg', 'JAVA开发工程师', '小伙伴们注意啦！~本门课程前三章的内容可以零基础学习。第四、五章的内容在学习前需要了解Java的基础知识。', '通过课程的学习，您可以了解二进制的由来，掌握二进制和其他进制之间进行进制转换的方法，掌握如何进行位运算，为所有计算机课程的学习提供基础。', '2018-09-02 20:37:41.549179', '2018-08-12 23:48:31.720861');
INSERT INTO "public"."tb_imooc_course" VALUES (695, 271, 'JAVA Web开发技术应用——监听器', '初级', 70647, '本课程从Java Web中的监听器的概念和用途入手，结合实例讲解', 'Java', 'https://img3.mukewang.com/549bdff000015c9806000338-240-135.jpg', 'https://www.imooc.com/learn/271', '1小时30分', 9.7, 9.8, 9.7, 9.6, '简介：本课程从Java Web中的监听器的概念和用途入手，紧接着讲解监听器的第一个实例，然后由浅到深地从启动顺序到分类、从Servelt2.5到 Servlet3.0，重点讲解了两种分类，包括按监听的对象划分和按监听的事件划分，最后以一个实际项目中统计在线人数的案例进行讲解。', 'Fcming', 'https://img1.mukewang.com/545087c60001b78902200220-80-80.jpg', '产品经理', '亲，要学习本门课程需要对JSP和Servlet有所了解呦。如未学习上述知识，可移步网站相关课程。', '通过对本课程的学习，可以掌握监听器的基础知识，深入了解监听器的处理机制和分类方式，并可以让自己更快的动手编写监听器的例子。', '2018-09-02 20:37:31.219189', '2018-08-12 23:48:24.363542');
INSERT INTO "public"."tb_imooc_course" VALUES (518, 422, 'C#开发轻松入门', '入门', 169724, '本门课程是C#语言的入门教程，将带你轻松入门.NET开发', 'C#', 'https://img2.mukewang.com/57035f2c000106fa06000338-240-135.jpg', 'https://www.imooc.com/learn/422', '4小时43分', 9.4, 9.5, 9.5, 9.2, '简介：本门课程是C#语言的入门教程，在课程中，将从.NET平台和C#的基本概念开始，深入的介绍C#开发的基础语法、简单程序逻辑、Visual Studio工具的使用技巧以及常用的算法的实现。同时，也希望通过与课程相关的练习题和编程练习，帮助小伙伴们快速步入C#语言的大门。', '绿豆开门', 'https://img.mukewang.com/55de65270001196405900590-80-80.jpg', '其它', '本课程是C#基础课程，热烈欢迎各位小伙伴拍砖吐槽！！', '1、C#的基本概念
2、Visual Studio的使用技巧
3、C#的语法和程序逻辑', '2018-09-02 20:37:17.185616', '2018-08-12 23:48:08.821267');
INSERT INTO "public"."tb_imooc_course" VALUES (586, 462, 'Android高级特效-3D画廊', '中级', 27159, 'Android开发打造超酷的高仿时光网电影展示页，常用于各种电影APP', 'Android', 'https://img4.mukewang.com/570755750001b5c306000338-240-135.jpg', 'https://www.imooc.com/learn/462', '1小时47分', 7.6, 8, 7.4, 7.4, '简介：本课程将带领大家实现Android画廊特效，常用于各种电影APP展示页。', '李宁', 'https://img3.mukewang.com/538e88d900017ff501400140-80-80.jpg', '移动开发工程师', '本课程为高级课程：
1.需要小伙伴们学完Android求职路线课程', '1.实现3D画廊特效
2.实现Item的各种特效
3.实现倒影特效', '2018-09-02 20:37:19.762122', '2018-08-12 23:48:14.9702');
INSERT INTO "public"."tb_imooc_course" VALUES (686, 291, 'Web app---Rails技巧库', '中级', 26444, '制作RubyOnRails网站应用的常用功能，初学者最想看的课程', 'WebApp', 'https://img2.mukewang.com/570778e50001a2a806000338-240-135.jpg', 'https://www.imooc.com/learn/291', '1小时47分', 9.9, 10, 10, 9.7, '简介：课程会分成很多短视频来分享给大家。每个视频中瞄准一个特定功能，配套文字稿里面有每一小步的代码和参考资料链接。最终产品的代码在这个github仓库这里。总之我是想做成我自己当年作为初学者时最想看的课程。', 'happypeter', 'https://img1.mukewang.com/53f55a3c000159c812700952-80-80.jpg', 'JS工程师', '首先说这不是一套Rails入门课程，我是默认你有一点Rails的基础的，如果你没有，欢迎收看我前面提到的《Rails10日谈》这套课程。
好了，打开Rails的宝库，所有奇珍异宝都是你的，不用犹豫，跟Peter一起，出发！
', '本课程是《Rails10日谈》课程的续集，课程实例代码的起点代码就是10日谈课程的终点。
在一个基本的Rails应用的基础上，运用 Rails 的各种巧妙机制，实现各部分功能，然后介绍如何把局部功能精心雕琢，提升用户体验，最终达成的效果跟我自己写到产品中的是一样的。', '2018-09-02 20:37:31.793407', '2018-08-12 23:48:23.576374');
INSERT INTO "public"."tb_imooc_course" VALUES (716, 223, '见证Android消息推送时刻', '高级', 46843, '本课程将一步步教你如何搭建出一个自己的Android推送平台', 'Android', 'https://img2.mukewang.com/545c26360001b90d06000338-240-135.jpg', 'https://www.imooc.com/learn/223', '8小时37分', 9.8, 9.9, 10, 9.6, '简介：本课程将一步步教你如何搭建出一个自己的Android推送平台，包括完整的Android客户端和服务器端的代码。内容由浅入深，循序渐进，理论和实战完美结合，快来和我一起见证Android消息推送时刻吧！', '郭霖', 'https://img1.mukewang.com/5458a0820001eefc12961728-80-80.jpg', '移动开发工程师', '本课程属于程序开发高级课程，对学习者的要求较高。首先必须对Java十分熟练，这是最基本的要求。其次要有一定的Android基础，基础不够扎实的朋友可以参考《第一行代码—Android》这本书。有Java服务器端的开发经验则更佳，这会让你可以更加轻松地学会本课程的所有内容', '通过本课程，你将学到：
1、掌握推送的基本原理和极光推送的用法
2、掌握Socket和Mina框架的用法
3、了解XMPP协议
4、掌握aSmack库的用法
5、掌握AndroidPN开源框架的用法
', '2018-09-02 20:37:32.512352', '2018-08-12 23:48:27.277025');
INSERT INTO "public"."tb_imooc_course" VALUES (784, 110, 'Java入门第三季', '入门', 334444, 'Java中你必须懂得常用技能，不容错过的精彩，快来加入吧', 'Java', 'https://img3.mukewang.com/5703604a0001694406000338-240-135.jpg', 'https://www.imooc.com/learn/110', '5小时 0分', 9.5, 9.8, 9.5, 9.4, '简介：在本课程中，@陈码农 携手 @laurenyany 将带领小伙伴们进一步探索 Java 的奥秘，希望通过本次课程的学习，能够帮助小伙伴们快速掌握关于Java中的异常处理、集合框架、字符串的操作和常用类的使用。不容错过的精彩，快来加入吧！！', '陈码农', 'https://img2.mukewang.com/537eafe80001e68c06400672-80-80.jpg', NULL, '此部分为 Java 课程的进阶内容，适合具有一定 Java 基础的伙伴们学习，如果您是新手，建议您移步 《Java入门第一季》 和 《Java入门第二季》，在理解并掌握面向对象相关知识后再回来进修。', '本课程将学习 Java 中的异常处理、集合框架、字符串、常用类等，逐步学习掌握 Java 高级技术。', '2018-09-02 20:37:38.908937', '2018-08-12 23:48:33.172111');
INSERT INTO "public"."tb_imooc_course" VALUES (574, 405, 'C++远征之封装篇（下）', '初级', 57825, '封装--面向对象三大特征之一，通过案例让C++所学知识融会贯通', 'C++', 'https://img1.mukewang.com/57075fc70001e45606000338-240-135.jpg', 'https://www.imooc.com/learn/405', '3小时12分', 9.7, 9.9, 9.7, 9.6, '简介：本课程是真正跨入C++面向对象之门，讲述了对象数组、成员、指针，this指针，常对象、引用、指针、成员函数以及深拷贝和浅拷贝，课程的最后讲述了一个迷宫案例，通过这个案例可以将C++所学知识融会贯通，所有知识均通过编码实践的方式讲解到操作层面，力求即学即会。', 'james_yuan', 'https://img3.mukewang.com/550f82810001c44902200220-80-80.jpg', '学生', '本课程是C++初级课程
需要掌握C++语言基础语法
如果不太熟悉的话，可以观看：
《C++远征之起航篇》
《C++远征之离港篇》
《C++远征之封装篇（上）》', '1、对象数组的定义和使用
2、对象成员的定义和使用
3、深拷贝和浅拷贝
4、对象指针、对象引用的定义和使用
5、常对象指针、常对象引用、常成员函数的定义和使用', '2018-09-02 20:37:20.968901', '2018-08-12 23:48:13.93637');
INSERT INTO "public"."tb_imooc_course" VALUES (559, 402, 'SVG实现Tooltip气泡效果', '中级', 24972, '使用HTML5制作一个漂亮的SVG气泡，学会chrome调试CSS和LESS', 'Html5', 'https://img3.mukewang.com/5562dfc00001c06106000338-240-135.jpg', 'https://www.imooc.com/learn/402', '1小时35分', 9.6, 9.9, 9.6, 9.5, '简介：本课程通过html5的一系列技术制作一个SVG气泡的案例，并把生产环境中使用到的一些技术和手段一起介绍给大家。其中包括样式表调试、SVG编辑和使用、前端依赖管理、资源动态加载等。并且教会大家怎么用chrome去调试CSS和LESS', 'techird', 'https://img3.mukewang.com/537c0fb80001c70e38882592-80-80.jpg', 'JS工程师', '1、需要有一定前端知识基础（HTML/CSS/JS）
2、安装 node.js 并对 node 的包管理工具 npm 有一定的了解
3、讲师使用的编辑器是 WebStorm，可以提前安装
4、需要提前安装 Adobe Illustrator', '1、如何使⽤用 Chrome 调试样式(CSS 和 LESS)?
2、如何添加并调试 CSS3 Transition 动画?
3、如何使⽤用设计软件 Illustrator 编辑 SVG 文件?
4、如何使用 bower 管理前端包依赖?
5、如何动态加载 SVG? 如何制作任意矢量图的绘边效果?', '2018-09-02 20:37:25.035691', '2018-08-12 23:48:12.964779');
INSERT INTO "public"."tb_imooc_course" VALUES (578, 435, 'SQL Server基础--T-SQL语句', '入门', 135103, 'SQL Server基础教程，主要讲解TSQL的基本查询语句和基本用法', 'SQL Server', 'https://img2.mukewang.com/5704ace70001dd1806000338-240-135.jpg', 'https://www.imooc.com/learn/435', '1小时37分', 9.6, 9.8, 9.5, 9.6, '简介：本教程通过对微软SQL Server数据库工具的介绍以及关系型数据库的理解，分析讲解TSQL的基本查询语句和基本用法。其中穿插大量一线实例讲解。', '小雨老师', 'https://img1.mukewang.com/558b7b1600013ef805680571-80-80.jpg', NULL, '本教程特别为零基础的学员而设计，无需有任何计算机背景和专业。老师会循序渐进，深入浅出地对数据库以及相关的TSQL查询语言进行介绍讲解。', '1、目前市场上流行的几大数据库巨头及其产品简介
2、详细的微软数据库软件安装步骤和基本功能介绍
3、关系型数据库的概念介绍和实体模型
4、经典TSQL查询句式
5、如何进行正倒序排列、使用别名、数学符号
6、如何使用条件句式，如何处理空值，如何使用分组函数
', '2018-09-02 20:37:21.819429', '2018-08-12 23:48:14.297177');
INSERT INTO "public"."tb_imooc_course" VALUES (794, 107, 'Android攻城狮的第二门课（第1季）', '入门', 109681, '本课程由浅入深地带您学会Android的常用控件的开发和使用', 'Android', 'https://img.mukewang.com/53bf89320001073f06000338-240-135.jpg', 'https://www.imooc.com/learn/107', '5小时 0分', 9.4, 9.8, 9.4, 9.1, '简介：本课程由浅入深地带您学会Android的常用控件的开发和使用，以知识概念为主导，实例代码为驱动，带您走入一个神奇的移动开发世界。', 'Smile浅笑', 'https://img.mukewang.com/537435a2000123b506400600-80-80.jpg', 'JAVA开发工程师', '本课程是Android开发课程进阶部分的第1季，将讲解各种高级控件的使用，对于不熟悉Android开发的童鞋来说会有一定的难度，所以，建议在学习本门课程之前：
1、熟练掌握Java基础语法和面向对象编程
2、熟悉Android开发环境
3、熟练使用Button、ImageView等基础控件
', '1、Android高级控件的应用场景
2、Android高级控件的使用方法
3、熟悉Android常用高级控件
', '2018-09-02 20:37:40.715063', '2018-08-12 23:48:34.458465');
INSERT INTO "public"."tb_imooc_course" VALUES (551, 400, 'Cocos2d-x游戏开发初体验-C++篇', '入门', 65717, 'Cocos2d-x开发手机游戏够轻量、够简单，你还不来学', 'C++, Cocos2d-x', 'https://img3.mukewang.com/5562c26900012f3406000338-240-135.jpg', 'https://www.imooc.com/learn/400', '53分', 9.7, 9.7, 9.8, 9.7, '简介：游戏开发博大精深，在这个后页游时期的手游时代，还在为无法入门游戏行业而烦恼吗？Cocos2d-x就是一款专门为手机游戏打造的开源游戏引擎，够轻量、够简单。在这个不一样的时代，雷哥将带着你走出一个不一样的自己', '雷过就跑', 'https://img4.mukewang.com/557a888d0001b8bb16001000-80-80.jpg', '移动开发工程师', '本课程是Cocos2d-x引擎初级课程，需要大家有C++语言的基础知识', '游戏开发与引擎常识
制作一款游戏的流程
引擎的分类
开发环境的搭建', '2018-09-02 20:37:25.296638', '2018-08-12 23:48:12.103623');
INSERT INTO "public"."tb_imooc_course" VALUES (621, 311, 'Sass入门篇', '中级', 86317, 'Sass入门视频教程，学会Sass使你摆脱重复编写代码的工作', 'Sass/Less', 'https://img1.mukewang.com/5704ab6c00019fad06000338-240-135.jpg', 'https://www.imooc.com/learn/311', '4小时31分', 9.3, 9.6, 9.2, 9.1, '简介：本课程为Sass教程入门篇，Sass又名SCSS，是CSS预处理器之一，它能让你更好的、更轻松的工作。这个Sass教程主要适合前端开发人员，能帮助前端开发人员快速的掌握Sass，并且直接运用于实际项目当中。', '大漠', 'https://img1.mukewang.com/53216e780001060f01600160-80-80.jpg', 'Web前端工程师', '对CSS有一定的了解，才可以更好的学习本课程。', '1、Sass是什么？他有什么功能？
2、Sass需要什么样的环境才能顺利运行
3、Sass语法格式和CSS有什么不一样？
4、Sass要如何编译
5、你要怎么调试Sass
6、Sass有哪些基本特性
7、Sass的控制命令能做些什么事情
8、Sass有哪些数据类型
9、Sass的函数功能
', '2018-09-02 20:37:24.972171', '2018-08-12 23:48:17.904368');
INSERT INTO "public"."tb_imooc_course" VALUES (585, 437, 'Oracle高级查询', '初级', 49398, '数据库开发中应用广泛的高级查询，本教程通过大量的案例详细讲解', 'Oracle', 'https://img3.mukewang.com/5704cda10001b17506000338-240-135.jpg', 'https://www.imooc.com/learn/437', '3小时25分', 9.6, 9.9, 9.6, 9.4, '简介：高级查询在数据库的开发过程中应用广泛，本教程通过大量的案例和@collen7788老师的详细讲解，从分组查询、多表查询和子查询三个方面介绍Oracle的高级查询，最后为大家安排了典型案例的应用和练习题。', '赵强老师', 'https://img3.mukewang.com/545862800001e2d802200220-80-80.jpg', '数据库工程师', '小伙伴们，学习本课程前需要掌握Oracle的语法基础，并且对Oracle的函数有所了解。如不了解这两部分内容，请移步《Oracle数据库开发必备利器之SQL基础》和《Oracle数据库开发利器之函数》两门教程。', '1、掌握分组查询
2、掌握多表查询
3、掌握子查询', '2018-09-02 20:37:21.91428', '2018-08-12 23:48:14.926808');
INSERT INTO "public"."tb_imooc_course" VALUES (605, 380, '那些年你遇到的错误与异常', '初级', 20224, '本课程将由浅入深，与大家分享异常及异常的实战应用', 'PHP', 'https://img3.mukewang.com/572b06f40001d1c806000338-240-135.jpg', 'https://www.imooc.com/learn/380', '3小时40分', 9.7, 9.9, 10, 9.2, '简介：本课程主要讲解两部分内容，先从PHP中的错误模块谈起，讲解了PHP中常见的错误类型，剖析了PHP中的错误处理。接着又讲解了PHP5面向对象过程中新的错误处理方式--异常模块，由浅入深，讲解异常及异常的实战应用等。', 'King', 'https://img2.mukewang.com/567ca60000011fae26501720-80-80.jpg', 'PHP开发工程师', '学习本门课程之前，建议先了解一下知识，会更有助于理解和掌握本门课程
1、掌握PHP的基础知识
2、了解面向对象编程', '1、PHP中的错误类型
2、PHP中的错误处理
3、PHP中自定义错误处理器
4、PHP中异常的使用
5、PHP中如何自定义异常类
6、PHP中如何自定义异常处理器', '2018-09-02 20:37:26.207114', '2018-08-12 23:48:16.647396');
INSERT INTO "public"."tb_imooc_course" VALUES (593, 445, 'HTML5和CSS3扁平化风格博客', '中级', 85226, 'HTML5与CSS3搭建超酷扁平化风格博客', 'HTML/CSS, CSS3', 'https://img3.mukewang.com/5705b6280001fda106000338-240-135.jpg', 'https://www.imooc.com/learn/445', '1小时51分', 9.6, 9.8, 9.7, 9.4, '简介：本课程通过CSS3扁平化风格博客的实例详细讲解，让大家更容易理解常规网页的组成部分，灵活的使用不同部分WEB组件，理解它的构成思想，以及网页灵活的布局和设计。我们也可以由宏观到微观去掌握整体的布局。', '表严肃', 'https://img.mukewang.com/57e986d80001730d11641164-80-80.jpg', 'Web前端工程师', '1.您要具备HTML常用标签的基础知识。
2.您要具备CSS的语法。
3.您要具备基本布局知识。', '1、CSS的常规布局方法			
2、CSS扁平化风格布局方法			
3、网页布局特殊情况处理方式
4、HTML5相关标签和CSS3效果。			
', '2018-09-02 20:37:22.232441', '2018-08-12 23:48:15.617483');
INSERT INTO "public"."tb_imooc_course" VALUES (594, 414, 'Oracle触发器', '初级', 29697, '满足条件自动执行的触发器，教程涉及4个案例讲解触发器的应用', 'Oracle', 'https://img3.mukewang.com/5704cd5f0001207a06000338-240-135.jpg', 'https://www.imooc.com/learn/414', '49分', 9.8, 10, 9.7, 9.6, '简介：触发器是在事件发生时隐式地自动运行的PL/SQL程序块，不能接收参数，不能被调用。本课程是《Oracle数据库开发必备利器》的最后一门课程，课程介绍了触发器的基本概念、应用场景和语法，并通过四个案例介绍了触发器在项目中的应用。', '赵强老师', 'https://img3.mukewang.com/545862800001e2d802200220-80-80.jpg', '数据库工程师', '学习本门课程前，需要掌握PL/SQL语法。对PL/SQL语法不了解的小伙伴请移步课程《Oracle数据库开发必备利器之PL/SQL基础》。', '1、掌握触发器的概念和语法
2、通过案例的学习，能够独立编写触发器', '2018-09-02 20:37:22.415535', '2018-08-12 23:48:15.63343');
INSERT INTO "public"."tb_imooc_course" VALUES (590, 443, '项目管理利器——maven', '初级', 145124, '使用maven来构建和管理Java项目，从环境配置，到maven核心知识', 'Java', 'https://img.mukewang.com/5704cfa900015c2406000338-240-135.jpg', 'https://www.imooc.com/learn/443', '2小时 1分', 9.6, 9.8, 9.6, 9.5, '简介：maven是优秀的项目管理和构建工具，能让我们更为方便的来管理和构建项目，从最基础的环境配置，到maven核心知识点的应用，本套视频将带领大家进行一段轻松的maven之旅。让我们一起使用maven来构建和管理Java项目吧！', 'Eleven_Lee', 'https://img4.mukewang.com/551ca92800014b1802200220-80-80.jpg', 'JAVA开发工程师', '学习本门课程前需要具备Java基础和Java Web基础！', '1、maven的基本概念			
2、如何快速使用maven来构建项目
3、maven中的核心概念		
4、使用maven构建web项目以及如何集成tomcat、jetty插件			', '2018-09-02 20:37:21.931348', '2018-08-12 23:48:15.412693');
INSERT INTO "public"."tb_imooc_course" VALUES (894, 272, '在线分布式数据库原理与实践', '中级', 38858, '一起学习事务与分布式事务原理与实践干货，欢迎收藏', '云计算', 'https://img.mukewang.com/570779200001fde006000338-240-135.jpg', 'https://www.imooc.com/learn/272', '1小时53分', 9.6, 9.5, 9.7, 9.6, '简介：此课程为慕课网与阿里云中间件团队（国内为数不多的极具技术挑战性的团队之一）合作系列课程之一。重点介绍了分布式数据库的原理、各类分布式数据库系统的赏析、以及阿里巴巴近十年积累出的分布式数据库的实践干货。', '沈询', 'https://img2.mukewang.com/549be7c80001bdac11361136-80-80.jpg', NULL, NULL, '本系列以分布式数据库原理与实践为主线，介绍组成分布式数据库的几个关键的部分：1) 事务与分布式事务.2) 关系代数与优化 3) 分布式KV系统与NoSQL 4） 数据一致性专题 5） 淘宝DRDS/TDDL实践经验 等多方面原理与实践专题，欢迎收藏
', '2018-09-02 20:37:34.23777', '2018-08-13 09:53:47.293884');
INSERT INTO "public"."tb_imooc_course" VALUES (738, 241, '超快的Android模拟器Genymotion', '入门', 52211, '介绍Android平台下的一款最快的、最流行的Android模拟器', 'Android', 'https://img4.mukewang.com/57075b1a000178ad06000338-240-135.jpg', 'https://www.imooc.com/learn/241', '10分', 9.8, 9.8, 9.6, 9.8, '简介：本课程将介绍Android平台下的一款最快的、最流行的Android模拟器，以及如何安装Genymotion模拟器，并对eclipse和Intellij等开发工具进行配置', 'nate', 'https://img.mukewang.com/547697d10001e0b110240679-80-80.jpg', '移动开发工程师', '在Android开发中我们要将自己所写的代码布局在android模拟器上才可以看到一定的效果，但是android系统自带的模拟器运行不但很慢而且大小什么都不好控制，因此我们要使用第三方最强大的模拟器genymotion.', '通过本课程，你将学到：
1.什么是Genymotion模拟器
2.注册并下载Genymotion模拟器
3.安装Genymotion模拟器
4.配置eclipse的Genymotion模拟器插件
5.配置Intellij的Genymotion模拟器插件
', '2018-09-02 20:37:36.483463', '2018-08-12 23:48:29.32572');
INSERT INTO "public"."tb_imooc_course" VALUES (741, 205, '性能优化之PHP优化', '中级', 31717, '带你打造高速高效的PHP项目，由浅入深带你进一步探索php优化项目', 'PHP', 'https://img3.mukewang.com/5428c08c0001750206000338-240-135.jpg', 'https://www.imooc.com/learn/205', '3小时10分', 9.5, 9.7, 9.5, 9.4, '简介：本堂课程首先为大家分析PHP常见的性能问题诱因，之后带领大家从语言自身的性能优化开始，由浅入深，到PHP周边问题的性能优化，接着讲解如何打造极致的PHP运行环境。并且会通过一些非常有用的性能优化工具，从定位、分析到解决帮助我们更便捷的做PHP性能优化项目。', 'Pangee', 'https://img2.mukewang.com/5382a89c000102cd00800064-80-80.jpg', 'PHP开发工程师', '学习本门课程之前，建议先了解一下知识，会更有助于理解和掌握本门课程
1、掌握PHP基本的语言语法
2、了解PHP生命周期与PHP运行环境
3、有一定的LAMP下的项目经验', '1、PHP语法、语言自身的性能问题与差异比较
2、PHP性能由哪些因素组成，讲解PHP周边依赖的性能隐患
3、由浅入深的讲解PHP性能优化项目如何分析、定位并解决
4、通过一系列工作，定位PHP性能问题大头，重点优化
5、PHP优化做到一定程度时，如何还能做进一步的提升', '2018-09-02 20:37:36.677427', '2018-08-12 23:48:29.55856');
INSERT INTO "public"."tb_imooc_course" VALUES (623, 368, '初识Java微信公众号开发', '中级', 137685, 'Java微信公众号开发的入门教程，掌握微信公众号基本概念', 'Java', 'https://img.mukewang.com/576b7b2000010bc706000338-240-135.jpg', 'https://www.imooc.com/learn/368', '1小时36分', 9.7, 9.9, 9.5, 9.6, '简介：微信拥有庞大的用户基础，微信公众号的相关开发也比较热门，本套课程就带领大家进入Java微信公众号开发的精彩世界，学习微信公众号开发的相关概念，编辑模式和开发模式应用，以及百度BAE的使用。', 'LaoBi', 'https://img4.mukewang.com/575423d200018abd06400640-80-80.jpg', 'JAVA开发工程师', '1、熟悉java web开发相关知识
2、熟悉版本控制工具SVN有利于第6章百度BAE的使用呦', '1、掌握微信公众号基本概念			
2、能够熟练使用编辑模式			
3、能够在开发模式下进行开发			
4、熟练使用百度应用引擎BAE			
', '2018-09-02 20:37:26.852937', '2018-08-12 23:48:18.387706');
INSERT INTO "public"."tb_imooc_course" VALUES (668, 363, 'Android-Service系列之断点续传下载', '中级', 19713, '想升职加薪么？本章课程你值得拥有，满满的干货，学起来吧', 'Android', 'https://img.mukewang.com/570757d40001ec5606000338-240-135.jpg', 'https://www.imooc.com/learn/363', '1小时46分', 9.6, 9.7, 9.7, 9.4, '简介：本门课程将带大家从无到有搭建多线程断线续传的实用案例', 'XRay_Chen', 'https://img.mukewang.com/552496a1000142c812740894-80-80.jpg', '移动开发工程师', '需要完成Android攻城师入门的学习', '1:如何实现断点续传
2:使用广播接收消息
3:多线程技术更新UI
4:Service的实际应用', '2018-09-02 20:37:30.290144', '2018-08-12 23:48:22.219218');
INSERT INTO "public"."tb_imooc_course" VALUES (649, 224, 'Android美女拼图小游戏', '中级', 23814, '本视频教程将带领大家通过自定义控件实现一个拼图游戏', 'Android', 'https://img.mukewang.com/5707568d0001f94206000338-240-135.jpg', 'https://www.imooc.com/learn/224', '2小时 0分', 9.8, 10, 9.8, 9.7, '简介：本课程将带领大家通过自定义控件实现一个拼图游戏，课程内容包含自定义控件的使用、九宫格布局的实现、游戏中与用户的交互、游戏的关卡以及限定时间的实现', 'hyman', 'https://img3.mukewang.com/54169c430001face18403264-80-80.jpg', '移动开发工程师', '本课程是基于Android开发的案例，需要大家熟练的掌握Android和Java相关知识：
1、了解自定义控件的流程及相关知识
2、熟悉Android中的Tween Animation', '通过本课程，你将学到：
1、利用原生的控件来制作游戏
2、自定义控件的相关知识
3、巧妙利用层的概念结合动画实现拼图的无缝切换
4、游戏中限定时间的设置，以及关卡的设计', '2018-09-02 20:37:34.937874', '2018-08-12 23:48:20.452183');
INSERT INTO "public"."tb_imooc_course" VALUES (642, 303, 'Android自定义任意层级树形控件', '中级', 25143, '使用ListView制作Android树状图，加深ListView适配器理解', 'Android', 'https://img3.mukewang.com/574667900001eb4106000338-240-135.jpg', 'https://www.imooc.com/learn/303', '2小时 0分', 10, 10, 10, 10, '简介：本课程将带领大家通过ListView打造一个任意层级的树形控件，大家可以学到巧妙的设计思想以及数据结构的知识。课程中也包含如何巧妙的利用反射加注解将设计通用化，同时可以进一步加深对ListView适配器的理解', 'hyman', 'https://img3.mukewang.com/54169c430001face18403264-80-80.jpg', '移动开发工程师', '本课程需要大家对Android的了解要达到小成的境界：
1、掌握ListView的使用
2、了解反射、注解等相关知识
3、了解基本的数据结构知识', '通过本课程，你将学到：
1、树的数据结构的了解和设计
2、了解注解和反射的使用，将设计通用化
3、如何封装自己的实现类，对使用者公开接口
4、对ListView的适配器进一步理解', '2018-09-02 20:37:27.624467', '2018-08-12 23:48:19.718497');
INSERT INTO "public"."tb_imooc_course" VALUES (655, 288, 'JAVA实现非对称加密', '中级', 23626, '非对称加密算法在JAVA中的实现，了解非对称加密算法应用场景', 'Java', 'https://img.mukewang.com/54af7b060001f1c606000338-240-135.jpg', 'https://www.imooc.com/learn/288', '1小时 0分', 9.3, 9.5, 9.1, 9.2, '简介：非对称加密算法是一种基于密钥的保密方法，需要公开密钥和私有密钥，在文件加密、尤其是网银中应用广泛。本课程主要介绍非对称加密算法的实现过程，DH、RSA和ELGamal等几种常见的非对称加密算法的在Java中的应用。', 'moocer', 'https://img3.mukewang.com/58db190e0001643d02000200-80-80.jpg', 'JAVA开发工程师', 'JAVA加解密是一个系列的课程，为了更好的学习本门课程，请小伙伴们学习非对称加密算法前，先学习下网站中的《JAVA实现Base64加密》以及《JAVA实现对称加密》两门课程。', '1、掌握非对称加密算法在Java中的实现
2、了解非对称加密算法的应用场景', '2018-09-02 20:37:28.111641', '2018-08-12 23:48:21.159803');
INSERT INTO "public"."tb_imooc_course" VALUES (760, 255, 'MongoDB 2014北京大会', '中级', 14036, 'MongoDB2014北京大会，架构师和运维工程师准备的技术盛会', 'MongoDB', 'https://img4.mukewang.com/5707775d00010ed406000338-240-135.jpg', 'https://www.imooc.com/learn/255', '3小时 2分', 9.5, 9.4, 9.5, 9.5, '简介：MongoDB北京是一个每年一度，为程序员，架构师和运维工程师准备的技术盛会。在这里你可以深入了解到MongoDB的技术精湛以及许多MongoDB的成功案例。本次分享由MongoDB顶级专家对MongoDB性能调试与扩展、模式设计艺术、集群管理及迁移以及大规模的使用等方面进行了分享。', 'MongoDB中文...', 'https://img2.mukewang.com/54bf1a320001cc8802200220-80-80.jpg', NULL, '1、对MongoDB有基本的了解
2、对MongoDB感兴趣', '1、MongoDB基本介绍
2、MongoDB&Hadoop
3、MongoDB实际应用案例
4、MongoDB复制集的原理机制
5、MongDB性能扩展
6、MongoDB与物联网', '2018-09-02 20:37:32.658909', '2018-08-12 23:48:31.306725');
INSERT INTO "public"."tb_imooc_course" VALUES (663, 256, 'CSS深入理解之overflow', '中级', 38440, '深入理解overflow相关特性及实际应用，为你打开另外一扇学习之窗', 'HTML/CSS', 'https://img.mukewang.com/57076c050001041606000338-240-135.jpg', 'https://www.imooc.com/learn/256', '1小时 9分', 9.8, 9.9, 9.6, 9.7, '简介：overflow看上去其貌不扬，其中蕴含的知识点还是很多的。有很多鲜为人知的特性表现，本课程就将带你走入overflow的世界，为你打开另外一扇学习之窗。', '张鑫旭', 'https://img3.mukewang.com/549beab90001be9037445616-80-80.jpg', '页面重构设计', '既适合学习过CSS基础知识的新手深入学习，也欢迎有经验的小伙伴加深了解噢！', 'overflow的基本特性表现，overflow与滚动条千丝万缕的瓜葛，overflow在清除浮动以及自适应布局中的应用，overflow与绝对定位之间的暧昧关系，依赖overflow的一些CSS样式表现，以及overflow与锚点技术。', '2018-09-02 20:37:28.42402', '2018-08-12 23:48:21.793647');
INSERT INTO "public"."tb_imooc_course" VALUES (745, 5, '按钮特效', '初级', 50656, 'WEB前端开发必备能力，课程分为二个实例讲解，让你牢牢掌握', 'CSS3', 'https://img3.mukewang.com/57466c530001b3b106000338-240-135.jpg', 'https://www.imooc.com/learn/5', '2小时 0分', 9.8, 9.9, 9.9, 9.7, '简介：课程分为二个实例讲解，第一个实例用纯CSS3代替JavaScript实现按钮动画效果，并详细讲解CSS3新增的transition、transform等属性。第二个实例重点介绍利用<a>标签制作自适应宽度的圆角按钮。', '江老实', 'https://img.mukewang.com/5269cc190001854d14561456-80-80.jpg', 'Web前端工程师', '1、你至少具备photoshop简单基础知识。
2、熟悉html基础知识，尤其对<input>标签、<a>标签、<span>标签和css样式比较了解。
3、有(X)HTML和CSS2基础及对HTML5和CSS3有所了解的童鞋们。', '1、如何制作圆角按钮
2、如何拆解动画效果
3、如何使用transform属性实现旋转
4、如何使用transition属性实现过渡', '2018-09-02 20:37:37.075503', '2018-08-12 23:48:29.948968');
INSERT INTO "public"."tb_imooc_course" VALUES (785, 179, 'Android攻城狮的第二门课（第3季）', '初级', 74791, '手势识别、数据存储和4大组件，让你牢牢掌握之前的基础知识点', 'Android', 'https://img2.mukewang.com/57075cbc00012aaf06000338-240-135.jpg', 'https://www.imooc.com/learn/179', '6小时 0分', 9.5, 9.9, 9.5, 9.3, '简介：本课程深入的讲解了Android中的手势识别原理、数据存储方式、对组件的详细剖析以及对Service的深度讲解，每一个知识点都对应有实际案例。本课程内容不仅使您牢牢掌握之前的基础知识点，学完之后也会有新的收获、新的体会。', 'ChnAdo', 'https://img2.mukewang.com/53fc43d30001422e01400140-80-80.jpg', NULL, '本课程是Android开发课程的中后期部分，学习之前要求对一些知识点有一定的了解：
1、已经掌握了Java基础
2、已经熟悉或者了解Android中的监听事件原理
3、已经熟悉或者了解一种以上的数据库，并掌握基本的SQL语句
', '1、初步掌握Android手势识别的原理以及实际使用
2、初步掌握Android的数据存储方式
3、深度了解Android中的组件
4、熟悉了解Android常用的系统服务并对服务的使用有新的认识
', '2018-09-02 20:37:38.843553', '2018-08-12 23:48:33.340822');
INSERT INTO "public"."tb_imooc_course" VALUES (708, 33, '十天精通CSS3', '初级', 199558, '本课程为CSS3入门教程，深刻详解CSS3知识让网页穿上绚丽装备', 'HTML/CSS', 'https://img1.mukewang.com/576b7c04000144dc06000338-240-135.jpg', 'https://www.imooc.com/learn/33', '5小时 0分', 9.4, 9.8, 9.3, 9.2, '简介：本课程为CSS3教程，对于有一定CSS2经验的伙伴，能让您系统的学习CSS3，快速的理解掌握并应用于工作之中。在学习教程的过程中实例演示结合在线编程完成任务的方式来学习，相信自己动手会让你理解的更快，本教程能够让您学习效果更好！', '大漠', 'https://img2.mukewang.com/53216e780001060f01600160-80-80.jpg', 'Web前端工程师', '1.html+CSS相关基础知识
2.具有一定的网页制作经验
3.此课程不支持IE9版本以下，建议使用 chrome、safari、firefox、opera浏览器学习本课程。', '1.系统学习CSS3相关知识
2.轻松制作出各种绚丽的效果
', '2018-09-02 20:37:33.238639', '2018-08-12 23:48:26.61924');
INSERT INTO "public"."tb_imooc_course" VALUES (701, 240, 'CSS3实现“图片阴影”效果', '初级', 32103, '利用多投影重叠的原理，实现曲线阴影与翘边阴影的效果', 'CSS3', 'https://img4.mukewang.com/5704a78800018fb706000338-240-135.jpg', 'https://www.imooc.com/learn/240', '1小时 0分', 9.9, 10, 9.9, 9.8, '简介：利用多投影（倾斜投影与主体投影）重叠的原理，实现曲线阴影与翘边阴影的效果，从而讲解CSS3新增的 box-shadow 属性、transform 属性与 content 内容生成技术。', 'Amy', 'https://img3.mukewang.com/536b6357000158be04990749-80-80.jpg', NULL, '本课程适合有 (X)HTML 和 CSS2 基础及对 HTML5 和 CSS3 有所了解的童鞋们。', '1、如何分析阴影的层叠关系
2、如何使用 box-shadow 属性实现不同角度不同位置的内投影及外投影
3、如何使用 transform 变换中的 skew 与 rotate 实现斜边与曲线效果
4、如何使用 :after 与 :before 生成内容
', '2018-09-02 20:37:31.864948', '2018-08-12 23:48:25.183997');
INSERT INTO "public"."tb_imooc_course" VALUES (698, 278, '高性能产品的必由之路—性能测试工具', '中级', 36551, '本门教程以Jmeter为中心介绍了最最常用的性能测试的工具', 'PHP', 'https://img4.mukewang.com/579192e00001a98906000338-240-135.jpg', 'https://www.imooc.com/learn/278', '4小时47分', 9.4, 10, 9, 9.2, '简介：开发人员如果具备了性能测试和性能优化的技能，在成长为架构师的路上会更加有竞争力。本门课程以Jmeter为中心给大家介绍了最最常用的性能测试的工具，通过对不同类型的系统进行性能测试，了解性能测试在真实项目中的意义，最后通过测试加压来观察和分析系统的瓶颈。', 'Peter', 'https://img.mukewang.com/539e65a10001963a01400140-80-80.jpg', '其它', '1、需要具备一定的Linux基础能力
2、有望成为架构师的小伙伴
3、适合负责系统优化的小伙伴', '1、性能测试基本概念
2、TOP命令在性能测试中的应用
3、Sysstat工具在性能测试中的应用
4、评估磁盘IO性能
5、使用Jmeter录制脚本
6、Jmeter脚本参数化
7、Jmeter中撰写断言
8、Jmeter中模拟用户等待行为
9、性能测试过程中的性能监控和瓶颈分析
10、nmon工具了解', '2018-09-02 20:37:31.325295', '2018-08-12 23:48:24.834722');
INSERT INTO "public"."tb_imooc_course" VALUES (759, 259, '带你学习Jade模板引擎', '中级', 30658, 'Jade教程，前端开发提速利器，让项目开发行云流水般顺滑', '前端工具', 'https://img4.mukewang.com/570b07660001308206000338-240-135.jpg', 'https://www.imooc.com/learn/259', '2小时 0分', 9.8, 9.9, 9.7, 9.7, '简介：随着 Node.js 的发展，能同时被前后端共用的模板引擎框架也不断推出，本Jade教程就带领大家学习其中一款优秀的模板引擎 Jade， 涵盖 Jade 语法、流程代码、过滤器 filters 等等，了解 Jade 的优势劣势，适用场景，让项目开发行云流水般顺滑。', 'Scott', 'https://img3.mukewang.com/5344e6d10001867401400140-80-80.jpg', NULL, '1、html\css
2、如果具备js语法知识会更好理解本课程', '1、常用前端模板
2、Jade语法及基本使用方法
3、Jade缺点及如何取舍', '2018-09-02 20:37:32.807695', '2018-08-12 23:48:31.269483');
INSERT INTO "public"."tb_imooc_course" VALUES (687, 225, 'Android电商活动中的刮刮卡', '中级', 16499, '本课程将自定义控件实现刮刮卡效果，同时介绍实现原理', 'Android', 'https://img1.mukewang.com/574667ad0001c8c706000338-240-135.jpg', 'https://www.imooc.com/learn/225', '1小时30分', 9.9, 9.9, 9.9, 9.9, '简介：本课程将自定义控件实现刮刮卡效果，首先给大家介绍Android刮刮卡效果的原理，即利用Paint的Xfermode；然后从最简易的绘画面板开始，逐渐的改造为我们的刮刮卡控件。通过本课程大家会对绘图相关API以及自定义控件有更深层次的了解。', 'hyman', 'https://img4.mukewang.com/54169c430001face18403264-80-80.jpg', '移动开发工程师', '本课程是基于Android开发的案例，需要大家对Android的了解要达到小成的境界：
1、熟悉Android常用API
2、了解Android如何自定义控件
3、了解绘图相关的API', '通过本课程，你将学到：
1、刮刮卡效果的原理是什么
2、如何实现一个简易的绘画面板
3、如何实现刮刮卡控件
4、如何计算出用户刮开区域的面积比例
5、如何对外设置接口回调，以及自定义属性的使用', '2018-09-02 20:37:33.721953', '2018-08-12 23:48:23.695633');
INSERT INTO "public"."tb_imooc_course" VALUES (697, 238, '百度地图在Android中的使用', '初级', 38355, '在Android应用中玩转百度地图，由浅入深的带领大家一步步学习', 'Android', 'https://img2.mukewang.com/570758ee0001caaf06000338-240-135.jpg', 'https://www.imooc.com/learn/238', '1小时30分', 9.7, 9.9, 9.6, 9.5, '简介：时下，地图逐渐成为APP中的一个不可或缺的功能。课程使用百度地图SDK，由浅入深的带领大家从申请百度地图API Key开始，一步一步实现地图在APP中的常见的功能，总体包括地图的引入、基本设置、模式的切换、定位的功能、方向传感器的结合、以及添加覆盖物', 'hyman', 'https://img4.mukewang.com/54169c430001face18403264-80-80.jpg', '移动开发工程师', '本课程是基于Android开发的案例，需要大家掌握基本的Android和Java基础知识：
1、熟练使用Java语言
2、熟悉Android常用API
3、熟练使用Eclipse IDE', '通过本课，你将学到：
1、申请百度地图API Key 
2、将地图引入到APP中并将其生命周期与Activity进行绑定
3、使用百度地图定位API实现定位
4、使用方向传感器并定位功能进行结合
5、在地图上添加覆盖物，以及覆盖物的点击处理
6、在地图Marker上弹出InfoWindow', '2018-09-02 20:37:31.515567', '2018-08-12 23:48:24.55664');
INSERT INTO "public"."tb_imooc_course" VALUES (723, 162, 'Android猜歌游戏是这样炼成的', '高级', 27043, '手把手教你完成一款猜歌类游戏，向你展示游戏实现的全部细节', 'Android', 'https://img.mukewang.com/5707591f00016d8c06000338-240-135.jpg', 'https://www.imooc.com/learn/162', '10小时 0分', 9.8, 10, 9.7, 9.6, '简介：《疯狂猜歌》是时下非常流行的一款益智类游戏，本课程会详细的向您介绍游戏实现的全部细节。课程由浅入深，不但包含游戏中图片的使用，界面的设计及实现，音乐的播放，动画的使用等UI相关的部分，更有MVC框架设计，设计模式的使用，代码优化，微信接口调用等代码相关内容', '李建', 'https://img3.mukewang.com/53d74ab500018ce202840304-80-80.jpg', '移动开发工程师', '本课程是Android项目，需要大家掌握基本的Android和Java基础知识：
1、熟练使用Java语言编写代码
2、熟悉Android常用API，熟练使用Eclipse开发工具
', '1、游戏基本理论
2、运用MVC理论设计程序框架。
3、Android平台下的界面设计及开发
4、如何培养良好的代码书写规范
5、动画的创建和使用
', '2018-09-02 20:37:38.447314', '2018-08-12 23:48:27.969002');
INSERT INTO "public"."tb_imooc_course" VALUES (735, 228, '云安全的架构设计与实践之旅', '中级', 25342, '阿里云公开课，带你更加深入了解云安全架构那些事儿，干货慢慢', '云计算', 'https://img.mukewang.com/5460558c0001f92506000338-240-135.jpg', 'https://www.imooc.com/learn/228', '1小时18分', 9.2, 9, 9.2, 9.4, '简介：阿里云公开课《云安全的架构设计与实践之旅》，从云计算安全体系中的沙箱机制和技术到云平台安全访问控制的设计与实现原理，让更多的开发者深入了解到云安全架构那些事儿。', '阿里云课堂...', 'https://img3.mukewang.com/5460526b000122a302620267-80-80.jpg', NULL, '1、云计算安全沙箱
2、云计算爱好者   
3、互联网从业者', '1、云上的计算系统有哪些Attack Surfaces可以利用
2、开源的产品从这个角度来看是如何解决安全问题
3、linux系统提供了那些安全机制可供安全沙箱使用', '2018-09-02 20:37:36.168422', '2018-08-12 23:48:29.036238');
INSERT INTO "public"."tb_imooc_course" VALUES (756, 202, '深入浅出Java多线程', '入门', 152542, '带你一起深入浅出多线程，掌握基础，展望进阶路线', 'Java', 'https://img1.mukewang.com/5704a9550001f74606000338-240-135.jpg', 'https://www.imooc.com/learn/202', '4小时 0分', 9.2, 9.5, 9.2, 9, '简介：多线程是日常开发中的常用知识，也是难用知识。通过本视频，你可以了解Java中多线程相关的基本概念，如何创建，启动和停止线程？什么是正确的多线程，怎样编写多线程程序。在掌握基础之后，将为你展望进阶路线，为进一步的学习提供方向。', 'Arthur', 'https://img3.mukewang.com/53ba377f0001b4de01400140-80-80.jpg', 'JAVA开发工程师', '本课程的学习，需要小伙伴们具有面向对象基础知识及 Java 语言基础。如果您是新手，建议先移步 《Java入门第一季》和《Java入门第二季》', '1、Java 中如何使用线程
2、什么是争用条件
3、线程如何交互', '2018-09-02 20:37:32.173617', '2018-08-12 23:48:31.106505');
INSERT INTO "public"."tb_imooc_course" VALUES (750, 111, 'Linux 达人养成计划 II', '入门', 106710, 'VIM+磁盘管理+用户权限，通过学习对Linux系统有进一步的理解', 'Linux', 'https://img.mukewang.com/57035f580001a91806000338-240-135.jpg', 'https://www.imooc.com/learn/111', '2小时30分', 9.5, 9.8, 9.5, 9.2, '简介：本课程介绍Linux系统下操作VI编辑器、创建文本文件、VI的三种操作模式、磁盘分区与格式化、用户及用户组权限的相关操作与管理等，让童鞋们对Linux系统有进一步的理解，对Linux服务器的维护操作更加得心应手。', '壞大叔badUnc...', 'https://img.mukewang.com/59311bea0001e93207410741-80-80.jpg', 'PHP开发工程师', '童鞋们，学完《Linux达人养成计划I》可以让你更轻松的学习本门课程呦！', '1. 熟练使用VIM文本编辑器
2. 能够对磁盘和文件系统进行管理
3. 能够对用户及权限进行控制', '2018-09-02 20:37:35.170148', '2018-08-12 23:48:30.496999');
INSERT INTO "public"."tb_imooc_course" VALUES (722, 230, 'Web app---Rails10日谈', '中级', 29578, '手把手带你一起做出一个小而美的 Web App，课程实用生动', 'WebApp', 'https://img.mukewang.com/5746702500017c1606000338-240-135.jpg', 'https://www.imooc.com/learn/230', '1小时10分', 10, 10, 10, 10, '简介：Web 开发是个复杂工作，涉及到得技术种类繁多。Ruby On Rails 可以为提供一套 best practice ，让新手不至于在选择和配置各种要素上面迷路，从而能快速达成自己的想法。带你手把手一起做出一个小而美的 Web App，穿插一些难点的演示拆解。不求面面俱到，但求实用生动。', 'happypeter', 'https://img3.mukewang.com/53f55a3c000159c812700952-80-80.jpg', 'JS工程师', '不需要你以前学过 Ruby，但至少用过 Python、Java、C 等语言中的一种，理解面向对象的基本概念。对 HTML 和 CSS 要有一个入门级的应用水平，如果你是 PHP 或者其他语言的开发老手，通过课程了解 Rails 非常合适。本课程核心观众是从来没做过一个完整 Web App 的新手。', '如何创建更新删除资源。采用 Rails 的接口高效操作数据库。知识点的引出都是穿插在实际开发中的，每一个点都是为了解决一个棘手的问题。你可以看到一个 Web App 的真实的打造过程：虚拟机开发环境的运用测量，编辑器的实操技巧，代码优化的思路。', '2018-09-02 20:37:37.095765', '2018-08-12 23:48:27.901631');
INSERT INTO "public"."tb_imooc_course" VALUES (766, 104, 'HTML5存储', '中级', 51615, '本课程主要讲解浏览器端存储的实现方案，从而优化你的业务', 'Html5', 'https://img1.mukewang.com/53e9bd410001ea4f06000338-240-135.jpg', 'https://www.imooc.com/learn/104', '1小时27分', 9.5, 9.8, 9.3, 9.4, '简介：本教程会给大家介绍三种HTML5的浏览器端存储方式，以及每种方式具体的实现原理，操作规范以及它们各自的优缺点和适用场景，同时教程也会介绍一些非主流的存储方式。通过本教程的学习，我们可以更好的在今后的业务中灵活运用html5的存储，从而优化你的业务', 'friday', 'https://img2.mukewang.com/53d9e6c400016e6009601280-80-80.jpg', NULL, '具备HTML/CSS、JavaScript、CSS3基础知识。', '通过学习本教程可以熟练掌握每种存储的操作方法；了解每种存储方式的优缺点，以及适用场景；在今后的业务开发中能够灵活运用H5的存储；利用浏览器端存储来优化你的业务。', '2018-09-02 20:37:42.079022', '2018-08-12 23:48:31.815069');
INSERT INTO "public"."tb_imooc_course" VALUES (733, 196, 'Spring入门篇', '中级', 209916, '为您带来IOC和AOP的基本概念及用法，为后续高级课程学习打下基础', 'Java', 'https://img4.mukewang.com/5704d2a90001bb1b06000338-240-135.jpg', 'https://www.imooc.com/learn/196', '7小时 0分', 8.5, 9.2, 8.2, 8.1, '简介：Spring是为解决企业应用程序开发复杂性而创建的一个Java开源框架，应用非常广泛。业内非常流行的SSH架构中的其中一个"S"指的就是Spring。本门课程作为Spring的入门级课程，将结合实例为您带来依赖注入、IOC和AOP的基本概念及用法，为后续高级课程的学习打下基础。', 'moocer', 'https://img3.mukewang.com/58db190e0001643d02000200-80-80.jpg', 'JAVA开发工程师', 'Java的高级课程，适合对Java基础知识应用自如，并熟悉MVC架构的小伙伴们。如果想成为一名Java工程师，这门课程是一定要学哒。', '掌握依赖注入、IOC和AOP的概念，并能进行简单应用。', '2018-09-02 20:37:36.065883', '2018-08-12 23:48:28.993752');
INSERT INTO "public"."tb_imooc_course" VALUES (755, 103, '使用D3制作图表', '中级', 32321, '教你使用最酷的数据可视化图表，初探数据可视化奥秘', 'Html5', 'https://img2.mukewang.com/5434b8ae0001a50506000338-240-135.jpg', 'https://www.imooc.com/learn/103', '1小时52分', 9.5, 9.9, 9.2, 9.3, '简介：现在是大数据时代，我们每天都会产生很多的数据，如何通过更直观的方式来展示这些数据并可以让用户马上就可以获得海量信息中的规律呢？使用D3！这个课程会通过实际的例子讲解如何使用D3这个javascript库来制作几种常用类型的图表，让我们来初探数据可视化的奥秘吧！', 'LuckyYang', 'https://img.mukewang.com/5464b1bd0001ffe701690169-80-80.jpg', '其它', '有html，css和javascript基础的同学学习这门课程会比较容易一些。没有基础的同学，也可以通过课程里面的例子加深自己对相关知识的理解。', '如何使用select和selectAll选择DOM元素、如何使用append添加DOM元素、如何使用line，area等方法生成图表曲线、如何使用数据文件让我们的图表可以随着数据变化而动态更新。', '2018-09-02 20:37:35.350445', '2018-08-12 23:48:31.044856');
INSERT INTO "public"."tb_imooc_course" VALUES (719, 127, '玩儿转Swift', '初级', 54280, '这套教程比任何的Swift中文教程深入，并且演示示例更丰富', 'iOS', 'https://img.mukewang.com/53966c2c00018bed06000338-240-135.jpg', 'https://www.imooc.com/learn/127', '6小时37分', 9.7, 9.8, 9.6, 9.7, '简介：我们期望用户在看完这套教程后，对swift语言的了解能达到中上水平。这意味着在接触Cocoa Touch将一点儿都不费劲，对一些高级概念，诸如闭包、协议、泛型、内存管理都能有所理解并且有所实践。这套教程一定比市面上普遍看到的Swift中文教程深入，并且演示示例更丰富。', 'liuyubobobo', 'https://img3.mukewang.com/5347593e00010cfb01400140-80-80.jpg', '全栈工程师', '不需要掌握Objective-C即可玩儿转Swift；最好拥有其他程序设计语言基础。', '详细的Swift语言特性讲解；完全掌握Swift语言开发方式；部分使用Swift语言调用Cocoa Touch API的方法，为学习新一代ios开发打下坚实基础。', '2018-09-02 20:37:36.87077', '2018-08-12 23:48:27.576469');
INSERT INTO "public"."tb_imooc_course" VALUES (787, 156, 'AngularJS实战', '高级', 204288, '一起学习AngularJS的基础教程，通过实例学习并学会AngularJS', 'Angular', 'https://img2.mukewang.com/5707699500012d5a06000338-240-135.jpg', 'https://www.imooc.com/learn/156', '7小时13分', 9.6, 9.9, 9.5, 9.3, '简介：欢迎大家与大漠穷秋老师一起学习AngularJS的基础教程，让我们一起通过实例学习并学会AngularJS！', '大漠穷秋', 'https://img2.mukewang.com/595a210800017ff712801920-80-80.jpg', '学生', '你需要有较强前端基础：JavaScript基础非常扎实（BOM、DOM、事件系统、原型、作用域、闭包），并已熟悉jQuery、同时对CSS基础有一定了解；对依赖注入、MVC等常见的技术和设计模式有所了解。请注意，AngularJS框架的设计思想非常前卫，因此本教程不适合新手。', '掌握AngularJS用法、理解AngularJS核心概念、使用AngularJS进行开发', '2018-09-02 20:37:38.18156', '2018-08-12 23:48:33.531799');
INSERT INTO "public"."tb_imooc_course" VALUES (737, 154, '通过自动回复机器人学Mybatis---基础版', '中级', 94036, '微信公众号自动回复功能学习Mybatis，基础教程加案例实战方式学习', 'Java', 'https://img3.mukewang.com/5704a3fd0001310306000338-240-135.jpg', 'https://www.imooc.com/learn/154', '4小时30分', 9.8, 9.9, 9.7, 9.7, '简介：各位小伙伴们，你是否还在为使用Java中原始 JDBC 的开发方式的繁琐而苦恼呢？ Mybatis可以帮你解决这个难题，在本次课程中，让我们通过基础教程加案例实战开发的学习方式，逐步学习Mybatis的下载与配置以及基本功能应用。
源生活老师实战课程《Java SSM定制大众点评后台》：http://coding.imooc.com/class/105.html
也已上线，Mybatis结合复杂SQL，尽在其中。', '源生活', 'https://img.mukewang.com/5372ea2300010f9701400140-80-80.jpg', 'JAVA开发工程师', '各位小伙伴们需要有一定Java Web开发基础，至少需要掌握以下内容：
1、JSP、Servlet、JSTL、EL
2、JS/JQUERY
3、JDBC
如果你还是新人，建议先移步网站相关课程，在理解并掌握相关知识之后再回来进修', '1、	Mybatis 的下载与配置
2、	Mybatis 的基本功能应用
3、	融合 Mybatis 的一个完整小案例的实战
4、	Mybatis 的特征总结
5、	Mybatis 常见 QA', '2018-09-02 20:37:36.523511', '2018-08-12 23:48:29.111661');
INSERT INTO "public"."tb_imooc_course" VALUES (226, 778, '即时通讯项目里面的语音处理-提高优化篇', '中级', 3916, '语音特效（音量可视化，变调变速）', 'Android', 'https://img4.mukewang.com/5858ea6d0001ea0406000338-240-135.jpg', 'https://www.imooc.com/learn/778', '1小时13分', 10, 10, 10, 10, '简介：在文件模式中实时获取录音时的音量大小，并动态展示到 ui 上。进行简单的变速播放，通过控制播放时的采样频率达到变速播放的效果，但是这种方式会改变声音的音调。进行变调不变速的处理，变调不变速通是通过对声音信号的 fft 变换实现的，可以达到多种不同的声音效果。', 'Piasy', 'https://img4.mukewang.com/57a1cbc70001754503000300-80-80.jpg', '移动开发工程师', '学习过上篇讲解的基本声音录制播放篇', '学会IM应用里面的高级语音处理，音量可视化，变调变速等。了解掌握安卓语音等流数据的处理流程和相关的API实际使用。', '2018-09-02 20:36:55.929003', '2018-08-12 23:47:44.5121');
INSERT INTO "public"."tb_imooc_course" VALUES (839, 178, '《全民寻找绿箭侠》游戏开发', '中级', 25698, '跟着高手开发游戏，每个步骤都带领大家进行代码断点演示', 'Html5', 'https://img2.mukewang.com/53fc5cec0001043806000338-240-135.jpg', 'https://www.imooc.com/learn/178', '2小时 0分', 9.7, 9.9, 9.4, 9.8, '简介：小伙伴们，全民寻找房祖名游戏使大家嗨了一把，本课程就来带领大家分析并开发出属于自己的“全民寻找某某”游戏。听起来有一些小兴奋吧。本课程主要内容包括游戏逻辑分析、框架分离、游戏代码实现，每个步骤都带领大家进行代码断点演示。', 'Murphy', 'https://img3.mukewang.com/52610a460001972707820900-80-80.jpg', '移动开发工程师', '学习本课程之前，您应该已经掌握了以下技术：
1、HTML语言
2、CSS样式：Class、选择器、圆角
3、Javascript基本语法、闭包
4、jQuery基础功能：
   $(selector)、.html()、.text()、 .data()等
5、Underscore框架库', '1、了解App框架构建方法及优势
2、掌握游戏开发的基本逻辑
3、了解使用Underscore框架库开发的简介应用
', '2018-09-02 20:37:40.796156', '2018-08-12 23:48:38.127311');
INSERT INTO "public"."tb_imooc_course" VALUES (796, 116, 'PHP与MySQL关系大揭秘', '初级', 71718, '让我们一起走上探秘之旅，找寻php和mysql恋爱的真谛', 'PHP', 'https://img2.mukewang.com/5387e32e000196cb06000338-240-135.jpg', 'https://www.imooc.com/learn/116', '2小时58分', 9.8, 9.9, 9.8, 9.7, '简介：你听说过php吗？你听说过mysql吗？他俩结合几十年了你知道了吗？让我们一起走上探秘之旅，找寻php和mysql恋爱的真谛。GO！GO！GO！', 'PengCheng', 'https://img1.mukewang.com/5379c43b0001a28d01400140-80-80.jpg', 'PHP开发工程师', '本课程是PHP中级课程
1、掌握PHP开发语言的基础语法知识
2、掌握MYSQL数据库中基础的增删改查语句', '1、精通最基本的PHP内置mysql函数           2、掌握对数据库增删改查的步骤                3、熟悉简单文章发布系统的开发流程           4、学会分析相似系统，实现举一反三', '2018-09-02 20:37:40.811675', '2018-08-12 23:48:34.510044');
INSERT INTO "public"."tb_imooc_course" VALUES (803, 144, '用JavaScript实现图片剪切效果', '初级', 33568, '神奇的图片特效，还会给大家介绍css中让人惊喜的clip属性', 'JavaScript', 'https://img3.mukewang.com/5704af560001629406000338-240-135.jpg', 'https://www.imooc.com/learn/144', '2小时10分', 9.6, 9.8, 9.6, 9.4, '简介：课程中将介绍如何获取鼠标的坐标位置以及监听鼠标的按下、拖动、松开等动作事件，从而实现拖动鼠标来改变图片大小。本课程还会给大家介绍css中让人惊喜的clip属性。', 'Ben', 'https://img.mukewang.com/534f89d7000146bf01400140-80-80.jpg', '产品经理', '在学习本课程之前，您应该已经熟悉js事件的绑定和css的绝对定位。', '通过本课程，您将学习到如何通过组合鼠标的按下、拖动和松开事件来实现鼠标对元素的拖动和缩放，从而在js事件操作方面的学习有个更大的飞越。', '2018-09-02 20:37:39.756006', '2018-08-12 23:48:35.190929');
INSERT INTO "public"."tb_imooc_course" VALUES (836, 145, '模式的秘密---模板方法模式', '中级', 28628, '封装算法框架的模板方法模式，用案例告诉你模板方法模式的强大', 'Java', 'https://img.mukewang.com/5704a3880001fb2206000338-240-135.jpg', 'https://www.imooc.com/learn/145', '1小时 0分', 9.7, 9.9, 9.6, 9.6, '简介：模板方法模式是在日常开发中使用最为广泛的设计模式之一。通过本视频，你可以了解什么是模板方法模式，如何用 Java 语言实现模板方法模式。@Arthur 将用简单生动的例子带你领略模板方法模式的真意，最后还将用实际的行业案例告诉你模板方法模式的强大功能。', 'Arthur', 'https://img4.mukewang.com/53ba377f0001b4de01400140-80-80.jpg', 'JAVA开发工程师', '本课程的学习，需要小伙伴们具有面向对象基础知识及 Java 语言基础。如果您是新手，建议先移步 《Java入门第一季》和《Java入门第二季》', '1、什么是模板方法模式
2、模板方法模式如何实现
3、如何在模板方法模式中增加灵活性
4、专门行业是如何使用模板方法模式', '2018-09-02 20:37:39.607557', '2018-08-12 23:48:37.889086');
INSERT INTO "public"."tb_imooc_course" VALUES (864, 59, '倒计时效果', '初级', 54359, '电商网站限时抢购倒计时效果计算思路和方法，前端开发必备技术', 'JavaScript', 'https://img.mukewang.com/574677dd0001f7a806000338-240-135.jpg', 'https://www.imooc.com/learn/59', '32分', 9.6, 9.8, 9.6, 9.5, '简介：现今团购网、电商网、门户网等，常使用时间记录重要的时刻，如时间显示、倒计时差、限时抢购等，本课程分析不同倒计时效果的计算思路及方法，掌握日期对象Date，获取时间的方法,计算时差的方法，实现不同的倒时计效果。', 'vivian', 'https://img1.mukewang.com/528abd50000195b120422848-80-80.jpg', 'Web前端工程师', '您至少具备HTML/CSS、JavaScript的基础知识', '1.学会使用日期对象Date和方法。2.学会不同时间内容的获取。3.学会计算时差的方法。', '2018-09-02 20:37:47.888407', '2018-08-12 23:48:40.131328');
INSERT INTO "public"."tb_imooc_course" VALUES (783, 197, 'node建站攻略(二期)——网站升级', '高级', 51491, '帮助你深入前后端开发留下的迷惑，为进一步自学打下基础', 'Node.js', 'https://img2.mukewang.com/570b06c700019d8106000338-240-135.jpg', 'https://www.imooc.com/learn/197', '6小时 0分', 9.5, 10, 9.6, 8.9, '简介：本课程紧接第一期课程带您完完整整的用nodejs升级一个从前端到后端的项目，深入了解前后端知识，启发你从前端的视角切换到全端的视角，从而更好的窥探前端的职业发展，为进一步自学打下快速打下基础。', 'Scott', 'https://img4.mukewang.com/5344e6d10001867401400140-80-80.jpg', NULL, '本课程针对从事前端开发 2～3 年，前端知识结构良好，对基础的nodejs/express等相关后端知识有所了解，但缺乏实际项目经验的中级前端工程师。', '1、express后台框架的深入使用
2、mongodb中关联文档的设计与查询
3、jade模板引擎的深入使用
4、前后端数据传递与视图展现的流程
5、借助会话与cookie进行用户识别和持久化
6、如何利用表单做图片的上传
7、测试框架mocha的安装及测试用例编写', '2018-09-02 20:37:38.924776', '2018-08-12 23:48:33.022673');
INSERT INTO "public"."tb_imooc_course" VALUES (804, 150, '站在巨人的肩膀上写代码—SPL', '高级', 20614, 'SPL，一个能找到登上绝顶的天梯，学会后能提高实际工作的效率', 'PHP', 'https://img4.mukewang.com/57466bb0000135cf06000338-240-135.jpg', 'https://www.imooc.com/learn/150', '3小时30分', 9.8, 9.9, 9.9, 9.6, '简介：通过本课程的学习，可以了解SPL的概念，掌握SPL的常用类、接口、数据结构和函数，再通过案例的讲解学习，掌握相应的知识点和技能，能灵活运用案例代码提高实际工作的效率。', 'Peter', 'https://img1.mukewang.com/539e65a10001963a01400140-80-80.jpg', '其它', '1、具备基本的PHP编码能力
2、对面向对象的概念有一定的认识
3、熟悉PHP中类定义的基本语法', '1、学习和掌握SPL提供的基本的数据结构，包括链表、堆栈、队列
2、理解迭代器的概念，学习和掌握常用迭代器的使用
3、掌握SPL里面的常用接口
4、掌握Autoload的机制
5、掌握SPL中的文件处理类库', '2018-09-02 20:37:42.797741', '2018-08-12 23:48:35.231886');
INSERT INTO "public"."tb_imooc_course" VALUES (833, 126, 'Android系统Root原理初探', '高级', 32624, '深入浅出的方式介绍Android Root原理，基本技术和刷机', 'Android', 'https://img2.mukewang.com/570756a200012ca906000338-240-135.jpg', 'https://www.imooc.com/learn/126', '1小时20分', 9.7, 9.9, 9.6, 9.5, '简介：本课程以深入浅出的方式介绍Android Root原理。当然，本课程最主要的内容是教会小白从源代码的角度如何root自己的Android手机。其中包括制作Recovery升级包、Edify语言常用函数介绍、定制updater-script脚本文件、在Recovery模式下刷机、分析su.c源代码等内容。', '李宁', 'https://img.mukewang.com/538e88d900017ff501400140-80-80.jpg', '移动开发工程师', '本课程是高级Android Root课程的前导课程，在学习本课程之前，需要大家了解Linux的基础知识，以及C语言的基础知识。当然，最好拥有一部Android手机或平板。建议使用Nexus、HTC、三星等国外品牌的Android设备，国内有的Android设备无法进入bootloader和recovery，无法刷机', '1、Root原理解析
2、刷一个很酷的Recovery
3、Edify语言常用函数
4、定制updater-script脚本文件
5、制作Recovery升级包
6、通过Recovery升级包将su命令刷到Android系统目录
7、Android官方su.c源代码解析
8、Android应用如何使用su命令获取Root权限', '2018-09-02 20:37:43.216382', '2018-08-12 23:48:37.588774');
INSERT INTO "public"."tb_imooc_course" VALUES (814, 125, 'Web App下图片滑动组件的开发', '中级', 37441, '本课程就是讲述从零开始，如何构建一个移动端的滑动组件', 'WebApp', 'https://img.mukewang.com/5705d0d600013ea906000338-240-135.jpg', 'https://www.imooc.com/learn/125', '1小时30分', 9.6, 9.9, 9.5, 9.5, '简介：随着移动互联网的发展，如今在移动端的WEB 形式开始慢慢发生改变,而图片的展示方式，也从简单的列表形式，变为更为流行的走马灯效果。这种走马灯效果在移动端的展示由于受到屏幕大小限制，演化为滑动组件。本课程就是讲述从零开始，如何构建一个移动端的滑动组件。', 'mark', 'https://img2.mukewang.com/533943ec0001a7d101400140-80-80.jpg', 'Web前端工程师', '1.具备HTML+CSS知识基础；2.对CSS3有一定了解；3.具备一定JS的知识', '如何在手机端开发移动组件，让用户在移动端能够享受到更加平滑的触控方式。', '2018-09-02 20:37:47.389718', '2018-08-12 23:48:36.042303');
INSERT INTO "public"."tb_imooc_course" VALUES (863, 58, '弹出层效果', '初级', 37703, '通过本课程的学习让您能灵活运用知识，制作出超炫的弹出层效果', 'JavaScript', 'https://img4.mukewang.com/574678220001cb6706000338-240-135.jpg', 'https://www.imooc.com/learn/58', '25分', 9.6, 9.8, 9.6, 9.3, '简介：在各大网站中，我们常运用弹出层效果实现登陆和图片展示效果。本课程主要讲解如何定位、如何创建，插入，删除网页元素，并从静态网页布局到JS代码实现，详细分析每个环节，让您能灵活运用知识，制作出超炫、超实用的弹出层效果。', '清风', 'https://img1.mukewang.com/532bb3930001429f01400140-80-80.jpg', NULL, '1.您至少具备HTML+CSS样式基础知识；2.您至少具备JavaScript基础知识。', '1.学会DOM操作创建、插入和删除结点元素。2.学会position、fixed属性固定元素位置3.学会使用z－index改变元素的层级', '2018-09-02 20:37:47.916027', '2018-08-12 23:48:40.104367');
INSERT INTO "public"."tb_imooc_course" VALUES (788, 54, 'PHP入门篇', '入门', 397025, 'PHP入门教程轻松学习，行业大牛帮您快速掌握PHP编程基础知识。', 'PHP', 'https://img3.mukewang.com/53daee770001dd0706000338-240-135.jpg', 'https://www.imooc.com/learn/54', '5小时57分', 9.5, 9.6, 9.5, 9.2, '简介：本教程带领大家轻松学习PHP基础知识，了解PHP中的变量、变量的类型、常量等概念，认识PHP中的运算符，通过本教程学习能够掌握PHP中顺序结构、条件结构、循环结构三种语言结构语句。', 'Kings', 'https://img3.mukewang.com/533a1c58000138bd02610245-80-80.jpg', NULL, '没有任何WEB经验的WEB应用程序开发者及对WEB前端技术兴趣的用户。（即使你是完全的新手）', '1、通过教程学习可以了解PHP中的变量、变量的类型、常量等概念 2、认识PHP中的运算符，掌握PHP中顺序结构、条件结构、循环结构语句。', '2018-09-02 20:37:39.417707', '2018-08-12 23:48:33.981689');
INSERT INTO "public"."tb_imooc_course" VALUES (845, 74, '侧边栏信息展示效果', '初级', 29701, '顶级大牛分享开发经验，学会实现侧边栏内容效果展示，让你迅速进阶', 'JavaScript', 'https://img3.mukewang.com/574671350001728906000338-240-135.jpg', 'https://www.imooc.com/learn/74', '1小时34分', 9.4, 9.8, 9.2, 9.3, '简介：学会实现侧边栏内容效果展示，能够让你迅速进阶。三个步骤:通过HTML、CSS实现侧边栏内容布局；实现JavaScript代码效果，使用面向对象的方式；在JavaScript代码预留位置，添加动画效果。学会这些，跻身大网站程序员行列，身价倍增，赶快学习！', 'GreenBoots', 'https://img2.mukewang.com/52e4bdfc0001068e02190219-80-80.jpg', 'Web前端工程师', '1.本课程属于难度比较大的前端课程；2.对HTML、CSS有较深理解；3.尤其对JavaScript中的构造函数、原型链、冒泡及闭包等技术有所了解；4.你还要熟悉CSS3动画方面的知识。', '1.学会如何实现侧边栏内容效果；2.对CSS3动画添加有较深的理解；3.掌握构造函数的方法；4.代码实战开发的一些经验。', '2018-09-02 20:37:45.914416', '2018-08-12 23:48:38.580381');
INSERT INTO "public"."tb_imooc_course" VALUES (827, 101, '瀑布流布局', '初级', 89073, '瀑布流布局是网站比较流行的一种布局方式，教你实现三大方式', 'JavaScript, jQuery', 'https://img4.mukewang.com/536c49530001e2cd06000338-240-135.jpg', 'https://www.imooc.com/learn/101', '2小时 0分', 9.7, 9.8, 9.6, 9.5, '简介：瀑布流布局是网站比较流行的一种布局方式。本案例将深入讲解实现瀑布流布局的三大方式：JavaScript、jQuery和CSS3，你将学习到如何用JavaScript方法实现图片的定位及排序、两种不同的方式对图片进行持续加载，以及CSS3中多栏布局怎么实现瀑布流布局。', 'Amy', 'https://img3.mukewang.com/536b6357000158be04990749-80-80.jpg', NULL, '1.你一定对HTML+CSS比较熟悉；
2.掌握一定的JS基础知识，尤其是函数封装、调用等知识；
3.对jQuery相关知识掌握。', '1.学会实现瀑布流布局实现的三种方式；
2.div如何定位和排序；
3.掌握CSS3中多栏布局的知识。', '2018-09-02 20:37:43.999909', '2018-08-12 23:48:37.377392');
INSERT INTO "public"."tb_imooc_course" VALUES (871, 8, '信息列表制作', '初级', 21444, '带您玩转信息列表制作，掌握不同技术方法，提高Web开发经验', 'JavaScript', 'https://img4.mukewang.com/52ce87010001b92806000338-240-135.jpg', 'https://www.imooc.com/learn/8', '2小时 0分', 9.6, 9.8, 9.7, 9.2, '简介：详细讲解信息列表的制作方法和技巧，以真实实例为主线，贯穿诙谐轻松的教学方法，从易到难，循序渐进，掌握相应知识点、开发标准，以最快的速度掌握不同技术的实现方法，提高Web开发经验与技巧。', 'vivian', 'https://img1.mukewang.com/528abd50000195b120422848-80-80.jpg', 'Web前端工程师', '1. 您至少具备HTML基础知识，如<ul>、<li>、<a>、<dl>、<dt>、<dd>等标签； 
2. 您至少熟悉JavaScript基础知识，如何插入JS代码、利用鼠标事件、获取DOM元素；
3. 您至少熟悉jQuery基础知识，如何引用jQuery库，了解语法；
', '拉风的信息列表，带超链接效果、带高亮效果和带手风琴效果，运用CSS样式、JavaScript和jQuery三种方法现实带手风琴效果的信息列表。', '2018-09-02 20:37:44.519007', '2018-08-12 23:48:40.628202');
INSERT INTO "public"."tb_imooc_course" VALUES (879, 75, 'node+mongodb 建站攻略（一期）', '高级', 90117, '带你完整实现一个从前端到后端的项目，初中级前端开发工程师必学课程', 'Node.js', 'https://img1.mukewang.com/570b06920001114b06000338-240-135.jpg', 'https://www.imooc.com/learn/75', '2小时 0分', 9.4, 9.6, 9.3, 9.2, '简介：想了解前后端通力合作的整个作业线流程吗？本课程就带你完整实现一个从前端到后端的项目，包括nodejs、express、mongodb、jade 模板引擎的使用，以及bootstrap/jQuery的实际应用及场景评估，让你更好的窥探前端的职业发展，为进一步快速自学打下基础。', 'Scott', 'https://img4.mukewang.com/5344e6d10001867401400140-80-80.jpg', NULL, '本课程适合从事前端开发 2～3 年，已掌握基础的 html/css/javascript/jQuery 技能，对nodejs、express、mongodb、jade 模板引擎等流行技术有或多或少了解，但实践不多的初中级前端工程师。', '1、nodejs 的使用
2、express 后台框架的使用
3、mongodb 的使用
4、jade 模板引擎的使用
5、bootstrap/jQuery 的实际应用及场景评估
6、前后端通力合作的整个作业线流程
7、响应式在具体网站中的使用
8、项目初期文档设计/需求评估/进度排期
', '2018-09-02 20:37:45.529317', '2018-08-12 23:48:41.84119');
INSERT INTO "public"."tb_imooc_course" VALUES (816, 99, '阿当大话西游之WEB组件', '中级', 26262, '衡量攻城师能力是否成熟的重要指标，本课程会以弹窗组件为例', 'JavaScript', 'https://img.mukewang.com/536ad4a900012dc006000338-240-135.jpg', 'https://www.imooc.com/learn/99', '3小时 0分', 9.9, 10, 9.8, 9.8, '简介：我们在实际前端开发过程中,能否封装出易用易维护可定制可扩展的组件，是衡量工程师能力是否成熟的非常重要的一个指标。本课程以弹窗组件为例，讲解如何开发web前端组件,如何实现可读性、扩展性、易用性、重用性、模块化等等技巧,让您的组件开发技能不在空白。', '阿当', 'https://img2.mukewang.com/536ae53e00011c5001400140-80-80.jpg', '其它', '1.您具备一定的CSS和JS基础。
2.熟悉jQuery。', '1.模块化
2.自定义事件
3.定制皮肤
4.面向对象编程
5.抽象类的作用
6.参数设计
7.语法封装
8.如何提高可读性
9.如何提高扩展性
10.如何提高重用性
11.如何提高易用性', '2018-09-02 20:37:46.784623', '2018-08-12 23:48:36.309987');
INSERT INTO "public"."tb_imooc_course" VALUES (744, 185, 'Canvas绘图详解', '中级', 61429, 'Canvas系列教程第二课,详解Canvas各接口，让同学彻底掌握Canvas绘图', 'Html5', 'https://img3.mukewang.com/5731805200012a9c06000338-240-135.jpg', 'https://www.imooc.com/learn/185', '4小时35分', 9.7, 9.9, 9.6, 9.4, '简介：本课程为Canvas系列课程第二课。通过对《绚丽的倒计时效果的学习》，在大家对Canvas绘图有一定了解的基础上，本课程对Canvas的各个图形接口进行了系统详细地介绍，并辅以示例，让同学彻底掌握Canvas绘图，随心所欲在浏览器上绘制炫丽效果！', 'liuyubobobo', 'https://img1.mukewang.com/5347593e00010cfb01400140-80-80.jpg', '全栈工程师', '需有基础HTML,JS,CSS知识。需学习《绚丽的倒计时效果》Canvas绘图第一课。', '深入了解Canvas各个绘图接口的使用方法。基础图形学知识。通过对一些基本元素的绘制，启发大家更多有效地绘图方法。', '2018-09-02 20:37:37.305878', '2018-08-12 23:48:29.853471');
INSERT INTO "public"."tb_imooc_course" VALUES (769, 138, 'DOM事件探秘', '中级', 94713, 'DOM事件？本课程会通过实例来给小伙伴们讲解如何使用这些事件', 'JavaScript', 'https://img2.mukewang.com/570aff630001881206000338-240-135.jpg', 'https://www.imooc.com/learn/138', '2小时57分', 9.7, 9.9, 9.7, 9.6, '简介：DOM事件是小伙伴们学习JS中较重要的一部分知识，所以学好JS事件可以为小伙伴们在JS的学习道路中更近一步。在此课程中Amy老师会通过通俗易懂的授课方式给大家进行讲解JS事件。最后Amy老师通过一个QQ面板实例来给小伙伴们讲解如何使用这些事件。', 'Amy', 'https://img.mukewang.com/536b6357000158be04990749-80-80.jpg', NULL, '1.你一定对HTML+CSS比较熟悉；
2.掌握一定的JS基础知识，尤其是函数封装、调用等知识。', 'DOM事件具体相关知识，DOM事件的使用方法及应用！', '2018-09-02 20:37:41.562706', '2018-08-12 23:48:31.973486');
INSERT INTO "public"."tb_imooc_course" VALUES (825, 115, 'PHP实现验证码制作', '初级', 35276, '各种形态验证码核心原理与实现技巧，讲解实现过程中的技术难点', 'PHP', 'https://img2.mukewang.com/5707623f0001f96006000338-240-135.jpg', 'https://www.imooc.com/learn/115', '1小时20分', 9.8, 10, 9.8, 9.5, '简介：通过分析验证码实现原理，以基础的文字+字母验证码，分析讲解实现方法。并举一反三的讲解如何实现中文、图片、视频验证码。其中会穿插讲解实现过程中可能出现的技术难点、隐患。', 'Pangee', 'https://img3.mukewang.com/5382a89c000102cd00800064-80-80.jpg', 'PHP开发工程师', '本课程适合PHP初学者或者自学的童鞋们。', '1、如何拆解验证码项目
2、PHP的绘图扩展GD库的使用
3、如何用GD函数画图与验证码内容
4、如何用PHP做验证码校验，及动态校验
5、怎么实现中文、图片、视频验证码
', '2018-09-02 20:37:43.685219', '2018-08-12 23:48:37.051938');
INSERT INTO "public"."tb_imooc_course" VALUES (801, 62, '信息排列效果', '初级', 31198, '大咖教您节约网页空间的方法，快速学会信息排列效果的制作', 'JavaScript', 'https://img3.mukewang.com/574673940001426706000338-240-135.jpg', 'https://www.imooc.com/learn/62', '30分', 9.6, 9.7, 9.6, 9.6, '简介：如何变换网页内容的展现形式，实现从静态网页布局到JS的动态效果？本课程为您讲解运用HTML/CSS实现网页的静态布局，以及运用JS实现网页展现形式之间的切换，节约网页空间。从制作思路分析到效果实现，让你快速学会信息排列效果的制作。', '小红帽', 'https://img1.mukewang.com/5335394d0001e5fb01400140-80-80.jpg', NULL, '您至少具备HTML/CSS、JavaScript基础知识', '1.学会运用HTML/CSS图文排列布局。2.学会合并图的使用。3.学会运用JS改变元素样式等', '2018-09-02 20:37:47.640212', '2018-08-12 23:48:35.073914');
INSERT INTO "public"."tb_imooc_course" VALUES (776, 201, 'PHP无限级分类技术', '初级', 27202, '经典的递归实现和全路径实现两种方式实现无限分类', 'PHP', 'https://img3.mukewang.com/570762280001d49906000338-240-135.jpg', 'https://www.imooc.com/learn/201', '1小时14分', 9.3, 9.7, 9.3, 9, '简介：无限分类是我们开发中经常会用的到功能。本课以理论为基础，辅以代码，详细讲解无限分类的使用场景及常用的实现方法，主要包括经典的递归实现和全路径实现两种方式。', ' Fanglor', 'https://img3.mukewang.com/5416976300015ecc05920592-80-80.jpg', NULL, '如果你刚好具备PHP和MySQL数据库基础，那么恭喜你，这门课程就是为你准备哒。', '1.无限分类的使用场景 
2.递归的原理及常用返回值方式
3.如何用递归的方式实现无限分类
4.无限分类在Web前端中的表现形式
5.全路径无限分类的代码实现', '2018-09-02 20:37:39.178567', '2018-08-12 23:48:32.547217');
INSERT INTO "public"."tb_imooc_course" VALUES (773, 22, '网页广告特效', '初级', 38982, '原来这么EASY，从浅到深，逐步优化代码，让你深入理解', 'JavaScript', 'https://img.mukewang.com/574675520001b41506000338-240-135.jpg', 'https://www.imooc.com/learn/22', '1小时16分', 9.7, 9.8, 9.6, 9.7, '简介：网页广告特效是大部分网站中都出现的内容，那么我们这门课程能帮您深度分析广告特效原理，分步剖析制作过程，从浅到深，逐步优化代码，让你深入理解，并灵活运用知识，举一反三，制作出绚丽的广告特效。', 'vivian', 'https://img1.mukewang.com/528abd50000195b120422848-80-80.jpg', 'Web前端工程师', '您至少具备HTML/CCS、JavaScript基础知识。', '1. 掌握广告特效原理；
2. 学会根据需要进行广告定位；
3. 学会添加不同素材文件；
4. 学会广告伸缩效果', '2018-09-02 20:37:39.450267', '2018-08-12 23:48:32.29402');
INSERT INTO "public"."tb_imooc_course" VALUES (840, 142, 'Android攻城狮的第二门课（第2季）', '入门', 62088, '本课程讲带你熟悉Android开发中常用的调试方式，菜单、调试程序', 'Android', 'https://img4.mukewang.com/57075c950001df0306000338-240-135.jpg', 'https://www.imooc.com/learn/142', '3小时50分', 9.7, 9.9, 9.8, 9.4, '简介：本课程讲带你熟悉Android开发中常用的调试方式，各种对话框，各种提示菜单，各种动画效果等，来进一步充实你的Android知识', '邦蜀黍', 'https://img4.mukewang.com/539ff88a0001210601400140-80-80.jpg', '移动开发工程师', '本课程是进阶课程的第2季，将讲解Android应用必备的菜单、对话框和动画等的使用，对于不熟悉Android开发的童鞋来说会有一定的难度，所以，建议在学习本门课程之前，首先必须掌握Java基础语法和面向对象编程，其次还要熟悉Android开发环境，了解控件的使用就更好了 ', '1、Android调试程序
2、Android提示对话框
3、Android常用菜单
4、Android常用动画效果
', '2018-09-02 20:37:40.000636', '2018-08-12 23:48:38.146289');
INSERT INTO "public"."tb_imooc_course" VALUES (846, 147, '企业网站综合布局实战', '初级', 138508, '本课程重点介绍HTML/CSS实现常见企业网站布局的方法', 'HTML/CSS', 'https://img2.mukewang.com/5705d01e0001a04a06000338-240-135.jpg', 'https://www.imooc.com/learn/147', '2小时55分', 9.7, 9.8, 9.8, 9.5, '简介：本课程重点介绍HTML/CSS实现常见企业网站布局的方法、布局中常用的基本盒子模型、三列布局、两列自适应高度及基于jQ的开源图片幻灯片切换效果插件的使用。让您快速掌握企业网站的基本布局方法，同时对HTML、CSS、JS、jQ等知识的综合运用和提升。', 'zkpplpp', 'https://img2.mukewang.com/54f721200001e80d02790279-80-80.jpg', 'Web前端工程师', '1. 您已具备HTML 常用标签和属性。
2. 您已具备CSS 常用属性和值。
3. 您想提升网页布局技能。', '1.CSS中盒子模型的使用
2.网页三列布局方法
3.两列自适应高度布局方法
4.幻灯片切换效果的制作方法
5.导航菜单的制作方法', '2018-09-02 20:37:40.100989', '2018-08-12 23:48:38.598332');
INSERT INTO "public"."tb_imooc_course" VALUES (826, 117, '数据库设计那些事', '中级', 102129, '本教程从数据库设计基本理论入手，教你设计简洁高效数据库结构', 'MySQL', 'https://img3.mukewang.com/5707679e000116a506000338-240-135.jpg', 'https://www.imooc.com/learn/117', '1小时50分', 9.3, 9.5, 9.3, 9.1, '简介：数据库作为大多数应用的存储组件，对程序猿所开发的程序是否可以稳定高效的运行起着至关重要的作用。本课程从数据库设计的基本理论入手结合简单的实例，简单明了的告诉您如何设计出一个简洁明了同时又高效稳定的数据库结构。', 'sqlercn', 'https://img.mukewang.com/5ad7144100017a5e07410741-80-80.jpg', '数据库工程师', '本课程适合程序开发人员及数据库管理运维人员', '1、了解数据库设计的重要性
2、如何设计出简洁高效的数据库结构
3、如何对数据库结构进行优化调整
', '2018-09-02 20:37:44.032894', '2018-08-12 23:48:37.318712');
INSERT INTO "public"."tb_imooc_course" VALUES (830, 34, '用JS实现购物车特效', '初级', 36734, '通过JavaScript实现类似淘宝网络购物车功能效果', 'JavaScript', 'https://img4.mukewang.com/574677a00001581e06000338-240-135.jpg', 'https://www.imooc.com/learn/34', '1小时39分', 9.8, 10, 9.8, 9.7, '简介：我们大家平时都喜欢上淘宝买商品，里面的购物车是怎么实现呢？那么本课程您将会学到通过JavaScript实现类似与淘宝的购物车效果，包括商品的单选、全选、删除、修改数量、价格计算、数目计算、预览等功能的实现。', '阿安', 'https://img2.mukewang.com/52b2a15e0001825906700451-80-80.jpg', 'JS工程师', '您需要掌握HTML语法，CSS布局基础，基本的JavaScript语法知识。', '1. 实现兼容低版本IE的getElementsByClassName()方法
2. JS表格操作
3. 通过parseInt()，parseFloat()把字符串转换成数字
4. 通过toFixed()把数字格式化成指定位数的小数
5. 事件代理的运用
', '2018-09-02 20:37:43.973147', '2018-08-12 23:48:37.505203');
INSERT INTO "public"."tb_imooc_course" VALUES (821, 14, '如何实现“新手引导”效果', '初级', 45070, '学会用 原生JavaScript代码和JQuery两种方式实现依次显示效果', 'jQuery', 'https://img4.mukewang.com/5791927a0001c2e806000338-240-135.jpg', 'https://www.imooc.com/learn/14', '50分', 9.7, 9.7, 9.7, 9.8, '简介：通过本案例，你将会学习如何制作蒙版，详细了解绝对定位的方法，全面掌握cookie的设定，更重要的是能够用原生JavaScript代码和JQuery两种方式来对“新手引导”中引导单元的依次显示。', '江老实', 'https://img1.mukewang.com/5269cc190001854d14561456-80-80.jpg', 'Web前端工程师', '1.对div和css相关内容精通掌握；2. 具有一定的JavaScript和JQuery知识基础', '1.掌握“新手引导”的实现思路
2.了解html结构布局
3.掌握简便的定位方法
4.学会用 原生JavaScript代码和JQuery两种方式实现依次显示效果', '2018-09-02 20:37:43.446497', '2018-08-12 23:48:36.881901');
INSERT INTO "public"."tb_imooc_course" VALUES (798, 155, '揭秘PHP模糊查询技术', '初级', 22088, 'PHP模糊查询分析与实现，本课程从本质上揭密PHP模糊查询技术', 'PHP', 'https://img3.mukewang.com/570763450001534706000338-240-135.jpg', 'https://www.imooc.com/learn/155', '1小时39分', 9.3, 9.4, 9.2, 9.3, '简介：在大数据时代，在繁杂的信息中，在PHP的开发过程中，通过什么技术能像“剪枝蔓，立主脑”一样快速准确地查找客户想要的信息？这技术就是PHP模糊查询技术，本课程就从本质上揭密PHP模糊查询技术。', 'HappyLiu', 'https://img2.mukewang.com/53c7905e0001232706700502-80-80.jpg', 'PHP开发工程师', '1、熟练掌握PHP开发语言基础语法
2、对MYSQL有一定的基础', '1、模糊查询的基本概念以及模糊查询的实用性（生活中和项目中）			
2、模糊查询技术中基础数据数据的建立			
3、PHP中的模糊查询技术语法			
4、PHP模糊查询技术案例之PHP用户查询器			
5、模糊查询关键词高亮以及进阶的模糊查询知识介绍			', '2018-09-02 20:37:42.518697', '2018-08-12 23:48:34.715882');
INSERT INTO "public"."tb_imooc_course" VALUES (823, 44, '表单验证', '中级', 51824, '表单验证是JavaScript中的高级选项之一，输入框的验证', 'JavaScript', 'https://img3.mukewang.com/57466b3b0001091106000338-240-135.jpg', 'https://www.imooc.com/learn/44', '57分', 9.8, 9.9, 9.8, 9.7, '简介：表单验证是JavaScript中的高级选项之一。本案例基于淘宝网用户注册界面，讲解正则表达式（regex）的基本用法，通过对“用户名输入框”、“密码输入框”及“确认密码输入框”的验证分析，扎实掌握正则表达式（regex）和交互设计的相关知识。', '江老实', 'https://img1.mukewang.com/5269cc190001854d14561456-80-80.jpg', 'Web前端工程师', '1.需要具备JavaScript基础知识；
2.对HTML及CSS内容熟悉，必须的哦！', '1.您将掌握正则表达式的基本用法！
2.学会对表单如何进行验证', '2018-09-02 20:37:43.726304', '2018-08-12 23:48:36.912888');
INSERT INTO "public"."tb_imooc_course" VALUES (797, 134, 'HTML5+CSS3实现“共嗨世界杯”', '中级', 24352, '献给男神的世界杯作品，看世界杯，学前端知识，两不耽误', 'CSS3', 'https://img3.mukewang.com/5707771f0001f51006000338-240-135.jpg', 'https://www.imooc.com/learn/134', '1小时55分', 9.4, 9.6, 9.5, 9, '简介：使用 css3 来制作一个足球场地，以及世界杯对战图，看世界杯，学前端知识，两不耽误。', 'Scott', 'https://img1.mukewang.com/5344e6d10001867401400140-80-80.jpg', NULL, '如果你了解 less ，知道一些本地搭建服务的方式最好，这样可以无缝的跟上课程，另外 对于css3 的一些基础知识要有所了解，比如圆角 border-radius， 渐变过渡 transition 等。
', '学到世界杯和足球场上的一些规则，最重要的是，能学习如何将虚拟的 css 样式真实的反馈到拟物的场景中，一些小特效的处理方式，less 声明变量和类的方式，嵌套的类声明等，以提高编程效率。', '2018-09-02 20:37:41.310331', '2018-08-12 23:48:34.538576');
INSERT INTO "public"."tb_imooc_course" VALUES (813, 6, '导航条菜单的制作', '初级', 116458, '水平、垂直、圆角导航条菜单，让您的技术探索之路更高效', 'HTML/CSS', 'https://img3.mukewang.com/57466cc50001a02006000338-240-135.jpg', 'https://www.imooc.com/learn/6', '23分', 9.5, 9.8, 9.4, 9.4, '简介：每个网站都包含导航菜单，它们形式多样。本课程将由浅到深的介绍各种常见的导航条菜单的制作方法，从垂直方向的到水平方向的，再到用CSS样式的圆角导航条，最后讲解动态交互功能且具有拉伸效果的导航条菜单，对比着学习以上内容让您的技术探索之路更高效！', '江老实', 'https://img1.mukewang.com/5269cc190001854d14561456-80-80.jpg', 'Web前端工程师', '1.熟悉html知识，尤其对<ul>和<a>比较熟悉；
2.对css样式比较了解；
3.掌握JavaScript和jQuery基础知识。', '轻松制作出各种形式的网站导航条菜单', '2018-09-02 20:37:46.644214', '2018-08-12 23:48:35.992099');
INSERT INTO "public"."tb_imooc_course" VALUES (810, 131, '图形手势识别', '初级', 23619, '图形手势识别的实现算法，包括量角器算法、相似度原理及应用方法', 'iOS', 'https://img.mukewang.com/570779cb0001e83c06000338-240-135.jpg', 'https://www.imooc.com/learn/131', '45分', 9.7, 9.5, 9.6, 10, '简介：随着智能触控设备的发展，图形手势也越来越多的应用在设备中，比如很多游戏中支持的手势。那么，图形手势识别的实现算法是怎样的？本课程将带领你来揭秘。', '大城小胖', 'https://img2.mukewang.com/52e0ebbc000130fb16041604-80-80.jpg', 'Web前端工程师', '只要你对图形手势的识别算法有兴趣，都可以来学习噢！', '你将了解到$1算法、量角器算法、相似度的原理及应用方法', '2018-09-02 20:37:47.217403', '2018-08-12 23:48:35.821262');
INSERT INTO "public"."tb_imooc_course" VALUES (57, 1027, 'iOS手机深度学习', '高级', 1789, '初识手机深度学习，掌握更高级研发技能。', 'iOS', 'https://img4.mukewang.com/5b5b00d10001d05205400300-240-135.jpg', 'https://www.imooc.com/learn/1027', '1小时55分', 8.7, 10, 6, 10, '简介：了解深度学习的应用场景，以及常用的一些函数，并通过简单案例初步尝试手机深度学习。', '逆风i', 'https://img3.mukewang.com/54584f0b000124f802200220-80-80.jpg', '移动开发工程师', '1、熟练掌握iOS基本开发技能
2、对深度学习有简单的了解', '1、常用激活函数
2、简单感知机模型的实现
3、了解BP算法', '2018-09-02 20:36:43.730353', '2018-08-12 23:47:30.238795');
INSERT INTO "public"."tb_imooc_course" VALUES (59, 1029, '个性化推荐算法实战入门必修课', '中级', 3653, '带您初窥个性化推荐算法落地实战的门径', '机器学习, 算法与数据结构', 'https://img3.mukewang.com/5b5d88e5000151ec06000338-240-135.jpg', 'https://www.imooc.com/learn/1029', '2小时23分', 10, 10, 10, 10, '简介：现如今个性化推荐算法主导的产品越来越多，无论信息流，电商等等场景下个性化推荐算法都起到了非常重要的作用。在此大背景下，结合我多年工业界实战得出的经验。本实战课程前导课程将会给大家讲述工业界推荐算法的大体架构，以及个性化召回算法的几种工业界落地架构。并选取一种相对快速接受的算法协同过滤来从理论公式与代码落地的角度。完成实战个性化推荐算法。最后与大家一同展望未来的实战课程会带给大家哪些精彩。', 'david_beck', 'https://img2.mukewang.com/5728587e00012fc401000100-80-80.jpg', '算法工程师', '1、对高数公式的基本掌握，矩阵知识的大体了解。
2、对python编程语法的熟悉，常用数据结构的掌握。
', '1.	工业界个性化推荐算法的主流程与个性化推荐召回算法的主落地架构。
2.	协同过滤的理论与代码实战。
3.	工业界对个性化推荐算法的在线离线评估。
', '2018-09-02 20:36:43.974206', '2018-08-12 23:47:30.463584');
INSERT INTO "public"."tb_imooc_course" VALUES (869, 31, '图片展示特效', '初级', 28110, '使用JS技术实现图片展示效果效果，让网页增彩是否心动，快快加入我们', 'JavaScript', 'https://img2.mukewang.com/574676ae000108c706000338-240-135.jpg', 'https://www.imooc.com/learn/31', '47分', 9.6, 9.7, 9.5, 9.4, '简介：在电商时代，为了吸引用户，图片展示是各大网站必不可少的特效，本课程带领我们从分析展示特效原理，掌握如何进行图片定位，使用JS技术实现图片展示效果效果，并对代码进行深度优化，让你不再为图片展示特效而发愁。', 'vivian', 'https://img3.mukewang.com/528abd50000195b120422848-80-80.jpg', 'Web前端工程师', '1. 您至少具备HTML/CSS基础知识。
2. 您至少具备JavaScript基础知识。
', '1. 理解各种展示效果的原理；
2. 灵活运用position定位属性，实现位置的变化；
3. 掌握for 和 while 循环语句使用方法；
4. 兼容不同浏览器，设置透明属性；
5. 多种方法实现效果，并对代码进行逐步优化。', '2018-09-02 20:37:44.211485', '2018-08-12 23:48:40.552419');
INSERT INTO "public"."tb_imooc_course" VALUES (807, 46, 'HTML5离线应用实战演练', '中级', 46049, '一起来剖析离线阅读的技术吧，掌握如何搭建一个离线的Web App框架', 'Html5', 'https://img3.mukewang.com/570affb1000141a106000338-240-135.jpg', 'https://www.imooc.com/learn/46', '1小时30分', 9.6, 9.8, 9.5, 9.6, '简介：本次课程将探索FT Web App背后的神秘面纱，并且手把手教您如何利用AppCache，localStorage等HTML5技术打造一个真正提供离线阅读体验的RSS阅读器,你将掌握如何搭建一个离线的Web App的框架。', 'Murphy', 'https://img4.mukewang.com/52610a460001972707820900-80-80.jpg', '移动开发工程师', '本课程为高级课程，需要您掌握JavaScript基础知识，熟悉jQuery，并对AppCache和localStorage有基本了解。
', '在学习本课程之后，您可以学会如何搭建一个离线Web App的框架，并利用这个框架实现自己的应用。
', '2018-09-02 20:37:46.215632', '2018-08-12 23:48:35.449646');
INSERT INTO "public"."tb_imooc_course" VALUES (5, 1035, 'Flutter开发第一步-Dart编程语言入门 ', '入门', 3011, 'Flutter开发语言-Dart编程入门，为大家上手及进阶Flutter打下坚实基础。', 'Android, iOS', 'https://img.mukewang.com/5b6947970001d34d06000338-240-135.jpg', 'https://www.imooc.com/learn/1035', '2小时20分', 9.3, 8.4, 9.6, 10, '简介：Flutter作为移动跨平台框架，无论是效率、质量及性能都有非常好的表现，前景不可估量。工欲善其事，必先利其器,Dart就是Flutter开发的利器，课程将从基础入门，带你一步一步打磨出手中的利器。', '雷宇_', 'https://img.mukewang.com/5aa0d97c00014aae02000200-80-80.jpg', '全栈工程师', '本课程主要介绍Dart基础知识，如果有其它编程语言经验的同学，学习起来会事半功倍。对有经验的同学，入门课程会比较轻松，不过也要多加练习哦~，学习完本课程后，大家可以自行加深Dart学习，向面向对象发起一波冲刺~（https://gitee.com/LeiYu-Io）', '1、Dart的应用场景有哪些
2、Dart开发环境如何配置
3、Dart中常用的数据类型
4、Dart中的运算符及控制流
5、Dart中的方法以及闭包等
', '2018-09-02 20:36:40.907411', '2018-08-12 23:47:26.700934');
INSERT INTO "public"."tb_imooc_course" VALUES (27, 983, 'Android与WebView的js交互', '中级', 5017, '本课程主要介绍Android与WebView的js交互、如何使用Chrome调试。', 'Android', 'https://img2.mukewang.com/5ae19cf20001e95506000338-240-135.jpg', 'https://www.imooc.com/learn/983', '46分', 10, 10, 10, 10, '简介：本课程为大家来了WebView的使用场景及常见交互，通过讲解演示让大家掌握WebView对java方法的调用以及实现js方法的调用参数的传递，还会介绍如何使用chrome浏览器调试客户端中网页的方法，以及注意的事项，最后会为大家分析WebView的js交互中常犯的几个错误。', 'liusiqian020...', 'https://img2.mukewang.com/5472eca50001101801800180-80-80.jpg', '移动开发工程师', '需要有一定Android基础，并能够了解WebView的基本使用。', '1、Webview调用Java方法；2、Android调用js方法；3、如何使用Chrome调试；4、js交互中常见的一些错误。', '2018-09-02 20:36:44.256967', '2018-08-12 23:47:28.055442');
INSERT INTO "public"."tb_imooc_course" VALUES (171, 866, '前端性能优化-通用的缓存SDK', '中级', 17034, '学习前端性能优化，突破工作瓶颈！', 'JavaScript, Node.js', 'https://img.mukewang.com/598026ce0001263d06000338-240-135.jpg', 'https://www.imooc.com/learn/866', '4小时28分', 9.7, 9.8, 9.7, 9.6, '简介：性能优化成神之路的必看之课，是前端性能优化基础简介的后续篇章，作为一门前端性能优化的进阶课程，本课程介绍了常用的性能优化方法，以及老师自己在工作中摸索出来的，并且在大厂使用的课程。', 'CC老师', 'https://img4.mukewang.com/56839f8400019a4c02890267-80-80.jpg', '全栈工程师', '1、对html基础知识已经掌握。
2、最好看过上一节前端性能优化的基础认知
', '1、一个针对实际存在项目做的优化 
2、业内通用的必须掌握的优化方案
3、高性能dom的实战
4、图片加载的原理，以及优化方案
5、自定义一个高性能的播放器。 
6、一起开发一个所有项目都能使用的性能优化工具类。 
7、从一个bug的出现到，分析、解决的方法论 
', '2018-09-02 20:36:51.148604', '2018-08-12 23:47:40.040652');
INSERT INTO "public"."tb_imooc_course" VALUES (169, 864, 'Python 全栈案例初体验', '初级', 39699, '带你领略全栈开发的速度与激情', 'Python', 'https://img.mukewang.com/598287cd00014dc606000338-240-135.jpg', 'https://www.imooc.com/learn/864', '2小时56分', 9.3, 9.1, 9.2, 9.6, '简介：随着 web 开发越来越成熟，各种框架开始越发轻量好用，后端开发可以通过一些简单的包生成前端页面，前端开发也可以通过 node.js 这类新生代来参与后端开发。前后端开发注定会有一个交集，即最近几年风靡各类创业公司的全栈开发。本课以 python 为例，告诉大家如何通过 python + flask + html/css/js 来进行全栈开发，还有一个简单的实战案例哦。', 'Python_Quant', 'https://img3.mukewang.com/57bfd0a60001529e01400140-80-80.jpg', '全栈工程师', '1、了解 Python／html ／css ／js 的最基础知识
2、了解 web 开发
', '1、Python 基本语法以及使用技巧
2、如何使用 Flask 框架开发后台服务器 
3、HTML / CSS / JS 的基础，关系和前端应用程序架构 
4、WEB 应用从设计，开发，发布 到 维护，一条路走到底 
5、一个实战案例，从 0 到 1 教你体验全栈开发
', '2018-09-02 20:36:51.105921', '2018-08-12 23:47:40.002469');
INSERT INTO "public"."tb_imooc_course" VALUES (100, 929, 'AWS云计算—面向开发者的云解决方案', '中级', 1922, 'AWS资深技术大咖和技术大神们讲解云计算在不同应用场景下的使用案例。', '云计算', 'https://img2.mukewang.com/5a38d8a30001bc9a06000338-240-135.jpg', 'https://www.imooc.com/learn/929', '2小时18分', 10, 10, 10, 10, '简介：本次UG用户社区专场带你了看AWS资深技术大咖和技术大神们讲解云计算在不同应用场景下的使用案例，现场还有技术demo。同时来自日本的AWS用户社区分享经验，AWS资深架构师讲解无服务器应用开发深入理解。AWS 技术峰会2018 中国站将在上海、北京、深圳三地盛大召开，报名链接：https://awssummit.cn?tc=1s016B2uQi', '亚马逊AWS', 'https://img1.mukewang.com/59c2078900017f7603000300-80-80.jpg', '全栈工程师', 'AWS技术峰会是亚马逊 AWS 每年在全球众多城市巡回举办的大型云服务技术盛会。
本次峰会将设立自动化运维技术、大数据技术、IOT、企业级服务、人工智能等多个技术主题分会场，邀请到涉及以上各领域的行业大咖。
该课程对于AWS基础服务需要有一定的了解', '1.架构搭建的设计思路、目前的高可用架构、操作中遇到的问题和解决方案
2.AWS在日本乡村的最佳实践
3.通过将EMR与Apache Kylin结合，可实现根据业务数据量和增长趋势动态伸缩的数据分析集群
4.日本AWS用户社区经验分享
5.深入探讨无服务器开发人员所需要了解的最佳实践', '2018-09-02 20:36:50.004141', '2018-08-12 23:47:33.835389');
INSERT INTO "public"."tb_imooc_course" VALUES (139, 917, 'CDN与智能DNS原理和应用', '中级', 12606, 'CDN可以让用户更快速访问我们的互联网内容，也可以支持更大规模的访问量', 'PHP', 'https://img3.mukewang.com/5a0ae20a000173ed06000338-240-135.jpg', 'https://www.imooc.com/learn/917', '2小时 0分', 9.4, 9.4, 9.4, 9.2, '简介：CDN是内容分发网络，利用部署大量网络节点，通过服务器缓存加速，让用户可以就近同运营商网络，更快的访问到我们的互联网产品，可以简单快速的让我们的互联网产品支持海量的并发请求。智能DNS比传统DNS更好的地方就是能够基于IP信息给不同的用户最合适的服务器IP，可以给用户提供更好的网络服务。本课程详细讲解了CDN的原理和具体使用，也有详细介绍DNS解析的完整过程，再具体介绍了智能DNS的实现原理和作用，让大家对这些基础服务有更加深入的了解。', '一凡Sir', 'https://img.mukewang.com/5458655200013d9802200220-80-80.jpg', 'PHP开发工程师', '1.课程难度属于初级
2.对互联网开发有兴趣，对网站、接口开发有所了解
3.对网络有基本的了解，知道服务器、缓存、IP这些基本概念。', '1、CDN是什么 
2、CDN的原理和适用范围
3、CDN的功能和使用 
4、DNS解析的全过程
5、智能DNS的原理和作用
6、更好的运用到自己的产品中', '2018-09-02 20:36:49.27925', '2018-08-12 23:47:37.351523');
INSERT INTO "public"."tb_imooc_course" VALUES (369, 632, 'Java高并发秒杀API之高并发优化', '高级', 61127, 'Java实现高并发秒杀API的第四门课，小伙伴一定可以从中受益', 'Java', 'https://img3.mukewang.com/5733e336000141f806000338-240-135.jpg', 'https://www.imooc.com/learn/632', '1小时45分', 9.7, 10, 9.7, 9.5, '简介：本门课程是《Java实现高并发秒杀API》系列课程的第四门课，主要介绍秒杀的高并发优化，老师首先带大家分析了秒杀的瓶颈所在，然后针对瓶颈进行了优化。相信通过老师的详细介绍，小伙伴们一定可以从中受益！', 'yijun zhang', 'https://img1.mukewang.com/57286e0a0001c22203280318-80-80.jpg', 'JAVA开发工程师', '《Java高并发秒杀API》是系列课程，共四门课，分别为业务分析和DAO层，Service层，Web层和高并发优化。本门课程是第二门课程，学习前需要了解如下知识： 
1、精通JavaWeb基础 
2、熟悉SpringMVC、Spring和MyBatis框架
3、了解事务和存储过程的概念', '1、掌握秒杀业务
2、能够进行SpringMVC+Spring+MyBatis的整合开发 
3、能够对秒杀业务的瓶颈有所了解
4、能够实现对秒杀业务的优化', '2018-09-02 20:37:09.748781', '2018-08-12 23:47:55.867849');
INSERT INTO "public"."tb_imooc_course" VALUES (318, 731, '不一样的RecyclerView优雅实现复杂列表布局', '初级', 16024, '教你更快捷简单的实现复杂列表布局，快来掌握她吧，她等着你哦', 'Android', 'https://img1.mukewang.com/57fb733900012d9d06000338-240-135.jpg', 'https://www.imooc.com/learn/731', '1小时34分', 9.7, 9.7, 9.7, 9.7, '简介：本课程介绍一种，Android5.0之后可取代之前ListView和GridView新的列表控件RecyclerView，告诉大家一些常见的复杂布局，如何用该控件更快捷优雅的实现出来，以及她和之前列表控件的区别和联系，快来掌握她吧，她等着你哦！
慕课网Android讨论群② 170368200', 'Abner_泥阿布...', 'https://img1.mukewang.com/545847490001582602200220-80-80.jpg', '移动开发工程师', '需掌握安卓基本四大组件的基础知识，特别是ListView和GridView的用法', '学习这门课后可以更简单快捷的完成一些复杂列表布局的实现
慕课网Android讨论群② 170368200', '2018-09-02 20:37:02.328629', '2018-08-12 23:47:52.05866');
INSERT INTO "public"."tb_imooc_course" VALUES (406, 587, 'Java高并发秒杀API之业务分析与DAO层', '高级', 66883, 'Java实现高并发秒杀API的第一门课，还等什么，赶快来加入吧', 'Java', 'https://img3.mukewang.com/572bff580001c7a006000338-240-135.jpg', 'https://www.imooc.com/learn/587', '2小时26分', 9.8, 10, 9.7, 9.7, '简介：高并发和秒杀都是当今的热门词汇，如何使用Java框架实现高并发秒杀API是该系列课程要研究的内容。秒杀系列课程分为四门，本门课程是第一门，主要对秒杀业务进行分析设计，以及DAO层的实现。课程中使用了流行的框架组合SpringMVC+Spring+MyBatis，还等什么，赶快来加入吧！', 'yijun zhang', 'https://img.mukewang.com/57286e0a0001c22203280318-80-80.jpg', 'JAVA开发工程师', '《Java高并发秒杀API》是系列课程，共四门课，分别为业务分析和DAO层，Service层，Web层和高并发优化。本门课程是第一门课程，学习前需要了解如下知识：
1、精通JavaWeb基础
2、熟悉SpringMVC、Spring和MyBatis框架', '1、掌握秒杀业务
2、能够进行SpringMVC+Spring+MyBatis的整合开发
3、能够进行秒杀业务DAO层的设计与实现', '2018-09-02 20:37:09.123689', '2018-08-12 23:47:58.695723');
INSERT INTO "public"."tb_imooc_course" VALUES (242, 794, 'Web UI设计理论入门', '入门', 57507, 'WebUI设计的入门教程和基础知识，为webUI设计提供扎实的理论基础', '设计基础, APPUI设计', 'https://img3.mukewang.com/587728990001d33206000338-240-135.jpg', 'https://www.imooc.com/learn/794', '2小时24分', 9.6, 9.6, 9.6, 9.5, '简介：网页在我们生活中已经占据了重要地位,相对于移动端，web的优点是信息展示更具多样性。我们在课程中为大家详细的剖析web的特征属性、构成、设计逻辑等，为webUI设计提供扎实的理论基础。', 'Pizza.W', 'https://img2.mukewang.com/586f64f30001ae4f11101110-80-80.jpg', NULL, '本课程是webUI的入门课程
理论与赏析为主，没有门槛', '1、教你如何从设计的角度去了解web			
2、明白设计思路，我们更多的使用脑而不是用软件去做设计			
3、设计流程和设计规范的重要性			
4、学会分析页面，逆向解析作品			', '2018-09-02 20:36:58.664111', '2018-08-12 23:47:45.763311');
INSERT INTO "public"."tb_imooc_course" VALUES (197, 739, '即时通讯项目里面的语音处理-基础实现篇', '初级', 6145, '安卓声音录制与播放功能，实现类似微信的语音消息发送与播放', 'Android', 'https://img2.mukewang.com/5858d4400001fb9d06000338-240-135.jpg', 'https://www.imooc.com/learn/739', '1小时14分', 10, 10, 10, 10, '简介：安卓声音录制与播放功能实现，包括录制到文件、播放文件，可以实现类似于微信的语音消息发送与播放，还包括录制到字节流，从字节流播放，可以实现视频直播/实时对讲功能中的声音录制和播放。
Android大牛齐聚之地，这里总有人为你答疑解惑！慕课网Android讨论群 556384357', 'Piasy', 'https://img1.mukewang.com/57a1cbc70001754503000300-80-80.jpg', '移动开发工程师', '本课程不包括安卓开发基础知识的讲解，所以学习本课程之前需要有一定的安卓开发基础。课程主要包括安卓系统录音和播放 API 的使用、ExecutorService 实现多线程处理、Handler 实现后台线程与主线程通信等内容，其中多线程处理、异常处理是核心内容。   讨论群 556384357', '除了能学到安卓系统录音和播放 API 的使用、ExecutorService 实现多线程处理、Handler 实现后台线程与主线程通信等内容，课程中编写代码的过程中还包括多线程处理、异常处理，后面这些内容在实际工作中都是很有价值的，培养自己处理异常的思路。 讨论群 556384357', '2018-09-02 20:36:59.097621', '2018-08-12 23:47:42.204796');
INSERT INTO "public"."tb_imooc_course" VALUES (401, 648, 'Android动感系列-扫一扫', '中级', 34911, '动感系列-扫一扫，本教程代领大家学习二维码的解析与生成', 'Android', 'https://img2.mukewang.com/5705d15f0001998006000338-240-135.jpg', 'https://www.imooc.com/learn/648', '33分', 9.7, 9.8, 9.7, 9.6, '简介：QR Code码，是由Denso公司于1994年9月研制的一种矩阵二维码符号，它具有一维条码及其它二维条码所具有的信息容量大、可靠性高、可表示汉字及图象多种文字信息、保密防伪性强等优点。本门课程老师将带领大家学习二维码的解析与生成。', 'eclipse_xu', 'https://img3.mukewang.com/54cb9b5f0001827024483264-80-80.jpg', '移动开发工程师', '本课程为中级案例课，小伙伴们需要具备一定的Android基础。', '1、QR Code码（二维码）介绍
2、二维码解析
3、二维码生成
4、使用总结', '2018-09-02 20:37:08.659526', '2018-08-12 23:47:58.04936');
INSERT INTO "public"."tb_imooc_course" VALUES (604, 366, 'CSS3+JS 实现超炫的散列画廊特效', '中级', 41938, '实现更自由的切换照片的画廊效果，打造超酷的切换动画', 'HTML/CSS, JavaScript', 'https://img1.mukewang.com/552b2ab00001b9a306000338-240-135.jpg', 'https://www.imooc.com/learn/366', '2小时22分', 9.7, 9.9, 9.6, 9.7, '简介：在网页中传统的照片查看一直是网格-列表，现在我们可以突破这种限制，获得和现实中一样的自由。随意摆放的照片，超酷的切换动画；还能翻开照片，查看图片简介。
本课程主要有两个部分；前半部分以原理分析和前端界面实现为主，后半部分则是脚本来处理的一些特效与总结。', 'Lyn', 'https://img2.mukewang.com/53216f440001f5a904330473-80-80.jpg', 'Web前端工程师', '1、了解标签的用法，图片资源的引用
2、了解选择符的概念，以及基本的样式属性作用（宽、高等）
3、了解函数的调用，了解 DOM 元素的获取及其属性的读写
4、对程序的基本概念已经掌握，如变量，流程控制（条件，循环）
', '1、方法论：VCD 分解法
2、平面旋转、3D旋转、样式过度动画
3、如何用 JS+HTML 实现最简单的模板功能
4、简单的id,class DOM选择器 实现
5、JS 算法：范围内随机数生成
6、数组、DOM 元素集合的遍历
7、FF 和 Chrome 样式兼容的方法
', '2018-09-02 20:37:26.610922', '2018-08-12 23:48:16.527489');
INSERT INTO "public"."tb_imooc_course" VALUES (666, 341, '如何使用高德定位进行开发', '高级', 18133, '教你迅速使用定位进行基于LBS的开发，便捷为应用程序添加定位功能', 'Android', 'https://img4.mukewang.com/550a87da000168db06000338-240-135.jpg', 'https://www.imooc.com/learn/341', '1小时 4分', 9.5, 9.7, 9.8, 9, '简介：本课程为大家带来如何使用定位进行基于LBS的开发。高德Android定位SDK提供了LBS定位功能，你可以便捷地为应用程序添加定位功能。同时能够智能判断用户场景，以更快的响应速度、更低耗电量和网络流量实现精准的定位功能。通过本课程的学习你可以动手实现你的第一个地图应用！', '高德LBS开放...', 'https://img1.mukewang.com/54a209d000013b9c03450360-80-80.jpg', NULL, '1、计算机、软件专业等小白用户或在校生
2、互联网从业人员', '1、如何搭建Android工程，并下载导入高德的SDK
2、如何使用高德定位SDK中的定位功能、地理围栏功能、天气预报功能
3、结合地图SDK与搜索SDK，作出一个属于自己的APP', '2018-09-02 20:37:28.997712', '2018-08-12 23:48:22.118621');
INSERT INTO "public"."tb_imooc_course" VALUES (691, 270, 'Avalon探索之旅基础教程---- 简单绑定', '中级', 14595, '前端迷你MVVM框架avalon的入门视频教程，赶快加入吧', 'JavaScript', 'https://img2.mukewang.com/5705d1fa0001479606000338-240-135.jpg', 'https://www.imooc.com/learn/270', '3小时26分', 10, 10, 10, 10, '简介：Avalon是一款迷你的MVVM框架，其API设计非常简单易用，兼容IE6-8，更好维护，大大提高生产力，并且另有特殊版本支持移动开发。现已在去哪儿网，百度，盛大等大公司使用，大家也快快加入avalon行列，感受一下大公司是如何写代码的神秘!', '司徒正美', 'https://img.mukewang.com/549d354a0001f37201400140-80-80.jpg', '其它', 'Avalon虽然是提倡不要操作DOM，但用户还需通过其他途径学习DOM知识。此外，JavaScript基础知识还是掌握一二 ！', '1、Avalon的历史
2、Avalon与其他MVVM框架的比较
3、Avalon的绑定机制与各种指令的实战
4、Avalon工程化实距
5、Avalon的验证组件
6、如何编写一个Avalon组件', '2018-09-02 20:37:34.20149', '2018-08-12 23:48:24.057462');
INSERT INTO "public"."tb_imooc_course" VALUES (538, 469, 'Think 2015 PHP 技术峰会(北京站）', '初级', 24733, 'PHP领域顶级技术盛会，最新php技术分享，了解最新行业动向', 'PHP', 'https://img3.mukewang.com/57466b4d000180a606000338-240-135.jpg', 'https://www.imooc.com/learn/469', '5小时48分', 9.7, 10, 9.4, 9.7, '简介：PHP7的新特性与高性能；PHP的异步并行编程；PHP安全编程；用PHP在SAE上创业；手机微博V5项目经验分享；公众号开发；程序员职业规划；Php技术创业', 'Think技术社...', 'https://img4.mukewang.com/55c1a7f400011d3d04930280-80-80.jpg', NULL, 'PHP7按计划将会在今年10月发布正式版, 包括大量的新特性和性能提升，其中最大的亮点当属性能提升，大量测试显示PHP7比PHP5.6在各种常见的开源项目中有60%以上到最高200%的性能提升。
', '最新php技术分享，了解最新行业动向', '2018-09-02 20:37:23.306064', '2018-08-12 23:48:11.060768');
INSERT INTO "public"."tb_imooc_course" VALUES (656, 287, 'JAVA实现对称加密', '中级', 26539, '为你带来软硬件通用的对称加密算法，以及他们的应用范围', 'Java', 'https://img.mukewang.com/54af7a6d000164df06000338-240-135.jpg', 'https://www.imooc.com/learn/287', '52分', 9.6, 9.7, 9.6, 9.5, '简介：本门课程是Java加解密系列课程的第三门课，学习前需要学习《Java实现Base64加密》。对称加密指加密和解密使用相同密钥的加密算法。本课程中将介绍DES、3重DES、AES和PBE几种常见的对称加密算法在Java中的实现，以及他们的应用范围。', 'moocer', 'https://img4.mukewang.com/58db190e0001643d02000200-80-80.jpg', 'JAVA开发工程师', '1、需具备Java面向对象的基础
2、需学习《JAVA实现Base64加密》课程的第一章，了解Java加解密的基础知识。奉上链接：http://www.imooc.com/learn/285', '1、掌握对称加密算法在Java中的实现
2、了解对称加密算法的应用场景', '2018-09-02 20:37:27.610635', '2018-08-12 23:48:21.173603');
INSERT INTO "public"."tb_imooc_course" VALUES (560, 408, 'shell编程之条件判断与流程控制', '初级', 29705, 'Linux shell实用案例学习，一定会使你Linux运维能力再次提高', 'Linux', 'https://img3.mukewang.com/5704ce550001ce3606000338-240-135.jpg', 'https://www.imooc.com/learn/408', '2小时42分', 9.8, 10, 9.7, 9.7, '简介：本门课程是《Tony老师聊shell》系列课程的最后一篇，多个典型案例贯穿整个课程。课程内容包括：条件判断式语句、单分支if语句、双分支if语句、多分支if语句、case语句、for循环、while循环和until循环等。学习完本门课程一定会使你的Linux运维能力再次提高。', 'Tony', 'https://img.mukewang.com/53f5aae6000129aa01400140-80-80.jpg', 'Linux系统工程师', '小伙伴们，学习本课程前需要掌握Linux常用命令，并学习《Tony老师聊shell》系列的前四门课程呦！', '1、掌握条件判断和流程控制的基本语句
2、通过大量案例的学习，掌握shell编程思想
3、体会shell编程在Linux运维中的重要作用', '2018-09-02 20:37:25.574525', '2018-08-12 23:48:12.995344');
INSERT INTO "public"."tb_imooc_course" VALUES (768, 198, '高仿微信5.2.1主界面及消息提醒', '中级', 58025, '本课程将带领大家从无到有的实现微信的整体界面', 'Android', 'https://img1.mukewang.com/541698a40001d1c306000338-240-135.jpg', 'https://www.imooc.com/learn/198', '1小时 0分', 9.8, 9.9, 9.9, 9.6, '简介：本课程将带领大家从无到有的实现微信的整体界面和ViewPager指示器跟随手指拖动的动画效果。课程包含ViewPager与FragmentPagerAdapter的使用，通过分析OnPageChangeListener手动控制指示器的动画效果，以及如何将BadgeView作为消息通知用于我们的项目之中', 'hyman', 'https://img.mukewang.com/54169c430001face18403264-80-80.jpg', '移动开发工程师', '本课程对于学习者要求较高，最少也要达到以下两个要求，首先，对Java语言的掌握，必须熟悉、熟练、精通；其次，要对Android中的布局达到小成的境界，熟悉Android常用API；最后再加一条，如果想很好的跟上老师的讲课速度，那么好好熟悉一下Eclipse IDE吧', '1、BadgeView的使用
2、ViewPager与FragmentPagerAdapter结合制作主界面
3、ViewPager的OnPageChangeListener的详细介绍
4、如何巧妙利用onPageScrolled方法，完美实现指示器的动画效果', '2018-09-02 20:37:39.316451', '2018-08-12 23:48:31.907285');
INSERT INTO "public"."tb_imooc_course" VALUES (752, 175, ' Linux达人养成计划 I', '入门', 321770, 'Linux入门视频教程，以通俗易懂的语言带你感受linux之美', 'Linux', 'https://img.mukewang.com/57035f110001a57906000338-240-135.jpg', 'https://www.imooc.com/learn/175', '6小时 0分', 9.6, 9.9, 9.6, 9.4, '简介：本课程以通俗易懂的语言、风趣幽默的实例、清晰严谨的逻辑介绍了Linux的基础内容。课程以CentOS操作系统为例，为你带来Linux的简介、系统安装和常用命令等内容。让您在轻松的氛围中感受到Linux之美。', 'Tony', 'https://img4.mukewang.com/53f5aae6000129aa01400140-80-80.jpg', 'Linux系统工程师', '本课程作为Linux的入门课程，适合所有对Linux感兴趣的小伙伴们。零基础学习！还等什么，赶快来加入吧！', '通过学习本门课程，您将有如下收获：
1、全面了解Linux的前世今生
2、能够独立安装Linux操作系统
3、从对Linux常用命令的一无所知，到运用自如
4、与shell编程基础亲密接触
', '2018-09-02 20:37:35.320854', '2018-08-12 23:48:30.539291');
INSERT INTO "public"."tb_imooc_course" VALUES (805, 149, 'Swift Weather APP', '中级', 35340, '本课程将带领大家使用Swift语言开发一个完整的天气 iOS APP', 'iOS', 'https://img2.mukewang.com/570778c900017ca306000338-240-135.jpg', 'https://www.imooc.com/learn/149', '1小时22分', 9.5, 9.9, 9.5, 9.1, '简介：本课程将带领大家使用Swift语言开发一个完整的天气 iOS APP。同时大家能够学习到Interface Builder、CocoaPods、Core Location、AFNetworking的使用，以及如何通过Swift调用Objective-C组件，如何通过IBOutlets更新View。', '林永坚Jake...', 'https://img.mukewang.com/53bce3ba00014c3932644928-80-80.jpg', '其它', '1、具有C#、Javascript、Ruby等语言开发经验的iOS初学者；
2、具有Objective-C开发经验的iOS开发者。', '1、如何新建Swift APP;
2、Interface Builder、CocoaPods、Core Location、AFNetworking的使用；
3、如何通过Swift调用Objective-C组件；
4、如何通过IBOutlets更新View.', '2018-09-02 20:37:42.833859', '2018-08-12 23:48:35.350259');
INSERT INTO "public"."tb_imooc_course" VALUES (777, 194, '性能优化之MySQL优化', '中级', 77220, '了解MySQL数据库优化的方法和技巧，在课程中共同探讨一起学习吧', 'MySQL', 'https://img2.mukewang.com/570767fd0001970e06000338-240-135.jpg', 'https://www.imooc.com/learn/194', '2小时 0分', 9.5, 9.8, 9.5, 9.3, '简介：目前数据库是大多数系统进行数据存储的基础组件，数据库的效率对系统的稳定和效率有着至关重要的影响；为了有更好的用户体验，数据库的优化显得异常重要。那么我们要从那些方面对我们的数据库进行优化呢？让我们在这门课程中共同探讨一起学习吧！', 'sqlercn', 'https://img2.mukewang.com/5ad7144100017a5e07410741-80-80.jpg', '数据库工程师', '想要学好这门课程，你需要具备MySQL数据库的基本知识，如果具有相关的工作经验并且希望能提升工作技能的话，这门课程就再适合不过了。', '1、了解数据库优化的各个方面的方法和技巧
2、如何对SQL语句和索引进行优化
3、如何对数据库结构及运行环境进行优化', '2018-09-02 20:37:42.283728', '2018-08-12 23:48:32.7043');
INSERT INTO "public"."tb_imooc_course" VALUES (704, 243, '用字体在网页中画ICON图标', '初级', 39712, 'Font+HTML/CSS将会做到，小巧的体积、更快的加载速度', 'HTML/CSS', 'https://img4.mukewang.com/5705d1300001a79c06000338-240-135.jpg', 'https://www.imooc.com/learn/243', '1小时 4分', 9.7, 9.9, 9.7, 9.6, '简介：有一个岗位，叫前端开发；有一种技术，叫 CSS Sprite；有一种突破，叫font+HTML/CSS。移动互联网时代的到来，让CSS Sprite似乎有点Hold不住。Font+HTML/CSS将会做到，小巧的体积、更快的加载速度、任意改变颜色和尺寸，完美的兼容性，是你在网页中画小图标的不二之选。', '至尊玉', 'https://img3.mukewang.com/576a936b0001240c04190419-80-80.jpg', 'Web前端工程师', '本课程是CSS中级课程
1.具备HTML、CSS前端开发基础知识；
2.熟悉@font-face、font-family字体相关属性；
3.了解:before伪元素，content属性；', '1.eot、woff、ttf、svg字体格式
2.使用IcoMoon App管理字体图标
3.在网页中用字体画小图标
4.轻松改变图标大小及颜色等CSS属性，就像操作文本一样简单。', '2018-09-02 20:37:33.623439', '2018-08-12 23:48:26.275475');
INSERT INTO "public"."tb_imooc_course" VALUES (774, 181, 'Linux Guide for Developers', '入门', 52740, 'Linux命令行世界生存指南，让本课程成为你初 Linux世界的向导', 'Linux', 'https://img4.mukewang.com/53fed63700018a9306000338-240-135.jpg', 'https://www.imooc.com/learn/181', '1小时28分', 9.6, 9.9, 9.4, 9.4, '简介：linux 的知识点浩如烟海，其实作为开发者，日常用到的只是里面的一小部分。但是初学者是很难去判别哪些知识是超范围的，那么就让本课程成为你初入 Linux 世界的一个向导。', 'happypeter', 'https://img1.mukewang.com/53f55a3c000159c812700952-80-80.jpg', 'JS工程师', '普通开发者，有一定的计算机基础知识的初级用户，对linux有基本认知。', '课程以 ubuntu 为例，讲解面向开发者的 Linux 命令行使用技巧，努力总结出全部对开发者有用的知识点，同时力求不讲那些很少用到的内容。让你看完本课程后，就可以充满自信的来使用 Linux 命令行了。', '2018-09-02 20:37:39.358537', '2018-08-12 23:48:32.341041');

-- ----------------------------
-- Indexes structure for table tb_imooc_course
-- ----------------------------
CREATE UNIQUE INDEX "uni_cid" ON "public"."tb_imooc_course" USING btree (
  "course_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table tb_imooc_course
-- ----------------------------
ALTER TABLE "public"."tb_imooc_course" ADD CONSTRAINT "tb_imooc_course_pkey" PRIMARY KEY ("id");
