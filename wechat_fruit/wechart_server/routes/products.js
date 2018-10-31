const express = require("express");
const router = express.Router();
const pool = require("../pool");

//1. 查询商品的详情
router.get("/products", (req, res) => {
  var sql = 'SELECT `pid`, `title`, `price`, `old_price`, `md`, `lg` FROM `fruit_product` WHERE 1';
  pool.query(sql, [], (err, result) => {
    if (err) throw err;
    res.send(result);
  })
});
//2.查询商品的详情分页
router.get("/list", (req, res) => {
  var sql = 'SELECT `pid`, `title`, `price`, `old_price`, `md`, `lg` FROM `fruit_product` WHERE 1';
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

module.exports = router;