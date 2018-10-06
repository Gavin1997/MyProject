// The Vue build version to load with the `import` command
// (runtime-only or standalone) has been set in webpack.base.conf with an alias.
import Vue from 'vue'
import App from './App'
import router from './router'
import axios from 'axios'
import Qs from 'qs'
//引入基础样式css文件

import base from './assets/css/base.css'
//配置axios
Vue.prototype.$http = axios;
//基本访问路径
 axios.defaults.baseURL = "http://127.0.0.1:3000/";
//设置axios session的credentials
axios.defaults.withCredentials = true;
//设置axios-ajax访问格式
axios.defaults.headers = {
  "Content-Type": 'application/x-www-from-urlencoded'
}



Vue.config.productionTip = false

/* eslint-disable no-new */
new Vue({
  el: '#app',
  router,
  components: { App },
  template: '<App/>'
})
