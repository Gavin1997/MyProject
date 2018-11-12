<template>
  <div>
    <!-- 产品列表 -->
    <div>
      <h1 style="color:sliver">{{notfond_msg}}</h1>
      <div class="zw-module-productlist mt-4">
        <!-- 左边详情主要列表 -->
        <div class="zw-new-bigcard-wrap">
          <!-- 产品区域 -->
          <div>
            <div class="zw-new-bigcard-item clearfix mt-3" v-for="(item,i) in res">
              <a href="" class="float-left" @click.prevent="getdetails(item.tid)"> <img class="img-fluid" :src="item.md"></a>
              <div class="zw-new-bigcard-item-section">
                <div class="zw-new-bigcard-item-tag float-left">
                  <h4><a @click.prevent="getdetails(item.tid)">{{item.title}}</a></h4>
                </div>
                <div class="zw-new-bigcard-item-middle mt-2">
                  <ul>
                    <li>秒杀</li>
                    <li>{{item.subtitle}}</li>
                  </ul>
                </div>
                <div class="zw-new-bigcard-item-bottom ml-1 ">
                  <div class="zw-new-bigcard-item-price">
                    <div class="item-price">
                      <span>¥</span>
                      <span style="color:#999"><b style="color:#ff7363; font-size:25px;">{{item.price}}</b> 起</span>
                      <span class="line">{{item.old_price}}元</span>
                    </div>
                  </div>
                  <div class="zw-new-bigcard-item-booking">
                    <div class="sold_out">
                      <span>{{item.sold_count}}</span>
                      <span>件已售</span>
                    </div>
                    <div class="item-booking_btn">
                      <p>立即预定</p>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <!-- 右边本周热卖 -->
          <div class="zw-new-bigcard-aside">
            <products-recommend></products-recommend>
          </div>
        </div>
      </div>
    </div>
    <!-- 分页内容 -->
    <div class="btn_area">
      <span @click="prev()" :class="disabled_info_prev">上一页</span>
      <span v-for="(item,i) in pageCount" :class="{btn_area_active:changedActive==i}" @click.prevent="nowNum(i)">{{i+1}}</span>
      <span @click="next()" :class="disabled_info_next">下一页</span>
    </div>
    <!-- 定位返回顶部 -->
    <sidebar v-if="ifshow_sidebar"></sidebar>
  </div>
</template>
<script>
//推荐商品 悬浮
import ProductsRecommend from "../Products/ProductsRecommend"
// 返回顶部
import Sidebar from "../more/sidebar"
  export default {
    inject: ['reload','jump'],
    data() {
      return {
        pno: 0,
        // kw: decodeURI(location.search.split("=")[1]),
        kw: this.$route.params.kw,
        n: 0,//控制页数的变量 和pno去比较逻辑关系
        i:0,//控制当前按钮是否高亮的下标
        ifshow_sidebar:false,//是否显示侧边固定栏
        disabled_info_prev: "disabled",
        disabled_info_next: "btn_area_active",
        disabled_info_num: "",
        changedActive: 0,
        res:"",
        pageCount:"",

      };
    },
    props: ["notfond_msg"],
    methods: {
      getdetails(tid) {
        this.$router.push({
          path: `/product_details/${tid}`
        })
      },
      getmore() {
        this.$http.get(`products?kw=${this.kw}&pno=${this.pno}`).then(res => {
          this.res = res.data.data.products;
          this.pageCount = res.data.data.pageCount;
        });
      },
      next() {
        if (this.pno < this.pageCount - 1) {
          this.pno++;
          this.n++;
          this.disabled_info_next = "btn_area_active";
          this.disabled_info_prev = "btn_area_active";
          this.getmore();
          this.jump();
      
        } else {
          this.disabled_info_next = "disabled"
        }
      },
      prev() {
        if (this.disabled_info_prev != "disabled") {
          if (this.pno < this.pageCount && this.pno > 0) {
            this.pno--;
            this.n--;
            this.getmore();
            this.disabled_info_next = "btn_area_active";
            this.disabled_info_prev = "btn_area_active";
            this.jump();
          } else {
            this.disabled_info_prev = "disabled";
          }
        }
      },
      nowNum(i) {
          this.i= i;
          this.pno = i;
          this.changedActive = i;
          this.getmore();
          this.disabled_info_prev = "btn_area_active";
          this.disabled_info_next = "btn_area_active";
           this.jump();
      },
      handleScroll () {
        var scrollTop = window.pageYOffset || document.documentElement.scrollTop || document.body.scrollTop
        if(scrollTop>680){
          this.ifshow_sidebar = true;
        }else{
          this.ifshow_sidebar = false;
        }
      }
    },
    watch:{
      //监听当前页面的页数
      pno(){
        if(this.pno == this.n ){
          this.changedActive = this.n;
        }else if(this.pno==this.i){
           this.changedActive = this.i;
        }
        else{
          this.changedActive = "";
        }
      },
      
    },  
    created() {
      // this.$emit("get");
      this.getmore();
    },
    mounted() {
      window.addEventListener("scroll",this.handleScroll,true)
    },
    computed:{
    },
    components:{
       ProductsRecommend,
       Sidebar
    }
  };

</script>
<style lang="scss" scoped>
.zw-module-productlist {
  position: relative;
}
.zw-new-bigcard-wrap {
  width: 880px;
}
.zw-new-bigcard-item {
  background: #fff;
  position: relative;
  width: 100%;
  font-size: 16px;
  box-sizing: border-box;
  height: 155px;

  a {
    text-decoration: none;

    img {
      width: 225px;
      height: 154px;
    }
  }

  .zw-new-bigcard-item-section {
    display: flex;
    flex-direction: column;
    align-items: flex-start;
    padding-left: 1rem;
    height: 154px;
  }

  .zw-new-bigcard-item-tag {
    text-align: left;

    a {
      color: #323232;
      font-weight: 500;
      font-size: 18px;

      &:hover {
        color: #12af7e;
      }
    }
  }

  .zw-new-bigcard-item-middle {
    padding-left: 0.6rem;

    ul {
      list-style: none;
      display: flex;

      li {
         &:last-child{margin-left:0.5rem;}
        max-width: 100px;
        padding: 2px 6px;
        height: 20px;
        line-height: 20px;
        border: 1px solid #4a90e2;
        border-radius: 2px;
        text-align: center;
        font-size: 14px;
        color: #4a90e2;
      }
    }
  }

  .zw-new-bigcard-item-bottom {
    height: 40px;
    position: absolute;
    top: 7rem;

    .zw-new-bigcard-item-price {
      .item-price {
        span:first-child {
          color: #ff7363;
          font-size: 20px;
        }

        span:nth-child(2) {
          font-size: 13px;
        }

        span.line {
          text-decoration: line-through;
          color: #999;
          font-size: 13px;
        }
      }
    }
  }

  .zw-new-bigcard-item-booking {
    text-align: center;
    position: relative;
    left: 32.2rem;
    top: -3.3rem;

    .sold_out {
      span:first-child {
        color: #12af7e;
        font-size: 14px;
      }

      span:last-child {
        color: #999;
        font-size: 12px;
      }
    }

    .item-booking_btn {
      width: 120px;
      height: 40px;
      background: #ff7362;
      line-height: 40px;
      text-align: center;
      color: #fff;

      &:hover {
        cursor: pointer;
      }
    }
  }
}

.btn_area {
  margin-top: 1rem;
  display: flex;
  justify-content: flex-end;
  width: 910px;

  span {
    display: inline-block;
    color: #636363;
    padding: 2px 7px;
    text-align: center;

    &:hover {
      cursor: pointer;
    }
  }
}
.btn_area_active {
  background: #12af7e;
  color: #fff;
  padding: 2px;
}
// 右边本周日本
.zw-new-bigcard-aside{
   position:absolute;
   top:0;
   left:57rem;
}
</style>
