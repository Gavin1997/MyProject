import Vue from 'vue'
import Router from 'vue-router'
import HomeIndex from '@/components/HomeIndex'
import ProductDetails from '@/components/ProductDetails'
import HomeProducts from '@/components/HomeProducts'
import UserLogin from '@/components/UserLogin'
import UserRegister from '@/components/UserRegister'
import MyCollection from '@/components/MyCollection'
import UserInformation from '@/components/UserInformation'

Vue.use(Router)

export default new Router({
  routes: [
    {
      path:'/',
      redirect:'/home'
    },
    {
      path:'/home',
      name:'HomeIndex',
      component:HomeIndex
    },
    //产品详情
    {
      path:'/product_details/:tid',
      name:'ProductDetails',
      component:ProductDetails
    },
    //产品搜索
    {
      path:'/products/:kw',
      name:'HomeProducts',
      component:HomeProducts
    },
    //用户登录
    {
      path:'/user_login',
      name:'UserLogin',
      component:UserLogin
    },
    //用户注册
    { 
      path:'/user_register',
      name:'UserRegister',
      component:UserRegister
    },
    //我的收藏
    {
      path:'/my_collection',
      name:'MyCollection',
      component:MyCollection
    },
    // 用户信息表
    {
      path:"/user_information",
      name:"UserInformation",
      component:UserInformation
    }
  ],
  // mode:'history',
  //   scrollBehavior(to,from,savedPosition){
  //     if(to.hash){
  //       return {
  //         selector:to.hash
  //       }
  //     }
  //   }
})
