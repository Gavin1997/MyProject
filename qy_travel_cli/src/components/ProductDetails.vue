<template>
  <div>
    <!-- 头部 -->
    <home-header-top></home-header-top>
    <home-header-middel></home-header-middel>
    <header-Details-bottom></header-Details-bottom>
    <!-- 中间账主体内容 -->
    <section-Details class="mt-3" :iffixed="iffixed"></section-Details>
  
    <!-- 尾部 -->
    <home-footer></home-footer>
    <!-- 返回goback -->
    <sidebar v-if="ifshow"></sidebar>
  </div>
</template>
<script>
  //引入子组件
  import HomeHeaderTop from "./subcompoents/HomeHeader/HomeHeaderTop"
  import HomeHeaderMiddel from "./subcompoents/HomeHeader/HomeHeaderMiddle"
  import HomeFooter from "./subcompoents//HomeFooter/HomeFooter"
  import HeaderDetailsBottom from "./subcompoents/ProductDetails/HeaderDetailsBottom"
  import SectionDetails from "./subcompoents/ProductDetails/SectionDetails"

  import Sidebar from "./subcompoents/more/sidebar.vue"

  export default {
    data() {
      return {
        ifshow: false,
        iffixed:false
        
      }
    },
    methods: {
      handlerScroll() {
        var scrollTop = document.pageYOffset || document.documentElement.scrollTop || document.body.scrollTop;
        if (scrollTop >= 1200) {
          this.ifshow = true;
          this.iffixed = true;
        } else {
          this.ifshow = false;
          this.iffixed = false;
        }
      },
    },
    created() {},
    mounted() {
      window.addEventListener("scroll", this.handlerScroll, true);
    },
    components: {
      HomeHeaderTop,
      HomeHeaderMiddel,
      HomeFooter,
      HeaderDetailsBottom,
      SectionDetails,
      Sidebar
    }
  }

</script>
<style lang="scss" scoped>

</style>
