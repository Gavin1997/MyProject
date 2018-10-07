const express = require("express");
const bodyParser = require("body-parser");
//引入路由模块
const index = require("./routes/index");
const users = require("./routes/users");
const details = require("./routes/details");
const prodcuts = require("./routes/products");

var app = express();
//加载处理跨域模块
const cors = require("cors");
//允许那个地址跨域访问
app.use(cors({
    origin: 'http://127.0.0.1:8080',
    credentials: true
}));

var server = app.listen(3000);

//使用中间件
app.use(bodyParser.urlencoded({
    extended: false
}));
//托管静态资源到public目录下
app.use(express.static(__dirname + '/public'));

//挂载路由
app.use("/index", index);
app.use("/users", users);
app.use("/details", details);
app.use("/products", prodcuts);