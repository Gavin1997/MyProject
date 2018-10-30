const express = require("express");
const router = express.Router();
const pool = require("../pool");

//1. 查询商品的详情
router.get("/products",(req,res)=>{
  var sql = 'SELECT `pid`, `title`, `price`, `old_price`, `md`, `lg` FROM `fruit_product` WHERE 1';
  pool.query(sql,[],(err,result)=>{
    if(err) throw err;
    res.send(result);
  })
});

module.exports =  router;