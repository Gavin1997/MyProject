<template>
  <div>
    <!-- 图片 -->
    <div class="leftslide">
      <span>产品编号:{{res.product.product_number}}</span>
      <div class="lg_img">
        <img :src="res.pics[0].md" alt="" style="width:100%;height:100%;">
      </div>
      <!-- 小图列表 -->
      <div class="img_slide clearfix">
        <div class="d-inline-block float-left d-flex justify-content-between  ">
          <p class=" ">
            <img src="../../../assets/img/product_detalis/hover-prev.png" alt="" class="pt-4 pl-1 disabled">
          </p>
          <div class="slidearea">
            <ul class="list-unstyle sm_img_list d-flex">
              <li class="ml-1 " v-for="(pic,i) in res.pics" :key="i">
                <img :src="pic.sm">
              </li>
            </ul>
          </div>
          <p>
            <img src="../../../assets/img/product_detalis/hover-next.png" alt="" class="pt-4 pl-1 ">
          </p>
        </div>
      </div>
      <!-- 日期 -->
      <section-details-calendar :res="res"></section-details-calendar>
    </div>
  </div>
</template>
<script>
  import SectionDetailsCalendar from "./SectionDetailsCalendar.vue"
  export default {
    data() {
      return{}
    },
    props: ["res"],
    components:{
      SectionDetailsCalendar
    }
  }

</script>
<style lang="scss" scoped>
  //  主要内容
  .zw-product-main {
    background: $my-main-Color;
    width: 1160px;
    margin: 0px auto 0;

    //清楚外边距垂直抵消问题
    &:before {
      content: "";
      display: table;
    }
  }

  // 左边图片内容
  .leftslide {
    width: 512px;
    position:relative;
    span {
      position: absolute;
      left: 0.5rem;
      color: #fff;
      margin: 10px;
      font-size: 8px;
    }

    div.lg_img {
      img {
        width: 512px;
        height: 330px;
      }
    }
  }

  // 下方小图滑动
  .img_slide {
    border: 1px solid #ddd;
    width: 510px;

    p {
      width: 30px;
      height: 80px;
      z-index: 10;

      &:hover {
        background: rgb(216, 214, 214);
        cursor: pointer;
      }

      img {
        width: 22px;
        height: 32px;
      }
    }

    div:first-child {
      width: 510px;
    }

    .disabled {
      opacity: 0.4;
    }
  }

  .slidearea {
    width: 400px;
    overflow: hidden;
  }

  // 小图列表
  .sm_img_list {
    overflow: hidden !important;
    transition: all 0.5s linear;

    li {
      width: 70px;
      height: 65px;
      margin-top: 10px;
      background: #fff;
    }

    img {
      width: 65px;

      &:hover {
        cursor: pointer;
        opacity: 0.8;
        transform: scale(1.1);
      }
    }
  }

</style>
