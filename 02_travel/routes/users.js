const express=require("express");
const router=express.Router();
const pool=require("../pool");
//登录功能
router.get("/signin",(req,res)=>{
    var {uname,upwd}=req.query;
    var sql="select *from qy_user where uname=? and upwd=?";
    pool.query(sql,[uname,upwd],(err,result)=>{
        if(err) console.log(err);
        res.writeHead(200,{
            "Content-Type":"application/json;charset=utf-8",
            "Access-Control-Allow-Origin":"*"
        });
        console.log(result);
        if(result.length>0){
            res.write(JSON.stringify({ok:1}));
        }else{
            res.write(JSON.stringify({
                ok:0,msg:"用户名或者密码错误"
            }))
        }
        res.end();
       
    })
});
//注册功能
router.get("/register",(req,res)=>{
    var uid = req.query.uid;
    var uname=req.query.uname;
    var upwd= req.query.upwd;
    var email=req.query.email;
    var phone=req.query.phone;
    var user_name=req.query.user_name;
    var gender=req.query.gender;
    if(!uname){
        res.send({code:-1,msg:"用户名不能为空哦,请检查后再输入哦"})
        return
    };
    var reg=/^(?![a-z0-9]+$)(?![A-Za-z]+$)[A-Za-z0-9]{6,8}$///6-8位数字,字母结合,至少包含一个大写字母和数字;
    if(!upwd ||!reg.test(upwd)){
        res.send({code:-1,msg:"密码格式不正确,请检查后再输入哦"})
        return
    };
    if(!email){
        res.send({code:-1,msg:"邮箱格式不正确,请检查后再输入哦"})
        return
    };
    var reg1=/^[1][3578][0-9]{9}$/
    if(!phone || !reg1.test(phone)){
        res.send({code:-1,msg:"手机号码格式不正确,请检查后再输入"})
        return
    };
    if(!user_name){
        res.send({code:-1,msg:"用户姓名不能为空,请检查后再输入"})
        return
    };
    if(!gender){
        res.send({code:-1,msg:"用户性别不能为空,请检查后重新输入哦"})
        return
    };
    var sql = "INSERT INTO `qy_user`(`uid`, `uname`, `upwd`, `email`, `phone`, `user_name`, `gender`) VALUES (null,?,?,?,?,?,?)";
    pool.query(sql,[uid,uname,upwd,email,phone,user_name,gender],(err,result)=>{
        if(err) throw err;
        if(affectedRows=1){
          res.send({code:1,msg:`注册成功,欢迎${uname}!!`})
        }
    })
});
module.exports=router;