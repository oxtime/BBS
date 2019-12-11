/*
Navicat MySQL Data Transfer

Source Server         : mysql
Source Server Version : 50642
Source Host           : localhost:3306
Source Database       : shiting

Target Server Type    : MYSQL
Target Server Version : 50642
File Encoding         : 65001

Date: 2019-12-11 18:19:29
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for app01_article
-- ----------------------------
DROP TABLE IF EXISTS `app01_article`;
CREATE TABLE `app01_article` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(64) NOT NULL,
  `desc` varchar(255) NOT NULL,
  `content` longtext NOT NULL,
  `create_time` date NOT NULL,
  `comment_num` bigint(20) NOT NULL,
  `up_num` bigint(20) NOT NULL,
  `down_num` bigint(20) NOT NULL,
  `blog_id` int(11) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `app01_article_blog_id_8dd74ae6_fk_app01_blog_id` (`blog_id`),
  KEY `app01_article_category_id_acb2c466_fk_app01_category_id` (`category_id`),
  CONSTRAINT `app01_article_blog_id_8dd74ae6_fk_app01_blog_id` FOREIGN KEY (`blog_id`) REFERENCES `app01_blog` (`id`),
  CONSTRAINT `app01_article_category_id_acb2c466_fk_app01_category_id` FOREIGN KEY (`category_id`) REFERENCES `app01_category` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of app01_article
-- ----------------------------
INSERT INTO `app01_article` VALUES ('1', '开心笑话', '某人到商店买点钞机，挑了两台最贵的，', '1、某人到商店买点钞机，挑了两台最贵的，同时问了一下老板为什么这种型号的贵一些，老板告诉他因为这是全智能语音型的。\r\n\r\n　　付款时他让老板就用这两台点钞机点钞，两台点钞机都报出了准确的数字，他认为语音功能还不错，但没看出什么智能来，老板说你以后用就知道了，他付完款后把点钞机放到车后座，开车回公司。\r\n\r\n　　在路上，他突然听到一台点钞机对另一台说话了：“喂，传说中被别人卖了还帮别人数钱的是不是就是咱哥们碍…”\r\n\r\n　　2、小明和老婆去超市购物，看见卖烤鸡的柜台有人排队。\r\n\r\n　　老婆：“有人排队肯定还可以，买一只尝尝吧。”\r\n\r\n　　小明：“现在人多，过一会儿再来，可能就不用排队了说不定还能抢个板凳或者沙发呢。”\r\n\r\n　　老婆一想也有点道理，两人就先去买其它的。采购基本结束，老婆找个地方坐下来先休息一会，叫小明去看看烤鸡那边还有多少人排队。\r\n\r\n　　不一会儿，老婆听见小明喊她：“快过来，我抢到沙发了！ ”老婆过去一看就怒了：“晕哦，分页沙发啊！ ”', '2019-12-11', '0', '0', '0', '1', '1');
INSERT INTO `app01_article` VALUES ('2', '大河网笑话', '\r\n	1、某人到商店买点钞机，挑了两台最贵的，同时问了一下老板为什么这种型号的贵一些，老板告诉他因为这是全智能语音型的。\r\n\n\r\n	  付款时他让老板就用这两台点钞机点钞，两台点钞机都报出了准确的数字，他认为语音功能还不错，但没看出什么智能来，老板说你以后用就知道了，他付完款后把点钞机放到车后座，开', '<p style=\'font-size:14px;font-family:\"vertical-align:baseline;color:#333333;background-color:#FFFFFF;\'>\r\n	1、某人到商店买点钞机，挑了两台最贵的，同时问了一下老板为什么这种型号的贵一些，老板告诉他因为这是全智能语音型的。\r\n</p>\n<p style=\'font-size:14px;font-family:\"vertical-align:baseline;color:#333333;background-color:#FFFFFF;\'>\r\n	  付款时他让老板就用这两台点钞机点钞，两台点钞机都报出了准确的数字，他认为语音功能还不错，但没看出什么智能来，老板说你以后用就知道了，他付完款后把点钞机放到车后座，开车回公司。\r\n</p>\n<p style=\'font-size:14px;font-family:\"vertical-align:baseline;color:#333333;background-color:#FFFFFF;\'>\r\n	  在路上，他突然听到一台点钞机对另一台说话了：“喂，传说中被别人卖了还帮别人数钱的是不是就是咱哥们碍…”\r\n</p>\n<p style=\'font-size:14px;font-family:\"vertical-align:baseline;color:#333333;background-color:#FFFFFF;\'>\r\n	  2、小明和老婆去超市购物，看见卖烤<a href=\"http://news.dahe.cn/2017/02-10/108253049.html\" target=\"_blank\">鸡</a>的柜台有人排队。\r\n</p>\n<p style=\'font-size:14px;font-family:\"vertical-align:baseline;color:#333333;background-color:#FFFFFF;\'>\r\n	  老婆：“有人排队肯定还可以，买一只尝尝吧。”\r\n</p>\n<p style=\'font-size:14px;font-family:\"vertical-align:baseline;color:#333333;background-color:#FFFFFF;\'>\r\n	  小明：“现在人多，过一会儿再来，可能就不用排队了说不定还能抢个板凳或者沙发呢。”\r\n</p>\n<p style=\'font-size:14px;font-family:\"vertical-align:baseline;color:#333333;background-color:#FFFFFF;\'>\r\n	  老婆一想也有点道理，两人就先去买其它的。采购基本结束，老婆找个地方坐下来先休息一会，叫小明去看看烤鸡那边还有多少人排队。\r\n</p>\n<p style=\'font-size:14px;font-family:\"vertical-align:baseline;color:#333333;background-color:#FFFFFF;\'>\r\n	  不一会儿，老婆听见小明喊她：“快过来，我抢到沙发了！ ”老婆过去一看就怒了：“晕哦，分页沙发啊！ ”\r\n</p>', '2019-12-11', '1', '1', '0', '1', null);
INSERT INTO `app01_article` VALUES ('3', '极品幽默语录集锦', '1、善良的人们总是说我单纯，其实我知道他们只是不好意思说我SB。	  2、年轻时候，如果爱，别说永远，说珍惜。	  3、TT，以前我一直知道是个浏览器，后来知道还是另一种东西的名字。	  4、小伙：“先生，我真希望明年还能来祝贺您的99岁生日。” 老人：“小伙子，', '<p style=\'font-size:14px;font-family:\"vertical-align:baseline;color:#333333;background-color:#FFFFFF;\'>\r\n	1、善良的人们总是说我单纯，其实我知道他们只是不好意思说我SB。\r\n</p>\r\n<p style=\'font-size:14px;font-family:\"vertical-align:baseline;color:#333333;background-color:#FFFFFF;\'>\r\n	  2、年轻时候，如果爱，别说永远，说珍惜。\r\n</p>\r\n<p style=\'font-size:14px;font-family:\"vertical-align:baseline;color:#333333;background-color:#FFFFFF;\'>\r\n	  3、TT，以前我一直知道是个浏览器，后来知道还是另一种东西的名字。\r\n</p>\r\n<p style=\'font-size:14px;font-family:\"vertical-align:baseline;color:#333333;background-color:#FFFFFF;\'>\r\n	  4、小伙：“先生，我真希望明年还能来祝贺您的99岁生日。” 老人：“小伙子，你这么年轻，身体又这么壮，活到明年应该是没问题的。”\r\n</p>\r\n<p style=\'font-size:14px;font-family:\"vertical-align:baseline;color:#333333;background-color:#FFFFFF;\'>\r\n	  5、爱像圆周率，无限不循环…\r\n</p>\r\n<p style=\'font-size:14px;font-family:\"vertical-align:baseline;color:#333333;background-color:#FFFFFF;\'>\r\n	  6、很多人连自己的邻居都不认识，却对地球外有没有外星人极为关心。\r\n</p>\r\n<p style=\'font-size:14px;font-family:\"vertical-align:baseline;color:#333333;background-color:#FFFFFF;\'>\r\n	  7、鸟在笼中，恨关羽不能张飞；人处世上，要八戒更须悟空。\r\n</p>\r\n<p style=\'font-size:14px;font-family:\"vertical-align:baseline;color:#333333;background-color:#FFFFFF;\'>\r\n	  8、怀旧……不是因为那个时代多么好，而是那个时候，你年轻。\r\n</p>\r\n<p style=\'font-size:14px;font-family:\"vertical-align:baseline;color:#333333;background-color:#FFFFFF;\'>\r\n	  9、一个小和尚问方丈：“师父，我念经的时候可以吸烟吗？”方丈怒道：“不行！ ”另一小和尚问：“师父，我吸烟的时候可以念经吗？”方丈：“当然可以！ ”…\r\n</p>\r\n<p style=\'font-size:14px;font-family:\"vertical-align:baseline;color:#333333;background-color:#FFFFFF;\'>\r\n	  11、牛对熊说：农夫要我耕田犁地，山民要我驮货拉车，农贸市场要我皮和肉；股票市场要我拼命跑，近来我常常跌到，力不从心，刚刚又过了一个倒霉的本命年，老弟，以后的事就交给你了，拜托。\r\n</p>\r\n<p style=\'font-size:14px;font-family:\"vertical-align:baseline;color:#333333;background-color:#FFFFFF;\'>\r\n	  12、炒股是项健身运动：赚钱的时候欣喜狂呼——锻炼心肺，赔钱的时候顿足捶胸——锻炼肢体，震荡的时候犹豫彷徨——锻炼脑筋消耗热量。提议列入正式常规体锻项目~~\r\n</p>\r\n<p style=\'font-size:14px;font-family:\"vertical-align:baseline;color:#333333;background-color:#FFFFFF;\'>\r\n	  13、女人的胸bu和房子一样，公摊面积不能太大！\r\n</p>\r\n<p style=\'font-size:14px;font-family:\"vertical-align:baseline;color:#333333;background-color:#FFFFFF;\'>\r\n	  14、与领导一起干100件好事，不如与领导干一件坏事。\r\n</p>\r\n<p style=\'font-size:14px;font-family:\"vertical-align:baseline;color:#333333;background-color:#FFFFFF;\'>\r\n	  15、当你用手指指着别人的时候，请不要忘记，你自己的三根手指正在指向自己。\r\n</p>\r\n<p style=\'font-size:14px;font-family:\"vertical-align:baseline;color:#333333;background-color:#FFFFFF;\'>\r\n	  16、女人评判男人是看他开的车。男人评判汽车是看它是否吸引女人。\r\n</p>\r\n<p style=\'font-size:14px;font-family:\"vertical-align:baseline;color:#333333;background-color:#FFFFFF;\'>\r\n	  17、一家超市半夜失窃，小偷除了洗发水和保险套外，全部洗劫一空。于是警察得出结论：小偷是个上了年纪的秃子！\r\n</p>\r\n<p style=\'font-size:14px;font-family:\"vertical-align:baseline;color:#333333;background-color:#FFFFFF;\'>\r\n	  18、每晚我都向上帝祈祷：主啊,赐我五百万吧!很多年过去了,虽然我的愿望没有实现,但我由此证明了上帝确实不懂中文,而且那么多年还没学会~\r\n</p>\r\n<p style=\'font-size:14px;font-family:\"vertical-align:baseline;color:#333333;background-color:#FFFFFF;\'>\r\n	  19、导演：“真正的艺术是无价的！ ”演员：“我们要为艺术献身！ ”记者：“能先从被窝里面出来拍几张照片吗？”\r\n</p>\r\n<p style=\'font-size:14px;font-family:\"vertical-align:baseline;color:#333333;background-color:#FFFFFF;\'>\r\n	  20、《三国演义》写了一次变革；《水浒传》写了一次冲动；《红楼梦》写了一场恋爱；《西游记》写了一次旅游。\r\n</p>\r\n<p style=\'font-size:14px;font-family:\"vertical-align:baseline;color:#333333;background-color:#FFFFFF;\'>\r\n	  21、老家亲戚来北京，一起去高级饭店吃饭要加收15%服务费；服务员服务态度十分好，送水果送银耳羹还送纪念品。亲戚很开心问服务员你们还送什么啊？服务员满脸笑容说：一会我们会送您出去。\r\n</p>\r\n<p style=\'font-size:14px;font-family:\"vertical-align:baseline;color:#333333;background-color:#FFFFFF;\'>\r\n	  22、婚后男人就像桌布，只有吃饭的时候才出现。\r\n</p>\r\n<p style=\'font-size:14px;font-family:\"vertical-align:baseline;color:#333333;background-color:#FFFFFF;\'>\r\n	  23、美国士兵条例：别忘了你手上的武器是由最低价的承包商得标制造的。\r\n</p>\r\n<p style=\'font-size:14px;font-family:\"vertical-align:baseline;color:#333333;background-color:#FFFFFF;\'>\r\n	  24、有人问毕加索，你的画，我怎么看不懂啊？毕加索问他，你听过鸟叫吗？听过。好听吗？好听。你懂吗？\r\n</p>\r\n<p style=\'font-size:14px;font-family:\"vertical-align:baseline;color:#333333;background-color:#FFFFFF;\'>\r\n	  25、两个人之间的感情就像织毛衣，建立的时候一针一线，小心而漫长。拆除的时候只要轻轻一拉。\r\n</p>\r\n<p style=\'font-size:14px;font-family:\"vertical-align:baseline;color:#333333;background-color:#FFFFFF;\'>\r\n	  26、蜜蜂整日忙碌，受到赞扬，蚊子不停奔波，人见人打。~~~多么忙不重要，为什么忙才重要。\r\n</p>', '2019-12-11', '0', '0', '0', '2', '2');
INSERT INTO `app01_article` VALUES ('4', '生活中的冷笑话', '\r\n	1、一醉汉歪歪斜斜地走进一家商店要买一只花瓶。见柜台上有一倒扣的杯子,拿起来看了看，奇怪地说：\r\n\n\r\n	  “这花瓶怎么没口?”将杯子翻过来看,又说：\r\n\n\r\n	  “怎么连底儿也没有？！ ”\r\n\n\r\n	  2、猴山管理员：现在正值交配季节，猴子们都到洞里去了。靓女：假如我丢些花生米，它们会', '<p style=\'font-size:14px;font-family:\"vertical-align:baseline;color:#333333;background-color:#FFFFFF;\'>\r\n	1、一醉汉歪歪斜斜地走进一家商店要买一只花瓶。见柜台上有一倒扣的杯子,拿起来看了看，奇怪地说：\r\n</p>\n<p style=\'font-size:14px;font-family:\"vertical-align:baseline;color:#333333;background-color:#FFFFFF;\'>\r\n	  “这花瓶怎么没口?”将杯子翻过来看,又说：\r\n</p>\n<p style=\'font-size:14px;font-family:\"vertical-align:baseline;color:#333333;background-color:#FFFFFF;\'>\r\n	  “怎么连底儿也没有？！ ”\r\n</p>\n<p style=\'font-size:14px;font-family:\"vertical-align:baseline;color:#333333;background-color:#FFFFFF;\'>\r\n	  2、猴山管理员：现在正值交配季节，猴子们都到洞里去了。靓女：假如我丢些花生米，它们会出来吗？管理员：若换成你，你会出来吗？\r\n</p>\n<p style=\'font-size:14px;font-family:\"vertical-align:baseline;color:#333333;background-color:#FFFFFF;\'>\r\n	  3、一个刚刚到公司工作的小伙子抱着一搭文件站在碎纸机前犯愣，这时老板的秘书经过，看到后就说：“真是菜鸟，连这个都不会用”\r\n</p>\n<p style=\'font-size:14px;font-family:\"vertical-align:baseline;color:#333333;background-color:#FFFFFF;\'>\r\n	  说罢抢过文件，放到机器里按动了电源,很快文件就被切碎了。\r\n</p>\n<p style=\'font-size:14px;font-family:\"vertical-align:baseline;color:#333333;background-color:#FFFFFF;\'>\r\n	  这时小伙子说：“真是谢谢您了,可是复印件从哪里出来？”\r\n</p>\n<p style=\'font-size:14px;font-family:\"vertical-align:baseline;color:#333333;background-color:#FFFFFF;\'>\r\n	  女秘书：..........\r\n</p>\n<p style=\'font-size:14px;font-family:\"vertical-align:baseline;color:#333333;background-color:#FFFFFF;\'>\r\n	  4、小明恶作剧地将村里可以移动的公共厕所推入河里！事后，自觉不对，以为向爸爸认错，应该可以得到原谅！没想到爸爸狠狠的打了他一顿。\r\n</p>\n<p style=\'font-size:14px;font-family:\"vertical-align:baseline;color:#333333;background-color:#FFFFFF;\'>\r\n	  小明很委屈的说道：“当年华盛顿把他爸爸种的苹果树砍掉后，向他爸爸认错，他爸爸原谅了他！可你为什么不原谅我呢？”\r\n</p>\n<p style=\'font-size:14px;font-family:\"vertical-align:baseline;color:#333333;background-color:#FFFFFF;\'>\r\n	  爸爸气愤的说道：“当年华盛顿砍树的时候他爸爸没有在上面！ ”\r\n</p>', '2019-12-11', '0', '0', '0', '3', null);
INSERT INTO `app01_article` VALUES ('11', '超有意思的冷笑话', '\r\n	1、有个人每次打保龄球常打两百多分，\r\n\n\r\n	  也常打出火鸡，\r\n\n\r\n	  一天他跟朋友去打保龄球，\r\n\n\r\n	  连打了六局都没打出火鸡，\r\n\n\r\n	  于是他心情就很不好...\r\n\n\r\n	  骑车回家时，\r\n\n\r\n	  就一直在想今天怎么没打火鸡呢？\r\n\n\r\n	  骑到一半时遇到红灯', '<p style=\'font-size:14px;font-family:\"vertical-align:baseline;color:#333333;background-color:#FFFFFF;\'>\r\n	1、有个人每次打保龄球常打两百多分，\r\n</p>\n<p style=\'font-size:14px;font-family:\"vertical-align:baseline;color:#333333;background-color:#FFFFFF;\'>\r\n	  也常打出火<a href=\"http://news.dahe.cn/2017/02-10/108253049.html\" target=\"_blank\">鸡</a>，\r\n</p>\n<p style=\'font-size:14px;font-family:\"vertical-align:baseline;color:#333333;background-color:#FFFFFF;\'>\r\n	  一天他跟朋友去打保龄球，\r\n</p>\n<p style=\'font-size:14px;font-family:\"vertical-align:baseline;color:#333333;background-color:#FFFFFF;\'>\r\n	  连打了六局都没打出火鸡，\r\n</p>\n<p style=\'font-size:14px;font-family:\"vertical-align:baseline;color:#333333;background-color:#FFFFFF;\'>\r\n	  于是他心情就很不好...\r\n</p>\n<p style=\'font-size:14px;font-family:\"vertical-align:baseline;color:#333333;background-color:#FFFFFF;\'>\r\n	  骑车回家时，\r\n</p>\n<p style=\'font-size:14px;font-family:\"vertical-align:baseline;color:#333333;background-color:#FFFFFF;\'>\r\n	  就一直在想今天怎么没打火鸡呢？\r\n</p>\n<p style=\'font-size:14px;font-family:\"vertical-align:baseline;color:#333333;background-color:#FFFFFF;\'>\r\n	  骑到一半时遇到红灯他就停下来，\r\n</p>\n<p style=\'font-size:14px;font-family:\"vertical-align:baseline;color:#333333;background-color:#FFFFFF;\'>\r\n	  那时旁边有辆汽车也停下来了，\r\n</p>\n<p style=\'font-size:14px;font-family:\"vertical-align:baseline;color:#333333;background-color:#FFFFFF;\'>\r\n	  驾驶摇下车窗问道：\r\n</p>\n<p style=\'font-size:14px;font-family:\"vertical-align:baseline;color:#333333;background-color:#FFFFFF;\'>\r\n	  先生，有没有打火机呀？\r\n</p>\n<p style=\'font-size:14px;font-family:\"vertical-align:baseline;color:#333333;background-color:#FFFFFF;\'>\r\n	  他很不爽的回答说：没有啦！没打火鸡关你屁事呀！ .\r\n</p>', '2019-12-11', '0', '0', '0', '11', null);
INSERT INTO `app01_article` VALUES ('12', '幽默小笑话几则', '\r\n	1、有一动物园新来了一只狮子，在吃食的时候，其他的狮子都吃牛排，这只新狮子只分配到一根香蕉，起初这只新来的狮子以为自己资浅，不以为意，隔了几天，它实在受不了，就开口问了其中一只狮子：为什么你们每天吃饭都吃牛排，而我都吃香蕉？\r\n\n\r\n	  资深的狮子回答说：因为我们这个动物园，狮子的人事冻结，', '<p style=\'font-size:14px;font-family:\"vertical-align:baseline;color:#333333;background-color:#FFFFFF;\'>\r\n	1、有一动物园新来了一只狮子，在吃食的时候，其他的狮子都吃牛排，这只新狮子只分配到一根香蕉，起初这只新来的狮子以为自己资浅，不以为意，隔了几天，它实在受不了，就开口问了其中一只狮子：为什么你们每天吃饭都吃牛排，而我都吃香蕉？\r\n</p>\n<p style=\'font-size:14px;font-family:\"vertical-align:baseline;color:#333333;background-color:#FFFFFF;\'>\r\n	  资深的狮子回答说：因为我们这个动物园，狮子的人事冻结，你顶的是猴子的缺。\r\n</p>\n<p style=\'font-size:14px;font-family:\"vertical-align:baseline;color:#333333;background-color:#FFFFFF;\'>\r\n	  2、偷儿甲：昨晚吓死我了，我得去弄副眼镜！\r\n</p>\n<p style=\'font-size:14px;font-family:\"vertical-align:baseline;color:#333333;background-color:#FFFFFF;\'>\r\n	  偷儿乙：怎么了？啥东西你看不清楚？\r\n</p>\n<p style=\'font-size:14px;font-family:\"vertical-align:baseline;color:#333333;background-color:#FFFFFF;\'>\r\n	  偷儿甲：昨晚我潜入一户人家，正在开保险箱时，突然发出很大的声音，原来我转的不是保险箱......是收音机！\r\n</p>\n<p style=\'font-size:14px;font-family:\"vertical-align:baseline;color:#333333;background-color:#FFFFFF;\'>\r\n	  3、动物园的一头大象死了，一个管理员在旁边痛哭。\r\n</p>\n<p style=\'font-size:14px;font-family:\"vertical-align:baseline;color:#333333;background-color:#FFFFFF;\'>\r\n	  游客都说，他平日一定很喜欢这只象，所以不忍大象死去。\r\n</p>\n<p style=\'font-size:14px;font-family:\"vertical-align:baseline;color:#333333;background-color:#FFFFFF;\'>\r\n	  一个知道内情的人说：\"不，他要负责为大象挖个墓坑。\"\r\n</p>\n<p style=\'font-size:14px;font-family:\"vertical-align:baseline;color:#333333;background-color:#FFFFFF;\'>\r\n	  4、今天偶然和一个MM聊天\r\n</p>\n<p style=\'font-size:14px;font-family:\"vertical-align:baseline;color:#333333;background-color:#FFFFFF;\'>\r\n	  我问她长什么样\r\n</p>\n<p style=\'font-size:14px;font-family:\"vertical-align:baseline;color:#333333;background-color:#FFFFFF;\'>\r\n	  她说身高168，长头发\r\n</p>\n<p style=\'font-size:14px;font-family:\"vertical-align:baseline;color:#333333;background-color:#FFFFFF;\'>\r\n	  我说能不能说得具体一点\r\n</p>\n<p style=\'font-size:14px;font-family:\"vertical-align:baseline;color:#333333;background-color:#FFFFFF;\'>\r\n	  她说这还不具体？\r\n</p>\n<p style=\'font-size:14px;font-family:\"vertical-align:baseline;color:#333333;background-color:#FFFFFF;\'>\r\n	  我说当然啊，找一根168的拖把，然后倒过来不就和你一样了？！\r\n</p>\n<p style=\'font-size:14px;font-family:\"vertical-align:baseline;color:#333333;background-color:#FFFFFF;\'>\r\n	  然后她直接把我拉黑了···\r\n</p>\n<p style=\'font-size:14px;font-family:\"vertical-align:baseline;color:#333333;background-color:#FFFFFF;\'>\r\n	  5、飞机机械故障延误了，过了一会又可以走了，旅客问为什么？乘务员说\"没事儿，就换了一个敢开的机长。\"\r\n</p>', '2019-12-11', '0', '0', '0', '12', null);

-- ----------------------------
-- Table structure for app01_article2tag
-- ----------------------------
DROP TABLE IF EXISTS `app01_article2tag`;
CREATE TABLE `app01_article2tag` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `article_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `app01_article2tag_article_id_35c1561c_fk_app01_article_id` (`article_id`),
  KEY `app01_article2tag_tag_id_d24dfcf8_fk_app01_tag_id` (`tag_id`),
  CONSTRAINT `app01_article2tag_article_id_35c1561c_fk_app01_article_id` FOREIGN KEY (`article_id`) REFERENCES `app01_article` (`id`),
  CONSTRAINT `app01_article2tag_tag_id_d24dfcf8_fk_app01_tag_id` FOREIGN KEY (`tag_id`) REFERENCES `app01_tag` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of app01_article2tag
-- ----------------------------
INSERT INTO `app01_article2tag` VALUES ('1', '1', '1');
INSERT INTO `app01_article2tag` VALUES ('2', '2', '1');

-- ----------------------------
-- Table structure for app01_blog
-- ----------------------------
DROP TABLE IF EXISTS `app01_blog`;
CREATE TABLE `app01_blog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `site_name` varchar(32) NOT NULL,
  `site_title` varchar(64) NOT NULL,
  `site_theme` varchar(64) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of app01_blog
-- ----------------------------
INSERT INTO `app01_blog` VALUES ('1', 'gyl的主页', '长路漫漫，唯剑作伴', 'gly.css');
INSERT INTO `app01_blog` VALUES ('2', 'qqq', '没有签名', 'tom.css');
INSERT INTO `app01_blog` VALUES ('3', 'www', '没有签名', 'www.css');
INSERT INTO `app01_blog` VALUES ('4', 'eee', '没有签名', 'eee.css');
INSERT INTO `app01_blog` VALUES ('11', 'rrr', '没有签名', 'rrr.css');
INSERT INTO `app01_blog` VALUES ('12', 'ttt', '此人很懒,没有签名', 'ttt.css');

-- ----------------------------
-- Table structure for app01_category
-- ----------------------------
DROP TABLE IF EXISTS `app01_category`;
CREATE TABLE `app01_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `blog_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `app01_category_blog_id_5f26cf92_fk_app01_blog_id` (`blog_id`),
  CONSTRAINT `app01_category_blog_id_5f26cf92_fk_app01_blog_id` FOREIGN KEY (`blog_id`) REFERENCES `app01_blog` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of app01_category
-- ----------------------------
INSERT INTO `app01_category` VALUES ('1', '放松', '1');
INSERT INTO `app01_category` VALUES ('2', '笑话', '2');

-- ----------------------------
-- Table structure for app01_comment
-- ----------------------------
DROP TABLE IF EXISTS `app01_comment`;
CREATE TABLE `app01_comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` varchar(255) NOT NULL,
  `create_time` datetime(6) NOT NULL,
  `article_id` int(11) NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `app01_comment_article_id_2bf4f73b_fk_app01_article_id` (`article_id`),
  KEY `app01_comment_parent_id_a8e69cb8_fk_app01_comment_id` (`parent_id`),
  KEY `app01_comment_user_id_7f913f03_fk_app01_userinfo_id` (`user_id`),
  CONSTRAINT `app01_comment_article_id_2bf4f73b_fk_app01_article_id` FOREIGN KEY (`article_id`) REFERENCES `app01_article` (`id`),
  CONSTRAINT `app01_comment_parent_id_a8e69cb8_fk_app01_comment_id` FOREIGN KEY (`parent_id`) REFERENCES `app01_comment` (`id`),
  CONSTRAINT `app01_comment_user_id_7f913f03_fk_app01_userinfo_id` FOREIGN KEY (`user_id`) REFERENCES `app01_userinfo` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of app01_comment
-- ----------------------------
INSERT INTO `app01_comment` VALUES ('1', 'ycfgfcng', '2019-12-11 08:44:43.179838', '2', null, '7');

-- ----------------------------
-- Table structure for app01_tag
-- ----------------------------
DROP TABLE IF EXISTS `app01_tag`;
CREATE TABLE `app01_tag` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `blog_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `app01_tag_blog_id_ce05dc18_fk_app01_blog_id` (`blog_id`),
  CONSTRAINT `app01_tag_blog_id_ce05dc18_fk_app01_blog_id` FOREIGN KEY (`blog_id`) REFERENCES `app01_blog` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of app01_tag
-- ----------------------------
INSERT INTO `app01_tag` VALUES ('1', '笑话', '1');

-- ----------------------------
-- Table structure for app01_upanddown
-- ----------------------------
DROP TABLE IF EXISTS `app01_upanddown`;
CREATE TABLE `app01_upanddown` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `is_up` tinyint(1) NOT NULL,
  `article_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `app01_upanddown_article_id_5a7b1add_fk_app01_article_id` (`article_id`),
  KEY `app01_upanddown_user_id_cdb8debc_fk_app01_userinfo_id` (`user_id`),
  CONSTRAINT `app01_upanddown_article_id_5a7b1add_fk_app01_article_id` FOREIGN KEY (`article_id`) REFERENCES `app01_article` (`id`),
  CONSTRAINT `app01_upanddown_user_id_cdb8debc_fk_app01_userinfo_id` FOREIGN KEY (`user_id`) REFERENCES `app01_userinfo` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of app01_upanddown
-- ----------------------------
INSERT INTO `app01_upanddown` VALUES ('1', '1', '2', '7');

-- ----------------------------
-- Table structure for app01_userinfo
-- ----------------------------
DROP TABLE IF EXISTS `app01_userinfo`;
CREATE TABLE `app01_userinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `phone` bigint(20) DEFAULT NULL,
  `avatar` varchar(100) NOT NULL,
  `create_time` date NOT NULL,
  `blog_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `blog_id` (`blog_id`),
  CONSTRAINT `app01_userinfo_blog_id_12858ea2_fk_app01_blog_id` FOREIGN KEY (`blog_id`) REFERENCES `app01_blog` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of app01_userinfo
-- ----------------------------
INSERT INTO `app01_userinfo` VALUES ('1', 'pbkdf2_sha256$36000$Iw9VCkgkZZLL$IbnE9MVQ9789cnnT2qSmVImmCY0F+dr+Wzi9HcZ4480=', '2019-12-11 07:53:37.781508', '1', 'admin', '', '', '', '1', '1', '2019-12-10 14:52:51.658551', null, 'avatar/default.png', '2019-12-10', null);
INSERT INTO `app01_userinfo` VALUES ('2', 'pbkdf2_sha256$36000$98CqXKRdzaUI$xnC/6N3JBybk2v9hhGpoYs+ij5VrnMvuQY6drCCVSwg=', '2019-12-11 06:29:35.945131', '0', 'gly', '', '', 'xinxi@hnnu.edu.cn', '0', '1', '2019-12-11 03:26:31.000000', '110', 'avatar/cat.jpg', '2019-12-11', '1');
INSERT INTO `app01_userinfo` VALUES ('3', 'pbkdf2_sha256$36000$1NWp5KRw8UUd$QAMdw5y2uM8LkTBrapGk0xf0Vy9D1R0/1ODtLwn5oH4=', '2019-12-11 07:55:30.369947', '0', 'qqq', '', '', '1064620936@qq.com', '0', '1', '2019-12-11 07:44:11.508119', null, 'avatar/f1.jpg', '2019-12-11', '2');
INSERT INTO `app01_userinfo` VALUES ('4', 'pbkdf2_sha256$36000$mMN3bkqix5qw$piB+mmXtnWQHDROjK2ss/qFVEvqXO7uBrBLa+RIBFvY=', '2019-12-11 08:14:56.714659', '0', 'www', '', '', 'b1064620936@163.com', '0', '1', '2019-12-11 08:14:39.911697', null, 'avatar/pyimg.jpg', '2019-12-11', '3');
INSERT INTO `app01_userinfo` VALUES ('5', 'pbkdf2_sha256$36000$PxfctVAqReMk$03ghrMnq/v1L+Ps9tc5kbVXypNbqm5yyNsLvbt0jlGc=', '2019-12-11 08:22:24.450268', '0', 'eee', '', '', 'xinxi@hnnu.edu.cn', '0', '1', '2019-12-11 08:22:11.493526', null, 'avatar/凯.jpg', '2019-12-11', '4');
INSERT INTO `app01_userinfo` VALUES ('7', 'pbkdf2_sha256$36000$vDO62QviziPg$IN63kyoSHgZHlptxYjy3bwMdEM2jsFtAmEPraJdiOVw=', '2019-12-11 08:34:19.990194', '0', 'rrr', '', '', 'b1064620936@163.com', '0', '1', '2019-12-11 08:34:01.906160', null, 'avatar/凯_ecDm0XB.jpg', '2019-12-11', '11');
INSERT INTO `app01_userinfo` VALUES ('8', 'pbkdf2_sha256$36000$zVA1mDtoadf7$6Mi94gbp7QUbJkzdoOPxy6kSlbujJ2ZRP9V8Nl1qAPQ=', '2019-12-11 08:54:38.873910', '0', 'ttt', '', '', '1064620936@qq.com', '0', '1', '2019-12-11 08:54:21.246902', null, 'avatar/ca035b15fe46090ef8db5d57937be3a3.jpg', '2019-12-11', '12');

-- ----------------------------
-- Table structure for app01_userinfo_groups
-- ----------------------------
DROP TABLE IF EXISTS `app01_userinfo_groups`;
CREATE TABLE `app01_userinfo_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userinfo_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `app01_userinfo_groups_userinfo_id_group_id_48ba2aa6_uniq` (`userinfo_id`,`group_id`),
  KEY `app01_userinfo_groups_group_id_30b9b2c4_fk_auth_group_id` (`group_id`),
  CONSTRAINT `app01_userinfo_groups_group_id_30b9b2c4_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `app01_userinfo_groups_userinfo_id_04be482a_fk_app01_userinfo_id` FOREIGN KEY (`userinfo_id`) REFERENCES `app01_userinfo` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of app01_userinfo_groups
-- ----------------------------

-- ----------------------------
-- Table structure for app01_userinfo_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS `app01_userinfo_user_permissions`;
CREATE TABLE `app01_userinfo_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userinfo_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `app01_userinfo_user_perm_userinfo_id_permission_i_8bd06903_uniq` (`userinfo_id`,`permission_id`),
  KEY `app01_userinfo_user__permission_id_826033c9_fk_auth_perm` (`permission_id`),
  CONSTRAINT `app01_userinfo_user__permission_id_826033c9_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `app01_userinfo_user__userinfo_id_3a67a872_fk_app01_use` FOREIGN KEY (`userinfo_id`) REFERENCES `app01_userinfo` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of app01_userinfo_user_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for auth_group
-- ----------------------------
DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_group
-- ----------------------------

-- ----------------------------
-- Table structure for auth_group_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_group_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for auth_permission
-- ----------------------------
DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_permission
-- ----------------------------
INSERT INTO `auth_permission` VALUES ('1', 'Can add log entry', '1', 'add_logentry');
INSERT INTO `auth_permission` VALUES ('2', 'Can change log entry', '1', 'change_logentry');
INSERT INTO `auth_permission` VALUES ('3', 'Can delete log entry', '1', 'delete_logentry');
INSERT INTO `auth_permission` VALUES ('4', 'Can add permission', '2', 'add_permission');
INSERT INTO `auth_permission` VALUES ('5', 'Can change permission', '2', 'change_permission');
INSERT INTO `auth_permission` VALUES ('6', 'Can delete permission', '2', 'delete_permission');
INSERT INTO `auth_permission` VALUES ('7', 'Can add group', '3', 'add_group');
INSERT INTO `auth_permission` VALUES ('8', 'Can change group', '3', 'change_group');
INSERT INTO `auth_permission` VALUES ('9', 'Can delete group', '3', 'delete_group');
INSERT INTO `auth_permission` VALUES ('10', 'Can add content type', '4', 'add_contenttype');
INSERT INTO `auth_permission` VALUES ('11', 'Can change content type', '4', 'change_contenttype');
INSERT INTO `auth_permission` VALUES ('12', 'Can delete content type', '4', 'delete_contenttype');
INSERT INTO `auth_permission` VALUES ('13', 'Can add session', '5', 'add_session');
INSERT INTO `auth_permission` VALUES ('14', 'Can change session', '5', 'change_session');
INSERT INTO `auth_permission` VALUES ('15', 'Can delete session', '5', 'delete_session');
INSERT INTO `auth_permission` VALUES ('16', 'Can add user info', '6', 'add_userinfo');
INSERT INTO `auth_permission` VALUES ('17', 'Can change user info', '6', 'change_userinfo');
INSERT INTO `auth_permission` VALUES ('18', 'Can delete user info', '6', 'delete_userinfo');
INSERT INTO `auth_permission` VALUES ('19', 'Can add article', '7', 'add_article');
INSERT INTO `auth_permission` VALUES ('20', 'Can change article', '7', 'change_article');
INSERT INTO `auth_permission` VALUES ('21', 'Can delete article', '7', 'delete_article');
INSERT INTO `auth_permission` VALUES ('22', 'Can add article2 tag', '8', 'add_article2tag');
INSERT INTO `auth_permission` VALUES ('23', 'Can change article2 tag', '8', 'change_article2tag');
INSERT INTO `auth_permission` VALUES ('24', 'Can delete article2 tag', '8', 'delete_article2tag');
INSERT INTO `auth_permission` VALUES ('25', 'Can add blog', '9', 'add_blog');
INSERT INTO `auth_permission` VALUES ('26', 'Can change blog', '9', 'change_blog');
INSERT INTO `auth_permission` VALUES ('27', 'Can delete blog', '9', 'delete_blog');
INSERT INTO `auth_permission` VALUES ('28', 'Can add category', '10', 'add_category');
INSERT INTO `auth_permission` VALUES ('29', 'Can change category', '10', 'change_category');
INSERT INTO `auth_permission` VALUES ('30', 'Can delete category', '10', 'delete_category');
INSERT INTO `auth_permission` VALUES ('31', 'Can add comment', '11', 'add_comment');
INSERT INTO `auth_permission` VALUES ('32', 'Can change comment', '11', 'change_comment');
INSERT INTO `auth_permission` VALUES ('33', 'Can delete comment', '11', 'delete_comment');
INSERT INTO `auth_permission` VALUES ('34', 'Can add tag', '12', 'add_tag');
INSERT INTO `auth_permission` VALUES ('35', 'Can change tag', '12', 'change_tag');
INSERT INTO `auth_permission` VALUES ('36', 'Can delete tag', '12', 'delete_tag');
INSERT INTO `auth_permission` VALUES ('37', 'Can add up and down', '13', 'add_upanddown');
INSERT INTO `auth_permission` VALUES ('38', 'Can change up and down', '13', 'change_upanddown');
INSERT INTO `auth_permission` VALUES ('39', 'Can delete up and down', '13', 'delete_upanddown');

-- ----------------------------
-- Table structure for django_admin_log
-- ----------------------------
DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_app01_userinfo_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_app01_userinfo_id` FOREIGN KEY (`user_id`) REFERENCES `app01_userinfo` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_admin_log
-- ----------------------------
INSERT INTO `django_admin_log` VALUES ('1', '2019-12-11 03:29:04.575612', '1', 'gyl的主页', '1', '[{\"added\": {}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('2', '2019-12-11 03:29:12.736079', '2', 'gly', '2', '[{\"changed\": {\"fields\": [\"phone\", \"blog\"]}}]', '6', '1');
INSERT INTO `django_admin_log` VALUES ('3', '2019-12-11 03:31:27.674797', '1', '放松', '1', '[{\"added\": {}}]', '10', '1');
INSERT INTO `django_admin_log` VALUES ('4', '2019-12-11 03:31:29.364894', '1', '开心笑话', '1', '[{\"added\": {}}]', '7', '1');
INSERT INTO `django_admin_log` VALUES ('5', '2019-12-11 03:31:55.349380', '1', '笑话', '1', '[{\"added\": {}}]', '12', '1');
INSERT INTO `django_admin_log` VALUES ('6', '2019-12-11 03:32:17.210630', '1', 'Article2Tag object', '1', '[{\"added\": {}}]', '8', '1');
INSERT INTO `django_admin_log` VALUES ('7', '2019-12-11 07:51:17.096461', '2', 'qqq', '1', '[{\"added\": {}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('8', '2019-12-11 07:51:25.849962', '3', '极品幽默语录集锦', '2', '[{\"changed\": {\"fields\": [\"desc\", \"content\", \"blog\", \"category\"]}}]', '7', '1');
INSERT INTO `django_admin_log` VALUES ('9', '2019-12-11 07:54:38.818999', '2', '笑话', '1', '[{\"added\": {}}]', '10', '1');
INSERT INTO `django_admin_log` VALUES ('10', '2019-12-11 07:54:42.076185', '3', '极品幽默语录集锦', '2', '[{\"changed\": {\"fields\": [\"category\"]}}]', '7', '1');

-- ----------------------------
-- Table structure for django_content_type
-- ----------------------------
DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_content_type
-- ----------------------------
INSERT INTO `django_content_type` VALUES ('1', 'admin', 'logentry');
INSERT INTO `django_content_type` VALUES ('7', 'app01', 'article');
INSERT INTO `django_content_type` VALUES ('8', 'app01', 'article2tag');
INSERT INTO `django_content_type` VALUES ('9', 'app01', 'blog');
INSERT INTO `django_content_type` VALUES ('10', 'app01', 'category');
INSERT INTO `django_content_type` VALUES ('11', 'app01', 'comment');
INSERT INTO `django_content_type` VALUES ('12', 'app01', 'tag');
INSERT INTO `django_content_type` VALUES ('13', 'app01', 'upanddown');
INSERT INTO `django_content_type` VALUES ('6', 'app01', 'userinfo');
INSERT INTO `django_content_type` VALUES ('3', 'auth', 'group');
INSERT INTO `django_content_type` VALUES ('2', 'auth', 'permission');
INSERT INTO `django_content_type` VALUES ('4', 'contenttypes', 'contenttype');
INSERT INTO `django_content_type` VALUES ('5', 'sessions', 'session');

-- ----------------------------
-- Table structure for django_migrations
-- ----------------------------
DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_migrations
-- ----------------------------
INSERT INTO `django_migrations` VALUES ('1', 'contenttypes', '0001_initial', '2019-12-10 14:52:35.346618');
INSERT INTO `django_migrations` VALUES ('2', 'contenttypes', '0002_remove_content_type_name', '2019-12-10 14:52:35.469625');
INSERT INTO `django_migrations` VALUES ('3', 'auth', '0001_initial', '2019-12-10 14:52:35.926651');
INSERT INTO `django_migrations` VALUES ('4', 'auth', '0002_alter_permission_name_max_length', '2019-12-10 14:52:36.024657');
INSERT INTO `django_migrations` VALUES ('5', 'auth', '0003_alter_user_email_max_length', '2019-12-10 14:52:36.040658');
INSERT INTO `django_migrations` VALUES ('6', 'auth', '0004_alter_user_username_opts', '2019-12-10 14:52:36.052658');
INSERT INTO `django_migrations` VALUES ('7', 'auth', '0005_alter_user_last_login_null', '2019-12-10 14:52:36.063659');
INSERT INTO `django_migrations` VALUES ('8', 'auth', '0006_require_contenttypes_0002', '2019-12-10 14:52:36.068659');
INSERT INTO `django_migrations` VALUES ('9', 'auth', '0007_alter_validators_add_error_messages', '2019-12-10 14:52:36.078660');
INSERT INTO `django_migrations` VALUES ('10', 'auth', '0008_alter_user_username_max_length', '2019-12-10 14:52:36.090661');
INSERT INTO `django_migrations` VALUES ('11', 'app01', '0001_initial', '2019-12-10 14:52:38.265785');
INSERT INTO `django_migrations` VALUES ('12', 'admin', '0001_initial', '2019-12-10 14:52:38.531800');
INSERT INTO `django_migrations` VALUES ('13', 'admin', '0002_logentry_remove_auto_add', '2019-12-10 14:52:38.550801');
INSERT INTO `django_migrations` VALUES ('14', 'sessions', '0001_initial', '2019-12-10 14:52:38.631806');

-- ----------------------------
-- Table structure for django_session
-- ----------------------------
DROP TABLE IF EXISTS `django_session`;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_session
-- ----------------------------
INSERT INTO `django_session` VALUES ('pjrkwy6e34g5zy7ktnmb6to2hcc132fx', 'Njc4NTcwOTA0ZDQxNmVjNzliZjZmMWIyNWQyNzJiYTExZDg5YmIyMDp7Il9hdXRoX3VzZXJfaWQiOiI4IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5NmQ5ZmU1NGZmOWY0M2NiYjAyMzVkNjQ4YWM0NDQ5Njg1ZWJmYWIxIn0=', '2019-12-25 08:54:38.879911');
