<template>
  <div>
   
   <!-- 首屏图 -->
   <section-first-foces></section-first-foces>
   <!-- 1F 限时特卖 -->
   <section-today-sale :res="res"></section-today-sale>
   <!-- 2F 自由行 -->
   <section-ziyouxing :res="res"></section-ziyouxing>
   <!-- 3F 当地玩乐-->
   <section-wanle :res="res"></section-wanle>
   <!-- 4F 最世界·深度旅行-->
   <section-zhuanti :res="res"></section-zhuanti>
  </div>
</template>
<script>

import SectionFirstFoces from "../../subcompoents/HomeSection/SectionFirstFoces"
import SectionTodaySale from "../../subcompoents/HomeSection/SectionTodaySale"
import SectionZiyouxing from "../../subcompoents/HomeSection/SectionZiyouxing"
import SectionWanle from "../../subcompoents/HomeSection/SectionWanle"
import SectionZhuanti from "../../subcompoents/HomeSection/SectionZhuanti"
  export default {
    data() {
      return {
      }
    },
    props:["res"],
    methods: {
      getMsg(){
            this.$http.get("index/").then(res=>{
                  this.res=res.data;
            })
      },
        //获取图片列表
      
    },
    created() {
    },
    components: {
      SectionFirstFoces,
      SectionTodaySale,
      SectionZiyouxing,
      SectionWanle,
      SectionZhuanti,

    },
    watch:{
    '$route':function(to,from) {
        this.$http.get("index/").then(res=>{
            this.res=res.data;
       })
    }
  }
  }
</script>
<style lang="scss" >
/*****************自由行中通用样式*********************/
// 自由行 信息
.zw-home-ziyouxing-info{
    background: rgba(0,0,0,0.7);
    position:absolute;
    width:540px;
    margin-top:-80px;
    padding:5px 0 0 10px;
    h3{
        padding: 10px 2px;
        color:$my_jijiu_fontcolor;
        font-weight:400;
    }
    p{
        padding:3px 2px;
        color:silver;
    }
}
// 文字说明
.zw-home-ziyouxing-info1{
    height:78px;
    overflow: hidden;
    border:1px solid $my_border_Color;
    border-top:none;
    h3{
    height: 48px;
    padding: 17px 15px 0;
    font-size: 16px;
    line-height: 24px;
    font-weight:400;
    color: #323232;
    display: -webkit-box !important;  
    overflow: hidden;  
    text-overflow: ellipsis;  
    word-break: break-all;  
    -webkit-box-orient: vertical;  
    -webkit-line-clamp: 2;     
    }
}
// 自由行 第二个图片 小项目 方形
.zw-home-ziyouxing-item{
    width:265px;
    height:267px;
    margin:20px 0 0 20px;
    a{
      text-decoration: none;
      &:hover{
          opacity:0.8;
      }
      img{   
        width:266px;
      }
    }
}
.zw-home-ziyouxing-subtitle{
    width:200px;
    position: absolute;
    height: 84px;
    margin-top:-48px;
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

/****************查看更多圆形箭头导航****************/
  // 导航条 tag
.zw-home-tags{
    list-style: none;
    position: relative;
    top:40px;
    white-space: nowrap;
    
    li{
        font-size:18px;
    }
    a{
        text-decoration: none;
        color:#323232;
        font-weight: 500;
       
        &:hover{
            border-bottom:3px solid $my_hoverUnderline;
            padding-bottom: 3px;
            color:$my_hoverColorcolor;
        }
    }
}
// 激活的状态
.active{
    border-bottom:3px solid $my_hoverUnderline;
    padding-bottom: 4px;
    a{
      color:$my_hoverColorcolor !important;
    }
}
// 查看更多 导航
.zw-home-channel-more{
    p{
        &:hover{
            opacity: 0.6;
        }
    }
}
.list{
    margin-top:40px;
}
.zw-home-ziyouxing-lastlist{
 
    list-style: none;
    white-space: nowrap;
    li {
        &:not(:last-child)::after{
             content:"|";
             margin:0 .6rem;
             color:#fff;
        }
    }
   li a{
       color:$my_jijiu_fontcolor;
       &:hover{
           text-decoration: underline;
       }
    }
}
 
</style>