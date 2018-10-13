<template>
  <div>
    <!-- 图片 -->
    <div class="leftslide">
      <div class="lg_img">
        <img :src="res.pics[`${i}`].md" alt="" style="width:100%;height:100%;">
           <span>产品编号:{{res.product.product_number}}</span>
      </div>
      <!-- 小图列表 -->
      <div class="img_slide clearfix">
        <div class="d-inline-block float-left d-flex justify-content-between  ">
          <p class=" ">
            <img src="../../../assets/img/product_detalis/hover-prev.png" alt="" class="pt-4 pl-1 disabled" @click="prev()">
          </p>
          <div class="slidearea">
            <ul class="list-unstyle sm_img_list d-flex " :class="{move:changedActive==n}">
              <li class="ml-1 " v-for="(pic,i) in res.pics" :key="i" >
                <img :src="pic.sm" @mouseenter="changeImg(i)" >
              </li>
            </ul>
          </div>
          <p>
            <img src="../../../assets/img/product_detalis/hover-next.png" alt="" class="pt-4 pl-1 " @click="next()">
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
      return{
        i:0,
        n:-1,
        move:"",
        changedActive:0
      }
    },
      props: ["res"],
    methods:{
      changeImg(i){
        this.i=i;
      },
    next(){
      this.n++;
      this.changedActive++;
    
    },
    prev(){

    }
    },
    watch:{
      changedActive(){
           console.log(this.n,this.changedActive);
           this.changedActive=this.n;
      }
    },
  
    components:{
      SectionDetailsCalendar
    }
  }

</script>
<style lang="scss" scoped>
  //  主要内容
  .move{
    margin-left:-80px;
    transition: all 0.5s linear;
  }
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
    div.lg_img {
      position:relative;
       span {
      position: absolute;
      top:0;
      left:0;
      color: #fff;
      margin: 10px;
      font-size: 8px;
    }
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
