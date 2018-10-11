const express=require("express");
const router=express.Router();
const pool=require("../pool");

//获取主页产品消息
router.get("/",(req,res)=>{
    var sql=`SELECT * FROM qy_index_product WHERE seq_recommended!=0 ORDER BY seq_recommended`;
    pool.query(sql,[],(err,result)=>{
        if(err) throw err;
        //跨域访问
        // res.writeHead(200,{
        //     "Access-Control-Allow-Origin":"*"
        // })
        // res.write(JSON.stringify(result))
        // res.end()
        res.send(result);
    })
});
//获取轮播
router.get("/list",(req,res)=>{
    var sql = "SELECT `cid`, `img`, `title`, `href` FROM `qy_index_carousel` WHERE 1";
    pool.query(sql,[],(err,result)=>{
        if(err) throw err;
        res.send(result);
    })
})


module.exports=router;