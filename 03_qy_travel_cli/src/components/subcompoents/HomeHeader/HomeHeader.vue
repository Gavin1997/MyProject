<template>
  <div>
 
      <!-- 一级导航 -->
      <home-header-top></home-header-top>
      <!-- 二级绿色背景导航 -->
      <home-header-middel></home-header-middel>
      <!-- 三级导航 穷游商城 加搜索框 -->
     <home-header-bottom></home-header-bottom>
   
  </div>
</template>
<script>
//引入子组件
import HomeHeaderTop from "./HomeHeaderTop"
import HomeHeaderMiddel from "./HomeHeaderMiddle"
import HomeHeaderBottom from "./HomeHeaderBottom"
export default {
    data(){
        return{}
    },
    methods:{},
    components:{
      HomeHeaderTop,
      HomeHeaderMiddel,
      HomeHeaderBottom
    }
}
</script>
<style lang="scss" scoped>
//  @import "../../assets/css/base.css";
 

</style>

