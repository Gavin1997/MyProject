<template>
  <div>
    <!-- 公用的网页头部 -->
  <home-header-top></home-header-top>
  <home-header-middle></home-header-middle>
  <header-details-bottom></header-details-bottom>
    <!-- 产品详情页 -->
    <section class="products_section">
      <div id="app" class="container">
      <!-- 产品页也头部 -->
      <products-top :kw="kw"></products-top>
      <!-- 产品列表搜索 -->
      <products-section :res="res" :pageCount="pageCount"></products-section>
      </div>
    </section>
    <!-- 公用的网页底部 -->
    <home-footer></home-footer>
  </div>
</template>
<script>
import HomeHeaderTop from "./subcompoents/HomeHeader/HomeHeaderTop"
import HomeHeaderMiddle from "./subcompoents/HomeHeader/HomeHeaderMiddle"
import HeaderDetailsBottom from "./subcompoents/ProductDetails/HeaderDetailsBottom"
import ProductsSection from "./subcompoents/Products/ProductsTop"
import ProductsTop from "./subcompoents/Products/ProductsSection"
import HomeFooter from "./subcompoents/HomeFooter/HomeFooter"
  export default {
    data() {
      return {
        res,
        kw:"",
        pageCount:"",

      }
    },
    methods: {
      getMsg(){
        this.$http.get("products?kw="+this.kw+"&pno="+this.pno).then(res=>{
          console.log(res)
          this.kw=this.kw;
          this.res=res.data.data.products;
          this.pageCount=res.data.data.pageCount;
        });
      }
    },
    created() {

    },
    components:{
      HomeHeaderTop,
      HomeHeaderMiddle,
      HeaderDetailsBottom,
      ProductsSection,
      ProductsTop,
      HomeFooter
    }
  }

</script>
<style lang="scss" scoped>
.products_section {
    background-color: #F5F5F5;
    
}

</style>
