<template>
  <div>
    <div class="zw-siderbar-wrap">
      <!-- 工具栏边栏-包裹 -->
      <div class="zw-sidebar-section">
        <!-- 本节内容 -->
        <ul class="sidebar-section-list">
          <li class="sidebar-section-list-item" @click="goback()" >
            <a>
              <img :src="toTop" alt="">
              <p>返回顶部</p>
            </a>
          </li>
          <li class="sidebar-section-list-item border-none">
            <a >
              <img :src="myOrder" alt="">
              <p>我的订单</p>
            </a>
          </li>
          <li class="sidebar-section-list-item border-none">
            <a @click="goCollection()">
              <img :src="myCollection" alt="">
              <p>我的收藏</p>
            </a>
          </li>
          <li class="sidebar-section-list-item border-none">
            <a>
              <img :src="phone" alt="">
              <p>手机立减</p>
            </a>
          </li>
        </ul>
      </div>
    </div>
  </div>
</template>
<script>
//引入图片
import toTop from "../../../assets/img/icon/icon01.png"
import toTopWhite from "../../../assets/img/icon/iconwhite01.png"
import myOrder from "../../../assets/img/icon/icon02.png"
import myOrderWhite from "../../../assets/img/icon/iconwhite02.png"
import myCollection from "../../../assets/img/icon/icon03.png"
import myCollectionWhite from "../../../assets/img/icon/iconwhite03.png"
import phone from "../../../assets/img/icon/icon04.png"
import phoneWhite from "../../../assets/img/icon/iconwhite04.png"
  export default {
    inject:['jump'],
    data() {
      return {
        toTop,
        toTopWhite,
        myOrder,
        myOrderWhite,
        myCollection,
        myCollectionWhite,
        phone,
        phoneWhite
      }
    },
    methods:{
        goback(){
              this.jump()
        },
        goCollection(){
          this.$router.push({path:"/my_collection"})
        },
    },
  }

</script>
<style lang="scss" scoped>
.zw-siderbar-wrap{
    position:fixed;
    top:2rem;
    right:15%;
    z-index: 10;
 
}
  .border-none {
    border-top: 0 !important;
  }

  .sidebar-section-list {
    list-style: none;
  }

  .sidebar-section-list-item {
    text-align: center;
    width: 53px;
    height: 53px;
    background-color: #ffffff;
    border: 1px solid #b2b2b2;
  }

  .sidebar-section-list-item:hover {
    background-color: #00b081;
  }
  .sidebar-section-list-item:hover a {
    color: #ffffff;
  }
    .sidebar-section-list-item:hover img{
      animation: swing 0.4s linear  3;
    }
  .sidebar-section-list-item a {
    text-decoration: none;
    font-size: 12px;
    color: #b2b2b2;
    text-align: center;
    position: relative;
    cursor: pointer;
  }
  .sidebar-section-list-item a img {
    margin-top:8px;
  }

 @keyframes swing{
   0%{
    transform: rotate(0deg);
   }
   20%{
    transform:rotate(-25deg);
   }
   40%{
    transform:rotate(-45deg);
   }
   60%{
    transform:rotate(0deg);
   }
   80%{
    transform:rotate(25deg);
   }
   100%{
     transform: rotate(50deg);
   }
}
</style>
