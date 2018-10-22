<template>
  <div>
    <!-- 楼层 2F -->
    <!-- 机酒自由行 -->
    <div class="zw-home-ziyouxing container mt-2 p-0">
      <div class="zw-home-ziyouxing-warp">
        <div class="zw-home-titlerow clearfix">
          <h1 class="'zw-home-bgtitle float-left mt-3">机酒自由行</h1>
          <p class="zw-home-subtitle float-left ml-4 mt-5">精选全球最优质机票、酒店、邮轮等旅行产品</p>
          <!-- 导航条 -->
          <ul class="zw-home-tags  d-flex">
            <li class="float-left ml-5 active"><a href="#">今日特卖</a></li>
            <li class="float-left  ml-4"><a href="#">新品特惠</a></li>
            <li class="float-left  ml-4"><a href="#">优选</a></li>
            <li class="float-left ml-4"><a href="#">假期出现</a></li>
            <li class="float-left  ml-4"><a href="#">超值机票</a></li>
            <li class="float-left ml-4"><a href="#">热门海岛</a></li>
            <li class="float-left  ml-4 mr-0"><a href="#">低价甩尾</a></li>
          </ul>
        </div>
        <!-- 主要内容  -->
        <div class="zw-home-ziyouxing-content mt-2">
          <ul class="zw-home-ziyouxing-list container clearfix p-2">
            <li class="zw-home-ziyouxing-one float-left" v-for="(p,i) in res.slice(8,9)" v-cloak>
              <a @click.prevent="getDetails(p.tid)">
                <img :src="p.pic" alt="">
                <div class="zw-home-ziyouxing-title d-flex">
                  <p>机票</p>
                  <p>{{p.price}}<span>元起</span></p>
                </div>
                <div class="zw-home-ziyouxing-info">
                  <h3 class="text-truncate">{{p.details}}</h3>
                  <p>旅行时间 2016/10-2018/12</p>
                </div>
              </a>
            </li>
            <!-- 第二个列表 图2 小 -->
            <li class="zw-home-ziyouxing-item float-left" v-for="(p,i) in res.slice(9,14)" v-cloak>
              <a @click.prevent="getDetails(p.tid)">
                <img :src="p.pic" alt="">
                <div class="zw-home-ziyouxing-subtitle d-flex ">
                  <p>机票</p>
                  <p>{{p.price}}<span>元起</span></p>
                </div>
                <div class="zw-home-ziyouxing-info1">
                  <h3 class="">{{p.details}}</h3>
                </div>
              </a>
            </li>
            <!-- 最后一个列表 查看更多 -->
            <li class="zw-home-channel-more float-left">
              <a href="#">
                <p class="title">
                  查看更多
                  <br>
                  机票自由行产品
                </p>
                <!-- 圆箭头 -->
                <p class="circle-arrow-icon mt-3 ml-6">
                  <span class="arrow-right mt-3 ml-2"></span>
                </p>
              </a>
              <p class="list">
                <ul class="zw-home-ziyouxing-lastlist d-flex">
                  <li class="ml-4"><a href="#">机票</a></li>
                  <li><a href="#">酒店</a></li>
                  <li><a href="#">机+酒</a></li>
                  <li><a href="#">邮轮</a></li>
                </ul>
              </p>
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
        return{
        }
    },
    props:["res"],
    methods:{
      getDetails(tid){
        this.$router.push({path:"/product_details/"+tid})
      }
    },
    created(){}
}
</script>
<style lang="scss" scoped>

a{
  cursor: pointer;
}
// 自由行的内容
.zw-home-ziyouxing-list{
    list-style: none;
    white-space: normal;
}
.zw-home-ziyouxing-one{
    width:550px;
    height:266px;
    img{
        &:hover{
            opacity:0.7;
        }
    width:550px;
    height:266px;
    }
    margin:20px 0 0 20px;
}
// 机票 +价钱
.zw-home-ziyouxing-title{
    width:200px;
    position: absolute;
    height: 84px;
    margin-top:-124px;
    text-decoration: none;
   p{
    background: rgba(0,0,0,0.7);
    // 机票
       &:first-child{
           color:$my_jijiu_fontcolor;
           font-size: 22px;
           font-weight: 300;
           line-height: 24px;
           padding:10px;
           height: 24px;
       }
    //    价格
       &:last-child{
          background: $my_priceColor;
          color:$my_jijiu_fontcolor;
          line-height: 24px;
          font-size:20px;
          padding:10px;
          width:70px;
          font-weight:500;
          white-space: nowrap;
          height:24px;
          span{
              font-size:8px;
          }
       }
   }
}


// 自由行 查看更多
.zw-home-channel-more{
    width:265px;
    height:263px;
    margin:20px 0 0 20px; 
    background-color: $my_ziyouxing_bgColor;
    background-image:linear-gradient(180deg,$my_ziyouxing_gradient_color1,$my_ziyouxing_gradient_color2);
}
// 查看更多 字体延时
a{
    text-decoration: none;
    .title{
      font-size:18px;
      line-height: 24px;
      text-align: center;
      padding-top:46px;
      color:$my_jijiu_fontcolor;
      
    }
}


</style>

