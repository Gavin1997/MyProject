const express = require("express");
const  router = express.Router();
const pool = require("../pool");

//1.获取主页轮播图信息
router.get("/imglist",(req,res)=>{
  var sql = 'SELECT `cid`, `img_url`, `title`, `pid` FROM `fruit_carousel` WHERE 1';
  pool.query(sql,[],(err,result)=>{
    if(err) throw err;
    res.send(result);
  })
});

//2.获取主页的信息
router.get("/index",(req,res)=>{
  var sql = 'SELECT `iid`, `title`, `details`, `count_num`, `sold_count`, `price`, `old_price`, `pics` FROM `fruit_index` WHERE 1';
  pool.query(sql,[],(err,result)=>{
    if(err) throw err;
    res.send(result);
  })
});
// 根据id查询产品消息信息
router.get("/details",(req,res)=>{
  var iid = req.query.iid;
  var sql = 'SELECT `iid`, `title`, `price`, `old_price`, `md`, `lg` FROM `fruit_index` WHERE iid = ?';
  pool.query(sql,[iid],(err,result)=>{
    if(err) throw err;
    if(result.length>0){
      res.send({code:1,data:result})
    }else{
      res.send({code:-1,msg:"没有找到该商品哦,请重新再试一试"})
    }
  })
})




module.exports = router;