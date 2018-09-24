const express=require("express");
const bodyParser=require("body-parser");
//引入路由模块
const index=require("./routes/index");
const users=require("./routes/users");
const details=require("./routes/details")
var app=express();
var server=app.listen(3000);
//使用中间件
app.use(bodyParser.urlencoded({extended:false}));
//托管静态资源到public目录下
app.use(express.static('public'));
//挂载路由
app.use("/index",index);
app.use("/users",users);
app.use("/details",details);