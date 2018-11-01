SET NAMES UTF8;
DROP DATABASE IF EXISTS fruit;
CREATE DATABASE fruit CHARSET=UTF8;
USE fruit;

/**水果的轮播图**/
CREATE TABLE fruit_carousel(
   cid int PRIMARY KEY AUTO_INCREMENT,
   img_url VARCHAR(256),
   title VARCHAR(128),
   pid INT
);
INSERT INTO `fruit_carousel` (`cid`, `img_url`, `title`, `pid`) VALUES
(1,'http://127.0.0.1:3333/img/carousel/carousel01.png','顶部首页轮播商品1',1),
(2,'http://127.0.0.1:3333/img/carousel/carousel02.png','顶部首页轮播商品2',2),
(3,'http://127.0.0.1:3333/img/carousel/carousel03.png','顶部首页轮播商品3',3),
(4,'http://127.0.0.1:3333/img/carousel/carousel04.png','尾部首页轮播商品4',4),
(5,'http://127.0.0.1:3333/img/carousel/carousel05.png','尾部首页轮播商品5',5);

/** 图片存放 主页商品**/
CREATE TABLE fruit_index(
   iid INT PRIMARY KEY AUTO_INCREMENT,
   title VARCHAR(128),
   details VARCHAR(256),
   count_num  INT, #总数量
   sold_count INT ,#销售数量,
   price DECIMAL(10,2),  #在售价格
   old_price DECIMAL(10,2), #没有促销的价格
   pics VARCHAR(256) #商品的图片
);
INSERT INTO `fruit_index`(`iid`, `title`, `details`, `count_num`, `sold_count`, `price`, `old_price`, `pics`) VALUES
-- 秒杀
(1,'水果图标','水果图标',1000,1000,1000,1000,'http://127.0.0.1:3333/img/index/index1.png'),
(2,'红心猕猴桃','红心猕猴桃,好吃看得见',2000,800,29.9,59.9,'http://127.0.0.1:3333/img/index/mihoutao.png'),
(3,'澳洲进口荔枝新鲜水果','澳洲鲜荔枝甜度好，浓郁的香味四处弥漫，水分足而使得澳洲荔枝多汁鲜嫩，细腻的果肉美味无穷，让人回味许久',1000,500,29.9,59.9,'http://127.0.0.1:3333/img/product/jiezhi.jpg'),
(4,'美国进口车厘子 1榜装,果径26-28 新鲜 巴适','美国车厘子甜度好，浓郁的香味四处弥漫，水分足多汁鲜嫩，细腻的果肉美味无穷，让人回味许久',1200,800,59.9,89.9,'http://127.0.0.1:3333/img/product/chelizi.jpg'),
(5,'新西兰绿奇异果 36#果 6个装 味道甘甜,富含维生素C','新西兰奇异果甜度好，浓郁的香味四处弥漫，水分足多汁鲜嫩，细腻的果肉美味无穷，让人回味许久',800,300,26.9,49.9,'http://127.0.0.1:3333/img/product/qiyiguo.jpg'),
(6,'泰国进口 金枕头榴莲 泰国进口 香出新高度','榴莲是驰名的优质佳果。成熟果肉浅黄，黏性多汁，酥软味甜，吃起来具有陈乳酪和洋葱味，初尝似有异味，续食清凉甜蜜，回味甚佳，故有“流连（榴莲）忘返”的美誉。别名又叫韶子。它原产于东南亚，被称为“万果之王”。榴莲成熟后自己落下，通常都是在深夜或清晨掉落。',1800,1300,96.9,139.9,'http://127.0.0.1:3333/img/product/liulan.jpg'),
(7,'心扉鲜果礼盒 (进口苹果鲜橙龙眼)','每一口都是味蕾的享受',800,500,59.9,109.0,'http://127.0.0.1:3333/img/product/longyan.png'),
(8,'Mom 的 Love 鲜果礼盒','给妈妈的一份微薄的爱,从简单的水果开始,心里甜蜜蜜,就如苹果一般',5000,1000,199.9,268.0,'http://127.0.0.1:3333/img/product/lihe.jpg'),
-- -- 精选
(9,'河阴石榴','河阴石榴,甜蜜蜜到心里',2000,800,29.9,59.9,'http://127.0.0.1:3333/img/index/cherry.png'),
(10,'大块石榴,红心石榴,甜到心里','性味甘、酸涩、温，具有杀虫、收敛、涩肠、止痢等功效。石榴果实营养丰富，维生素C含量比苹果、梨要高出一二倍。',2000,500,49.9,59.9,'http://127.0.0.1:3333/img/product/shiliu.jpg'),
(11,'墨西哥进口牛油果','牛油果的果实是一种营养价值很高的水果，含多种维生素、丰富的脂肪酸和蛋白质和高含量的钠、钾、镁、钙等元素，营养价值可与奶油媲美，甚至有“森林奶油”的美称，一般作为生果食用，也可被制作为菜肴和罐头。',1500,500,36.9,59.9,'http://127.0.0.1:3333/img/product/niuyopguo.jpg'),
(12,'顺丰包邮 陕西户木紫葡萄,红心石榴,甜到心里','葡萄堪称水果界的美容大王，它的果肉、果汁和种子内都含有许多对肌肤有益的营养成分，它具有抗氧化、防皱和除皱等功效，还能让肌肤保湿，让肤色变得更加水润透亮，此外，葡萄中所含的多酚可保护肌肤，令肌肤再生，使肌肤更有弹性。',2200,400,112.9,159.9,'http://127.0.0.1:3333/img/product/putao.jpg'),

-- 新品
(13,'山竹果后','水果王国的 山竹果后 爽口顺滑,清甜多汁',1000,1000,1000,1000,'http://127.0.0.1:3333/img/index/shanzu.png'),
(14,'山竹果 进口泰国 原汁原味','山竹壳厚硬呈紫色，肉雪白嫩软，味甜略带酸，非常可口，并被称为水果女皇.',1000,200,69.9,89.9,'http://127.0.0.1:3333/img/product/aiqiguo.jpg'),
(15,'顺丰包邮 陕西户木紫葡萄,红心石榴,甜到心里','葡萄堪称水果界的美容大王，它的果肉、果汁和种子内都含有许多对肌肤有益的营养成分，它具有抗氧化、防皱和除皱等功效，还能让肌肤保湿，让肤色变得更加水润透亮，此外，葡萄中所含的多酚可保护肌肤，令肌肤再生，使肌肤更有弹性。',2200,400,112.9,159.9,'http://127.0.0.1:3333/img/product/putao.jpg'),
(16,'红苹果,如少女的脸庞,粉里透红','道教把苹果视为仙果，它也是北欧神话中的青春之果，是希腊神话中的爱情之果,平平安安,幸幸福福',1200,500,89.9,100.9,'http://127.0.0.1:3333/img/product/apple.jpg');

/***********************产品************************************/
CREATE TABLE fruit_product(
   pid INT PRIMARY KEY AUTO_INCREMENT,
   title VARCHAR(128),
   price DECIMAL(10,2),  #在售价格
   old_price DECIMAL(10,2), #没有促销的价格
   md VARCHAR(256), #商品的图片
   lg VARCHAR(256)
);
INSERT INTO `fruit_product`(`pid`, `title`, `price`, `old_price`, `md`, `lg`) VALUES
(1,'爱奇果,进口泰国山竹1.5Kg装 中大国 新鲜山竹3斤 进口热带水果',69.90,89.90,'http://127.0.0.1:3333/img/product/aiqiguo.jpg','http://127.0.0.1:3333/img/product/lg/shanzu.jpg'),
(2,'新西兰绿奇异果 36#果 6个装】西兰绿奇异果 6',49.90,89.90,'http://127.0.0.1:3333/img/product/qiyiguo.jpg','http://127.0.0.1:3333/img/product/lg/qiyiguo.jpg'),
(3,'澳洲进口荔枝 新鲜水果',59.90,119.90,'http://127.0.0.1:3333/img/product/jiezhi.jpg','http://127.0.0.1:3333/img/product/lg/lizhi.jpg'),
(4,'美国进口车厘子 1磅装 果径约26-28mm 新鲜水果',89.90,119.90,'http://127.0.0.1:3333/img/product/chelizi.jpg','http://127.0.0.1:3333/img/product/lg/chelizi.jpg'),
(5,'新西兰绿奇异果 36#果 6个装】西兰绿奇异果 6',49.90,89.90,'http://127.0.0.1:3333/img/product/qiyiguo.jpg','http://127.0.0.1:3333/img/product/lg/qiyiguo.jpg'),
(6,'泰国进口 金枕头榴莲 泰国进口 金枕头榴莲 2.5-3kg 1个装',49.0,89.90,'http://127.0.0.1:3333/img/product/liulan.jpg','http://127.0.0.1:3333/img/product/lg/liulan.jpg'),
(7,'心扉鲜果礼盒（进口苹果鲜橙龙眼）',109.90,119.90,'http://127.0.0.1:3333/img/product/longyan.png','http://127.0.0.1:3333/img/product/lg/xianguolihe.jpg'),
(8,'Moms Love鲜果礼盒 （进口苹果火龙果橙子奇异果）',269.90,339.90,'http://127.0.0.1:3333/img/product/lihe.jpg','http://127.0.0.1:3333/img/product/lg/momlove.jpg'),

(9,'石榴 6个 单果300-500g 新鲜甜石榴水果',49.90,59.90,'http://127.0.0.1:3333/img/product/shiliu.jpg','http://127.0.0.1:3333/img/product/lg/shiliu.jpg'),
(10,'石榴 6个 单果300-500g 新鲜甜石榴水果',49.90,59.90,'http://127.0.0.1:3333/img/product/shiliu.jpg','http://127.0.0.1:3333/img/product/lg/shiliu.jpg'),
(11,'墨西哥进口牛油果 6个 单果110-150g 中大鳄梨新鲜水',36.90,49.90,'http://127.0.0.1:3333/img/product/niuyopguo.jpg','http://127.0.0.1:3333/img/product/lg/niuyouguo.jpg'),
(12,'顺丰空运 陕西户太八号葡萄新鲜水果 2.5kg 非云南无籽夏黑葡萄提子',119.0,189.90,'http://127.0.0.1:3333/img/product/putao.jpg','http://127.0.0.1:3333/img/product/lg/putao.jpg'),


(13,'爱奇果,进口泰国山竹1.5Kg装 中大国 新鲜山竹3斤 进口热带水果',69.90,89.90,'http://127.0.0.1:3333/img/product/aiqiguo.jpg','http://127.0.0.1:3333/img/product/lg/shanzu.jpg'),
(14,'山竹果 进口泰国 原汁原味',69.9,89.9,'http://127.0.0.1:3333/img/product/aiqiguo.jpg','http://127.0.0.1:3333/img/product/lg/shanzu.jpg'),
(15,'顺丰空运 陕西户太八号葡萄新鲜水果 2.5kg 非云南无籽夏黑葡萄提子',119.0,189.90,'http://127.0.0.1:3333/img/product/putao.jpg','http://127.0.0.1:3333/img/product/lg/putao.jpg'),
(16,'红苹果,如少女的脸庞,粉里透红',56.90,66.90,'http://127.0.0.1:3333/img/product/apple.jpg','http://127.0.0.1:3333/img/product/lihe.jpg'),
(17,'澳洲进口荔枝 新鲜水果',59.90,119.90,'http://127.0.0.1:3333/img/product/jiezhi.jpg','http://127.0.0.1:3333/img/product/lg/lizhi.jpg'),


(18,'云南无眼凤梨2个装大果 薄皮非菠萝 约6-8斤左右',23.90,49.90,'http://127.0.0.1:3333/img/product/yunnan.jpg','http://127.0.0.1:3333/img/product/lg/boluo.jpg'),
(19,'红苹果,如少女的脸庞,粉里透红',56.90,66.90,'http://127.0.0.1:3333/img/product/apple.jpg','http://127.0.0.1:3333/img/product/lihe.jpg');

/*****************拼团***********************/
CREATE TABLE fruit_pintuan(
    fpid INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(128),
    price DECIMAL(10,2),  #在售价格
    old_price DECIMAL(10,2), #没有促销的价格
    pic VARCHAR(256)
);
INSERT INTO `fruit_pintuan`(`fpid`, `title`, `price`, `old_price`, `pic`) VALUES 
(null,'泰国进口 金枕头榴莲 泰国进口 金枕头榴莲 2.5-3kg 1个装',99.90,149.90,'http://127.0.0.1:3333/img/pingtuan/liulan.png'),
(null,'新西兰绿奇异果 36#果 6个装】西兰绿奇异果 6',19.90,49.90,'http://127.0.0.1:3333/img/pingtuan/mihoutao.png'),
(null,'美国进口车厘子 1磅装 果径约26-28mm 新鲜水果',89.90,119.90,'http://127.0.0.1:3333/img/pingtuan/yintao.png'),
(null,'进口水果,菲律宾进口凤梨两个装 单果约重100-1500g 养颜护肤',45.90,89.90,'http://127.0.0.1:3333/img/pingtuan/boluo.png'),
(null,'澳洲进口荔枝 新鲜水果',29.90,59.90,'http://127.0.0.1:3333/img/pingtuan/lizhi.png');

/*****************门店***********************/
CREATE TABLE fruit_store(
    fsid INT PRIMARY KEY AUTO_INCREMENT,
    store_name VARCHAR(24),
    store_title VARCHAR(24),
    store_details VARCHAR(256),
    store_callway VARCHAR(24),
    icon_phone VARCHAR(256),
    icon_position VARCHAR(256),
    stroe_img0 VARCHAR(256),
    store_img1 VARCHAR(256),
    store_img2 VARCHAR(256),
    store_img3 VARCHAR(256),
    store_img4 VARCHAR(256)
);
INSERT INTO `fruit_store`(`fsid`, `store_name`, `store_title`, `store_details`, `store_callway`, `icon_phone`, `icon_position`, `stroe_img0`, `store_img1`, `store_img2`, `store_img3`, `store_img4`) VALUES
(null,'小农果园','品牌介绍','我们都是精选最新鲜的水果提供给客户，坚持做：更好吃“的水果，保证粒粒鲜果在手，给都市人群达到维生素的满满补充，致力于让天下人享受水果好生活。',
 '联系方式','http://127.0.0.1:3333/img/store/phone.png','http://127.0.0.1:3333/img/store/nav.png',
 'http://127.0.0.1:3333/img/store/mendian.png','http://127.0.0.1:3333/img/store/mendian1.png',
 'http://127.0.0.1:3333/img/store/mendian2.png','http://127.0.0.1:3333/img/store/mendian3.png',
 'http://127.0.0.1:3333/img/store/mendian4.png'
);
/*****************我的***********************/
CREATE TABLE fruit_profile(
    id INT PRIMARY KEY AUTO_INCREMENT,
    bg VARCHAR(256),
    user_avatar VARCHAR(256),
    pay VARCHAR(256), #待付款
    deliver VARCHAR(256), #发货
    re_goods VARCHAR(256),#待收货
    evaluate VARCHAR(256),#待评价
    shopcar VARCHAR(256),#购物车
    vip VARCHAR(256), #会员卡
    discount VARCHAR(256), #优惠券
    score VARCHAR(256), #积分
    pingtuan VARCHAR(256),#拼团
    inform VARCHAR(256)#系统通知
);
INSERT INTO `fruit_profile`(`id`, `bg`, `user_avatar`, `pay`, `deliver`, `re_goods`, `evaluate`, `shopcar`, `vip`, `discount`, `score`, `pingtuan`, `inform`) VALUES
(null,'http://127.0.0.1:3333/img/profile/bg.png','http://127.0.0.1:3333/img/profile/portrait.jpg','http://127.0.0.1:3333/img/profile/pay.png','http://127.0.0.1:3333/img/profile/Shipping.png','http://127.0.0.1:3333/img/profile/havest.png','http://127.0.0.1:3333/img/profile/comment.png',
'http://127.0.0.1:3333/img/profile/shopcar.png','http://127.0.0.1:3333/img/profile/vip.png','http://127.0.0.1:3333/img/profile/discount.png','http://127.0.0.1:3333/img/profile/score.png','http://127.0.0.1:3333/img/profile/ours.png','http://127.0.0.1:3333/img/profile/inform.png'
);



