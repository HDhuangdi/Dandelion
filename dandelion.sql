/*
 Navicat Premium Data Transfer

 Source Server         : Mysql
 Source Server Type    : MySQL
 Source Server Version : 100138
 Source Host           : localhost:3306
 Source Schema         : dandelion

 Target Server Type    : MySQL
 Target Server Version : 100138
 File Encoding         : 65001

 Date: 11/03/2020 23:52:38
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for blogs
-- ----------------------------
DROP TABLE IF EXISTS `blogs`;
CREATE TABLE `blogs`  (
  `bid` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `title` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `subtitle` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `author` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `time` datetime(0) NULL DEFAULT NULL,
  `like` int(10) NULL DEFAULT NULL,
  `comments` int(10) NULL DEFAULT NULL,
  `text` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `image` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `image_sm` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `tags` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `href` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`bid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of blogs
-- ----------------------------
INSERT INTO `blogs` VALUES (1, '展示', '看得多，不如知道如何看', '大家也许都知道，学习设计，提高审美，第一件事就是打开优秀作品集，不断给自己的眼睛充电。但是看得多也往往眼花缭乱，在落实到具体项目时，反而会因为选择过多，束手无策。', 'Jason Donoghue', '2020-01-28 00:00:00', 645, 3, '<h4 class=\"font-weight-bold\">Mink yung：柔润的力量</h4>\r\n                                    <p>Mink yung的作品大部分以人物形体为主，线条简洁，弧度清晰。Ta的作品带给人一种柔润感，好像牛奶丝滑一样的感受。作品里的人物形体看起来都很圆润肥大，但是并不臃肿。 色彩明快简洁并且看起来很柔和，运用单色就能支撑起对形象的立体塑造。</p>\r\n                                    <img src=\"images/blogs/blog1_2.png\" class=\"w-100\" alt=\"\">\r\n                                    <img src=\"images/blogs/blog1_3.png\" class=\"w-100\" alt=\"\">\r\n                                    <h6 class=\"font-weight-bold\">观看焦距：</h6>\r\n                                    <p>1、人物圆润的弧形表达，以及单色光影表现的简洁感。</p>\r\n                                    <p>2、在群体人物之间建立起和谐的弧度起伏。 </p>\r\n                                    <p>3、阴影部分的形状表达。</p>\r\n                                    <h6 class=\"font-weight-bold\">食用方法：</h6>\r\n                                    <p>Mink yung的作品非常适合临摹，尤其在临摹时去感受线条和光影表现的巧妙。</p>\r\n                                    <h6 class=\"font-weight-bold\">更多作品：</h6>\r\n                                    <a href=\"https://dribbble.com/alsrud2\"> https://dribbble.com/alsrud2</a>\r\n\r\n                                    <h4 class=\"font-weight-bold mt-5\">Alex Pasquarella：</h4>\r\n                                    <p>体会构成 Alex Pasquarella很擅长风景的描绘，但Ta的风景作品带着非常强烈的简约构成风格，运用简单的矩形似乎就能巧妙拼缀成一个完成的风景演绎，这是他的作品里非常强烈的个人特色和对形状的归纳感知力。</p>\r\n                                    <img src=\"images/blogs/blog1_4.png\" class=\"w-100\" alt=\"\">\r\n                                    <h6 class=\"font-weight-bold\">观看焦距：</h6>\r\n                                    <p>1、简约几何形的造型能力。</p>\r\n                                    <p>2、对构图的层次把握。</p>\r\n                                    <h6 class=\"font-weight-bold\">食用方法：</h6>\r\n                                    <p>学习Alex Pasquarella的作品中的方法，多拿普通的风景照片来“转”为几何表达，再参考作品中的表现方式加以修饰调整。看看你画中的风景和Ta的作品相比有多少差别。</p>\r\n                                    <h6 class=\"font-weight-bold\">更多作品：</h6>\r\n                                    <a href=\" https://dribbble.com/alexpasquarella\">  https://dribbble.com/alexpasquarella</a>', 'images\\blogs\\blog1_title.png', 'images\\blogs\\blog1_title_sm.png', '#分享,#插画', 'http://localhost:8080/single-blog.html?bid=1');
INSERT INTO `blogs` VALUES (2, '教学', '高级感的淬炼：提升UI设计视觉效果的4个角度', '学习UI设计，归根到底，是对拼盘里的内容进行组合装配的过程。今天我们这篇文，就是试着回答经常收到的网友私信关于UI设计学习的问题：我应该怎样提高UI设计呢？', 'Mariana Noe', '2019-10-23 17:35:37', 540, 3, ' <p>很多人对素材库的概念就是付费的图库。毕竟网上现在的付费图库已经手到擒来了。好照片，当然有。佼佼者却不多。\r\n\r\n                                        要用好素材，我们的UI设计就成功了一大半，可以说设计UI的过程，其实就是处理和组合素材的过程。下面我们可以把UI设计所需要的素材大致分为四类：</p>\r\n                                    <h6 class=\"font-weight-bold\">图标元素</h6>\r\n                                    <p>其实现在UI常用的图标，是以简约的线体为主的图标。网上已经有很多免费的UI线体图标给大家下载。如果UI界面不是特殊的行业类图标的话，常用的，比如：用户、主页、推荐、购买、登录、邮箱、电话、客服……等这类图标的可选择量是非常丰富的。\r\n\r\n                                        但是一旦涉及到特殊的图标，网上就未必能找到合适的资源。如果直接拿别人的素材资源，一旦要 用到特殊的图标时，如果找不到同类风格的图标，这时就很棘手。这就需要你能自己根据原有的风格线索来画。</p>\r\n                                        <img src=\"images/blogs/blog2_1.png\" class=\"w-100\" alt=\"\">\r\n                                    <h6 class=\"font-weight-bold\">配图</h6>\r\n                                    <p>配图我们可以分为两类，一类是Banner类的视觉比例偏大的图片。这类图片可以是摄影或者插画，通常，Banner的位置出现在头部，所以要求画质高清且层次丰富。\r\n\r\n                                        单纯靠一张摄影作品就做出头部Banner的时代过去了，取而代之的是插画或者对摄影做更进一步的视觉处理。而且为了传递信息的准确直达，也会添加相应的文字来丰富画面。\r\n                                        \r\n                                        因此，光是对头部Banner的设计，就需要以对待广告设计的态度来承接它的设计。但又与此同时，需要和UI界面中其他的元素风格相呼应。\r\n                                    </p>\r\n                                    <img src=\"images/blogs/blog2_2.png\" class=\"w-100\" alt=\"\">\r\n                                    <p>另一类是其他的图片信息中的配图，这类配图与可能是产品和服务的图片，如果是在介绍类的文字中出现，也需要准确的辅助表现信息。\r\n\r\n                                        还有一种配图的方向，也就是利用插画。直接创作插画就比去网上找图片素材来得简单，表现清楚概念就可以。</p>\r\n                                    <img src=\"images/blogs/blog2_3.png\" class=\"w-100\" alt=\"\">\r\n                                    <p>最后一种配图的风格就是C4D制作的质感特别高级的立体艺术，场景装置，在电商展示产品的时候用的多一些。</p>\r\n                                    <img src=\"images/blogs/blog2_4.png\" class=\"w-100\" alt=\"\">\r\n                                    <p>无论你是用哪一种方式表现配图，摄影、插画、立体……，都需要一门深入，表达得彻底。不是懂得越多越好，而是越深入越好。因此选好一个适合自己的方向非常重要。</p>\r\n                                    <h6 class=\"font-weight-bold\">字体</h6>\r\n                                    <p>字体是很容易被忽略的元素之一，因为对于UI设计，尤其是中文字体更多依赖系统能提供什么字体，没有平面设计那么自由。\r\n\r\n                                        但是UI设计师对字体却要非常小心，尤其是大型的文字，比如Banner内的文字，可以以图片形式出现的文字以及英文，都要注意字形对整个界面的影响。\r\n                                        \r\n                                        现在的字体商用版权也非常严格，因此大家在商用时要特别小心。比较保守的做法就是使用开源的字体，而想要特别一点的比较大的字体时，最好能自己设计。</p>\r\n                                    <img src=\"images/blogs/blog2_5.png\" class=\"w-100\" alt=\"\">\r\n                                    <h6 class=\"font-weight-bold\">视频</h6>\r\n                                    <p>如果是比较简单的UI界面，很少会用到视频。毕竟敢把视频直接放到自己的服务器里给用户看，而不是引用外部资源的平台也不多。视频的流量真心是贵啊~（我自己的个人网站就用过视频，还好一直比较庆幸流量不大）</p>\r\n                                    <h6 class=\"font-weight-bold\">交互</h6>\r\n                                    <p>UI的交互是交给代码实现的，但是UI设计师不会代码，那么就用动效的方式来展示。这样能把交互概念更完整的递交给前端。\r\n\r\n                                        所以UI设计师也需要对交互的体验多一些了解，尤其要对代码实现到哪个程度心中有数。否则你的界面只能是一张图片，只有审美功能，没办法实现成为真正的界面。\r\n                                        \r\n                                        以上几个方向能拿下，基本上你的UI界面设计，就算不能登顶，也能在行业里被众星捧月膜拜好一阵了。\r\n                                        \r\n                                        其实方向大家都知道，缺乏的只是日积月累。</p>', 'images\\blogs\\blog2_title.png', 'images\\blogs\\blog2_title_sm.png', '#学习,#建议', 'http://localhost:8080/single-blog.html?bid=2');
INSERT INTO `blogs` VALUES (3, '方法', '对色彩没感觉？三个方法提高你的色感训练', '色彩是一种完全感性的体验性的认知。它能引发喜怒哀乐、甚至能产生流动的错觉，它和我们的情绪在一起，也和所有不确定性在一起。它有着深厚的物理学的理性基石，然而又和我们的情感关系最为密切。', 'Daniel Doe', '2020-03-01 17:48:47', 564, 3, '<h6 class=\"font-weight-bold\">前言</h6>\r\n                                    <p>关于配色，其实有两个世界，也可以简称为两个阶段。只要我们承认色彩是我们认识外界的基础，那么我们就必定面临这两个世界。第一个世界是理性的世界，在这里色彩被分析、解构。白色光被三棱镜所分解成为不同的色光，每种色光对应着不同的波长。他们可以被波长所命名，站在科学实证分析的角度，我们可以有一种可以掌控甚至是管理好色彩的错觉。然而，在这个世界以外还有另一个世界，也就是感性的世界。\r\n\r\n                                        这也是我们重点要说的经验世界。在这个体验里，色彩是一种完全感性的体验性的认知。它能引发喜怒哀乐、甚至能产生流动的错觉，它和我们的情绪在一起，也和所有不确定性在一起。它有着深厚的物理学的理性基石，然而又和我们的情感关系最为密切。\r\n                                        \r\n                                        色彩被看作是一种非常重要的视觉属性，我在平面设计领域这些年总结下来，无非也就是形与色的游戏而已。因此，配色成为一门课程，也有大量的可学习参考的配色书籍。无论如何，它的重要性不言而喻。它的神秘性却从未降低，光的本质的解释尽管显而易见，也丝毫没有折损这个视觉玩具所带来的乐趣。但是如何提升对于色彩的搭配能力，却是一直都在摸索中的课题。这是由于大家都感觉到，配色绝不是仅仅靠阅读配色相关的书籍，就能一招致胜，反而是在读太多关于理论的知识，有点茫然不知所措。应用时却无法使上力。</p>\r\n                                    <h6 class=\"font-weight-bold\">感官命名法——通过语言系统来深化对色彩的认识</h6>\r\n                                    <p>如果要真正了解色彩，就需要一套非常完整的系统的训练方式。也许很多人包括我自己一开始都对这些方法不以为意，总认为十分简单，甚至觉得这就是小朋友的游戏。然而，我要说，其实我们每个人的色感基础正是儿童时期就形成的。而往往儿童时期由于认识更为纯粹，对于色彩的想象力受到的限制比成人少得多，因此能赋予色彩的深度和广度都比成年人要更为丰富。\r\n\r\n                                        这也是为什么当你看到小朋友们的画作，会由衷赞叹他们的“配色天赋”。</p>\r\n                                        <img src=\"images/blogs/blog3_1.png\" class=\"w-100\" alt=\"\">\r\n                                        <img src=\"images/blogs/blog3_2.png\" class=\"w-100\" alt=\"\">\r\n                                    <p>而除了要进一步斩除缠住我们想象的积习藤蔓，将自己暂时回归到某种“童年白日梦”状态，还需要在运用视觉的同时，再调用到我们的其他四种感官（听觉、嗅觉、味觉、触觉）。\r\n\r\n                                        这个方法是通过你的语言，也就是利用你对某一色彩的命名来扩大你对某一种色彩的感受和体验深度。设想一下，假如你看到一只苹果，也许你就只是看一眼然后狼吞虎咽地把它吃了，事后要你回忆你对“苹果”这个物体的印象，也许你能体会的并不深刻。如果你这一次改变条件，假设你从未见过苹果，这一次你不仅要吃掉苹果，还要给这个水果命名，根据它的外形、滋味等各种属性来对其进行认知。这时，你对苹果的体会将和前一次大大不同。\r\n                                        \r\n                                        所以，这也就是我们要做这个色感训练所需要的事：打开你的颜料盒或者在你的绘图软件中，从你最喜欢的色彩开始一个一个进行重新整理和认识。这里所谓的命名可以天马行空的想象，对每一种色彩可以在名字以外再加上几个描述性的词汇。比如我在这里所做的。\r\n                                    </p>\r\n                                    <img src=\"images/blogs/blog3_3.png\" class=\"w-100\" alt=\"\">\r\n                                    <p>我用了六个词来形容自己对这个颜色的感受。当然你也可以自由的描绘，不必限定在词语，也可以是一句话。在色感训练中，永远没有标准答案，只有真实的答案。只要你给出自己真实的感受，那么对于色感训练的目的就达到了。这意味着，你再也不用跟随外界对于色彩的定义去看待色彩，而是跟随自己的声音。这里我还用了几个意像去描述这个颜色带给我的联想。\r\n\r\n                                        建议你做完这个训练后，保存你的结果。也许等个一年半载，你对某些颜色的感受就会有所改变，通过对比，你会发现你对这些色彩的认识会变得越来越细腻。\r\n                                        \r\n                                        这是一个需要经年累月的练习，但它却十分轻松愉快。每天就像一次娱乐游戏，而你的色感一定会随之提升。</p>\r\n                                    <h6 class=\"font-weight-bold\">色彩家族——透析色彩间关系的基础，任何色彩都不是独立存在</h6>\r\n                                    <p>如果你认识了色环，对色彩有一定的了解，你一定不会否认：任何一种色彩都是由其他色彩所组成。我们认识一个色彩，绝对不只是针对这一个色彩，你还需要对它的邻近色、对比色、互补色都要有所了解，也就是说，与其说我们是在认识色彩，不如说我们是在认识色彩之间的关系。\r\n\r\n                                        既然色彩间的关系如此重要，我们看待色彩就应该再多增加一些角度。通过对一个色彩无限次分解，一点点摸索色彩间的关系。就像一个家族里，你继承了父母的某些特性，而你的父母又继承了上一代的某些特性……这样代代相传的关系在色彩中也能找到同样的模型。\r\n                                        \r\n                                        具体的做法很简单，从你的颜料盒里或者打开绘图软件选取一个颜色。比如选取绿色，这时我们眼里出现的是绿色，这时你要将绿色分解成两个颜色，这两个颜色相混合刚好是你看到的绿色。从色环上看，这两个颜色也刚好就是这个绿色的邻近色。也许邻近的距离并不成为考虑的重心，做这个练习的过程是要了解色彩中的“成分”，看清它们之间的继承脉络。\r\n                                        \r\n                                        下面这是我做的具有三代家族结构的色彩家族练习。其中位于三角虚线内的关系为分解的关系，而字母ABC，分别表示不同的层级。</p>\r\n                                        <img src=\"images/blogs/blog3_4.png\" class=\"w-100\" alt=\"\">\r\n                                        <p>你当然也可以继续分解下去，相信这将是非常有趣的探索过程。通过这一练习，也能在你的配色陷入僵局时，给你带来新的灵感。</p>\r\n                                    <h6 class=\"font-weight-bold\">过度色彩——从动态的角度去看待色彩间的变化过度关系</h6>\r\n                                    <p>这几年，大家对渐变这种色彩表现形式一定不陌生，渐变配色的其中一种形式就是由一个色彩走向另一个色彩。在这个过程中，我们可以看到两个颜色间微妙的变化关系，它是一个动态的过程。\r\n\r\n                                        如果你能深入体察任意两个不同色彩之间的过度变化关系，如此看待色彩，就又拔高了一个维度，那么对于色感的体会也会抵达更深的层次。\r\n                                        \r\n                                        从你的颜料盒或者直接用绘图软件里挑选两个不同的色彩，这两个色彩在色环上的距离远近可以不必限制。将这两个色彩看作置于并排一系列色彩的头尾两端，你要做的就是填充头尾两端的色彩中间的过度色彩。\r\n                                        \r\n                                        如下图示中，我采用了粉色到黄色的过度。这里所过度的色彩不仅要在色相上进行改变，还需要在饱和度和明度上也相应进行变化。过度的色彩填充的数量为7个过度色彩，当然你也可以适当增减，这里的色彩数量多一些会在过度上变化得更为细腻，太少的数量当然不利于观察，而数量太多也不方便我们这里交流的直观。</p>\r\n                                        <img src=\"images/blogs/blog3_title.png\" class=\"w-100\" alt=\"\">\r\n                                        <p>对于色彩中色相过度变化的节奏控制，只要保持视觉上基本的均衡状态即可。无需从数值上严格限制。\r\n\r\n                                            还有另一种叫做组合三角的过度色彩练习方式，同样是采用过度的方式，只是这里在色彩的组合方式上并非仅仅是一个色彩到另一个色彩。过度色彩只有一个。这个练习的重点并非是体会两个色彩之间变化的过程，而是让大家将三个色彩的关系看得更清楚。\r\n                                            \r\n                                            选择三个色彩置于三角形的三个角，让它们的外形也保持三角。第二步是在两个角之间的色彩之间设置它们的过度色，这个过渡色可以是位于这两个色彩之间距离的中点。也可以反过来说，这个色彩是由两个角上的色彩所混合而成。依据这个规则，剩下最后三个三角的色彩，也同样就是它左右的色彩的过度色。希望下面的图示能帮助你理解这个过程。</p>\r\n                                            <img src=\"images/blogs/blog3_5.png\" class=\"w-100\" alt=\"\">\r\n                                    <h6 class=\"font-weight-bold\">后记：</h6>\r\n                                    <p>以上三个方法，绝对需要大量的持续的练习，才能达到效果。但是请大家不要把这一过程想象得非常艰难，也别脑补需要咬牙坚持这一的景象。毕竟对于色彩的喜爱，会让你带着乐趣越玩越精彩。色彩看似简单，实则有它自己的秘密，也许我们不需要知道什么，只需要多和它接触互动，就能慢慢了解一二。\r\n\r\n                                        这些方法是我在阅读了一系列色彩的书以后的总结和借鉴，也有热心的小伙伴们自愿参与一起亲验过的好方法。今后我们还会继续开发类似提高色感的方法，请你和我们一起玩下去~</p>', 'images\\blogs\\blog3_title.png', 'images\\blogs\\blog3_title_sm.png', '#学习,#分享', 'http://localhost:8080/single-blog.html?bid=3');
INSERT INTO `blogs` VALUES (4, '赏析', '追波/Dribbble', '我所Follow的几位追波（Dribbble）大神', 'Thomas Karl', '2020-03-14 18:00:43', 894, 3, '<h6 class=\"font-weight-bold\">前言</h6>\r\n                                    <p>设计是否有自己的风格，是否已经有追波号在全世界吸粉过万，这已然成为新一代优秀设计师的潜在装备之一。瞻仰大神的同时，努力不要做吃瓜群众，就是学会看到大神们的神力之所在。他们之所以优秀并不是因为技能高于万人之上，而是由于各有其特点，并将其特点发挥到极致。</p>\r\n                                    <h6 class=\"font-weight-bold\">Cosmin Capitanu</h6>\r\n                                    <p>这位大神的作品让我首次见识到CLEAN风的魅力，可以说clean风最重要就是对色彩和排版的把握能力，粉嫩一点没关系，因为有酷酷的简洁排版来平衡。我们应该怎样学呢？先把配色拿来细细研究，再看看它的排版以及对UI版面中细节的把握，特别是它非常擅长的“透明感”的演绎。</p>\r\n                                    <img src=\"images/blogs/blog4_1.png\" class=\"w-100\" alt=\"\">\r\n                                    <img src=\"images/blogs/blog4_2.png\" class=\"w-100\" alt=\"\">\r\n                                    <img src=\"images/blogs/blog4_3.png\" class=\"w-100\" alt=\"\">\r\n                                    <img src=\"images/blogs/blog4_4.png\" class=\"w-100\" alt=\"\">\r\n                                    <img src=\"images/blogs/blog4_5.png\" class=\"w-100\" alt=\"\">\r\n                                    <h6 class=\"font-weight-bold\">Jakub Autalik</h6>\r\n                                    <p>这位布拉格的设计师对色彩可以用“执着”两个字来总结，能掌握好冷色系的配色的确并不是件容易的事，这需要一丁点的暖色系的暖场，这其中的比例甚为微妙。他的作品也是大量日历日程类APP的界面，可以见到他对于交互的诸多细节安排，和打破普通排版的创新。</p>\r\n                                    <img src=\"images/blogs/blog4_6.png\" class=\"w-100\" alt=\"\">\r\n                                    <img src=\"images/blogs/blog4_7.png\" class=\"w-100\" alt=\"\">\r\n                                    <h6 class=\"font-weight-bold\">Ghani Pradita</h6>\r\n                                    <p>印尼的小清新设计师所设计的页面则纯粹而简单，插画风格也显得清新可爱，充满卡通风格。这在UI设计中，尤其是一些风格化的UI界面设计中，要善于运用插画，谢绝写实摄影。</p>\r\n                                    <img src=\"images/blogs/blog4_title.png\" class=\"w-100\" alt=\"\">\r\n                                    <img src=\"images/blogs/blog4_8.png\" class=\"w-100\" alt=\"\">\r\n                                    <h6 class=\"font-weight-bold\">UENO</h6>\r\n                                    <p>无论是一个机构，还是单个个人，他们的设计充满了许多叫做“乐趣”的东西。大家都承认是吗？大神的作品，本身就已经是一本极好的教材。</p>\r\n                                    <img src=\"images/blogs/blog4_title.png\" class=\"w-100\" alt=\"\">\r\n                                    <img src=\"images/blogs/blog4_9.png\" class=\"w-100\" alt=\"\">\r\n                                    <img src=\"images/blogs/blog4_10.png\" class=\"w-100\" alt=\"\">\r\n                                    <img src=\"images/blogs/blog4_11.png\" class=\"w-100\" alt=\"\">\r\n                                    <img src=\"images/blogs/blog4_12.png\" class=\"w-100\" alt=\"\">\r\n                                    <h6 class=\"font-weight-bold\">Ryan Putnam</h6>\r\n                                    <p>这位旧金山的设计师，同时也是一位插画师，他的作品风格太易识别了，经典宝蓝，硬要配色的话，也拉来少许橙红色搭配。线条风格为主。复杂也有，简单也行，就一种风格已经被他驾轻就熟。想学习线条，就来看看他的作品吧。</p>\r\n                                    <img src=\"images/blogs/blog4_13.png\" class=\"w-100\" alt=\"\">\r\n                                    <img src=\"images/blogs/blog4_14.png\" class=\"w-100\" alt=\"\">\r\n                                    <img src=\"images/blogs/blog4_15.png\" class=\"w-100\" alt=\"\">\r\n                                    <h6 class=\"font-weight-bold\">Studio-JQ</h6>\r\n                                    <p>一个独立品牌的设计机构，设计范围非常广泛，他们的作品针对品牌视觉的解决方案。而从他们的作品里，可以看出他们已经把“几何”演绎得淋漓尽致，简单的形状经由设计师的离奇解构，完全成就出另一番新意景象。观摩大神才知，几何真的不是我们想象那么简单。</p>\r\n                                    <img src=\"images/blogs/blog4_16.png\" class=\"w-100\" alt=\"\">\r\n                                    <img src=\"images/blogs/blog4_17.png\" class=\"w-100\" alt=\"\">\r\n                                    <img src=\"images/blogs/blog4_18.png\" class=\"w-100\" alt=\"\">\r\n                                    <h6 class=\"font-weight-bold\">Szende Brassai</h6>\r\n                                    <p>如果要学复古时尚风，一定不能错过的是这位罗马尼亚的设计师，他们对复古的运用，从配色到造型，无一不挣脱了老土的陈旧感同时又传递出某些经典的意味。</p>\r\n                                    <img src=\"images/blogs/blog4_19.png\" class=\"w-100\" alt=\"\">\r\n                                    <img src=\"images/blogs/blog4_20.png\" class=\"w-100\" alt=\"\">\r\n                                    <img src=\"images/blogs/blog4_21.png\" class=\"w-100\" alt=\"\">', 'images\\blogs\\blog4_title.png', 'images\\blogs\\blog4_title_sm.png', '#赏析,#Dribbble', 'http://localhost:8080/single-blog.html?bid=4');
INSERT INTO `blogs` VALUES (5, '教学', '没有美术基础的设计师怎样学习插画', '那么零基础没有美术基础的插画师又该如何学起呢？应该看什么书上什么课程呢？扁平插画为什么对于设计师这么重要呢？', 'Adam Starr', '2020-03-10 23:07:24', 1005, 3, '<p>在UI设计界，十年前一边倒使用摄影图片作素材的时代已经一去不复返了，也许是因为版权的严格，抑或对于视觉创新的需要，越来越多采用插画来作为创作的素材。并且预测将会是未来具有压倒性的视觉趋势。\r\n\r\n                                        但是很多设计师依然很茫然，虽然知道要学习插画，插画却是一个非常大的领域，其中风格种类繁多，甚至一个人就是一个风格，那么零基础没有美术基础的插画师又该如何学起呢？应该看什么书上什么课程呢？扁平插画为什么对于设计师这么重要呢？\r\n                                    </p>\r\n                                    <h6 class=\"font-weight-bold\">先来讲个关于发现的故事</h6>\r\n                                    <p>在N年前，当大家都在用精美的照片做UI界面的时候，我拿着自己刚刚做好的十分满意的网页界面，当时就对朋友提出了一个问题：“假如我没有找到这么多好的图片素材怎么破？假如世界上没有这么优秀的摄影师，也没有拍出这么好的图片素材怎么破？难道我们的优秀设计只是凭借运气吗？”\r\n                                    </p>\r\n                                    <img src=\"images/blogs/blog5_title.jpg\" class=\"w-100\" alt=\"\">\r\n                                    <p>大家都在动辄“原创”“版权”的时代当中，这个疑问摆在我心里很久：我们设计师的作品有多少是真正百分百原创？直到后来又重读《世界平面设计史》的时候，发现早在一百多年前，一个海报制图员兼印刷厂工人，或多或少都是一个画家。\r\n                                        由于我一直都试图在从历史的源头当中去找未来发展的脉络，这点细枝末节给了我一个巨大的警醒，那就是：以前在还没有摄影或者说摄影图片素材来源并不容易的情况下，一张海报的设计通常都需要创作者一笔一画开始“画”起，同时也需要创作者自己“画”文字。原来，设计不应该是“拼”出来的，而是“画”出来的。\r\n                                    </p>\r\n                                    <img src=\"images/blogs/blog5_1.jpg\" class=\"w-100\" alt=\"\">\r\n                                    <p>这对比现在我们信手拈来就用它的字库字体，高清素材……尽管我们出稿肯定比以前快，却丢失了设计师最不应该丢失的东西，那就是原始的那种创作的idea。那种本来应该由设计师来安排这个画面天空应该是什么颜色，人物应该是什么动作，现在却都一股脑被摄影师的镜头承担了。设计师其实被退化成了一个素材挑选员+拼装员。\r\n\r\n                                        其实这个结论是很可怕的，大家都知道人工智能将来会替代掉我们大部分人的基础工作，而挑选素材以及拼装素材就是一个非常基础的工作，只要你看得足够多，掌握规律，你就能胜任的。试问我们有谁能比机器看得多呢？\r\n\r\n                                        而我们和机器的差别，最主要就是我们有情感，所以插画刚好是能承载你的个人情感的。这个核心就是我能想到的逆向方案：我们不能和机器比快、比效率，我们唯一的优势只能是我们的idea。\r\n\r\n                                        所以，一开始我学习插画，就是奔着要完整的呈现自己的idea去的。尽管那时用插画来作素材的界面很少。大部分插画要么是出现在包装设计上，要么就是书籍配图，但是我一直想要把插画用在UI界面里。并且在网页中呈现什么样的形式最合适，当时我并没有一个头绪。因为前面两类插画，在以前还是以细节繁复的画面为主要趋势，书籍的配图由于涉及到儿童类读物比较多，所以那时的插画都是以卡通可爱的形象居多。而这些配图如果用在UI界面里，多少和当时刚刚开始盛行的扁平简约风格有点违和。。\r\n                                    </p>\r\n                                    <img src=\"images/blogs/blog5_2.jpg\" class=\"w-100\" alt=\"\">\r\n                                    <p>对于插画的另一个领域是在游戏原画，CG插画这样的印象中。通常人物都表现得非常性感，帮助游戏公司宣传，激发宅男的点击欲，很注重写实和用光。说实话，我对这一类插画风格始终提不起兴趣，也仍然觉得它过于复杂，不够简约。那时其实早已买了数位板，所以学着画了一段时间的CG后，我放弃了。\r\n                                    </p>\r\n                                    <img src=\"images/blogs/blog5_3.jpg\" class=\"w-100\">\r\n                                    <h6 class=\"font-weight-bold\">画画是一种右脑思考的方式</h6>\r\n                                    <p>虽然我以前学过美术，但是工作以后就没怎么碰过。总是想重新提起笔，但是又因为工作关系不得不打开电脑。尽管有美术基础，很长一段时间却是被冰封搁置的。\r\n\r\n                                        素描是基础，这大概没有人会不同意。但是素描怎么学，却是大问题。很多人大概都没有时间也没有耐心从枯燥的几何体开始画起。网上铺天盖地的课程，也大都走学院风格，系统性学习需要消耗大量时间。因此，这对以996加班见长的设计师来说，不科学……\r\n\r\n                                        我一直很推崇的一本书就是《像艺术家一样思考：五天学会绘画》，看完这本书，跟着画，你其实可以不用那么苦练多年素描，然后画得和学院派一样好以后再来学画画。只要你找到的那个核心方法，你就可以把这套方法适用于任何的绘画形式中，哪怕是一个涂鸦。\r\n                                    </p>\r\n                                    <img src=\"images/blogs/blog5_4.jpg\" class=\"w-100\">\r\n                                    <p>这本书同时也是帮你厘清最基础的绘画的概念，比如空间、形状、光影、透视等等。经过这一系列练习，你或许并不能画得多好，至少可以对绘画有一个正确且深刻的理解。\r\n\r\n                                        我不推荐太多的相关资源给大家，只一本书，其实就够了，在画的过程中，你会产生新的问题，而新的问题又会释放出更多新的答案，你会找到属于自己独有的学习路径，而我在这里只是提供一个起始点给你参考。\r\n                                    </p>\r\n                                    <h6 class=\"font-weight-bold\">素描和速写：一个输入、一个输出</h6>\r\n                                    <p>光影不止让画面变立体而已，对于光影，很多初学者都是一头雾水。经过我们扁平插画研习社学员的作业反馈的情况来看。大家的问题主要就集中在：\r\n\r\n                                        1）找不准光源\r\n\r\n                                        2）不知道如何简化光影\r\n\r\n                                        3）忽视光影的色彩\r\n\r\n                                        4）表达光影细节容易出错\r\n\r\n                                        ……\r\n\r\n                                        （一）通过素描来看世界\r\n\r\n                                        其实，真实的世界永远是我们学习灵感的巨大宝库。所以这也和上一步的素描结合，素描不是教会你画画，而是教会你观察。\r\n\r\n                                        你可以认真观察一只苹果，然后把这个苹果画下来，画的过程中体会光线从光源射入到苹果表面产生的光影变化，这些光影变化，通过素描描绘下来，就是变成素描里最基础的五大调。\r\n\r\n                                        画苹果的过程，就是一个记录光线和物质如何互动的过程，这个过程中，你还会观察到苹果表面的色彩，纹理……这些信息串联起来，得到的绝不仅仅是一个苹果长什么样，而是光线在这个视觉世界是如何运作的。而这是我们画画所需要的最关键的信息。\r\n                                    </p>\r\n                                    <img src=\"images/blogs/blog5_5.jpg\" class=\"w-100\">\r\n                                    <p>（二）速写生活细节\r\n\r\n                                        光影还藏在生活的所有细节里，如果你没时间画一幅素描，假如你是每天通勤地铁往返忙碌，你依然可以通过观察所有呈现在你眼前的光影来收集信息：比如你老板脸上的肌肉所产生的光影，一杯水在日光灯下的光影表现，你的爱人的手指……哪里是暗，哪里是明，哪里的阴影有边界，哪里的边界是模糊……\r\n                                        \r\n                                        素描就是一个帮助观察的过程，但观察可以是任何形式。所以，素描可以简化为速写，每天一分钟，快速表现一个物体。一盒下班回家途中便利店买下的巧克力，一顶看中但没买的帽子，一个人的背景……\r\n                                        \r\n                                        速写可以在A4纸上画，也可以在餐巾纸上画。可以用铅笔、钢笔等等。不要拘泥形式。\r\n                                        \r\n                                        素描和速写，它们绝对是学习插画的两只翅膀。一只用来帮你看清视觉关系，一只用来表达你所看到的一切。一个输入，一个输出。两者都不能偏废。\r\n                                        \r\n                                        （三）两种节奏\r\n                                        \r\n                                        一开始学习画画，你要勤练素描，一天一幅都不为过。一开始你可以画圆形的物体，比如水果。慢慢开始就可以画方形的物体，桌子凳子。再然后就给自己增加难度，比如画稍微复杂一点的，比如鞋子、房屋等。\r\n                                        \r\n                                        物体画得差不多了，就可以画人物、植物、动物、慢慢扩大到外景、室内景物等。（人物可以放在 最后学习，因为人物的难度最大）\r\n                                        \r\n                                        差不多半年，都要保持一两天一幅这样的节奏去学习素描，耐住寂寞。看着自己画技渐长，你就可以尝试开始速写。\r\n                                        \r\n                                        速写要用的就是快速表达的节奏。因此，你不能往细了去画，而是粗略表现即可。速写可以很快完成一幅，所以每天练个十分钟，表现各种出现在你眼前的场景事物，想哪画哪。一支削笔刀、一颗树、一座山等等。\r\n                                        \r\n                                        这时感觉自己素描的基础稳定以后，素描练习的频率就可以降低，而改用速写取代素描了。素描可以换成一周一次或者半月一次，而速写就可以每天来一小幅，1~5分钟，以想象的场景为主。假如你今天决定画鼠标，你突然想不起来鼠标的细节，这时就可以拿鼠标来看看，再观察观察。不要看着画，而是抛开物体本身继续画。\r\n                                        \r\n                                        最终要达到一个效果：用速写的速度，快速表现素描的品质，并且可以不用参考物体，就能画出光影细节。这时，可以说基础阶段就差不多了，可以缓一缓。\r\n                                        \r\n                                        但是这个练习要一直持续下去，永远不可丢弃。</p>\r\n                                        <h6 class=\"font-weight-bold\">从艺术中扎根</h6>\r\n                                        <p>其实绘画的形式有很多：油画、水彩画、水粉画、丙烯画、彩铅画、水墨画、木刻版画……太多了。但是我们都要学吗？当然不是！这里大家可以参考我的学习路径。\r\n\r\n                                            （一）从彩铅进阶水彩\r\n                                            \r\n                                            我一开始是热衷素描的，但是画着画着就觉得黑白灰有点枯燥，而我本身对颜色有极大兴趣的。所以，我就想到用彩铅来取代素描。彩铅的魅力是可以采用叠画法，尤其是油性彩铅叠出不同的色彩层次，效果就会看起来比素描要吸引人。\r\n                                            \r\n                                            所以我就换成用彩铅来表现，彩铅也可以在网上买书来学，或者报网课，跟着老师练。但是最重要是看自己是否真喜欢。这个过程中，兴趣非常重要。由于是自由职业，所以有段时间，我是白天接单做设计，晚上就雷打不动坐在桌子面前练彩铅。\r\n                                            \r\n                                            一开始用临摹为主，因为你会发现彩铅和素描，虽然都是铅笔，但是还是有很大不同。慢慢熟练了，自己就可以尝试对着照片来画。学会创造细节，而不是再现细节。\r\n                                            \r\n                                            彩铅可以帮助你对色彩表现的理解，比如光影表现中，阴影不止是暗色，同时也会有其他颜色夹杂进来：周围光线的色彩、旁边的物体的色彩、物体本身的色彩等等。\r\n                                            \r\n                                            除了彩铅，我还很喜欢水彩，所以后来也开始学水彩。水彩仍然有不同的表现风格，但是它的用色逻辑和彩铅比较类似，也是慢慢一层层叠色，直到最后能表现一个完整的物体。只是水彩看似更大胆，可以把一个物体解构得更彻底。\r\n                                            \r\n                                            水彩依然是加强你对色彩的控制力，就像彩铅plus的感觉。所以，在我的体系里，水彩是彩铅的晋级课。\r\n                                            \r\n                                            同时我还间杂学习了国画白描、书法等等艺术表达形式，以及漫画和线体画风都能帮助我理解线条表现等等。\r\n                                            \r\n                                            （二）手绘不等于手绘板\r\n                                            \r\n                                            可以说学习任何的手绘性质的绘画形式，都是可以根据自己口味自由搭配的套餐。它们虽然没有直接和插画产生关系，但是它能帮助你深入到艺术创作的核心，这是任何老师、课程、书籍都不能告诉你，也无法组织成语言传达给你的。\r\n                                            \r\n                                            你有了这一个层次的熏陶，才会真正成为一个创作者，而不是一个临摹者。也不会叫苦说自己只会临摹，技法都知道，但是创作有难度了。\r\n                                            \r\n                                            现在有人已经用ipad来画画，我还是建议大家在纸上画起。我一开始和大家说过，源头的重要性。而手绘可以说是艺术表现的源头（大家不要把手绘和手绘板划等号），真正的手绘，和真实的颜料接触，真实的感受画笔接触到纸的那种沙沙声。这种体验是电脑软件无法取代的。\r\n                                            \r\n                                            比如大家知道数码绘画的优势最大就是用色无限宽广，还可以及时调色，但是老天永远是公平的，给了你方便就会给你另一种不方便。你用颜料调出来的颜色会让你更深入理解这个色彩，比如你要调出一个暗灰黄绿色，也许你就会用普通的绿色+柠檬黄+棕色去慢慢试着得到这个理想中的色彩，而不是直接通过软件选色得到。后者帮你省略了思考的过程，而让你其实和这个颜色并没有真正有接触。这和谈恋爱认识第一天就结婚，但并没有经历恋爱过程是一个道理。\r\n                                            \r\n                                            这是软件对比手绘的弱势，也是我认为无论多好的工具，如果你的手绘不合格，你软件出稿后的效果也并不会惊人。或许你可以临摹、模仿得到优质的效果，但是你永远原创不出真正高品质的令人印象深刻的作品。\r\n                                            \r\n                                            而手绘，也是一个很漫长的训练过程，甚至可以说是无止境的。因此你可以给自己多一些耐心，就像每天人需要依靠主食才能生存，手绘就是插画的主食，软件只是末端的工作，类似于一个小甜品。</p>\r\n                                            <h6 class=\"font-weight-bold\">扁平插画 VS 传统插画</h6>\r\n                                            <p>扁平插画其实是个不完整的概念，但仍然找不到其他可以替代的词语来形容目前在UI设计界的一股清新的简约风格的插画。</p>\r\n                                            <img src=\"images/blogs/blog5_6.jpg\" class=\"w-100\">\r\n                                            <img src=\"images/blogs/blog5_7.jpg\" class=\"w-100\">\r\n                                            <img src=\"images/blogs/blog5_8.jpg\" class=\"w-100\">\r\n                                </div>', 'images\\blogs\\blog5_title.jpg', 'images\\blogs\\blog5_title_sm.jpg', '#学习,#分享', 'http://localhost:8080/single-blog.html?bid=5');
INSERT INTO `blogs` VALUES (6, '赏析', '向大师借鉴的灵感配色', '一个有血有肉的设计，在配色前一定是经过了色彩的筛选和斟酌。', 'Mariana Noe', '2019-10-01 23:23:11', 1123, 3, '<h6 class=\"font-weight-bold\">前言</h6>\r\n                                    <p>“凡事预则立，不预则废”，这句话一样适用于设计时的配色。一个有血有肉的设计，在配色前一定是经过了色彩的筛选和斟酌。那么，我们的配色方案如何得来？是否需要一定的科学验证量化？还是仅仅依靠直觉？我想这是一个很有弹性的问题。</p>\r\n                                    <h6 class=\"font-weight-bold\">名画里的配色</h6>\r\n                                    <p>配色方案的其中一个来源就是大师的作品。对，特别是印象派时期的几位大师，尤其擅长运用色彩来表现自然光线，这一巨大的配色宝典拿到手中，你还敢说自己没有配色灵感吗？\r\n\r\n                                        梵高的向日葵采用浓烈的黄为其主色，黄色和绿色的搭配显出热情洋溢。</p>\r\n                                    <img src=\"images/blogs/blog6_1.jpg\" class=\"w-100\" alt=\"\">\r\n                                    <p>梵高也有温情的时候，这颗开花的杏树就是运用了朦胧温和的蓝绿配色，增加了一点柔和的粉白。</p>\r\n                                    <img src=\"images/blogs/blog6_2.jpg\" class=\"w-100\" alt=\"\">\r\n                                    <p>星月夜充满了瑰丽的想象，蓝色星空和黄色星月光辉，对比色交相呼应。</p>\r\n                                    <img src=\"images/blogs/blog6_3.jpg\" class=\"w-100\" alt=\"\">\r\n                                    <p>德加的舞蹈女孩的配色透出一种暧昧和透明感，低饱和度的配色系一直是我的大爱。</p>\r\n                                    <img src=\"images/blogs/blog6_4.jpg\" class=\"w-100\" alt=\"\">\r\n                                    <p>莫奈的干草垛的逆光色彩处理，运用冷暖间杂的色彩对比，显出了活泼\r\n                                    </p>\r\n                                    <img src=\"images/blogs/blog6_5.jpg\" class=\"w-100\" alt=\"\">\r\n                                    \r\n                                    <h6 class=\"font-weight-bold\">摄影作品配色</h6>\r\n                                    <p>大师的作品毕竟还是人造，那么接下我们将也学会在摄影作品中吸取配色灵感。大自然应该是最厉害的配色大师了，你必定能从观察自然中学到一招半式。\r\n\r\n                                        高广大的自然风景，有美好的冷暖色调，过渡非常自然</p>\r\n                                    <img src=\"images/blogs/blog6_6.jpg\" class=\"w-100\" alt=\"\">\r\n                                    <p>就只是从一只小鸟的身体中都能借来最跳脱的配色</p>\r\n                                    <img src=\"images/blogs/blog6_7.jpg\" class=\"w-100\" alt=\"\">\r\n                                    <p>从一盘食物中获取色彩，鲑鱼粉的各种表现都非常鲜美活泼，这简直是美食系配色的最佳选择</p>\r\n                                    <img src=\"images/blogs/blog6_8.jpg\" class=\"w-100\" alt=\"\">', 'images\\blogs\\blog6_title.jpg', 'images\\blogs\\blog6_title_sm.jpg', '#学习,#赏析', 'http://localhost:8080/single-blog.html?bid=6');

-- ----------------------------
-- Table structure for comments
-- ----------------------------
DROP TABLE IF EXISTS `comments`;
CREATE TABLE `comments`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `portrait` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `like` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `comments` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `time` datetime(0) NULL DEFAULT NULL,
  `bid` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 19 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of comments
-- ----------------------------
INSERT INTO `comments` VALUES (1, 'Jason Donoghue', 'images/user/team.jpg', '很不错的想法，希望未来我能将你的分享应用到我的工作当中去', '54', '1', '2020-03-06 23:21:09', 1);
INSERT INTO `comments` VALUES (2, 'Mariana Noe', 'images/user/team1.jpg', '通过你的文章我学习到了该如何以设计师的眼光去看一样事物，实在是太棒了！', '21', '0', '2020-03-06 23:21:57', 3);
INSERT INTO `comments` VALUES (3, 'Daniel Doe', 'images/user/team2.jpg', '大神们的设计真是望尘莫及啊', '25', '1', '2020-03-03 23:22:24', 2);
INSERT INTO `comments` VALUES (4, 'Thomas Karl', 'images/user/te1.jpg', '非常不错！我学到了很多', '8', '0', '2020-03-01 23:23:20', 4);
INSERT INTO `comments` VALUES (5, 'Adam Starr', 'images/user/te2.jpg', '我要把你的文章分享给我的朋友们，让他们也学习一下~', '12', '1', '2020-03-02 23:23:59', 4);
INSERT INTO `comments` VALUES (6, 'Jason Donoghue', 'images/user/team.jpg', '很不错的想法，希望未来我能将你的分享应用到我的工作当中去', '49', '1', '2020-01-08 23:21:09', 3);
INSERT INTO `comments` VALUES (7, 'Mariana Noe', 'images/user/team1.jpg', '通过你的文章我学习到了该如何以设计师的眼光去看一样事物，实在是太棒了！', '24', '0', '2020-02-12 23:21:57', 2);
INSERT INTO `comments` VALUES (8, 'Daniel Doe', 'images/user/team2.jpg', '大神们的设计真是望尘莫及啊', '25', '1', '2020-01-17 23:22:24', 1);
INSERT INTO `comments` VALUES (9, 'Thomas Karl', 'images/user/te1.jpg', '非常不错！我学到了很多', '5', '0', '2020-02-25 23:23:20', 2);
INSERT INTO `comments` VALUES (10, 'Adam Starr', 'images/user/te2.jpg', '我要把你的文章分享给我的朋友们，让他们也学习一下~', '16', '1', '2020-02-20 23:23:59', 3);
INSERT INTO `comments` VALUES (11, 'Jason Donoghue', 'images/user/team.jpg', '很不错的想法，希望未来我能将你的分享应用到我的工作当中去', '54', '1', '2020-02-13 23:21:09', 4);
INSERT INTO `comments` VALUES (12, 'Mariana Noe', 'images/user/team1.jpg', '通过你的文章我学习到了该如何以设计师的眼光去看一样事物，实在是太棒了！', '43', '1', '2020-03-03 23:21:09', 1);
INSERT INTO `comments` VALUES (13, 'Mariana Noe', 'images/user/team1.jpg', '通过你的文章我学习到了该如何以设计师的眼光去看一样事物，实在是太棒了！', '43', '1', '2020-03-03 23:21:09', 5);
INSERT INTO `comments` VALUES (14, 'Jason Donoghue', 'images/user/team.jpg', '很不错的想法，希望未来我能将你的分享应用到我的工作当中去', '54', '1', '2020-03-06 23:21:09', 5);
INSERT INTO `comments` VALUES (15, 'Daniel Doe', 'images/user/team2.jpg', '大神们的设计真是望尘莫及啊', '25', '1', '2020-01-17 23:22:24', 5);
INSERT INTO `comments` VALUES (16, 'Daniel Doe', 'images/user/team2.jpg', '大神们的设计真是望尘莫及啊', '25', '1', '2020-03-03 23:22:24', 6);
INSERT INTO `comments` VALUES (17, 'Mariana Noe', 'images/user/team1.jpg', '通过你的文章我学习到了该如何以设计师的眼光去看一样事物，实在是太棒了！', '24', '0', '2020-02-12 23:21:57', 6);
INSERT INTO `comments` VALUES (18, 'Thomas Karl', 'images/user/te1.jpg', '非常不错！我学到了很多', '5', '0', '2020-02-25 23:23:20', 6);

-- ----------------------------
-- Table structure for index_1f
-- ----------------------------
DROP TABLE IF EXISTS `index_1f`;
CREATE TABLE `index_1f`  (
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `details` tinytext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `pic` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `href` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of index_1f
-- ----------------------------
INSERT INTO `index_1f` VALUES ('网络设计', ' 品牌设计、标识设计、VI设计、视频设计、IP设计', 'images/index/img.jpg', 'blogs.html');
INSERT INTO `index_1f` VALUES ('独特的设计', '品牌定位分析研究、VI设计、SI设计、官方网站、logo设计', NULL, NULL);
INSERT INTO `index_1f` VALUES ('配套', '品牌设计、LOGO设计、VI设计、超级IP吉祥物设计', NULL, NULL);

-- ----------------------------
-- Table structure for index_2f
-- ----------------------------
DROP TABLE IF EXISTS `index_2f`;
CREATE TABLE `index_2f`  (
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `details` tinytext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `pic` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `href` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of index_2f
-- ----------------------------
INSERT INTO `index_2f` VALUES ('量身定制方法', '任何品牌的成功都不可复制，我们创始的“品牌定制”作业体系，必将取代传统VIS', '', '');
INSERT INTO `index_2f` VALUES ('众多成功案例', '我们不会给您华而不实的方案，而是运用设计的智慧为您提升品牌价值，成功来自预见未来', NULL, NULL);

-- ----------------------------
-- Table structure for index_3f
-- ----------------------------
DROP TABLE IF EXISTS `index_3f`;
CREATE TABLE `index_3f`  (
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `details` tinytext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `pic` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `href` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of index_3f
-- ----------------------------
INSERT INTO `index_3f` VALUES ('的好评率', '100%', '', '');
INSERT INTO `index_3f` VALUES ('月交付数', '1241', NULL, NULL);
INSERT INTO `index_3f` VALUES ('累计交付数', '11926', NULL, NULL);
INSERT INTO `index_3f` VALUES ('位设计师', '26', NULL, NULL);

-- ----------------------------
-- Table structure for index_5f
-- ----------------------------
DROP TABLE IF EXISTS `index_5f`;
CREATE TABLE `index_5f`  (
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `details` tinytext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `pic` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `href` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of index_5f
-- ----------------------------
INSERT INTO `index_5f` VALUES ('', '', 'images/index/img3.jpg', '');

-- ----------------------------
-- Table structure for index_6f
-- ----------------------------
DROP TABLE IF EXISTS `index_6f`;
CREATE TABLE `index_6f`  (
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `details` tinytext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `pic` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `href` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of index_6f
-- ----------------------------
INSERT INTO `index_6f` VALUES ('不断进行伟大的设计', '13年来只专注品牌全案设计这一件事。致力于为注重“企业形象”和“品牌气质”的高要求客户提供整体形象创建与改造升级设计服务。靠专业和口碑吸引众多客户；客户遍布全球，跨越各大行', 'images/index/img.jpg', 'blogs.html');

-- ----------------------------
-- Table structure for index_7f
-- ----------------------------
DROP TABLE IF EXISTS `index_7f`;
CREATE TABLE `index_7f`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `job` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `portrait` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `text` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of index_7f
-- ----------------------------
INSERT INTO `index_7f` VALUES (1, 'Adam Starr', 'UI设计师', 'images/user/te2.jpg', '好的设计并不是单靠美来呈现，而是充分考虑到用户的需求，在一味地强调设计性之前，更应该优先考虑安心、安全性与使用的方便性。');
INSERT INTO `index_7f` VALUES (2, 'Mariana Noe', 'PHP工程师', 'images/user/team1.jpg', '一个合格的设计师不仅要考虑功能性与舒适性，更要考虑到设计的本质并结合文化以及对生活的理解。能真正为业主解决痛点的设计师才是成功的设计师。科学的技术、美学的手法、对生活的理解，才是设计的本源，而这与大金提倡的New Life Style不谋而合。');
INSERT INTO `index_7f` VALUES (3, 'Thomas Karl', '前端工程师', 'images/user/te1.jpg', '专注设计其实也是在认清自己，要能够站在自己的对立面思考自己在做什么，能做什么。真正的“New Life Style”设计不应只跟随潮流，也要依据用户的实际需求，融入设计师对生活的理解。');
INSERT INTO `index_7f` VALUES (4, 'Jason Donoghue', 'Python工程师', 'images/user/team.jpg', '设计不是一成不变，因为生活不是一成不变的，要跟上这个时代，跟上社会的变迁，才有办法创造出更好的生活方式，而不是一成不变地生活在一种风格里面。我们要过的是生活，而不是去买设计，这也是设计师一个很重要的责任。');
INSERT INTO `index_7f` VALUES (5, 'Daniel Doe', 'JAVA工程师', 'images/user/team2.jpg', '设计师是心理学家、艺术家和社会学家的结合体。设计师要具备创意的设计，不跟随潮流，这样创新的设计才能创造出更好的价值。人性化的设计不会牺牲功能，功能与设计是互相平衡、相辅相成的。为居住者带来好的体验，才是好的设计。');

-- ----------------------------
-- Table structure for index_banner
-- ----------------------------
DROP TABLE IF EXISTS `index_banner`;
CREATE TABLE `index_banner`  (
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `details` tinytext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `pic` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `href` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of index_banner
-- ----------------------------
INSERT INTO `index_banner` VALUES ('让我们来重新设计世界', '致力于为注重“企业形象”和“品牌气质”的高要求客户提供整体形象创建与改造升级设计服务。由业内知名总监合力智建，靠专业和口碑吸引众多客户，多项作品获德国红点奖、IF、A\'Design、HK', 'images/index/img.jpg', 'blogs.html');

-- ----------------------------
-- Table structure for subscribe
-- ----------------------------
DROP TABLE IF EXISTS `subscribe`;
CREATE TABLE `subscribe`  (
  `id` int(11) NULL DEFAULT NULL,
  `uname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `advice` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` int(16) NOT NULL AUTO_INCREMENT,
  `uname` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `upwd` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `email` varchar(24) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `phone` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `introduce` varchar(140) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `portrait` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `blog_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `job` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 32 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (27, 'Jason Donoghue', '123456', '', '', '自2010年以来，设计的作品一直被称为行业中的弄潮儿', 'images/user/team.jpg', '1', 'Python工程师');
INSERT INTO `users` VALUES (28, 'Mariana Noe', '123456', '', '', '擅长领域：简约现代，简约欧式，新中式，美式', 'images/user/team1.jpg', '2', 'PHP工程师');
INSERT INTO `users` VALUES (29, 'Daniel Doe', '123456', '', '', '设计理念：设计就是在平凡中注入灵魂，把对生活的憧憬融入作品中，感受生活的美', 'images/user/team2.jpg', '3', 'JAVA工程师');
INSERT INTO `users` VALUES (30, 'Thomas Karl', '123456', '', '', NULL, 'images/user/te1.jpg', '4', '前端工程师');
INSERT INTO `users` VALUES (31, 'Adam Starr', '123456', '', '', NULL, 'images/user/te2.jpg', '5', 'UI设计师');

SET FOREIGN_KEY_CHECKS = 1;
