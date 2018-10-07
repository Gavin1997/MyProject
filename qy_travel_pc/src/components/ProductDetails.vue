<template>
  <div>
    <!-- 头部 -->
    <home-header-top></home-header-top>
    <home-header-middel></home-header-middel>
    <header-Details-bottom></header-Details-bottom>
    <!-- 中间账主体内容 -->
    <section-Details class="mt-3"></section-Details>
    <!-- 尾部 -->
    <home-footer></home-footer>
  </div>
</template>
<script>
  //引入子组件
  import HomeHeaderTop from "./subcompoents/HomeHeader/HomeHeaderTop"
  import HomeHeaderMiddel from "./subcompoents/HomeHeader/HomeHeaderMiddle"
  import HomeFooter from "./subcompoents//HomeFooter/HomeFooter"
  import HeaderDetailsBottom from "./subcompoents/ProductDetails/HeaderDetailsBottom"
  import SectionDetails from "./subcompoents/ProductDetails/SectionDetails.vue"

  export default {
    data() {
      return {
      }
    },
    methods: {
    },
    created() {
    },
    components: {
      HomeHeaderTop,
      HomeHeaderMiddel,
      HomeFooter,
      HeaderDetailsBottom,
      SectionDetails
    }
  }
</script>
<style lang="scss" scoped>

</style>