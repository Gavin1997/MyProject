<template>
  <div>
    <!-- 公用的网页头部 -->
  <home-header-top></home-header-top>
  <home-header-middle></home-header-middle>
  <header-details-bottom :kw="kw"></header-details-bottom>
    <!-- 产品详情页 -->
    <div style="background-color:#F5F5F5;width:100%">
    <section class="products_section container">
      <div id="app" class="container">
      <!-- 产品页也头部 -->
      <products-top ></products-top>
      <!-- 产品列表搜索 -->
      <products-section :res="res" :pageCount="pageCount" @get="getMsg"></products-section>
      </div>
    </section>
    </div>
    <!-- 公用的网页底部 -->
    <home-footer></home-footer>
  </div>
</template>
<script>
import HomeHeaderTop from "./subcompoents/HomeHeader/HomeHeaderTop"
import HomeHeaderMiddle from "./subcompoents/HomeHeader/HomeHeaderMiddle"
import HeaderDetailsBottom from "./subcompoents/ProductDetails/HeaderDetailsBottom"
import ProductsTop from "./subcompoents/Products/ProductsTop"
import ProductsSection from "./subcompoents/Products/ProductsSection"
import HomeFooter from "./subcompoents/HomeFooter/HomeFooter"
  export default {
    data() {
    return {
      res:{},
      pageCount:[],
      kw:this.$route.params.kw,
    }
  },
  methods: {
      getMsg(){
        this.$http.get(`products?kw=${this.kw}&pno=1`).then(res=>{
          this.res = res.data.data.products;
          this.pageCount=res.data.data.pageCount;
        });
      },
  },
  created() {
    this.getMsg();
    console.log(this.kw)
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
  background-color: #f5f5f5;
}
</style>
