// The Vue build version to load with the `import` command
// (runtime-only or standalone) has been set in webpack.base.conf with an alias.
import Vue from 'vue'
import App from './App'
import router from './router'
import axios from 'axios'
import Qs from 'qs'
//引入mint-ui
import 'mint-ui/lib/style.css'
import {Swipe,SwipeItem} from "mint-ui"
//引入基础样式css文件
import base from './assets/css/base.css'
//引入公共js
import common from "../commonFunction/common.js"
Vue.prototype.common = common;
//配置axios
Vue.prototype.$http = axios;
//基本访问路径
 axios.defaults.baseURL = "http://127.0.0.1:3000/";
//设置axios session的credentials
axios.defaults.withCredentials = true;
//设置axios-ajax访问格式
// axios.defaults.headers = {
//   "Content-Type": 'application/x-www-from-urlencoded'
// }
// 使用mint-ui 轮播组件
Vue.component(Swipe.name,Swipe);
Vue.component(SwipeItem.name,SwipeItem);


// Vue.config.productionTip = false
//自定义指令 获取焦点
Vue.directive("focus",{
  inserted(el){
      el.focus()
  }
});
//自定义过滤器,过滤日期
Vue.filter("dateFormat",function(datestr,pattern="YYY-MM-DD HH:mm:ss"){
  return new Date(datestr).toLocaleString('chinese',{hour12:false});
});
//自定义过滤器 过滤字数显示省略号 解决firefox的兼容性问题
Vue.filter("ellipse",function(val,len){
  if(val.length<=len){
    return val;
  }else{
    return val.slice(0,len)+"....";
  }
})
/* eslint-disable no-new */
new Vue({
  el: '#app',
  router,
  components: { App },
  template: '<App/>'
})
