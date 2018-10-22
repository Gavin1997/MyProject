<template>
  <div>
  <!-- 头部 -->
  <home-header-top></home-header-top>
  <home-header-middle></home-header-middle>
  <header-details-bottom></header-details-bottom>
  <!-- 主体内容 -->
  <order-user-info v-if="isLogin" :uname="uname"></order-user-info>
  <order-list v-if="isLogin" :uname="uname"></order-list>
  <no-login v-else></no-login>
  <!-- 底部 -->
  <home-footer class="mt-5"></home-footer>
  </div>
</template>
<script>
//引入子组件 --头部
import HomeHeaderTop from "./subcompoents/HomeHeader/HomeHeaderTop"
import HomeHeaderMiddle from "./subcompoents/HomeHeader/HomeHeaderMiddle"
import HeaderDetailsBottom from "./subcompoents/ProductDetails/HeaderDetailsBottom"
//主体
import OrderUserInfo from "./subcompoents/MyCollection/OrderUserInfo"
import OrderList from "./subcompoents/MyCollection/OrderList"
import NoLogin from "./subcompoents/MyCollection/NoLogin"
// 底部
import HomeFooter from "./subcompoents/HomeFooter/HomeFooter"
export default {
  data(){
    return{
       uname:"",
       uid:"",
      isLogin:false,
    }
  },
  methods:{},
  created() {
    //验证是否登录
       this.$http.get("/users/islogin").then(res=>{
           if(res.data.ok==1){
               this.isLogin = true;
               this.uname=res.data.uname;
               this.uid = res.data.uid;
           }else{
               this.isLogin=false;
           }
        })
  },
  components:{
    HomeHeaderTop,
    HomeHeaderMiddle,
    HeaderDetailsBottom,
    HomeFooter,
    OrderUserInfo,
    OrderList,
    NoLogin
  }
}
</script>
<style lang="scss" scoped>

</style>

