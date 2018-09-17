SET NAMES UTF8;
DROP DATABASE IF EXISTS qy;
CREATE DATABASE qy CHARSET=UTF8;
use qy
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

/****首页商品****/
CREATE  TABLE qy_index_product(
    qid INT PRIMARY KEY AUTO_INCREMENT,  
    title VARCHAR(128),           #主标题
    details VARCHAR(128),         #旅游描述
    price  DECIMAL(10,0)         #价格
);
/**  产品图片*/
CREATE TABLE qy_product_pic(
     pid INT PRIMARY KEY AUTO_INCREMENT,
     product_id INT,              #产品编号
     lg VARCHAR(128)              #图片路径    
);
/*******************/
/******数据导入******/
/*******************/
/**用户信息**/
INSERT INTO qy_user VALUES
(NULL, 'dingding', '123456', 'ding@qq.com', '13501234567', '丁伟', '1'),
(NULL, 'dangdang', '123456', 'dang@qq.com', '13501234568', '林当', '1'),
(NULL, 'doudou', '123456', 'dou@qq.com', '13501234569', '窦志强', '1'),
(NULL, 'yaya', '123456', 'ya@qq.com', '13501234560', '秦小雅', '0');
/**首页商品**/
INSERT INTO qy_index_product VALUES
(NULL,NULL,'[国庆][中秋]上海直飞甲米6-7天往返含税机票(含一晚甲米品质酒店国庆][中秋]上海直飞甲米6-7天往返含税机票(含一晚甲米品质酒店住宿+可加购20元拼车接机服务))','499');
/**产品图片**/
INSERT INTO qu_product_pic VALUE
(NULL,1,'img/1F/552fcb41463c.jpg');
