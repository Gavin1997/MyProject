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
})

//2.获取主页的信息
router.get("/index",(req,res)=>{
  var sql = 'SELECT `iid`, `title`, `details`, `count_num`, `sold_count`, `price`, `old_price`, `pics` FROM `fruit_index` WHERE 1';
  pool.query(sql,[],(err,result)=>{
    if(err) throw err;
    res.send(result);
  })
})




module.exports = router;