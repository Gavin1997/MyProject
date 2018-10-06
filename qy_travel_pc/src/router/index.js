import Vue from 'vue'
import Router from 'vue-router'
import HomeIndex from '@/components/HomeIndex'

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
    }
  ]
})
