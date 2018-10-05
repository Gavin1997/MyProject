const express = require("express");
const router = express.Router();
const pool = require("../pool");

//功能一  获取所有商品列表 模糊查询
router.get("/", (req, res) => {
    // data={ pageCount:0,pno:0,products:[]}
    //http://127.0.0.1:3000/products/?kw=macbook
    var kw = req.query.kw;
    var kws = kw.split(" ");
    kws.forEach((elem, i, kws) => {
        kws[i] = ` title like '%${elem}%' `
    });
    var str = kws.join(" and ");
    var where = `where ${ str }`;
    var sql = "SELECT *, (SELECT md FROM qy_product_pic WHERE product_id=tid LIMIT 1) AS md FROM qy_travel_product ";
    sql += where;
    pool.query(sql, [], (err, result) => {
        if (err) throw err;
        data = {};
        data.pno = parseInt(req.query.pno);
        data.pageSize = req.query.pageSize;
        if (!data.pageSize) {
            data.pageSize = 10
        };
        data.pageCount = Math.ceil(result.length / data.pageSize);
        data.products = result.slice(data.pno * data.pageSize, data.pno * data.pageSize + data.pageSize);
        if (data.pno < data.pageCount) {
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
    });


});




module.exports = router;