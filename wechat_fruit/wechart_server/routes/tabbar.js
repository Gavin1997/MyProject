const express = require("express");
const router = express.Router();
const pool = require("../pool");


//1.查询拼团页面信息
router.get("/pingtuan",(req,res)=>{
   var sql = 'SELECT `fpid`, `title`, `price`, `old_price`, `pic` FROM `fruit_pintuan` WHERE 1';
   pool.query(sql,[],(err,result)=>{
     if(err) throw err;
     res.send(result);
   })
});
//2.查询门店页面信息
router.get("/store",(req,res)=>{
  var sql = 'SELECT `fsid`, `store_name`, `store_title`, `store_details`, `store_callway`, `icon_phone`, `icon_position`, `stroe_img0`, `store_img1`, `store_img2`, `store_img3`, `store_img4` FROM `fruit_store` WHERE 1';
  pool.query(sql,[],(err,result)=>{
    if(err) throw err;
    res.send(result);
  })
});
//3.获取我的页面信息
router.get("/profile",(req,res)=>{
  var sql = 'SELECT `id`, `bg`, `user_avatar`, `pay`, `deliver`, `re_goods`, `evaluate`, `shopcar`, `vip`, `discount`, `score`, `pingtuan`, `inform` FROM `fruit_profile` WHERE 1';
  pool.query(sql,[],(err,result)=>{
    if(err) throw err;
    res.send(result);
  })
})

module.exports =  router;