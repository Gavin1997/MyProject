// The Vue build version to load with the `import` command
// (runtime-only or standalone) has been set in webpack.base.conf with an alias.
import Vue from 'vue'
import App from './App'
import router from './router'
import axios from 'axios'
import VueLazyload from 'vue-lazyload'
import Qs from 'qs'

Vue.use(VueLazyload)
//引入 element-ui  按需求
import 'element-ui/lib/theme-chalk/index.css'
import {Button,carousel,CarouselItem} from 'element-ui'
// Vue.component(Button.name,Button);
//项目中所有拥有 size 属性的组件的默认尺寸均为 'small'，弹框的初始 z-index 为 3000。
Vue.prototype.$ELEMENT = { size: 'small', zIndex: 3000 };
Vue.use(Button)
Vue.use(carousel)
Vue.use(CarouselItem)

//引入基础样式css文件
import base from './assets/css/base.css'
//引入公共js
import common from "../commonFunction/common.js"
Vue.prototype.common = common;
//配置axios
Vue.prototype.$http = axios;
//基本访问路径
 axios.defaults.baseURL = "http://47.107.120.137:3000/";
//  axios.defaults.baseURL = "http://127.0.0.1:3000/";
//设置axios session的credentials
axios.defaults.withCredentials = true;
//设置axios-ajax访问格式
// axios.defaults.headers = {
//   "Content-Type": 'application/x-www-from-urlencoded'
// }
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
