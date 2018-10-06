<template>
   <div>
      <!-- 头部 -->
      <home-header></home-header>
      <!-- 中间账主体内容 -->
      <home-section></home-section>
      <!-- 尾部 -->
      <home-footer></home-footer>
   </div>
</template>
<script>
//引入子组件
import HomeHeader from "./subcompoents/HomeHeader/HomeHeader"
import HomeSection from "./subcompoents/HomeSection/HomeSection"
import HomeFooter from "./subcompoents//HomeFooter/HomeFooter"

    export default{
         data(){
             return{}
         },
         components:{
             HomeHeader,
             HomeSection,
             HomeFooter
            
         }
    }
</script>
<style lang="scss" scoped>

</style>
