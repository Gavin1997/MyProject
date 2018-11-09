<template>
  <div>
    <!-- 楼层   1F  限时特卖-->
    <div class="zw-home-seckill  clearfix">
      <div class="zw-home-seckill-wrap container">
        <div class="zw-home-seckill-titlerow clearfix">
          <h1 class="zw-home-bgtitle float-left mt-4">限时特卖</h1>
          <p class="zw-home-subtitle float-left ml-4 mt-5">每日必看的特价精选</p>
          <p class="zw-home-seckill-switch float-right mt-5"><span class="zw-home-seckill-switch-icon ">换一批</span></p>
        </div>
        <!-- 图片内容 -->
        <div class="zw-home-todaysale-content mt-4 ">
          <ul class="zw-home-todaysale-list d-flex justify-content-between">
            <li class="zw-home-todaysale-list-item float-left" v-for="(p,i) in res.slice(0,4)" v-cloak>
              <a  @click.prevent="getDetails(p.tid)">
                <img v-lazy="p.pic" alt="">
                <h3 class=" zw-home-todaysale-list-item-title">{{p.details}}</h3>
                <p class="price mb-2 mr-2">{{p.price}}<span>元起</span></p>
              </a>
            </li>

          </ul>
          <!-- 图片内容 第二排 -->
          <ul class="zw-home-todaysale-list d-flex justify-content-between mt-3">
            <li class="zw-home-todaysale-list-item float-left" v-for="(p,i) in res.slice(4,8)" v-cloak>
              <a  @click.prevent="getDetails(p.tid)">
                <img v-lazy="p.pic" alt="">
                <h3 class=" zw-home-todaysale-list-item-title">{{p.details}}</h3>
                <p class="price mb-2 mr-2">{{p.price}}<span>元起</span></p>
              </a>
            </li>
          </ul>
        </div>
      </div>
    </div>
  </div>
</template>
<script>
  export default {
    data() {
      return {
      }
    },
    props:["res"],
    methods: {
        getDetails(tid){
           this.$router.push("/product_details/"+tid)
        }
    },
    created() {
        
    }

  }
</script>
<style lang="scss" scoped>
  // 一楼 导航栏
  .zw-home-bgtitle {
    font-size: 36px;
    font-weight: 700;
    line-height: 40px;
  }

  .zw-home-subtitle {
    color: #636363;
  }

  .zw-home-seckill {
    
    background-color: #F5F5F5;
    height: 755px;

    .zw-home-seckill-switch {
      font-size: 14px;
      line-height: 16px;
      color: #636363;

      // 换一批下图标
      .zw-home-seckill-switch-icon {
        &:before {
          content: "\e60e";
        }

        &:hover {
          color: $my_hoverColorcolor;
          cursor: pointer;
        }
      }
    }
  }
  a{
    cursor: pointer;
  }

  // 图片内容
  .zw-home-todaysale-content {
    .zw-home-todaysale-list {
      list-style: none;

      .zw-home-todaysale-list-item {
        width: 275px;
        background-color: #fff;

        //游玩信息
        a {
          text-decoration: none;

          img {
            transition: all 0.5s linear 0ms;

            &:hover {
              transform: scale(1.1);
              opacity: 0.7;
            }
          }
        }

        .zw-home-todaysale-list-item-title {
          font-size: 16px;
          height: 48px;
          overflow: hidden;
          text-overflow: ellipsis;
          display: -webkit-box;
          -webkit-box-orient: vertical;
          -webkit-line-clamp: 2;
          word-break: break-all;
          font-weight: normal;
          line-height: 24px;
          color: #323232;
          padding: 10px 15px 0;
        }

        // 价格
        .price {
          font-weight: bold;
          font-size: 32px;
          color: $my_priceColor;
          float: right;

          span {
            font-size: 13px;
            color: $my_fontColor;
          }
        }
      }

    }
  }
</style>