<template>
  <!-- 轮播 -->
  <div class="app-goods-info">
    <div class="mui-card">
      <div class="mui-card-content">
        <div class="mui-card-content-inner">
          <swiper :list="list"></swiper>
        </div>
      </div>
    </div>
    <!-- 第二部分购买区域 -->
     
   		<div class="mui-card">
				<div class="mui-card-header">{{listinfo.title}}</div>
				<div class="mui-card-content">
					<div class="mui-card-content-inner">
            <div class="details">{{listinfo.title}}</div>
            <div class="price">
            <b>市场价: </b>
            <span class="old">{{(Number(listinfo.price)).toFixed(2)}}</span>
            <span class="now">销售价:{{(Number(listinfo.price)).toFixed(2)}}</span>
           </div>
          <div class="count">
            <h6>购买数量</h6>
            <mt-button size="small" @click="goSub()">-</mt-button>
            <span class="number">{{count}}</span>
            <mt-button size="small"  @click="goAdd()">+</mt-button>
         
            <p class="booking">
              <mt-button size="small" type="primary">立即购买</mt-button>
              <mt-button size="small" type="danger" @click="addCart()">加入购物车</mt-button>
            </p>
          </div>
					</div>
				</div>
			</div>
    <!-- 第三部分 -->
    <div class="mui-card">
      <div class="mui-card-header">商品参数</div>
      <div class="mui-card-content">
        <div class="mui-card-content-inner">
           <div>
            <ul class="info-list">
              <li>商品货号:{{listinfo.lid}}</li>
              <li>商品名称:{{listinfo.title}}</li>
              <li>处理器:{{listinfo.cpu}}</li>
              <li>系统:{{listinfo.os}}</li>
            </ul>
          </div>
        </div>
        <div class="mui-card-footer">
        <div class="intro">
          <p> 
            <mt-button size="small">图文介绍</mt-button>
          </p>
          <p>
            <mt-button size="small">商品评论</mt-button>
           </p>
        </div>
        </div>
      </div>
    </div>
  </div>
</template>
<script>
import swiper from "../subcomponents/swiper";
import Qs from "qs";
import {Toast} from "mint-ui";
// 由于mui'.js与脚手架严格模式有冲突 放弃
// import mui from "../../lib/mui/js/mui.js";
export default {
  inject: ['reload'],
  data() {
    return {
      list: [],
      lid: this.$route.params.id,
      listinfo: {},
      count: 1,
    };
  },
  methods: {
  
    addCart(){
      var lid=this.listinfo.lid;
      var title=this.listinfo.title;
      var count=this.count;
      var price=this.listinfo.price;
      var obj={lid,title,count,price};
      var url="cartlist/savecart";
      var obj=(Qs.stringify(obj));
      this.$axios.post(url, obj).then(res=>{
          if(res.data.code==1){
             Toast({
               message:"添加购物车成功",
               duration:1000
             });
             //修改vuex中共享的数据 参数是方法名称
             this.$store.commit("increment",this.count);
            // this.$store.commit("clearcount")
          };
     })
   
   
    },
    goSub(){
      if(this.count<=1){return};
       this.count = this.count-1;
    },
    goAdd(){
      if(this.count>=99){return};
       this.count = this.count+1;
    }
  },
  created() {
    this.getImageList();
    this.$axios.get("goodslist/details?lid=" + this.lid).then(result => {
      this.listinfo = result.data[0];
      // console.log(this.listinfo);
    });
  },
  components: {
    swiper
  }
};
</script>
<style scoped>
.old {
  text-decoration: line-through;
}
.price .now {
  color: #ff7467;
  font-weight: 600;
  margin-left: 10px;
}
.number {
  display: inline-block;
  width: 32px;
  height: 32px;
  text-align: center;
  line-height: 32px;
}
.booking {
  margin-top: 8px;
}
/*参数*/
.product_info_details {
  background: #fff;
}
ul.info-list {
  list-style: none;
  padding: 10px;
  margin-bottom: 5px;
  margin-top: 8px;
}
.info-list li {
  font-size: 12px;
  color: #666;
}
div.intro {
  display: flex !important;
  width: 355px;
  justify-content: space-between;
  padding: 10px;
}
</style>