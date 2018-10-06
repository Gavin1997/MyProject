<template>
  <div>
    <div class="zw-footerprepend ">
      <ul class="zw-footer-nav d-flex justify-content-between container">
        <li><a href="#">机酒自由行</a></li>
        <li><a href="#">当地玩乐</a></li>
        <li><a href="#">特价机票</a></li>
        <li><a href="#">签证</a></li>
        <li><a href="#">马尔代夫</a></li>
        <li><a href="#">邮轮</a></li>
        <li><a href="#">租车自驾</a></li>
        <li><a href="#">欧洲铁路</a></li>
        <li><a href="#">限时特卖</a></li>
        <li><a href="#">深度旅行</a></li>
      </ul>
      <!-- 特色 图标加文字 -->
      <ul class="zw-footer-feature container ">
        <li class="d-flex justify-content-center">
          <p class="zw-footer-feature-icon"><img src="../../../assets/img/footer/people.png" alt=""></p>
          <h3 class="zw-footer-title ml-2">专业保证</h3>
          <p class="zw-footer-content ">我们收集穷游er的真实诉求,也找寻全世界最独特的旅行目的地，让更多的穷游er轻松出行</p>
        </li>
        <li class="d-flex">
          <p class="zw-footer-feature-icon"><img src="../../../assets/img/footer/dunpai.png" alt=""></p>
          <h3 class="zw-footer-title ml-2">多重审核</h3>
          <p class="zw-footer-content ">对旅游产品供应商严格筛选，资质认证层层把关，为穷游er精挑细选最值得信赖的旅行产品</p>
        </li>
        <li class="d-flex">
          <p class="zw-footer-feature-icon"><img src="../../../assets/img/footer/xin.png" alt=""></p>
          <h3 class="zw-footer-title ml-2">安心陪护</h3>
          <p class="zw-footer-content ">对所有穷游er的购买进行跟踪服务以及质量监控，有效投诉先行赔付，出现任何问题负责到底</p>
        </li>
      </ul>
    </div>
  </div>
</template>
<script>
  export default {
    data() {
      return {}
    },
    methods: {}
  }
</script>
<style lang="scss" scoped>
//底部文字导航
.zw-footerprepend{
    background: $my-main-Color;
   line-height:50px;
    .zw-footer-nav{
      list-style: none;
      white-space: nowrap;
      text-align: center;
      padding:10px;
      
      li {
         &:not(:last-child)::after{
              content:"|";
              margin:0 1.2rem;
              color:#ddd;
          }
        a{
          font-size:18px;
          color:#323232;
          font-weight: 400;
          text-decoration: none;
          &:hover{
              color:$my_hoverColorcolor;
          }
        }
      }
    }
  }
//   底部特色 列表
.zw-footer-feature{
   list-style: none;
   padding:20px;
   display:flex;
   .zw-footer-feature-icon{
      
       img{
         width:56px;
         height:56px;
       }
      }
      .zw-footer-title{
        white-space: nowrap;
          font-size: 16px;
          font-weight:500;
          line-height: 16px;
      }
      .zw-footer-content{
          color:$my_footer_color;
          position: relative;
          top:20px;
          left:-60px;
          width:300px;
          line-height: 16px;
      }

}
</style>