<template>
  <div>
    <!-- 下方大图 -->
    <div class="product_info_content container p-0">
      <!-- 导航条 预定 -->
      <div class="product_info-content1 ml-5" :class="{nav_fixed:iffixed}">
        <div id="product_tabs" class="tab-wrapper">
          <div class="tabs_details">
            <ul class="d-flex list-unstyle">
              <li class="ml-3"><a @click="goAnchor('#anchor-'+1)" :class="{text_actived:1==n}">预定流程</a></li>
              <li><a @click="goAnchor('#anchor-'+2)" :class="{text_actived:2==n}">商品简介</a></li>
              <li><a @click="goAnchor('#anchor-'+3)" :class="{text_actived:3==n}">交通信息</a></li>
              <li><a @click="goAnchor('#anchor-'+4)" :class="{text_actived:4==n}">费用说明</a></li>
              <li><a @click="goAnchor('#anchor-'+5)" :class="{text_actived:5==n}">退款政策</a></li>
              <li><a @click="goAnchor('#anchor-'+6)" :class="{text_actived:6==n}">推荐行程</a></li>
              <li><a  @click="goAnchor('#anchor-'+7)" :class="{text_actived:7==n}">咨询</a></li>
              <li class="d-flex"> <span>手机购买</span>
                <p class="">
                  <img src="../../../assets/img/product_detalis/down.png" alt="">
                </p>
              </li>
            </ul>
          </div>
        </div>
      </div>
      <!-- 主要内容 -->
      <div id="product_content" class="content_All ml-5">
        <!-- 预定流程 -->
        <div class="prebook_parent" id="anchor-1">
          <h2>预定流程</h2>
          <div class="product_intro_info">
            <h5>二次确认</h5>
            <p>本产品需要2次确认，商家会在工作时间4个小时内为您确认。建议下单前可以优先咨询客服确认位置。</p>
          </div>
          <div class="product_intro_info ">
            <h5>预定流程</h5>
            <img src="../../../assets/img/product_detalis/img_prebook.jpg" alt="">
          </div>
        </div>
        <!-- 产品简介 -->
        <div class="traffic_info mt-6 pb-4" id="anchor-2">
          <h2>产品简介</h2>
          <div class="product_intro_info">
            <h5>亮点推荐</h5>
            <div class="quatationleft">“</div>
            <p>
              直飞航班：成都四川航空直飞清迈，白班机往返；<br>
              超值赠送：一对一服务，全程旅游意外险保障；<br>
              行程自由：单机票产品，可根据自己的实际需求安排行程，灵活性更强<br>
            </p>
            <div class="quatationright">”</div>
          </div>
        </div>
        <!-- 交通方式 -->
        <div class="traffic_info" id="anchor-3">
          <div class="traffic_intro_info mt-6">
            <h2>交通信息</h2>
            <h6 class="mt-2">! &nbsp;交通信息仅供参考，最终以供应商确认为准</h6>
            <div class="d-flex ml-5 mt-4 traffic_info_place">
              <h5>成都</h5>
              <p class="ml-6"> <b>交通1</b> 四川航空(直飞/白班机/拒绝廉价航班)</p>
            </div>
            <div class="traffic_info_way ">
              <!-- 交通一 -->
              <ul>
                <li>往</li>
                <li>第一天</li>
                <li>
                  <p>17:40</p>
                  <p>{{departure}}</p>
                </li>
                <li>
                  <div class="line_wrap_2Mzcq">
                    <span></span><span></span>
                  </div>
                </li>
                <li>
                  <p>19:10</p>
                  <p>清迈</p>
                </li>
                <li>3U8089 四川航空</li>
              </ul>
              <ul class="mt-3">
                <li>反</li>
                <li>第五天</li>
                <li>
                  <p>20:10</p>
                  <p>清迈</p>
                </li>
                <li>
                  <div class="line_wrap_2Mzcq">
                    <span></span><span></span>
                  </div>
                </li>
                <li>
                  <p>23:30</p>
                  <p>{{departure}}</p>
                </li>
                <li>3U8089 四川航空</li>
              </ul>
            </div>
          </div>
        </div>
        <!-- 费用说明 -->
        <div class="price_intro mt-5" id="anchor-4">
          <h2>费用说明</h2>
          <h6 class="mt-2">! 多程机票需严格按行程顺序使用，如任意一段未使用则后续航段均无法使用</h6>
          <div class="product_intro_info">
            <h5>费用包含</h5>
            <p> 1. 成都直飞清迈往返含税机票，托运两件行李费用（每件不超过20KG）</p>
          </div>
          <div class="product_intro_info">
            <h5>赠送项目</h5>
            <p> 赠送：全程旅游意外险<br>
              赠送：急速预定/急速确认vip待遇
            </p>
          </div>
          <div class="product_intro_info">
            <h5>费用不含</h5>
            <p> 1. 酒店住宿费用 <br>
              2. 签证费用 <br>
              3. 旅游人身意外保险，建议自行购买<br>
              4. 升级舱位等产生的差价<br>
              5. 出入境时由于个人物品引起的费用，如海关征税、托运费、保管费、超重行李费等<br>
              6. 因交通延阻、罢工、天气、飞机机器故障、航班取消或更改时间等不可抗力原因导致的费用<br>
              7. 一切个人消费及费用包含中未提及的任何费用</p>
          </div>
        </div>
        <!-- 退款政策 -->
        <div class="price_refund mt-5" id="anchor-5">
          <h2>退款政策</h2>
          <h6 class="mt-2">! 穷游商城有独立于商家的质控体系，任何商家违约，用户都会获得合理赔偿 <a href="" class="text-a">详情请查看</a></h6>
          <p>本商品为特价商品，支付成功后，不支持任何变更，不予退款；如遇后期特价甩卖，商家不予改退差价，敬请谅解！
            特价或秒杀的旅行产品（特价旅行产品一般指因促销折价销售的旅行产品；秒杀旅行产品一般指因促销以超低价格销售并要求用户在同一时间网上抢购的旅行产品），因此类旅行产品的特殊性，特提示用户注意，此类产品无法享受7日内无理由退货的服务。该类旅行产品一旦用户下单并支付成功的，在商家确认前可随时取消并要求退款，在商家确认后则无法申请取消并要求退款。</p>
        </div>
        <!-- 推荐行程 -->
        <div class="recommended_travel mt-5" id="anchor-6">
          <h2>推荐行程</h2>
          <h4 class="mt-3 mb-2">参考行程</h4>
          <img v-lazy="lg_pic" alt="">
          <div class="product_intro_info">
            <h5>出行提示</h5>
            <p> 行程中所列航班时间为参考时间，具体出发时间以实际出票为准。</p>
          </div>
        </div>
        <!-- 评论 -->
        <product-comments id="anchor-7"></product-comments>
      </div>
    </div>
  </div>
</template>
<script>
  import ProductComments from "./ProductComments.vue"
  export default {
    data() {
      return {
        n:1,
      }
    },
    props: ["lg_pic", "departure","iffixed"],
    methods:{
      goAnchor(selector){
        var anchor = this.$el.querySelector(selector);
         this.n = anchor.id.split("-")[1];
        document.documentElement.scrollTop= anchor.offsetTop+1050;
      }
    },
    created(){
    
    },
    mounted(){
     
    },
    components:{ 
      ProductComments,
    
    }
  }

</script>
<style lang="scss" scoped>
a{
  cursor: pointer;
}
.text_actived{
   color:#00b081 !important;
   font-size:16px !important;
   font-weight: 600 !important;
   border-bottom:2px solid #00b081 !important;
   padding-bottom:8px !important;

}
  // 下方详细图
  .nav_fixed{
    position: fixed;
    top:0;
    z-index: 99;
  }
  .product_info_content {
    margin-top: 100px;
  }

  .product_info-content1 {
    width: 860px;
   
  }

  .tab-wrapper {
    border-bottom: 2px solid #ddd;
  }

  .tabs_details {
    padding-right: 20px;
    background: #fff;
    white-space: nowrap;

    li {
      padding: 20px;
      color: #636363;

      &:last-child {
        img {
          width: 15px;
          height: 15px;
          margin: 2px;
        }

        p {
          width: 100px;
        }

        p:hover img {
          width: 160px;
          height: 160px;
          position: absolute;
          top: 50px;
          left: 750px;
          z-index: 10;
        }
      }
    }

    a {
      text-decoration: none;
      color: #636363;
      font-weight: 500;
      font-size: 16px;

      &:hover {
        font-weight: bold;
        color: #00b081;
      }
    }
  }

  // 预定详情页面
  .content_All {
    position: relative;
    background: #fff;
    width: 860px;
  }

  .prebook_parent,
  .traffic_info,
  .price_intro,
  .price_refund,
  .consult {
    text-align: center;
    margin-top: 2px;
    overflow: hidden;
  }

  .product_intro_info {
    display: flex;
    justify-content: space-around;
    margin-top: 40px;

    h5 {
      font-size: 16px;
    }

    p {
      width: 550px;
      text-align: left;
      color: #636363;
      font-size: 14px;
    }

    img {
      height: 107px;
    }
  }

  .price_refund {
    p {
      color: red;
      padding: 35px 30px;
      font-size: 15px;
    }
  }

  .traffic_info {
    position: relative;
  }

  .quatationleft {
    position: absolute;
    font-size: 50px;
    color: #00b081;
    top: 30px;
    left: 200px;
  }

  .quatationright {
    position: absolute;
    font-size: 50px;
    color: #00b081;
    top: 120px;
    left: 680px;
  }

  .traffic_intro_info {
    h6 {
      color: gray;
    }

    p {
      ul {
        display: flex;
        justify-content: space-around;
        list-style: none;
      }
    }
  }

  .traffic_info_place {
    h5 {
      padding: 5px;
      background: #00b081;
      color: #fff;
    }
  }

  .traffic_info_way {
    margin-left: 190px;
    margin-top: 25px;

    ul {
      display: flex;
      list-style: none;

      li {
        margin-left: 35px;
        font-size: 12px;

        &:nth-child(3),
        &:nth-child(5) {
          p {
            position: relative;
            top: -12px;

            &:first-child {
              color: #666;
              font-size: 24px;
            }

            &:last-child {
              color: #00b081;
              padding: 2px;
            }
          }
        }

        &:nth-child(4) {
          div {
            display: flex;
            width: 50px;
            height: 2px;
            background-color: #00b081;
            position: relative;
            top: 12px;

            span {
              content: "";
              display: inline-block;
              width: 4px;
              height: 4px;
              border: 1px solid #00b081;
              border-radius: 50%;

              &:first-child {
                position: absolute;
                left: -6px;
                top: -2px;
              }

              &:last-child {
                position: absolute;
                left: 50px;
                top: -2px;
              }
            }
          }
        }

        &:first-child {
          background: #00b081;
          color: #fff;
          width: 20px;
          height: 20px;
        }
      }
    }
  }

  // 推荐行程
  .recommended_travel {
    text-align: center;

    img {
      width: 800px;
    }
  }

  

</style>
