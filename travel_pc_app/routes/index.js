const express=require("express");
const router=express.Router();
const pool=require("../pool");


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
})


module.exports=router;