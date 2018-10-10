<template>
  <div>
    <section class="bg-gray p-0 m-0" v-cloak>
      <!-- 主要商品详情 -->
<<<<<<< HEAD
      <div class="zw-product-main container">
        <div class="main-content ml-4 mt-5  d-flex justify-content-around">
          <!-- 图片和日期 -->
          <section-details-image :res="res"></section-details-image>
=======
      <div class="zw-product-main">
        <div class="main-content ml-4 mt-5 container d-flex justify-content-around">
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
                     <img :src="pic.sm" > 
                    </li>
                  </ul>
                </div>
                <p>
                  <img src="../../../assets/img/product_detalis/hover-next.png" alt="" class="pt-4 pl-1 ">
                </p>
              </div>
            </div>
            <!-- 日期 -->
            <div class="calendar mt-3 ">
              <div class="tabs mt-3">
                <div class="d-flex">
                  <p>
                    <img src="../../../assets/img/product_detalis/hover-prev.png" alt="" >
                  </p>
                  <ul class="zw-home-tags  d-flex list-unstyle ">
                    <li class=" ml-5 active"><a href="" data-target="#09">2018年09月</a></li>
                    <li class="  ml-4"><a href="" data-target="#010">2018年10月</a></li>
                    <li class="  ml-4"><a href="" data-target="#011">2018年11月</a></li>
                    <li class="ml-4"><a href="" data-target="#012">2018年12月</a></li>
                  </ul>
                  <p>
                    <img src="../../../assets/img/product_detalis/hover-next.png" alt="" class="">
                  </p>
                </div>
                <!-- 头部部分 星期 -->
                <div class="week-header">
                  <span></span>
                  <span></span>
                  <span></span>
                  <span></span>
                  <span></span>
                  <span></span>
                  <span></span>
                </div>
                <!-- 日期号 -->
                <div class="date-section">
                  <div index="0" class="row_1AIx-">
                    <div index="0" class="cell_1gqH2">1</div>
                    <div index="1" class="cell_1gqH2">2</div>
                    <div index="2" class="cell_1gqH2">3</div>
                    <div index="3" class="cell_1gqH2">4</div>
                    <div index="4" class="cell_1gqH2">5</div>
                    <div index="5" class="cell_1gqH2">6</div>
                    <div index="6" class="cell_1gqH2">7</div>
                  </div>
                  <div index="1" class="row_1AIx-">
                    <div index="0" class="cell_1gqH2">8</div>
                    <div index="1" class="cell_1gqH2">9</div>
                    <div index="2" class="cell_1gqH2">10</div>
                    <div index="3" class="cell_1gqH2">11</div>
                    <div index="4" class="cell_1gqH2">12</div>
                    <div index="5" class="cell_1gqH2">13</div>
                    <div index="6" class="cell_1gqH2">14</div>
                  </div>
                  <div index="2" class="row_1AIx-">
                    <div index="0" class="cell_1gqH2">15</div>
                    <div index="1" class="cell_1gqH2">16</div>
                    <div index="2" class="cell_1gqH2">17</div>
                    <div index="3" class="cell_1gqH2">18</div>
                    <div index="4" class="cell_1gqH2">19</div>
                    <div index="5" class="cell_1gqH2">20</div>
                    <div index="6" class="cell_1gqH2 showPrice">21
                      <p>￥{{res.product.price}}</p>
                    </div>
                  </div>
                  <div index="3" class="row_1AIx-">
                    <div index="0" class="cell_1gqH2">22</div>
                    <div index="1" class="cell_1gqH2 showPrice">23
                      <p>￥{{res.product.price}}</p>
                    </div>
                    <div index="2" class="cell_1gqH2">24</div>
                    <div index="3" class="cell_1gqH2">25</div>
                    <div index="4" class="cell_1gqH2">26</div>
                    <div index="5" class="cell_1gqH2">27</div>
                    <div index="6" class="cell_1gqH2 showPrice">28
                      <p>￥{{res.product.price}}</p>
                    </div>
                  </div>
                  <div index="4" class="row_1AIx-">
                    <div index="0" class="cell_1gqH2">29</div>
                    <div index="1" class="cell_1gqH2">30</div>
                    <div index="2" class="cell_1gqH2">31</div>
                    <div index="3" class="cell_1gqH2"></div>
                    <div index="4" class="cell_1gqH2"></div>
                    <div index="5" class="cell_1gqH2"></div>
                    <div index="6" class="cell_1gqH2"></div>
                  </div>
                </div>
              </div>
            </div>
          </div>
>>>>>>> 37ed5b8aecf1afd7f7e0097d2443feb378292aa8
          <!-- 右边 详情 -->
          <div class="rightside">
            <div class="product_info m-3">
              <p v-text="res.product.title"></p>
            </div>
            <div class="product_info_special">
              <p class="ml-3 p-1" v-text="res.product.subtitle"></p>
            </div>
            <div class="product_price d-flex ">
              <p class="price p-3">{{res.product.price}}<span>元起</span></p>
              <p class="view p-3 mt-2">浏览 <span class="view_count">1200</span></p>
              <p class="sales p-3 mt-2">销售<span class="sales_count">{{res.product.sold_count}}</span></p>
            </div>
            <div class="product_info_more ml-3">
              <p class="p-3" style="width:360px">
                {{res.product.promise}}
              </p>
            </div>
            <div class="warm_prompt d-flex mt-2 mb-3">
              <h5 class="p-2">温馨提示</h5>
              <p class="p-2" v-text="res.product.prompt"></p>
            </div>
            <div class="booking_type">
              <h4>产品类型</h4>
              <ul class="list-unstyle mt-3 clearfix type_list">
<<<<<<< HEAD
                <li v-for="(c,i) of res.categories" :class="{booking_active:changedActive==i}" @click.prevent="changeDetails(c.tid,i)">
                  <a>{{c.category}}</a>
                </li>
=======
                <li v-for="(c,i) of res.categories" :class="`${tid==c.tid ? 'booking_active':''}`">
                  <a @click.prevent="changeDetails(c.tid)">{{c.category}}</a>
                </li>

                <!-- <li class="ml-3"><a href="`product_details.html?tid=${tid}`">{{res.product.departure}}</a></li>
                            <li class="mt-3 ml-3"><a href="#">{{res.product.departure}}</a></li> -->
>>>>>>> 37ed5b8aecf1afd7f7e0097d2443feb378292aa8
              </ul>
              <div class="date_out">
                <h4>出发日期</h4>
                <input type="date" placeholder="请选择日期" class="date_input">
              </div>
              <div class="people_count mt-3">
                <ul class="list-unstyle d-flex">
                  <li class="">
                    <h4 class="">成人
                      <span class="pep_a_price ml-1">¥{{res.product.price}}</span>
                      <span class="pep_a_conut">x1</span>
                    </h4>
                    <div class="input_count ml-3">
                      <button class="input_count_i" @click.prevent="modifed(-1,$event)">-</button>
                      <span>{{aduts_count}}</span>
                      <button class="input_count_c" @click.prevent="modifed(1,$event)">+</button>
                    </div>
                  </li>
                  <li class="ml-5">
                    <h4>儿童
                      <span class="pep_a_price ml-1">¥{{parseInt(res.product.price/2)}}</span>
                      <span class="pep_a_conut">x1</span>
                    </h4>
                    <div class="input_count ml-3">
                      <button class="input_count_i" @click.prevent="child_modifed(-1,$event)">-</button>
                      <span>{{child_count}}</span>
                      <button class="input_count_c" @click.prevent="child_modifed(1,$event)">+</button>
                    </div>
                  </li>
                </ul>
              </div>
              <div class="attention mt-5">
                <p>请至少提前4天预订 儿童与成人同价 付款成功后，需待商家确认是否可以出行。</p>
                <form action="">
                  <div class="price_submit">
                    <span>¥</span> <span class="total_price">{{total_price}}</span> <input type="button" class="order_button btn"
                      value="立即预订">
                  </div>
                </form>
              </div>
            </div>
          </div>
        </div>
      </div>
      <!-- 下方大图详情 -->
<<<<<<< HEAD
      <section-Details-bottom :lg_pic="lg_pic" :departure="departure"></section-Details-bottom>
=======
      <section-Details-bottom></section-Details-bottom>
>>>>>>> 37ed5b8aecf1afd7f7e0097d2443feb378292aa8
    </section>
  </div>
</template>
<script>
<<<<<<< HEAD
  // 引入子组件
  import SectionDetailsBottom from "../ProductDetails/SectionDetailsBottom.vue"
  import SectionDetailsImage from "../ProductDetails/SectionDetailsImage.vue"
=======
// 引入子组件
import SectionDetailsBottom from "../ProductDetails/SectionDetailsBottom"
>>>>>>> 37ed5b8aecf1afd7f7e0097d2443feb378292aa8
  export default {
    data() {
      return {
        res: {
          product: [],
<<<<<<< HEAD
          pics: ["sm", "md"],
          categories: [],
        },
        lg_pic: "",
        departure: "",
        aduts_count: 1,
        child_count: 1,
        tid: this.$route.params.tid,
        changedActive: 0
=======
          pics: ["sm","md"],
          categories:[],
        },
        aduts_count: 1,
        child_count: 1,
        tid:this.$route.params.tid,
        
        
>>>>>>> 37ed5b8aecf1afd7f7e0097d2443feb378292aa8
      }
    },
    methods: {
      getMsg() {
<<<<<<< HEAD
        this.$http.get("details?tid=" + this.tid).then(res => {
          this.res = res.data;
          this.lg_pic = res.data.product.lg_pic;
          this.departure = res.data.product.departure;
          console.log(this.res);

        })
      },
      changeDetails(tid, i) {
        this.$router.push("/product_details/" + tid);
        this.$http.get("details?tid=" + tid).then(res => {
          this.res = res.data;
          console.log(this.res)
        });
        this.changedActive = i;
=======
          this.$http.get("details?tid="+this.tid).then(res => {
             console.log(res.data)
            this.res = res.data;
          })
      },
      changeDetails(tid){
        this.$router.push("/product_details/"+tid);
        this.$http.get("details?tid="+tid).then(res => {
          this.res = res.data;
        })
>>>>>>> 37ed5b8aecf1afd7f7e0097d2443feb378292aa8
      },
      modifed(i, e) {
        this.aduts_count += i;
        var input = document.querySelectorAll(".input_count_i");
        var aduts_input_i = input[0];
        var child_input_i = input[1];
        if (this.aduts_count <= 1) {
          this.aduts_count = 1;
          e.currentTarget.classList.add("disabled");
        } else if (this.aduts_count > 1) {
          aduts_input_i.classList.remove("disabled");
        }
      },
      child_modifed(i, e) {
        this.child_count += i;
        var input = document.querySelectorAll(".input_count_i");
        var child_input_i = input[1];
        if (this.child_count <= 0) {
          this.child_count = 0;
          e.currentTarget.classList.add("disabled");
        } else if (this.aduts_count > 1) {
          child_input_i.classList.remove("disabled");
        }
      },

    },
<<<<<<< HEAD
    watch: {},
    computed: {
      total_price() {
        return Math.ceil(this.res.product.price / 2) * this.child_count + this.res.product.price * this.aduts_count
      }
    },
    created() {
      this.getMsg()
=======
    computed: {
      total_price() {
        return Math.ceil(this.res.product.price / 2 )* this.child_count + this.res.product.price * this.aduts_count
      }
    },
    created() {
        this.getMsg()
>>>>>>> 37ed5b8aecf1afd7f7e0097d2443feb378292aa8
    },
    // mounted() {
    //     (async function () {
    //         var $prev = $(".img_slide>div>p:first>img");
    //         var $next = $(".img_slide>div>p:last>img");
    //         var $ul = $(".sm_img_list");
    //         var moved = 0,
    //             LIWIDTH = 85;
    //         //往左移动
    //         $next.click(function () {
    //             var $next = $(this);
    //             //如果当前按钮不是禁用的
    //             if (!$next.is(".disabled")) {
    //                 moved++;
    //                 $ul.css("marginLeft", -LIWIDTH * moved);
    //                 $prev.removeClass("disabled");
    //                 if ($ul.children().length - 3 == moved) {
    //                     $next.addClass("disabled")
    //                 }
    //             }
    //         })
    //         //往右移动
    //         $prev.click(function () {
    //             var $prev = $(this);
    //             if (!$prev.is(".disabled")) {
    //                 moved--;
    //                 $ul.css("marginLeft", -LIWIDTH * moved);
    //                 $prev.removeClass("disabled");
    //                 if (moved == 0) {
    //                     $prev.addClass("disabled")
    //                 } else {
    //                     $next.removeClass("disabled")
    //                 }
    //             }
    //         })
    //         //更换图片
    //         var $limg = $(".lg_img>img");
    //         $ul.on("mouseover", "img", function () {
    //             var md = $(this).attr("data-md");
    //             $limg.attr("src", md);
    //         })
    //     })();
    // }
<<<<<<< HEAD
    components: {
      SectionDetailsBottom,
      SectionDetailsImage
    }
  }

</script>
<style lang="scss" scoped>
  a {
    cursor: pointer;
  }

=======
    components:{
      SectionDetailsBottom
    }
  }
</script>
<style lang="scss" scoped>
a{
  cursor: pointer;
}
>>>>>>> 37ed5b8aecf1afd7f7e0097d2443feb378292aa8
  .my-form-control1 {
    border: 1px solid #00b081;
    outline: 0;
    display: block;
    width: 500px;
    padding: 10px 8px;
    line-height: 1.5;
    background-color: #f1f1f1;
    font-size: 8px;
  }

  //我的订单  我的收藏
  .zw-product-header-love {
    margin-left: 180px;

    ul {
      list-style: none;

      li {
        &:hover {
          opacity: 0.7;
        }
      }
    }

    a {
      color: #00b081;
      text-decoration: none;
    }

    img {
      width: 18px;
      height: 18px;
    }
  }

<<<<<<< HEAD
=======
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

    span {
      position: absolute;
      left:5rem;
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

  // 日期选择
  .calendar {
    background: #fff;
    width: 510px;

    &:before {
      content: "";
      display: table;
    }

    a {
      text-decoration: none;
      color: #636363;
      font-size: 13px;
    }
  .zw-home-tags {
    position:relative;
    top:-5px;
  }
    // 清楚上边距带来的影响
    .tabs {
      img {
        width: 8px;
        height: 12px;
        margin: 5px 0 5px 25px;

        &:hover {
          cursor: pointer;
        }
      }
    }

    .active {
      border-bottom: 4px solid #ff7467;
    }
  }

  .week-header {
    margin-left: 25px;
    width: 450px;
    background: #f5f5f5;
    

    span {
      color: #636363;
      position: relative;
      display: inline-block;
      padding: 3px 13px;
    }
  }

  .date-section {
    width: 510px;
    overflow: hidden; 
    position: relative;
    .showPrice{
      &:hover{
        border: 1px solid #ff7466;
        cursor: pointer;
      }
      p{
        position: relative;
        top:-50px;
    
      }
    }
  }

  .row_1AIx- {
    height: 69px;
    border-bottom: 1px solid #f5f5f5;
    position: relative;

    p {
      text-align: center;
      margin-top: 3px;
      margin-right: 2px;
      color: #ff7467;
      font-size: 12px;
      font-weight: 500;
    }
  }

  .cell_1gqH2 {
  
    text-align: center;
    color: #636363;
    height: 70px;
    width: 70px;
    line-height: 70px;
    float: left;
    cursor: not-allowed;
    text-align: center;
    box-sizing: border-box;
    font-weight: 500;
  }
>>>>>>> 37ed5b8aecf1afd7f7e0097d2443feb378292aa8

  // 右边部分内容
  .rightside {
    width: 590px;
    background: #ffff;
    box-shadow: 0 20px 30px 0 rgba(0, 0, 0, 0.8);
    box-sizing: border-box;
    position: relative;
  }

  .product_info {
    text-align: left;
    font-size: 20px;
    font-weight: 400;
  }

  .product_info_special {
    p {
      color: #3dc681;
      border: 1px solid #3dc681;
      font-size: 8px;
      height: 15px;
      width: 80px;
    }
  }

  .product_price {
    p.price {
      color: #666;
      font-size: 26px;

      span {
        font-size: 12px;
      }
    }

    .view,
    .sales {
      font-size: 14px;
      line-height: 24px;
      color: rgb(195, 195, 195);

      .view_count,
      .sales_count {
        font-weight: bold;
        margin-left: 0.2rem;
      }
    }
  }

  .product_info_more {
    width: 550px;
    background: #f0faf7;

    p {
      color: #636363;
      font-size: 14px;
      line-height: 20px;
    }
  }

  // 温馨提示
  .warm_prompt {
    h5 {
      color: #636363;
    }

    p {
      color: #636363;
      font-size: 13px;
    }
  }

  // 预订类型
  .booking_type {
<<<<<<< HEAD
    text-align: left;

=======
>>>>>>> 37ed5b8aecf1afd7f7e0097d2443feb378292aa8
    h4 {
      margin-left: 15px;
      padding-top: 20px;
      color: #636363;

      &:first-child {
        border-top: 1px dashed #ddd;
      }
    }

    ul.type_list {
<<<<<<< HEAD
      cursor: pointer;

=======
>>>>>>> 37ed5b8aecf1afd7f7e0097d2443feb378292aa8
      li {
        margin-top: 5px;
        margin-left: 10px;
        // width:400px;
        height: 36px;
        padding: 0 10px;
        float: left;
        font-size: 16px;
        border: 1px solid #ddd;
        line-height: 36px;
        text-align: center;

        &:hover {
          border: 1px solid #666;
        }

        a {
          text-decoration: none;
          color: #000;
        }
      }
    }
  }

  .date_out {
    text-align: left;
<<<<<<< HEAD

=======
>>>>>>> 37ed5b8aecf1afd7f7e0097d2443feb378292aa8
    h4 {
      border: 0 !important;
    }
  }

  .booking_active {
    border: 2px solid #ff7466 !important;
    box-shadow: 0 8px 10px rgba(255, 116, 102, 0.12);

    a {
      color: #ff7466 !important;
    }

    line-height: 34px;
    padding: 0 24px;
  }

  .date_input {
    width: 180px;
    height: 36px;
    line-height: 36px;
    margin: 20px 0px 0px 15px;
    position: relative;
    color: #000;
    padding-left: 10px;
  }

  .attention {
    p {
      background: #fffae7;
      position: relative;
      font-size: 14px;
      padding: 10px 15px 10px 15px;
      color: #636363;
    }
  }

  .price_submit {
    width: 590px;
    height: 60px;
    color: #ff7466;
    padding-left: 20px;
    line-height: 60px;
    vertical-align: middle;
<<<<<<< HEAD
    position: absolute;
    bottom: 0px;
    display: flex;


=======
    position:absolute;
    bottom:0px;
    display: flex;
  
   
>>>>>>> 37ed5b8aecf1afd7f7e0097d2443feb378292aa8
  }

  .total_price {
    font-size: 30px;
  }

  .order_button {
    display: inline-block;
    width: 160px;
    height: 60px;
    color: #fff;
    font-size: 24px;
    background: #ff7466;
    border: 0;
    position: absolute;
    left: 430px;

    &:hover {
      opacity: 0.9;
      cursor: pointer;
    }
  }

  // 商品添加按钮
  .people_count {
    ul li h4 {
      font-size: 14px;
      font-weight: 800;
    }
  }

  .pep_a_price,
  .pep_a_conut {
    color: #ff7466;
    font-size: 8px;
  }

  div.input_count {
    margin-top: 0.5rem;
    border: 1px solid #eee;

    span {
      padding: 0.5rem;
    }

    button {
      cursor: pointer;
      display: inline-block;
      font-weight: 400;
      text-align: center;
      white-space: nowrap;
      vertical-align: middle;
      user-select: none;
      border: 1px solid transparent;
      padding: 0.2rem 0.6rem;
      font-size: 1rem;
      line-height: 1.5;
      border-radius: 0.25rem;
      transition: color 0.15s ease-in-out, background-color 0.15s ease-in-out,
        border-color 0.15s ease-in-out, box-shadow 0.15s ease-in-out;
    }
  }

<<<<<<< HEAD
</style>
=======
  
</style>
>>>>>>> 37ed5b8aecf1afd7f7e0097d2443feb378292aa8
