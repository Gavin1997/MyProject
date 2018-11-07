const express = require("express");
const bodyParser = require("body-parser");
const session = require("express-session");

//加载路由模块
const index = require ("./routes/index");
const products = require("./routes/products");
const tabbar = require("./routes/tabbar");
const cart = require("./routes/shopcart");

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

//挂载路由
app.use("/index",index);
app.use("/products",products);
app.use("/tabbar",tabbar);
app.use("/cart",cart);
