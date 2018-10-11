<template>
  <div>
    <section class="bg-gray p-0 m-0" v-cloak>
      <!-- 主要商品详情 -->
      <div class="zw-product-main">
        <div class="main-content ml-4 mt-5 container d-flex justify-content-around">
          <!-- 图片和日期 -->
          <section-details-image :res="res"></section-details-image>
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
                <li v-for="(c,i) of res.categories" :class="{booking_active:changedActive==i}" @click.prevent="changeDetails(c.tid,i)">
                  <a>{{c.category}}</a>
                </li>
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
      <section-Details-bottom :lg_pic="lg_pic" :departure="departure"></section-Details-bottom>
    </section>
  </div>
</template>
<script>
  // 引入子组件
  import SectionDetailsBottom from "../ProductDetails/SectionDetailsBottom.vue"
  import SectionDetailsImage from "../ProductDetails/SectionDetailsImage.vue"
  export default {
    data() {
      return {
        res: {
          product: [],
          pics: ["sm", "md"],
          categories: [],
        },
        lg_pic: "",
        departure: "",
        aduts_count: 1,
        child_count: 1,
        tid: this.$route.params.tid,
        changedActive: 0
      }
    },
    methods: {
      getMsg() {
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
    watch: {},
    computed: {
      total_price() {
        return Math.ceil(this.res.product.price / 2) * this.child_count + this.res.product.price * this.aduts_count
      }
    },
    created() {
      this.getMsg()
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
    components: {
      SectionDetailsBottom,
      SectionDetailsImage
      // SectionDetailsCalendar
    }
  }

</script>
<style lang="scss" scoped>
  a {
    cursor: pointer;
  }

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
    text-align: left;

    h4 {
      margin-left: 15px;
      padding-top: 20px;
      color: #636363;

      &:first-child {
        border-top: 1px dashed #ddd;
      }
    }

    ul.type_list {
      cursor: pointer;

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
    position: absolute;
    bottom: 0px;
    display: flex;


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

</style>
