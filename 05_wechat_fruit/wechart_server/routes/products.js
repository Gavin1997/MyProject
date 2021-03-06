const express = require("express");
const router = express.Router();
const pool = require("../pool");

//1. 查询商品的详情
router.get("/products", (req, res) => {
  var sql = 'SELECT * FROM `fruit_product` WHERE 1';
  pool.query(sql, [], (err, result) => {
    if (err) throw err;
    res.send(result);
  })
});
//2.根据产品的id查询商品的详情
router.get("/details",(req,res)=>{
  var pid = req.query.pid;
  var sql = 'SELECT * FROM `fruit_product` WHERE pid = ?';
  pool.query(sql,[pid],(err,result)=>{
    if(err) throw err;
    if(result.length>0){
      res.send({code:1,data:result})
    }else{
      res.send({code:-1,msg:"没有找到该商品哦,请重新再试一试"})
    }
  })
})
//3.查询商品的详情分页
router.get("/list", (req, res) => {
  var sql = 'SELECT * FROM `fruit_product` WHERE 1';
  data = {};
  pool.query(sql, [], (err, result) => {
    if (err) throw err;
    data.pno = parseInt(req.query.pno);
    data.pageSize = parseInt(req.query.pageSize);
    if (!data.pno) {
      data.pno = 0;
    }
    if (!data.pageSize) {
      data.pageSize = 4;
    }
    data.pageCount = Math.ceil(result.length / data.pageSize);
    data.products = result.slice(data.pno * data.pageSize, data.pno * data.pageSize + data.pageSize);
    if (data.pno <= data.pageCount) {
      res.send({
        code: 1,
        data
      })
    } else {
      res.send({
        code: -1,
        data,
        msg: `没有那么多信息啦,最多只有${data.pageCount}页哦,请重新试试吧`
      })
    }
  })
});
//4.模糊查询
router.get("/search",(req,res)=>{
  var kw = req.query.kw;
  var kws = kw.split(" ");
  kws.forEach((elem,i,kws)=>{
    kws[i] = ` title like '%${elem}%' `
  })
  var str = kws.join(" and ");
  var where = ` WHERE ${str}`;
  var sql = "SELECT `pid`, `title`, `price`, `old_price`, `isdiscount`, `md`, `lg` FROM `fruit_product`";
  sql += where;
  pool.query(sql,[kw],(err,result)=>{
    if(err) throw err;
    if(result.length>0){
      res.send({code:1,data:result,msg:"查询成功"})
    }else{
      res.send({code:-1,data:result,msg:"没有知道您想要的产品哦,请看看别的吧"})
    }
  })
});

module.exports = router;