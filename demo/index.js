const express = require("express");
const bodyParser = require("body-parser");

var app = express();
const cors = require("cors");
app.use(cors({
  origin:'*',
  credentials:true
}));
var server = app.listen(5800);
app.use(bodyParser.urlencoded({extended:false}));
//托管静态资源
app.use(express.static(__dirname+'/src'));



