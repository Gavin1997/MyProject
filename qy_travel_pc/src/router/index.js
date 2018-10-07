import Vue from 'vue'
import Router from 'vue-router'
import HomeIndex from '@/components/HomeIndex'
import ProductDetails from '@/components/ProductDetails'

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
    }
  ]
})
