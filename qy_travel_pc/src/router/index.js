import Vue from 'vue'
import Router from 'vue-router'
import HomeIndex from '@/components/HomeIndex'
import ProductDetails from '@/components/ProductDetails'
import HomeProducts from '@/components/HomeProducts'
import UserLogin from '@/components/UserLogin'
import UserRegister from '@/components/UserRegister'

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
    {
      path:'/product_details/:tid',
      name:'ProductDetails',
      component:ProductDetails
    },
    {
      path:'/products',
      name:'HomeProducts',
      component:HomeProducts
    },
    {
      path:'/user_login',
      name:'UserLogin',
      component:UserLogin
    },
    {
      path:'/user_register',
      name:'UserRegister',
      component:UserRegister
    }
  ]
})
