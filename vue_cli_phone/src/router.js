import Vue from 'vue'
import Router from 'vue-router'
import HelloContainer from "./components/HelloWorld.vue"
//src/router.js 配置组件访问路由
//1.引入自定义组件
import HomeContainer from "./components/tabbar/HomeContainer.vue"
import NewsContainer from "./components/news/NewsContainer.vue"
import HomeMember from "./components/tabbar/HomeMember.vue"
import HomeShopCart from "./components/tabbar/HomeShopCart.vue"
import HomeSearch from "./components/tabbar/HomeSearch.vue"
import NewsDetailsContainer from "./components/news/NewsDetailContainer.vue"
//商品列表
import GoodList from "./components/goods/GoodList.vue"
import GoodInfo from "./components/goods/GoodsInfo.vue"
//空白页
import HomeBlack from "./components/tabbar/HomeBlack.vue"

Vue.use(Router)
//2.指定该组件的访问路径
export default new Router({
  routes: [
    // {path:'/',component:HelloContainer},
    {path:'/',redirect:'/home'},
    {path:'/home',component:HomeContainer},
    {path:'/home/newslist',component:NewsContainer},
    {path:'/home/member',component:HomeMember},
    {path:'/home/shopcart',component:HomeShopCart},
    {path:'/home/search',component:HomeSearch},
    {path:'/newsdetail/:id',component:NewsDetailsContainer},
    {path:'/home/goodslist',component:GoodList},
    {path:'/home/goodsinfo/:id',component:GoodInfo},
    {path:'/home/homeBlack',component:HomeBlack}
    // {path:'/home/goodsinfo/:id',component:GoodInfo,name:"goodsinfo"}
  ],linkActiveClass:"mui-active"//覆盖默认路由高亮类
})
