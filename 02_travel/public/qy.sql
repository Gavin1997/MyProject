SET NAMES UTF8;
DROP DATABASE IF EXISTS qy;
CREATE DATABASE qy CHARSET=UTF8;
use qy;
/****旅游产品分类****/
CREATE TABLE qy_product_family(
    fid INT PRIMARY KEY AUTO_INCREMENT,
    fname VARCHAR(32)
);

/****旅游产品详细信息****/
CREATE TABLE qy_travel_product(
    tid INT PRIMARY KEY AUTO_INCREMENT,  
    family_id INT,                 #所属家族分类编号
    title    VARCHAR(128),         #主标题
    subtitle  VARCHAR(128),        #副标题
    price     DECIMAL(10,0),        #价格
    promise   VARCHAR(128),         #服务承诺

    prompt    VARCHAR(128),        #温馨提示
    category  VARCHAR(64),         #产品类型

    sold_count INT,              #已出售的数量
    is_onsale BOOLEAN             #是否促销众
);

/****首页商品****/
CREATE  TABLE qy_index_product(
    qid INT PRIMARY KEY AUTO_INCREMENT,  
    details VARCHAR(128),         #旅游描述
    pic     VARCHAR(128),         #图片路径
    price  DECIMAL(10,0),         #价格
    href VARCHAR(128),            #对应商品的链接
    seq_recommended TINYINT       #推荐顺序
);

/**  产品图片*/
CREATE TABLE qy_product_pic(
     pid INT PRIMARY KEY AUTO_INCREMENT,
     product_id INT,              #产品编号
     sm VARCHAR(128),           #小图片路径
     md VARCHAR(128)            #大图片路径    
    
);
/****用户信息****/
CREATE TABLE qy_user(
    uid INT PRIMARY KEY AUTO_INCREMENT,
    uname VARCHAR(32),
    upwd VARCHAR(32),
    email VARCHAR(64),
    phone VARCHAR(16),
    user_name VARCHAR(32),      #用户名
    gender INT                 #性别 0-女 1-男 
);
/*******************/
/******数据导入******/
/*******************/

/****旅游产品分类****/
INSERT INTO qy_product_family VALUES
(NULL,"限时特卖"),
(NULL,"机酒自由行"),
(NULL,"当地玩乐"),
(NULL,"最世界,深度旅行"),
(NULL,"跟团/半自助游");

/****旅游产品详细信息****/
INSERT INTO  qy_travel_product VALUES
(1,1,'[国庆][中秋]上海直飞甲米6-7天往返含税机票(含一晚甲米品质酒店国庆][中秋]上海直飞甲米6-7天往返含税机票(含一晚甲米品质酒店住宿+可加购20元拼车接机服务))','赠送当地项目','499','1、直飞航班：直飞普吉岛，一站直达，省去转机时间
2、含节假日：旅行时间包含圣诞/元旦假期，适合上班族出行
3、说走就走：泰国可以办理落地签，拿上白本护照也可即刻出发','多程机票需按行程顺序完全使用，往返程机票无法单独使用回程','【国庆特惠】上海直飞普吉6天往返（春秋航空)','1000',true),
(2,1,'[中秋/国庆特惠]北京出发欧洲多地往返10-11天含税机票(双点往返+多航班可选)','赠送当地项目','1999','1、直飞航班：直飞普吉岛，一站直达，省去转机时间
2、含节假日：旅行时间包含圣诞/元旦假期，适合上班族出行
3、说走就走：泰国可以办理落地签，拿上白本护照也可即刻出发','多程机票需按行程顺序完全使用，往返程机票无法单独使用回程','【国庆特惠】上海直飞普吉6天往返（春秋航空)','800',true),
(3,1,'[全年爆款][国庆][枫叶季]天津直飞大阪/东京6天往返含税机票(可选两点往返)','赠送当地项目','1288','1、直飞航班：直飞普吉岛，一站直达，省去转机时间
2、含节假日：旅行时间包含圣诞/元旦假期，适合上班族出行
3、说走就走：泰国可以办理落地签，拿上白本护照也可即刻出发','多程机票需按行程顺序完全使用，往返程机票无法单独使用回程','【国庆特惠】上海直飞普吉6天往返（春秋航空)','600',true),
(4,1,'成都/重庆直飞清迈5-7天往返含税机票(自主航班+全年特惠中)','赠送当地项目','1099','1、直飞航班：直飞普吉岛，一站直达，省去转机时间
2、含节假日：旅行时间包含圣诞/元旦假期，适合上班族出行
3、说走就走：泰国可以办理落地签，拿上白本护照也可即刻出发','多程机票需按行程顺序完全使用，往返程机票无法单独使用回程','【国庆特惠】上海直飞普吉6天往返（春秋航空)','1100',true),
(5,1,'【10月14日秒杀】【省钱神器】全日本JR Pass周游券','赠送当地项目','1799','1、直飞航班：直飞普吉岛，一站直达，省去转机时间
2、含节假日：旅行时间包含圣诞/元旦假期，适合上班族出行
3、说走就走：泰国可以办理落地签，拿上白本护照也可即刻出发','多程机票需按行程顺序完全使用，往返程机票无法单独使用回程','【国庆特惠】上海直飞普吉6天往返（春秋航空)','100',true),
(6,1,'【秒杀】布里斯班/黄金海岸摩顿岛天阁露玛野生海豚岛度假村','赠送当地项目','705','1、直飞航班：直飞普吉岛，一站直达，省去转机时间
2、含节假日：旅行时间包含圣诞/元旦假期，适合上班族出行
3、说走就走：泰国可以办理落地签，拿上白本护照也可即刻出发','多程机票需按行程顺序完全使用，往返程机票无法单独使用回程','【国庆特惠】上海直飞普吉6天往返（春秋航空)','200',true),
(7,1,'澳大利亚凯恩斯Downunder鱼鹰号大堡礁浮潜/深潜+直升飞机(凯恩斯出发)','赠送当地项目','842','1、直飞航班：直飞普吉岛，一站直达，省去转机时间
2、含节假日：旅行时间包含圣诞/元旦假期，适合上班族出行
3、说走就走：泰国可以办理落地签，拿上白本护照也可即刻出发','多程机票需按行程顺序完全使用，往返程机票无法单独使用回程','【国庆特惠】上海直飞普吉6天往返（春秋航空)','3200',true),
(8,1,'【VIP插队/免排队】日本大阪环球影城快速票','赠送当地项目','91','1、直飞航班：直飞普吉岛，一站直达，省去转机时间
2、含节假日：旅行时间包含圣诞/元旦假期，适合上班族出行
3、说走就走：泰国可以办理落地签，拿上白本护照也可即刻出发','多程机票需按行程顺序完全使用，往返程机票无法单独使用回程','【国庆特惠】上海直飞普吉6天往返（春秋航空)','1200',true),
(9,2,'[国庆][枫叶季预售]上海直飞日本大阪5-7天往返含税机票(可选含近铁周游2日券/首晚市区酒店+早去晚回/午去午回航班套餐)','赠送当地项目','1799','1、直飞航班：直飞普吉岛，一站直达，省去转机时间
2、含节假日：旅行时间包含圣诞/元旦假期，适合上班族出行
3、说走就走：泰国可以办理落地签，拿上白本护照也可即刻出发','多程机票需按行程顺序完全使用，往返程机票无法单独使用回程','【国庆特惠】上海直飞普吉6天往返（春秋航空)','900',true),
(10,2,'[个人/家庭亲子]北京直飞美国/加拿大多地3-30天往返含税机票(拒签全退,全国联运,可A进B出,五星海航,赠送机服务)','赠送当地项目','3399','1、直飞航班：直飞普吉岛，一站直达，省去转机时间
2、含节假日：旅行时间包含圣诞/元旦假期，适合上班族出行
3、说走就走：泰国可以办理落地签，拿上白本护照也可即刻出发','多程机票需按行程顺序完全使用，往返程机票无法单独使用回程','【国庆特惠】上海直飞普吉6天往返（春秋航空)','600',true),
(11,2,'上海/杭州/南京直飞东京+大阪6-8天自由行（天天出发+优质航空+星级酒店+赠送出境旅游保险+不走回头路）','赠送当地项目','5099','1、直飞航班：直飞普吉岛，一站直达，省去转机时间
2、含节假日：旅行时间包含圣诞/元旦假期，适合上班族出行
3、说走就走：泰国可以办理落地签，拿上白本护照也可即刻出发','多程机票需按行程顺序完全使用，往返程机票无法单独使用回程','【国庆特惠】上海直飞普吉6天往返（春秋航空)','555',true),
(12,2,'[国庆][中秋]上海/南京直飞丽江5天往返含税机票（特价机票+优质航空+20KG托运+度假优选）','赠送当地项目','6199','1、直飞航班：直飞普吉岛，一站直达，省去转机时间
2、含节假日：旅行时间包含圣诞/元旦假期，适合上班族出行
3、说走就走：泰国可以办理落地签，拿上白本护照也可即刻出发','多程机票需按行程顺序完全使用，往返程机票无法单独使用回程','【国庆特惠】上海直飞普吉6天往返（春秋航空)','666',true),
(13,2,'广州/深圳往返沙巴5/6天自由行（可安排仙本那邦邦岛卡帕莱度假村等+可单卖机票+赠酒店往返接送机+赠当地电话卡+全程四星酒店+多酒店升级+丰盛早餐）可预订仙本那','赠送当地项目','4499','1、直飞航班：直飞普吉岛，一站直达，省去转机时间
2、含节假日：旅行时间包含圣诞/元旦假期，适合上班族出行
3、说走就走：泰国可以办理落地签，拿上白本护照也可即刻出发','多程机票需按行程顺序完全使用，往返程机票无法单独使用回程','【国庆特惠】上海直飞普吉6天往返（春秋航空)','888',true),
(14,2,'[国庆]北京/天津直飞日本东京/大阪/东阪/冲绳/北海道4-8天往返含税机票','赠送当地项目','1488','1、直飞航班：直飞普吉岛，一站直达，省去转机时间
2、含节假日：旅行时间包含圣诞/元旦假期，适合上班族出行
3、说走就走：泰国可以办理落地签，拿上白本护照也可即刻出发','多程机票需按行程顺序完全使用，往返程机票无法单独使用回程','【国庆特惠】上海直飞普吉6天往返（春秋航空)','999',true),
(15,2,'【秒杀8.8大促大阪专属福袋】】【打卡必玩】日本大阪环球影城入园电子票','赠送当地项目','480','1、直飞航班：直飞普吉岛，一站直达，省去转机时间
2、含节假日：旅行时间包含圣诞/元旦假期，适合上班族出行
3、说走就走：泰国可以办理落地签，拿上白本护照也可即刻出发','多程机票需按行程顺序完全使用，往返程机票无法单独使用回程','【国庆特惠】上海直飞普吉6天往返（春秋航空)','1122',true),
(16,3,'【10月30日秒杀】【打卡必玩】日本东京迪斯尼乐园/迪士尼海洋1日实体票/电子票','赠送当地项目','100','1、直飞航班：直飞普吉岛，一站直达，省去转机时间
2、含节假日：旅行时间包含圣诞/元旦假期，适合上班族出行
3、说走就走：泰国可以办理落地签，拿上白本护照也可即刻出发','多程机票需按行程顺序完全使用，往返程机票无法单独使用回程','【国庆特惠】上海直飞普吉6天往返（春秋航空)','456',true),
(17,3,'【10月13日秒杀】日本关西地区JR Kansai WIDE Area Pass广域铁路周游(5日券,顺丰包邮)','赠送当地项目','534','1、直飞航班：直飞普吉岛，一站直达，省去转机时间
2、含节假日：旅行时间包含圣诞/元旦假期，适合上班族出行
3、说走就走：泰国可以办理落地签，拿上白本护照也可即刻出发','多程机票需按行程顺序完全使用，往返程机票无法单独使用回程','【国庆特惠】上海直飞普吉6天往返（春秋航空)','123',true),
(18,3,'【10月13日秒杀】日本JR北海道hokkaido rail pass周游券(3/4/5/7日可选)','赠送当地项目','1012','1、直飞航班：直飞普吉岛，一站直达，省去转机时间
2、含节假日：旅行时间包含圣诞/元旦假期，适合上班族出行
3、说走就走：泰国可以办理落地签，拿上白本护照也可即刻出发','多程机票需按行程顺序完全使用，往返程机票无法单独使用回程','【国庆特惠】上海直飞普吉6天往返（春秋航空)','124',true),
(19,3,'【省钱神器】日本关西周游卡KANSAI THRU PASS(2日券/3日券)','赠送当地项目','125','1、直飞航班：直飞普吉岛，一站直达，省去转机时间
2、含节假日：旅行时间包含圣诞/元旦假期，适合上班族出行
3、说走就走：泰国可以办理落地签，拿上白本护照也可即刻出发','多程机票需按行程顺序完全使用，往返程机票无法单独使用回程','【国庆特惠】上海直飞普吉6天往返（春秋航空)','222',true),
(20,3,'【10月2日秒杀】【省钱c畅玩】全日本JR Pass周游券','赠送当地项目','1799','1、直飞航班：直飞普吉岛，一站直达，省去转机时间
2、含节假日：旅行时间包含圣诞/元旦假期，适合上班族出行
3、说走就走：泰国可以办理落地签，拿上白本护照也可即刻出发','多程机票需按行程顺序完全使用，往返程机票无法单独使用回程','【国庆特惠】上海直飞普吉6天往返（春秋航空)','333',true),
(21,3,'【最世界一日游】百年京都——禅意古都的维新之路','赠送当地项目','1799','1、直飞航班：直飞普吉岛，一站直达，省去转机时间
2、含节假日：旅行时间包含圣诞/元旦假期，适合上班族出行
3、说走就走：泰国可以办理落地签，拿上白本护照也可即刻出发','多程机票需按行程顺序完全使用，往返程机票无法单独使用回程','【国庆特惠】上海直飞普吉6天往返（春秋航空)','345',true),
(22,3,'【City Walk】京都深度入门—探秘祇园东山半日游','赠送当地项目','248','1、直飞航班：直飞普吉岛，一站直达，省去转机时间
2、含节假日：旅行时间包含圣诞/元旦假期，适合上班族出行
3、说走就走：泰国可以办理落地签，拿上白本护照也可即刻出发','多程机票需按行程顺序完全使用，往返程机票无法单独使用回程','【国庆特惠】上海直飞普吉6天往返（春秋航空)','356',true),
(23,4,'泰国清迈-凡中文泰餐厨艺学校','赠送当地项目','60','1、直飞航班：直飞普吉岛，一站直达，省去转机时间
2、含节假日：旅行时间包含圣诞/元旦假期，适合上班族出行
3、说走就走：泰国可以办理落地签，拿上白本护照也可即刻出发','多程机票需按行程顺序完全使用，往返程机票无法单独使用回程','【国庆特惠】上海直飞普吉6天往返（春秋航空)','178',true),
(24,4,'【City Walk】 日本桥-穿街走巷看东京,感受大城市的市井人情','赠送当地项目','248','1、直飞航班：直飞普吉岛，一站直达，省去转机时间
2、含节假日：旅行时间包含圣诞/元旦假期，适合上班族出行
3、说走就走：泰国可以办理落地签，拿上白本护照也可即刻出发','多程机票需按行程顺序完全使用，往返程机票无法单独使用回程','【国庆特惠】上海直飞普吉6天往返（春秋航空)','789',true),
(25,4,'【最世界一日游】京都岚山香风—竹林和温泉的纯净空气之旅（含午餐）','赠送当地项目','698','1、直飞航班：直飞普吉岛，一站直达，省去转机时间
2、含节假日：旅行时间包含圣诞/元旦假期，适合上班族出行
3、说走就走：泰国可以办理落地签，拿上白本护照也可即刻出发','多程机票需按行程顺序完全使用，往返程机票无法单独使用回程','【国庆特惠】上海直飞普吉6天往返（春秋航空)','678',true),
(26,4,'【City Walk】“大村庄”里的菜市场 - 巴塞罗那半日行','赠送当地项目','248','1、直飞航班：直飞普吉岛，一站直达，省去转机时间
2、含节假日：旅行时间包含圣诞/元旦假期，适合上班族出行
3、说走就走：泰国可以办理落地签，拿上白本护照也可即刻出发','多程机票需按行程顺序完全使用，往返程机票无法单独使用回程','【国庆特惠】上海直飞普吉6天往返（春秋航空)','255',true),
(27,5,'上海/南京/无锡直飞普吉岛5晚6/7天半自助游礼包（无购物-1/2天自由活动/风帆游艇出海鸡蛋+珊瑚双岛游','赠送当地项目','1199','1、直飞航班：直飞普吉岛，一站直达，省去转机时间
2、含节假日：旅行时间包含圣诞/元旦假期，适合上班族出行
3、说走就走：泰国可以办理落地签，拿上白本护照也可即刻出发','多程机票需按行程顺序完全使用，往返程机票无法单独使用回程','【国庆特惠】上海直飞普吉6天往返（春秋航空)','1255',true),
(28,5,'北京出发美国西海岸+国家公园8日半自助游（大峡谷/马蹄湾/羚羊谷/66号公路','赠送当地项目','7999','1、直飞航班：直飞普吉岛，一站直达，省去转机时间
2、含节假日：旅行时间包含圣诞/元旦假期，适合上班族出行
3、说走就走：泰国可以办理落地签，拿上白本护照也可即刻出发','多程机票需按行程顺序完全使用，往返程机票无法单独使用回程','【国庆特惠】上海直飞普吉6天往返（春秋航空)','1333',true),
(29,5,'上海往返巴厘岛6天4晚半自助游（2晚花园泳池别墅+2晚海边5星Sakala全套房酒店或同级+银快号出海+阿勇河探秘+无购物含WiFi','赠送当地项目','5249','1、直飞航班：直飞普吉岛，一站直达，省去转机时间
2、含节假日：旅行时间包含圣诞/元旦假期，适合上班族出行
3、说走就走：泰国可以办理落地签，拿上白本护照也可即刻出发','多程机票需按行程顺序完全使用，往返程机票无法单独使用回程','【国庆特惠】上海直飞普吉6天往返（春秋航空)','1222',true),
(30,5,'北京直飞日本名古屋-大阪-京都-箱根-东京6天5晚半自助游（东京一天自由活动，早去晚回，全程升级俩晚希尔顿或同级，至少一晚日式温泉','赠送当地项目','4999','1、直飞航班：直飞普吉岛，一站直达，省去转机时间
2、含节假日：旅行时间包含圣诞/元旦假期，适合上班族出行
3、说走就走：泰国可以办理落地签，拿上白本护照也可即刻出发','多程机票需按行程顺序完全使用，往返程机票无法单独使用回程','【国庆特惠】上海直飞普吉6天往返（春秋航空)','1225',true),
(31,5,'天津直飞芽庄5-7天半自助游（优质越南航空/1-2天自由行/赠送京津往返接送大巴/赠送意外险/市区游）','赠送当地项目','999','1、直飞航班：直飞普吉岛，一站直达，省去转机时间
2、含节假日：旅行时间包含圣诞/元旦假期，适合上班族出行
3、说走就走：泰国可以办理落地签，拿上白本护照也可即刻出发','多程机票需按行程顺序完全使用，往返程机票无法单独使用回程','【国庆特惠】上海直飞普吉6天往返（春秋航空)','120',true),
(32,5,'北京直飞巴厘岛7天5晚半自助游（纯玩无购物含WIFI+希尔顿洲际同级+独栋泳池别墅+蓝梦出海含海底漫步+定制牛人种珊瑚','赠送当地项目','7299','1、直飞航班：直飞普吉岛，一站直达，省去转机时间
2、含节假日：旅行时间包含圣诞/元旦假期，适合上班族出行
3、说走就走：泰国可以办理落地签，拿上白本护照也可即刻出发','多程机票需按行程顺序完全使用，往返程机票无法单独使用回程','【国庆特惠】上海直飞普吉6天往返（春秋航空)','888',true);

/**首页商品**/
INSERT INTO qy_index_product VALUES
(1,'[国庆][中秋]上海直飞甲米6-7天往返含税机票(含一晚甲米品质酒店国庆][中秋]上海直飞甲米6-7天往返含税机票(含一晚甲米品质酒店住宿+可加购20元拼车接机服务))','img/1F/552f2cb41463c.jpg','499','product_details.html?lid=1',1),
(2,'[中秋/国庆特惠]北京出发欧洲多地往返10-11天含税机票(双点往返+多航班可选)','img/1F/FjUwL8KpDf7TAvM1FsKrFiGCHWz_.jpg','1999','product_details.html?lid=2',2),
(3,'[全年爆款][国庆][枫叶季]天津直飞大阪/东京6天往返含税机票(可选两点往返)','img/1F/FsYmHfBwGcJZpp-4brJ9_ZxWAOsk.jpg','1288','product_details.html?lid=3',3),
(4,'成都/重庆直飞清迈5-7天往返含税机票(自主航班+全年特惠中)','img/1F/55d3f15c06bf0.jpg','1099','product_details.html?lid=4',4),
(5,'【10月14日秒杀】【省钱神器】全日本JR Pass周游券(7/14/21日可选)','img/1F/15259390915266.jpg','1799','product_details.html?lid=5',5),
(6,'【秒杀】布里斯班/黄金海岸摩顿岛天阁露玛野生海豚岛度假村','img/1F/14543178368797.jpg','705','product_details.html?lid=6',6),
(7,'澳大利亚凯恩斯Downunder鱼鹰号大堡礁浮潜/深潜+直升飞机(凯恩斯出发)','img/1F/14467923084610.jpg','842','product_details.html?lid=7',7),
(8,'【VIP插队/免排队】日本大阪环球影城快速票','img/1F/14713415918995.jpg','91','product_details.html?lid=8',8),
(9,'[国庆][枫叶季预售]上海直飞日本大阪5-7天往返含税机票(可选含近铁周游2日券/首晚市区酒店+早去晚回/午去午回航班套餐)','img/2F/FpWltpBLmViTT78QT8xprHdNLDMC.jpg','1799','product_details.html?lid=9',9),
(10,'[个人/家庭亲子]北京直飞美国/加拿大多地3-30天往返含税机票(拒签全退,全国联运,可A进B出,五星海航,赠送机服务)','img/2F/150535718553807212647029247696.jpg','3399','product_details.html?lid=10',10),
(11,'上海/杭州/南京直飞东京+大阪6-8天自由行（天天出发+优质航空+星级酒店+赠送出境旅游保险+不走回头路）','img/2F/552f7aaa79eeb.jpg','5099','product_details.html?lid=11',11),
(12,'[国庆][中秋]上海/南京直飞丽江5天往返含税机票（特价机票+优质航空+20KG托运+度假优选）','img/2F/55d3efbfe2cb2.jpg','6199','product_details.html?lid=12',12),
(13,'广州/深圳往返沙巴5/6天自由行（可安排仙本那邦邦岛卡帕莱度假村等+可单卖机票+赠酒店往返接送机+赠当地电话卡+全程四星酒店+多酒店升级+丰盛早餐）可预订仙本那','img/2F/FnfjbT7lkcLJEASNiAQYJKaXpKOf.jpg','4499','product_details.html?lid=13',13),
(14,'[国庆]北京/天津直飞日本东京/大阪/东阪/冲绳/北海道4-8天往返含税机票','img/2F/14105187861872.jpg','1488','product_details.html?lid=14',14),
(15,'【秒杀8.8大促大阪专属福袋】】【打卡必玩】日本大阪环球影城入园电子票','img/3F/14491343424708.jpg','480','product_details.html?lid=15',15),
(16,'【10月30日秒杀】【打卡必玩】日本东京迪斯尼乐园/迪士尼海洋1日实体票/电子票','img/3F/151358585488407518508896561411.jpg','100','product_details.html?lid=16',16),
(17,'【10月13日秒杀】日本关西地区JR Kansai WIDE Area Pass广域铁路周游(5日券,顺丰包邮)','img/3F/14422177585931.jpg','534','product_details.html?lid=17',17),
(18,'【10月13日秒杀】日本JR北海道hokkaido rail pass周游券(3/4/5/7日可选)','img/3F/14422178162559.jpg','1012','product_details.html?lid=18',18),
(19,'【省钱神器】日本关西周游卡KANSAI THRU PASS(2日券/3日券)','img/3F/14410968959037.jpg','125','product_details.html?lid=19',19),
(20,'【10月2日秒杀】【省钱c畅玩】全日本JR Pass周游券','img/3F/15259390915266.jpg','1799','product_details.html?lid=20',20),
(21,'【最世界一日游】百年京都——禅意古都的维新之路','img/4F/15312949094364.jpg','1799','product_details.html?lid=21',21),
(22,'【City Walk】京都深度入门—探秘祇园东山半日游','img/4F/15154223274760.jpg','248','product_details.html?lid=22',22),
(23,'泰国清迈-凡中文泰餐厨艺学校','img/4F/15141912399049.jpg','60','product_details.html?lid=23',23),
(24,'【City Walk】 日本桥-穿街走巷看东京,感受大城市的市井人情','img/4F/14925686681041.jpg','248','product_details.html?lid=24',24),
(25,'【最世界一日游】京都岚山香风—竹林和温泉的纯净空气之旅（含午餐）','img/4F/14652257921193.jpg','698','product_details.html?lid=25',25),
(26,'【City Walk】“大村庄”里的菜市场 - 巴塞罗那半日行','img/4F/14467036423512.jpg','248','product_details.html?lid=26',26),
(27,'上海/南京/无锡直飞普吉岛5晚6/7天半自助游礼包（无购物-1/2天自由活动/风帆游艇出海鸡蛋+珊瑚双岛游','img/5F/15136729151740034250255343091895.jpg','1199','product_details.html?lid=27',27),
(28,'北京出发美国西海岸+国家公园8日半自助游（大峡谷/马蹄湾/羚羊谷/66号公路','img/5F/FgRqn1zszBgM3hWbCQyimdJejLIi.jpg','7999','product_details.html?lid=28',28),
(29,'上海往返巴厘岛6天4晚半自助游（2晚花园泳池别墅+2晚海边5星Sakala全套房酒店或同级+银快号出海+阿勇河探秘+无购物含WiFi','img/5F/FnbwnJLmBGXjH6zyXyp1mPZAVXev.jpg','5249','product_details.html?lid=29',29),
(30,'北京直飞日本名古屋-大阪-京都-箱根-东京6天5晚半自助游（东京一天自由活动，早去晚回，全程升级俩晚希尔顿或同级，至少一晚日式温泉','img/5F/FrwxrlrT7FCCB9ssZxDXNMcI1DmN.jpg','4999','product_details.html?lid=30',30),
(31,'天津直飞芽庄5-7天半自助游（优质越南航空/1-2天自由行/赠送京津往返接送大巴/赠送意外险/市区游）','img/5F/15232433616585.jpg','999','product_details.html?lid=31',31),
(32,'北京直飞巴厘岛7天5晚半自助游（纯玩无购物含WIFI+希尔顿洲际同级+独栋泳池别墅+蓝梦出海含海底漫步+定制牛人种珊瑚）','img/5F/FnQ39_T9XNGF03HhlIRlLlJjyeBX.jpg','7299','product_details.html?lid=32',32);
/**产品图片**/
INSERT INTO qy_product_pic VALUES
(NULL,1,'img/product/sm/1F/1/552f2cb41463c.jpg','img/product/md/1F/1/552f2cb41463c.jpg'),
(NULL,1,'img/product/sm/1F/1/14107610654728.jpg','img/product/md/1F/1/14107610654728.jpg'),
(NULL,1,'img/product/sm/1F/1/14467923084610.jpg','img/product/md/1F/1/14467923084610.jpg'),
(NULL,1,'img/product/sm/1F/1/552f2bf02d1ff.jpg','img/product/md/1F/1/552f2bf02d1ff.jpg'),
(NULL,1,'img/product/sm/1F/1/5604b30ac5f7d.jpg','img/product/md/1F/1/5604b30ac5f7d.jpg'),
(NULL,1,'img/product/sm/1F/1/FiMAMstAOB9BYFHha0wlKT92Uyxe.jpg','img/product/md/1F/1/FiMAMstAOB9BYFHha0wlKT92Uyxe.jpg'),
(NULL,1,'img/product/sm/1F/1/Fu9wWFbHcdtuOiE-JMa1BhtJBEmF.jpg','img/product/md/1F/1/Fu9wWFbHcdtuOiE-JMa1BhtJBEmF.jpg'),
(NULL,2,'img/product/sm/1F/2/5577c8f5a5596.jpg','img/product/md/1F/2/5577c8f5a5596.jpg'),
(NULL,2,'img/product/sm/1F/2/150842479370409276086876883869.jpg','img/product/md/1F/2/150842479370409276086876883869.jpg'),
(NULL,2,'img/product/sm/1F/2/1508424833357046127682544933757.jpg','img/product/md/1F/2/1508424833357046127682544933757.jpg'),
(NULL,2,'img/product/sm/1F/2/1508424956580014973516592110703.jpg','img/product/md/1F/2/1508424956580014973516592110703.jpg'),
(NULL,2,'img/product/sm/1F/2/15259390915266.jpg','img/product/md/1F/2/15259390915266.jpg'),
(NULL,2,'img/product/sm/1F/2/15324000459305.jpg','img/product/md/1F/2/15324000459305.jpg'),
(NULL,2,'img/product/sm/1F/2/FuVeL4u8MNVDb0kDHINr7ghfL43G.jpg','img/product/md/1F/2/FuVeL4u8MNVDb0kDHINr7ghfL43G.jpg'),
(NULL,3,'img/product/sm/1F/3/FsYmHfBwGcJZpp-4brJ9_ZxWAOsk.jpg','img/product/md/1F/3/FsYmHfBwGcJZpp-4brJ9_ZxWAOsk.jpg'),
(NULL,3,'img/product/sm/1F/3/552f7ac7df666.jpg','img/product/md/1F/3/552f7ac7df666.jpg'),
(NULL,3,'img/product/sm/1F/3/552f7f07dc881.jpg','img/product/md/1F/3/552f7f07dc881.jpg'),
(NULL,3,'img/product/sm/1F/3/552f83b1940ea.jpg','img/product/md/1F/3/552f83b1940ea.jpg'),
(NULL,3,'img/product/sm/1F/3/552f88726118b.jpg','img/product/md/1F/3/552f88726118b.jpg'),
(NULL,3,'img/product/sm/1F/3/5735a68a0986b.jpg','img/product/md/1F/3/5735a68a0986b.jpg'),
(NULL,3,'img/product/sm/1F/3/576268351bcd7.jpg','img/product/md/1F/3/576268351bcd7.jpg'),
(NULL,4,'img/product/sm/1F/4/1419561768.jpg','img/product/md/1F/4/1419561768.jpg'),
(NULL,4,'img/product/sm/1F/4/1504686236912036578738978690484.jpg','img/product/md/1F/4/1504686236912036578738978690484.jpg'),
(NULL,4,'img/product/sm/1F/4/552f7ac7df666.jpg','img/product/md/1F/4/552f7ac7df666.jpg'),
(NULL,4,'img/product/sm/1F/4/552f800edb21c.jpg','img/product/md/1F/4/552f800edb21c.jpg'),
(NULL,4,'img/product/sm/1F/4/552f8034d06f2.jpg','img/product/md/1F/4/552f8034d06f2.jpg'),
(NULL,4,'img/product/sm/1F/4/5735a67edb8da.jpg','img/product/md/1F/4/5735a67edb8da.jpg'),
(NULL,4,'img/product/sm/1F/4/Fu9wWFbHcdtuOiE-JMa1BhtJBEmF.jpg','img/product/md/1F/4/Fu9wWFbHcdtuOiE-JMa1BhtJBEmF.jpg'),
(NULL,5,'img/product/sm/1F/5/15259390915266.jpg','img/product/md/1F/5/15259390915266.jpg'),
(NULL,5,'img/product/sm/1F/5/1419561755.jpg','img/product/md/1F/5/1419561755.jpg'),
(NULL,5,'img/product/sm/1F/5/1419561768.jpg','img/product/md/1F/5/1419561768.jpg'),
(NULL,5,'img/product/sm/1F/5/15221309025905.jpg','img/product/md/1F/5/15221309025905.jpg'),
(NULL,5,'img/product/sm/1F/5/552f88726118b.jpg','img/product/md/1F/5/552f88726118b.jpg'),
(NULL,5,'img/product/sm/1F/5/55d3f13e71ae9.jpg','img/product/md/1F/5/55d3f13e71ae9.jpg'),
(NULL,5,'img/product/sm/1F/5/580587c702998.jpg','img/product/md/1F/5/580587c702998.jpg'),
(NULL,6,'img/product/sm/1F/6/14543178368797.jpg','img/product/md/1F/6/14543178368797.jpg'),
(NULL,6,'img/product/sm/1F/6/15066722574954.jpg','img/product/md/1F/6/15066722574954.jpg'),
(NULL,6,'img/product/sm/1F/6/15066745745250.png','img/product/md/1F/6/15066745745250.png'),
(NULL,6,'img/product/sm/1F/6/15066746689974.jpg','img/product/md/1F/6/15066746689974.jpg'),
(NULL,6,'img/product/sm/1F/6/150769885026306645975767814922.jpg','img/product/md/1F/6/150769885026306645975767814922.jpg'),
(NULL,6,'img/product/sm/1F/6/1507698856363038719667427372606.jpg','img/product/md/1F/6/1507698856363038719667427372606.jpg'),
(NULL,6,'img/product/sm/1F/6/15076988592590862145534231628.jpg','img/product/md/1F/6/15076988592590862145534231628.jpg'),
(NULL,7,'img/product/sm/1F/7/14467923084610.jpg','img/product/md/1F/7/14467923084610.jpg'),
(NULL,7,'img/product/sm/1F/7/14105132434818.jpg','img/product/md/1F/7/14105132434818.jpg'),
(NULL,7,'img/product/sm/1F/7/5549cf9faf3a7.jpg','img/product/md/1F/7/5549cf9faf3a7.jpg'),
(NULL,7,'img/product/sm/1F/7/FiBYjQulzwdJL59EVHKyoVtS9Ik4.jpg','img/product/md/1F/7/FiBYjQulzwdJL59EVHKyoVtS9Ik4.jpg'),
(NULL,7,'img/product/sm/1F/7/FmqXRZ6tONA5PyBudCb46LAmKMZ1.jpg','img/product/md/1F/7/FmqXRZ6tONA5PyBudCb46LAmKMZ1.jpg'),
(NULL,7,'img/product/sm/1F/7/FnTurumR1tGAgOTv-l2-L8pWXoFg.jpg','img/product/md/1F/7/FnTurumR1tGAgOTv-l2-L8pWXoFg.jpg'),
(NULL,7,'img/product/sm/1F/7/Fp1EIeycLpZg-vkHf0CwjzRtaEkS.jpg','img/product/md/1F/7/Fp1EIeycLpZg-vkHf0CwjzRtaEkS.jpg'),
(NULL,8,'img/product/sm/1F/8/14713415918995.jpg','img/product/md/1F/8/14713415918995.jpg'),
(NULL,8,'img/product/sm/1F/8/14405844286514.jpg','img/product/md/1F/8/14405844286514.jpg'),
(NULL,8,'img/product/sm/1F/8/14491343424708.jpg','img/product/md/1F/8/14491343424708.jpg'),
(NULL,8,'img/product/sm/1F/814702050098591 .jpg','img/product/md/1F/8/14702050098591.png'),
(NULL,8,'img/product/sm/1F/8/15014958925563.jpg','img/product/md/1F/8/15014958925563.jpg'),
(NULL,8,'img/product/sm/1F/8/Flqjik3t2kT_mwPeOr9Pw6K6lquL.jpg','img/product/md/1F/8/Flqjik3t2kT_mwPeOr9Pw6K6lquL.jpg'),
(NULL,8,'img/product/sm/1F/8/FqhQPPGWraRFQd6Gb5CJl9Nhmgzr.jpg','img/product/md/1F/8/FqhQPPGWraRFQd6Gb5CJl9Nhmgzr.jpg'),
-- 1F end
(NULL,9,'img/product/sm/2F/1/FpWltpBLmViTT78QT8xprHdNLDMC.jpg','img/product/md/2F/1/FpWltpBLmViTT78QT8xprHdNLDMC.jpg'),
(NULL,9,'img/product/sm/2F/1/14107610654728.jpg','img/product/md/2F/1/14107610654728.jpg'),
(NULL,9,'img/product/sm/2F/1/552f2bf02d1ff.jpg','img/product/md/2F/1/552f2bf02d1ff.jpg'),
(NULL,9,'img/product/sm/2F/1/552f77f938c45.jpg','img/product/md/2F/1/552f77f938c45.jpg'),
(NULL,9,'img/product/sm/2F/1/5604b30ac5f7d.jpg','img/product/md/2F/1/5604b30ac5f7d.jpg'),
(NULL,9,'img/product/sm/2F/1/FiMAMstAOB9BYFHha0wlKT92Uyxe.jpg','img/product/md/2F/1/FiMAMstAOB9BYFHha0wlKT92Uyxe.jpg'),
(NULL,9,'img/product/sm/2F/1/Fu9wWFbHcdtuOiE-JMa1BhtJBEmF.jpg','img/product/md/2F/1/Fu9wWFbHcdtuOiE-JMa1BhtJBEmF.jpg'),
(NULL,10,'img/product/sm/2F/2/150535718553807212647029247696.jpg','img/product/md/2F/2/150535718553807212647029247696.jpg'),
(NULL,10,'img/product/sm/2F/2/150842479370409276086876883869.jpg','img/product/md/2F/2/150842479370409276086876883869.jpg'),
(NULL,10,'img/product/sm/2F/2/1508424833357046127682544933757.jpg','img/product/md/2F/2/1508424833357046127682544933757.jpg'),
(NULL,10,'img/product/sm/2F/2/1508424956580014973516592110703.jpg','img/product/md/2F/2/1508424956580014973516592110703.jpg'),
(NULL,10,'img/product/sm/2F/2/15324000459305.jpg','img/product/md/2F/2/15324000459305.jpg'),
(NULL,10,'img/product/sm/2F/2/5577c8f5a5596.jpg','img/product/md/2F/2/5577c8f5a5596.jpg'),
(NULL,10,'img/product/sm/2F/2/FuVeL4u8MNVDb0kDHINr7ghfL43G.jpg','img/product/md/2F/2/FuVeL4u8MNVDb0kDHINr7ghfL43G.jpg'),
(NULL,11,'img/product/sm/2F/3/1504686236912036578738978690484.jpg','img/product/md/2F/3/1504686236912036578738978690484.jpg'),
(NULL,11,'img/product/sm/2F/3/552f7ac7df666.jpg','img/product/md/2F/3/552f7ac7df666.jpg'),
(NULL,11,'img/product/sm/2F/3/552f7f07dc881.jpg','img/product/md/2F/3/552f7f07dc881.jpg'),
(NULL,11,'img/product/sm/2F/3/552f83b1940ea.jpg','img/product/md/2F/3/552f83b1940ea.jpg'),
(NULL,11,'img/product/sm/2F/3/552f88726118b.jpg','img/product/md/2F/3/552f88726118b.jpg'),
(NULL,11,'img/product/sm/2F/3/5735a68a0986b.jpg','img/product/md/2F/3/5735a68a0986b.jpg'),
(NULL,11,'img/product/sm/2F/3/576268351bcd7.jpg','img/product/md/2F/3/576268351bcd7.jpg'),
(NULL,12,'img/product/sm/2F/4/Fm2coJd2XGICzYfKK4wjHrFFjbiT.jpg','img/product/md/2F/4/Fm2coJd2XGICzYfKK4wjHrFFjbiT.jpg'),
(NULL,12,'img/product/sm/2F/4/1419561768.jpg','img/product/md/2F/4/1419561768.jpg'),
(NULL,12,'img/product/sm/2F/4/1504686236912036578738978690484.jpg','img/product/md/2F/4/1504686236912036578738978690484.jpg'),
(NULL,12,'img/product/sm/2F/4/552f800edb21c.jpg','img/product/md/2F/4/552f800edb21c.jpg'),
(NULL,12,'img/product/sm/2F/4/552f8034d06f2.jpg','img/product/md/2F/4/552f8034d06f2.jpg'),
(NULL,12,'img/product/sm/2F/4/5735a67edb8da.jpg','img/product/md/2F/4/5735a67edb8da.jpg'),
(NULL,12,'img/product/sm/2F/4/Fu9wWFbHcdtuOiE-JMa1BhtJBEmF.jpg','img/product/md/2F/4/Fu9wWFbHcdtuOiE-JMa1BhtJBEmF.jpg'),
(NULL,13,'img/product/sm/2F/5/14105132434818.jpg','img/product/md/2F/5/14105132434818.jpg'),
(NULL,13,'img/product/sm/2F/5/15318155967097.jpg','img/product/md/2F/5/15318155967097.jpg'),
(NULL,13,'img/product/sm/2F/5/5549cf9faf3a7.jpg','img/product/md/2F/5/5549cf9faf3a7.jpg'),
(NULL,13,'img/product/sm/2F/5/FiBYjQulzwdJL59EVHKyoVtS9Ik4.jpg','img/product/md/2F/5/FiBYjQulzwdJL59EVHKyoVtS9Ik4.jpg'),
(NULL,13,'img/product/sm/2F/5/FmqXRZ6tONA5PyBudCb46LAmKMZ1.jpg','img/product/md/2F/5/FmqXRZ6tONA5PyBudCb46LAmKMZ1.jpg'),
(NULL,13,'img/product/sm/2F/5/FnTurumR1tGAgOTv-l2-L8pWXoFg.jpg','img/product/md/2F/5/FnTurumR1tGAgOTv-l2-L8pWXoFg.jpg'),
(NULL,13,'img/product/sm/2F/5/Fp1EIeycLpZg-vkHf0CwjzRtaEkS.jpg','img/product/md/2F/5/Fp1EIeycLpZg-vkHf0CwjzRtaEkS.jpg'),
(NULL,14,'img/product/sm/2F/6/1419561755.jpg','img/product/md/2F/6/1419561755.jpg'),
(NULL,14,'img/product/sm/2F/6/1419561768.jpg','img/product/md/2F/6/1419561768.jpg'),
(NULL,14,'img/product/sm/2F/6/15221309025905.jpg','img/product/md/2F/6/15221309025905.jpg'),
(NULL,14,'img/product/sm/2F/6/15259390915266.jpg','img/product/md/2F/6/15259390915266.jpg'),
(NULL,14,'img/product/sm/2F/6/552f88726118b.jpg','img/product/md/2F/6/552f88726118b.jpg'),
(NULL,14,'img/product/sm/2F/6/55d3f13e71ae9.jpg','img/product/md/2F/6/55d3f13e71ae9.jpg'),
(NULL,14,'img/product/sm/2F/6/580587c702998.jpg','img/product/md/2F/6/580587c702998.jpg'),
-- 2F end
(NULL,15,'img/product/sm/3F/1/14491343424708.jpg','img/product/md/3F/1/14491343424708.jpg'),
(NULL,15,'img/product/sm/3F/1/14107610654728.jpg','img/product/md/3F/1/14107610654728.jpg'),
(NULL,15,'img/product/sm/3F/1/552f2bf02d1ff.jpg','img/product/md/3F/1/552f2bf02d1ff.jpg'),
(NULL,15,'img/product/sm/3F/1/552f77f938c45.jpg','img/product/md/3F/1/552f77f938c45.jpg'),
(NULL,15,'img/product/sm/3F/1/5604b30ac5f7d.jpg','img/product/md/3F/1/5604b30ac5f7d.jpg'),
(NULL,15,'img/product/sm/3F/1/FiMAMstAOB9BYFHha0wlKT92Uyxe.jpg','img/product/md/3F/1/FiMAMstAOB9BYFHha0wlKT92Uyxe.jpg'),
(NULL,15,'img/product/sm/3F/1/Fu9wWFbHcdtuOiE-JMa1BhtJBEmF.jpg','img/product/md/3F/1/Fu9wWFbHcdtuOiE-JMa1BhtJBEmF.jpg'),
(NULL,16,'img/product/sm/3F/2/151358585488407518508896561411.jpg','img/product/md/3F/2/151358585488407518508896561411.jpg'),
(NULL,16,'img/product/sm/3F/2/150535718553807212647029247696.jpg','img/product/md/3F/2/150535718553807212647029247696.jpg'),
(NULL,16,'img/product/sm/3F/2/1508424833357046127682544933757.jpg','img/product/md/3F/2/1508424833357046127682544933757.jpg'),
(NULL,16,'img/product/sm/3F/2/1508424956580014973516592110703.jpg','img/product/md/3F/2/1508424956580014973516592110703.jpg'),
(NULL,16,'img/product/sm/3F/2/15324000459305.jpg','img/product/md/3F/2/15324000459305.jpg'),
(NULL,16,'img/product/sm/3F/2/5577c8f5a5596.jpg','img/product/md/3F/2/5577c8f5a5596.jpg'),
(NULL,16,'img/product/sm/3F/2/FuVeL4u8MNVDb0kDHINr7ghfL43G.jpg','img/product/md/3F/2/FuVeL4u8MNVDb0kDHINr7ghfL43G.jpg'),
(NULL,17,'img/product/sm/3F/3/14484473165660.jpg','img/product/md/3F/3/14484473165660.jpg'),
(NULL,17,'img/product/sm/3F/3/552f7ac7df666.jpg','img/product/md/3F/3/552f7ac7df666.jpg'),
(NULL,17,'img/product/sm/3F/3/552f7f07dc881.jpg','img/product/md/3F/3/552f7f07dc881.jpg'),
(NULL,17,'img/product/sm/3F/3/552f83b1940ea.jpg','img/product/md/3F/3/552f83b1940ea.jpg'),
(NULL,17,'img/product/sm/3F/3/552f88726118b.jpg','img/product/md/3F/3/552f88726118b.jpg'),
(NULL,17,'img/product/sm/3F/3/5735a68a0986b.jpg','img/product/md/3F/3/5735a68a0986b.jpg'),
(NULL,17,'img/product/sm/3F/3/576268351bcd7.jpg','img/product/md/3F/3/576268351bcd7.jpg'),
(NULL,18,'img/product/sm/3F/4/14422178162559.jpg','img/product/md/3F/4/14422178162559.jpg'),
(NULL,18,'img/product/sm/3F/4/1419561768.jpg','img/product/md/3F/4/1419561768.jpg'),
(NULL,18,'img/product/sm/3F/4/1504686236912036578738978690484.jpg','img/product/md/3F/4/1504686236912036578738978690484.jpg'),
(NULL,18,'img/product/sm/3F/4/552f800edb21c.jpg','img/product/md/3F/4/552f800edb21c.jpg'),
(NULL,18,'img/product/sm/3F/4/552f8034d06f2.jpg','img/product/md/3F/4/552f8034d06f2.jpg'),
(NULL,18,'img/product/sm/3F/4/5735a67edb8da.jpg','img/product/md/3F/4/5735a67edb8da.jpg'),
(NULL,18,'img/product/sm/3F/4/Fu9wWFbHcdtuOiE-JMa1BhtJBEmF.jpg','img/product/md/3F/4/Fu9wWFbHcdtuOiE-JMa1BhtJBEmF.jpg'),
(NULL,19,'img/product/sm/3F/5/14410968959037.jpg','img/product/md/3F/5/14410968959037.jpg'),
(NULL,19,'img/product/sm/3F/5/14105132434818.jpg','img/product/md/3F/5/14105132434818.jpg'),
(NULL,19,'img/product/sm/3F/5/5549cf9faf3a7.jpg','img/product/md/3F/5/5549cf9faf3a7.jpg'),
(NULL,19,'img/product/sm/3F/5/FiBYjQulzwdJL59EVHKyoVtS9Ik4.jpg','img/product/md/3F/5/FiBYjQulzwdJL59EVHKyoVtS9Ik4.jpg'),
(NULL,19,'img/product/sm/3F/5/FmqXRZ6tONA5PyBudCb46LAmKMZ1.jpg','img/product/md/3F/5/FmqXRZ6tONA5PyBudCb46LAmKMZ1.jpg'),
(NULL,19,'img/product/sm/3F/5/FnTurumR1tGAgOTv-l2-L8pWXoFg.jpg','img/product/md/3F/5/FnTurumR1tGAgOTv-l2-L8pWXoFg.jpg'),
(NULL,19,'img/product/sm/3F/5/Fp1EIeycLpZg-vkHf0CwjzRtaEkS.jpg','img/product/md/3F/5/Fp1EIeycLpZg-vkHf0CwjzRtaEkS.jpg'),
(NULL,20,'img/product/sm/3F/6/15259390915266.jpg','img/product/md/3F/6/15259390915266.jpg'),
(NULL,20,'img/product/sm/3F/6/1419561755.jpg','img/product/md/3F/6/1419561755.jpg'),
(NULL,20,'img/product/sm/3F/6//1419561768.jpg.jpg','img/product/md/3F/6/1419561768.jpg'),
(NULL,20,'img/product/sm/3F/6/15221309025905.jpg','img/product/md/3F/6/15221309025905.jpg'),
(NULL,20,'img/product/sm/3F/6/552f88726118b.jpg','img/product/md/3F/6/552f88726118b.jpg'),
(NULL,20,'img/product/sm/3F/6/55d3f13e71ae9.jpg','img/product/md/3F/6/55d3f13e71ae9.jpg'),
(NULL,20,'img/product/sm/3F/6/580587c702998.jpg','img/product/md/3F/6/580587c702998.jpg'),
-- 3F end
(NULL,20,'img/product/sm/4F/1/15312949094364.jpg','img/product/md/4F/1/15312949094364.jpg'),
(NULL,21,'img/product/sm/4F/1/14107610654728.jpg','img/product/md/4F/1/14107610654728.jpg'),
(NULL,21,'img/product/sm/4F/1/14491343424708.jpg','img/product/md/4F/1/14491343424708.jpg'),
(NULL,21,'img/product/sm/4F/1/552f77f938c45.jpg','img/product/md/4F/1/552f77f938c45.jpg'),
(NULL,21,'img/product/sm/4F/1/5604b30ac5f7d.jpg','img/product/md/4F/1/5604b30ac5f7d.jpg'),
(NULL,21,'img/product/sm/4F/1/FiMAMstAOB9BYFHha0wlKT92Uyxe.jpg','img/product/md/4F/1/FiMAMstAOB9BYFHha0wlKT92Uyxe.jpg'),
(NULL,21,'img/product/sm/4F/1/Fu9wWFbHcdtuOiE-JMa1BhtJBEmF.jpg','img/product/md/4F/1/Fu9wWFbHcdtuOiE-JMa1BhtJBEmF.jpg'),
(NULL,22,'img/product/sm/4F/2/14954439942646.jpg','img/product/md/4F/2/14954439942646.jpg'),
(NULL,22,'img/product/sm/4F/2/1508424833357046127682544933757.jpg','img/product/md/4F/2/1508424833357046127682544933757.jpg'),
(NULL,22,'img/product/sm/4F/2/1508424956580014973516592110703.jpg','img/product/md/4F/2/1508424956580014973516592110703.jpg'),
(NULL,22,'img/product/sm/4F/2/151358585488407518508896561411.jpg','img/product/md/4F/2/151358585488407518508896561411.jpg'),
(NULL,22,'img/product/sm/4F/2/15324000459305.jpg','img/product/md/4F/2/15324000459305.jpg'),
(NULL,22,'img/product/sm/4F/2/5577c8f5a5596.jpg','img/product/md/4F/2/5577c8f5a5596.jpg'),
(NULL,22,'img/product/sm/4F/2/FuVeL4u8MNVDb0kDHINr7ghfL43G.jpg','img/product/md/4F/2/FuVeL4u8MNVDb0kDHINr7ghfL43G.jpg'),
(NULL,23,'img/product/sm/4F/3/FvRuA1ApPY8SCmy5DxieAxq9hDZg.jpg','img/product/md/4F/3/FvRuA1ApPY8SCmy5DxieAxq9hDZg.jpg'),
(NULL,23,'img/product/sm/4F/3/552f7ac7df666.jpg','img/product/md/4F/3/552f7ac7df666.jpg'),
(NULL,23,'img/product/sm/4F/3/552f7f07dc881.jpg','img/product/md/4F/3/552f7f07dc881.jpg'),
(NULL,23,'img/product/sm/4F/3/552f83b1940ea.jpg','img/product/md/4F/3/552f83b1940ea.jpg'),
(NULL,23,'img/product/sm/4F/3/552f88726118b.jpg','img/product/md/4F/3/552f88726118b.jpg'),
(NULL,23,'img/product/sm/4F/3/5735a68a0986b.jpg','img/product/md/4F/3/5735a68a0986b.jpg'),
(NULL,23,'img/product/sm/4F/3/576268351bcd7.jpg','img/product/md/4F/3/576268351bcd7.jpg'),
(NULL,24,'img/product/sm/4F/4/14925686681041.jpg','img/product/md/4F/4/14925686681041.jpg'),
(NULL,24,'img/product/sm/4F/4/1419561768.jpg','img/product/md/4F/4/1419561768.jpg'),
(NULL,24,'img/product/sm/4F/4/1504686236912036578738978690484.jpg','img/product/md/4F/4/1504686236912036578738978690484.jpg'),
(NULL,24,'img/product/sm/4F/4/552f800edb21c.jpg','img/product/md/4F/4/552f800edb21c.jpg'),
(NULL,24,'img/product/sm/4F/4/552f8034d06f2.jpg','img/product/md/4F/4/552f8034d06f2.jpg'),
(NULL,24,'img/product/sm/4F/4/5735a67edb8da.jpg','img/product/md/4F/4/5735a67edb8da.jpg'),
(NULL,24,'img/product/sm/4F/4/Fu9wWFbHcdtuOiE-JMa1BhtJBEmF.jpg','img/product/md/4F/4/Fu9wWFbHcdtuOiE-JMa1BhtJBEmF.jpg'),
(NULL,25,'img/product/sm/4F/5/14652257921193.jpg','img/product/md/4F/5/14652257921193.jpg'),
(NULL,25,'img/product/sm/4F/5/14105132434818.jpg','img/product/md/4F/5/14105132434818.jpg'),
(NULL,25,'img/product/sm/4F/5/5549cf9faf3a7.jpg','img/product/md/4F/5/5549cf9faf3a7.jpg'),
(NULL,25,'img/product/sm/4F/5/FiBYjQulzwdJL59EVHKyoVtS9Ik4.jpg','img/product/md/4F/5/FiBYjQulzwdJL59EVHKyoVtS9Ik4.jpg'),
(NULL,25,'img/product/sm/4F/5/FmqXRZ6tONA5PyBudCb46LAmKMZ1.jpg','img/product/md/4F/5/FmqXRZ6tONA5PyBudCb46LAmKMZ1.jpg'),
(NULL,25,'img/product/sm/4F/5/FnTurumR1tGAgOTv-l2-L8pWXoFg.jpg','img/product/md/4F/5/FnTurumR1tGAgOTv-l2-L8pWXoFg.jpg'),
(NULL,25,'img/product/sm/4F/5/Fp1EIeycLpZg-vkHf0CwjzRtaEkS.jpg','img/product/md/4F/5/Fp1EIeycLpZg-vkHf0CwjzRtaEkS.jpg'),
(NULL,26,'img/product/sm/4F/6/14467036423512.jpg','img/product/md/4F/6/14467036423512.jpg'),
(NULL,26,'img/product/sm/4F/6/1419561755.jpg','img/product/md/4F/6/1419561755.jpg'),
(NULL,26,'img/product/sm/4F/6/1419561768.jpg','img/product/md/4F/6/1419561768.jpg'),
(NULL,26,'img/product/sm/4F/6/15221309025905.jpg','img/product/md/4F/6/15221309025905.jpg'),
(NULL,26,'img/product/sm/4F/6/552f88726118b.jpg','img/product/md/4F/6/552f88726118b.jpg'),
(NULL,26,'img/product/sm/4F/6/55d3f13e71ae9.jpg','img/product/md/4F/6/55d3f13e71ae9.jpg'),
(NULL,26,'img/product/sm/4F/6/580587c702998.jpg','img/product/md/4F/6/580587c702998.jpg'),
-- 4F end
(NULL,27,'img/product/sm/5F/1/15136729151740034250255343091895.jpg','img/product/md/5F/1/15136729151740034250255343091895.jpg'),
(NULL,27,'img/product/sm/5F/1/14107610654728.jpg','img/product/md//5F/1/14107610654728.jpg'),
(NULL,27,'img/product/sm/5F/1/14491343424708.jpg','img/product/md/5F/1/14491343424708.jpg'),
(NULL,27,'img/product/sm/5F/1/552f77f938c45.jpg','img/product/md/5F/1/552f77f938c45.jpg'),
(NULL,27,'img/product/sm/5F/1/5604b30ac5f7d.jpg','img/product/md/5F/1/5604b30ac5f7d.jpg'),
(NULL,27,'img/product/sm/5F/1/FiMAMstAOB9BYFHha0wlKT92Uyxe.jpg','img/product/md/5F/1/FiMAMstAOB9BYFHha0wlKT92Uyxe.jpg'),
(NULL,27,'img/product/sm/5F/1/Fu9wWFbHcdtuOiE-JMa1BhtJBEmF.jpg','img/product/md/5F/1/Fu9wWFbHcdtuOiE-JMa1BhtJBEmF.jpg'),
(NULL,28,'img/product/sm/5F/2/FgRqn1zszBgM3hWbCQyimdJejLIi.jpg','img/product/md/5F/2/FgRqn1zszBgM3hWbCQyimdJejLIi.jpg'),
(NULL,28,'img/product/sm/5F/2/1508424833357046127682544933757.jpg','img/product/md/5F/2/1508424833357046127682544933757.jpg'),
(NULL,28,'img/product/sm/5F/2/1508424956580014973516592110703.jpg','img/product/md/5F/2/1508424956580014973516592110703.jpg'),
(NULL,28,'img/product/sm/5F/2/15154223274760.jpg','img/product/md/5F/2/15154223274760.jpg'),
(NULL,28,'img/product/sm/5F/2/15324000459305.jpg','img/product/md/5F/2/15324000459305.jpg'),
(NULL,28,'img/product/sm/5F/2/5577c8f5a5596.jpg','img/product/md/5F/2/5577c8f5a5596.jpg'),
(NULL,28,'img/product/sm/5F/2/FuVeL4u8MNVDb0kDHINr7ghfL43G.jpg','img/product/md/5F/2/FuVeL4u8MNVDb0kDHINr7ghfL43G.jpg'),
(NULL,29,'img/product/sm/5F/3/FnbwnJLmBGXjH6zyXyp1mPZAVXev.jpg','img/product/md/5F/3/FnbwnJLmBGXjH6zyXyp1mPZAVXev.jpg'),
(NULL,29,'img/product/sm/5F/3/552f7ac7df666.jpg','img/product/md/5F/3/552f7ac7df666.jpg'),
(NULL,29,'img/product/sm/5F/3/552f7f07dc881.jpg','img/product/md/5F/3/552f7f07dc881.jpg'),
(NULL,29,'img/product/sm/5F/3/552f83b1940ea.jpg','img/product/md/5F/3/552f83b1940ea.jpg'),
(NULL,29,'img/product/sm/5F/3/552f88726118b.jpg','img/product/md/5F/3/552f88726118b.jpg'),
(NULL,29,'img/product/sm/5F/3/5735a68a0986b.jpg','img/product/md/5F/3/5735a68a0986b.jpg'),
(NULL,29,'img/product/sm/5F/3/576268351bcd7.jpg','img/product/md/5F/3/576268351bcd7.jpg'),
(NULL,30,'img/product/sm/5F/4/FrwxrlrT7FCCB9ssZxDXNMcI1DmN.jpg','img/product/md/5F/4/FrwxrlrT7FCCB9ssZxDXNMcI1DmN.jpg'),
(NULL,30,'img/product/sm/5F/4/1419561768.jpg','img/product/md/5F/4/1419561768.jpg'),
(NULL,30,'img/product/sm/5F/4/1504686236912036578738978690484.jpg','img/product/md/5F/4/1504686236912036578738978690484.jpg'),
(NULL,30,'img/product/sm/5F/4/552f800edb21c.jpg','img/product/md/5F/4/552f800edb21c.jpg'),
(NULL,30,'img/product/sm/5F/4/552f8034d06f2.jpg','img/product/md/5F/4/552f8034d06f2.jpg'),
(NULL,30,'img/product/sm/5F/4/5735a67edb8da.jpg','img/product/md/5F/4/5735a67edb8da.jpg'),
(NULL,30,'img/product/sm/5F/4/Fu9wWFbHcdtuOiE-JMa1BhtJBEmF.jpg','img/product/md/5F/4/Fu9wWFbHcdtuOiE-JMa1BhtJBEmF.jpg'),
(NULL,31,'img/product/sm/5F/5/15232433616585.jpg','img/product/md/5F/5/15232433616585.jpg'),
(NULL,31,'img/product/sm/5F/5/14105132434818.jpg','img/product/md/5F/5/14105132434818.jpg'),
(NULL,31,'img/product/sm/5F/5/5549cf9faf3a7.jpg','img/product/md/5F/5/5549cf9faf3a7.jpg'),
(NULL,31,'img/product/sm/5F/5/FiBYjQulzwdJL59EVHKyoVtS9Ik4.jpg','img/product/md/5F/5/FiBYjQulzwdJL59EVHKyoVtS9Ik4.jpg'),
(NULL,31,'img/product/sm/5F/5/FmqXRZ6tONA5PyBudCb46LAmKMZ1.jpg','img/product/md/5F/5/FmqXRZ6tONA5PyBudCb46LAmKMZ1.jpg'),
(NULL,31,'img/product/sm/5F/5/FnTurumR1tGAgOTv-l2-L8pWXoFg.jpg','img/product/md/5F/5/FnTurumR1tGAgOTv-l2-L8pWXoFg.jpg'),
(NULL,31,'img/product/sm/5F/5/Fp1EIeycLpZg-vkHf0CwjzRtaEkS.jpg','img/product/md/5F/5/Fp1EIeycLpZg-vkHf0CwjzRtaEkS.jpg'),
(NULL,32,'img/product/sm/5F/6/FnQ39_T9XNGF03HhlIRlLlJjyeBX.jpg','img/product/md/5F/6/FnQ39_T9XNGF03HhlIRlLlJjyeBX.jpg'),
(NULL,32,'img/product/sm/5F/6/1419561755.jpg','img/product/md/5F/6/1419561755.jpg'),
(NULL,32,'img/product/sm/5F/6/1419561768.jpg','img/product/md/5F/6/1419561768.jpg'),
(NULL,32,'img/product/sm/5F/6/14467036423512.jpg','img/product/md/5F/6/14467036423512.jpg'),
(NULL,32,'img/product/sm/5F/6/15221309025905.jpg','img/product/md/5F/6/15221309025905.jpg'),
(NULL,32,'img/product/sm/5F/6/552f88726118b.jpg','img/product/md/5F/6/552f88726118b.jpg'),
(NULL,32,'img/product/sm/5F/6/55d3f13e71ae9.jpg','img/product/md/5F/6/55d3f13e71ae9.jpg');


/**用户信息**/
INSERT INTO qy_user VALUES
(NULL, 'dingding', '123456', 'ding@qq.com', '13501234567', '丁伟', '1'),
(NULL, 'dangdang', '123456', 'dang@qq.com', '13501234568', '林当', '1'),
(NULL, 'doudou', '123456', 'dou@qq.com', '13501234569', '窦志强', '1'),
(NULL, 'yaya', '123456', 'ya@qq.com', '13501234560', '秦小雅', '0');

