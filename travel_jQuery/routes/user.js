const express=require("express");
const router=express.Router();
const pool=require("../pool");


router.post("/register",(req,res)=>{
    var sql=`INSERT INTO qy_user VALUES(NULL,?,?,?,?,?,?)`;

})


module.exports=router;