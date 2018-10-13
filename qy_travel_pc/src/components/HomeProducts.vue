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
      <products-top :kw="kw"></products-top>
      <!-- 产品列表搜索 -->
      <products-section :res="res" :pageCount="pageCount" @get="getMsg" :notfond="notfond"></products-section>
      <!-- <products-recommend></products-recommend> -->
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
      notfond:"",
      kw:this.$route.params.kw,
    }
  },
  methods: {
      getMsg(){
        this.$http.get(`products?kw=${this.kw}&pno=1`).then(res=>{
          this.res = res.data.data.products;
          this.pageCount=res.data.data.pageCount;
          if(res.data.code==-1){
            this.notfond="没有找到你输入的信息哦,请换一个关键词试试吧!!!"
          }
        });
      },
  },
  created() {
    this.getMsg();
  },
    components:{
      HomeHeaderTop,
      HomeHeaderMiddle,
      HeaderDetailsBottom,
      ProductsSection,
      ProductsTop,
      HomeFooter,
   
    }
  }

</script>
<style lang="scss" scoped>
.products_section {
  background-color: #f5f5f5;
}
</style>
