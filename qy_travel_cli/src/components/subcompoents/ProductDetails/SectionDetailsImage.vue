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
            <img src="../../../assets/img/product_detalis/hover-prev.png" alt="" class="pt-4 pl-1" :class="{disabled:isdisabled_prev}"
              @click="prev()">
          </p>
          <div class="slidearea">
            <ul class="list-unstyle sm_img_list d-flex " :style="move">
              <li class="ml-1 " v-for="(pic,i) in res.pics">
                <img :src="pic.sm" @mouseenter="changeImg(i)">
              </li>
            </ul>
          </div>
          <p>
            <img src="../../../assets/img/product_detalis/hover-next.png" alt="" class="pt-4 pl-1" :class="{disabled:isdisabled_next}"
              @click="next()">
          </p>
        </div>
      </div>
      <!-- 日期 -->
      <section-details-calendar :res="res"></section-details-calendar>
      <!-- 收藏 与分享 -->
      <div class="mylove">
        <ul class="list-unstyle">
          <li class="mylove_collection" :class="{love_active:iscollection}" @click.prevent="addcollection(res.product.title,res.product.subtitle,res.product.price,res.product.old_price,res.product.sold_count,res.pics[0].md,res.product.tid)"><a>收藏</a></li>
          <li class="mylove_share" @click.prevent="share()"><a>分享</a>
            <ul class="list-unstyle">
              <li><img src="../../../assets/img/icon/weixin_base.png" alt=""></li>
              <li><img src="../../../assets/img/icon/xinlang_base.png" alt=""></li>
            </ul>
          </li>
        </ul>
      </div>
    </div>
  </div>
</template>
<script>
  import SectionDetailsCalendar from "./SectionDetailsCalendar.vue";
  import Qs from "qs";
  import {
    Toast
  } from "mint-ui";
  export default {
    inject: ['reload'],
    data() {
      return {
        i: 0, //控制当前图片的下标
        n: 0, //跟随移动的数量
        changedActive: 0,
        iscollection: false,
        tid: this.$route.params.tid, //当前产品的tid
        isdisabled_next: false, //点击下一个箭头是否禁用
        isdisabled_prev: true, //点击上一个箭头是否禁用
        img_pic_length: "", //当前获得小图片的长度
        uname: "", //当前登录的用户名
        uid: "", //当前登录用户名的id
      };
    },
    props: ["res"],
    methods: {
      changeImg(i) {
        this.i = i;
      },
      share() {
        console.log(1)
      },
      next() {
        if (!this.isdisabled_next) {
          this.n++;
          this.isdisabled_prev = false;
          if (this.n >= 3) {
            this.isdisabled_next = true;
          } else {
            this.isdisabled_next = false;
          }
        }
      },
      prev() {
        if (!this.isdisabled_prev) {
          this.n--;
          this.isdisabled_next = false;
          if (this.n == 0) {
            this.isdisabled_prev = true;
          } else {
            this.isdisabled_prev = false;
          }
        }

      },
      //添加收藏或删除收藏
      addcollection(title, subtitle, price, old_price, sold_count, md, tid) {
        if (this.isLogin == false) {
          this.$router.push({path:"/user_login"
            });
          return;
        }
        // //如果当前是登录状态
        if (this.isLogin == true) {
          //如果当前图标不为高亮状态 
          if (this.iscollection == false) {
            //发送请求 添加数据到数据库
            this.$http
              .post(
                "/collection/add",
                Qs.stringify({
                  title,
                  subtitle,
                  price,
                  old_price,
                  sold_count,
                  md_pic: md,
                  tid,
                  uid: this.uid,
                  uname: this.uname,
                })
              )
              .then(res => {
                this.iscollection = true;
              });
          } else {
            this.$http
              .post(
                "/collection/delete",
                Qs.stringify({
                  tid: this.tid
                })
              )
              .then(res => {
                this.iscollection = false;
              });
          }
        }

      }
    },
    created() {
      //async 异步处理 ES7 新特性
      (async function (self) {
        //1.判断是否登录
        var res = await self.$http.get("/users/islogin")
        if (res.data.ok == 1) {
          self.isLogin = true;
          self.uname = res.data.uname;
          self.uid = res.data.uid;
        } else {
          self.isLogin = false;
        }
        //2.判断当前产品是否被当前用户收藏
        var res = await self.$http.get(`/collection/iscollection?uname=${self.uname}&tid=${self.tid}`)
        if (res.data.code == 1) {
          self.iscollection = true;
        } else {
          self.iscollection = false;
        }
      })(this);
    },
    watch: {
      // 想对路由参数的变化作出响应的话，可以简单地 watch (监测变化) $route 对象：
      '$route'(to, from) {
        var tid = this.$route.params.tid;
        this.$http.get(`/collection/iscollection?uname=${this.uname}&tid=${tid}`).then(res => {
          if (res.data.code == 1) {
            this.iscollection = true;
          } else {
            this.iscollection = false;
          }
        })

      },
    },
    computed: {
      move() {
        return `margin-left:${-80 * this.n}px`;
      }
    },
    components: {
      SectionDetailsCalendar
    }
  };

</script>
<style lang="scss" scoped>
  a {
    cursor: pointer;
  }

  //  主要内容
  .move {
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
      position: relative;

      span {
        position: absolute;
        top: 0;
        left: 0;
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

  //收藏分享
  .love_active {
    background: url("../../../assets/img/icon/hear_red.png") no-repeat 0% 60% !important;
    background-size: 20px 20px !important;
  }

  .mylove {
    margin-top: 1rem;
    width: 512px;

    ul {
      display: flex;

      li {
        padding: 0.3rem 0.2rem;

        a {
          margin-left: 20px;
          text-decoration: none;
          font-size: 14px;
          color: #666;

          &:hover {
            color: #00b081;
          }
        }

        &:last-child {
          margin-left: 3rem;
        }
      }

      // 收藏
      .mylove_collection {
        background: url("../../../assets/img/icon/20180910234252.png") no-repeat 0% 60%;
        background-size: 20px 20px;
        cursor: pointer;
      }

      // 分享
      .mylove_share {
        position: relative;

        ul {
          top: 2rem;
          display: flex;
          background: #fff;
          position: absolute;
          right: 0rem;
          left: -0.8rem;

          li {
            margin-left: 10px;
            padding: 0.1rem 0.2rem;
            display: none;

            img {
              width: 20px;
              height: 20px;
            }
          }
        }

        background: url("../../../assets/img/icon/share.png") no-repeat 0% 60%;
        background-size: 20px 20px;
        cursor: pointer;

        &:hover {
          background: url("../../../assets/img/icon/share_green.png") no-repeat 0% 60%;
          background-size: 20px 20px;

          a {
            color: #00b081;
          }

          li {
            display: block;
          }
        }
      }
    }
  }

</style>
