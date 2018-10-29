const express = require("express");
const bodyParser = require("body-parser");
const session = require("express-session");

//加载路由模块

var app = express();
const cors = require("cors");
app.use(cors({
  origin:'*',
  credentials:true
}));
var server = app.listen(3333);
app.use(bodyParser.urlencoded({extended:false}));
//托管静态资源
app.use(express.static(__dirname+'/public'));
app.use(session({
  secret:'随机字符串',
  resave:false,
  saveUninitialized:true
}));
app.get("/",(req,res)=>{
  res.send("wjhahjalkj")
})
//挂载路由
