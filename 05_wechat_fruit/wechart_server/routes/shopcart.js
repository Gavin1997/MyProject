const express = require("express");
const router = express.Router();
const pool = require("../pool");
//功能一 保存产品到购物车；
router.get("/add",(req,res)=>{
    var pid = parseInt(req.query.pid);
    if(!pid){
        res.send({code:-1,msg:"出错啦"})
         return
    }
    var title = req.query.title;
    if(!title){
        res.send({code:-1,msg:"出错啦"})
         return
    }
    var price = req.query.price;
    if(!price){
        res.send({code:-1,msg:"出错啦"})
         return
    }
    var old_price = req.query.old_price;
    var md = req.query.md;
    if(!md){
        res.send({code:-1,msg:"出错啦"})
         return
    }
    var count = req.query.count;
    if(!count){
        count = 1
    }
    var sql = "INSERT INTO `fruit_cart`(`fcid`, `pid`, `title`, `price`, `old_price`, `md`, `count`) VALUES (null,?,?,?,?,?,?)";
    pool.query(sql,[pid,title,price,old_price,md,count],(err,result)=>{
        if(err) throw err;
        if(result.affectedRows>=1){
        res.send({code:1,msg:"添加购物车成功"})
        }else{
            res.send({code:-1,msg:"出错了,请稍后再试"})
        }
    })
});
//功能二 查询购物车的产品
router.get("/list",(req,res)=>{
    var sql = "SELECT * FROM `fruit_cart` WHERE 1";
    pool.query(sql,[],(err,result)=>{
        if(err) throw err;
        res.send({code:1,data:result});
    })
});
//功能三 删除购物车产品
router.get("/delete",(req,res)=>{
    var sql = "DELETE FROM `fruit_cart` WHERE pid = ?";
    var pid = parseInt(req.query.pid);
    pool.query(sql, [pid], (err, result) => {
        if (err) throw err;
        if (result.affectedRows > 0) {
            res.send({
                code: 1,
                msg: "删除成功"
            })
        } else {
            res.send({
                code: -1,
                msg: "删除失败,请检查后再试"
            })
        }
    })
})


module.exports = router;