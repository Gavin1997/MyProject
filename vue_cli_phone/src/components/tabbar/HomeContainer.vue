<template>
    <div class="app">
        <!-- 主页组件 HomeContainer.vue -->
        <h1>主页的组件</h1>
        <!-- 1:轮播图 -->
        <mt-swipe :auto="3000">
            <mt-swipe-item v-for="item in list" :key="item.id">
                <img :src="item.img_url" alt="">
            </mt-swipe-item>
        </mt-swipe>
        <!-- 2:六宫格 -->
        <ul class="mui-table-view mui-grid-view mui-grid-9">
            <li class="mui-table-view-cell mui-media mui-col-xs-4 mui-col-sm-3">
                <router-link to="/home/newslist">
                    <img src="../../img/menu1.png" />
                    <div class="mui-media-body">新闻资讯</div>
                </router-link>
            </li>
            <li class="mui-table-view-cell mui-media mui-col-xs-4 mui-col-sm-3">
                <router-link to="/home/goodslist">
                    <img src="../../img/menu1.png" />
                    <div class="mui-media-body" id="badge">商品
                    </div>
                </router-link>
            </li>
            <li class="mui-table-view-cell mui-media mui-col-xs-4 mui-col-sm-3"><a href="#">
                    <img src="../../img/menu2.png" />
                    <div class="mui-media-body">Chat</div>
                </a></li>
            <li class="mui-table-view-cell mui-media mui-col-xs-4 mui-col-sm-3"><a href="#">
                    <img src="../../img/menu4.png" />
                    <div class="mui-media-body">location</div>
                </a></li>
            <li class="mui-table-view-cell mui-media mui-col-xs-4 mui-col-sm-3"><a href="#">
                    <img src="../../img/menu4.png" />
                    <div class="mui-media-body">Search</div>
                </a></li>
            <li class="mui-table-view-cell mui-media mui-col-xs-4 mui-col-sm-3"><a href="#">
                    <img src="../../img/menu5.png" />
                    <div class="mui-media-body">Phone</div>
                </a></li>
        </ul>
    </div>
</template>
<script>
//加载当前组件需要第三方模块
import { Toast } from "mint-ui";

export default {
  data() {
    return {
      list: [],
    };
  },
  methods: {
    getImageList() {
      //获取图片轮播数据
      this.$http.get("http://localhost:3000/imagelist/list").then(res => {
        //   console.log(res)
        //nodejs发送字符串 通过VueResource转换成js对象
        if (res.body.code == 1) {
          this.list = res.body.msg;
        } else {
          //出错提示 Toast()
          Toast("加载轮播图片失败");
        }
      });
    }
  },
  created() {
    this.getImageList();
  }
};
</script>
<style scoped>
.app .mint-swipe {
  height: 160px;
}

.app .mint-swipe img {
  width: 100%;
  height: 160px;
}

.app .mui-grid-view.mui-grid-9 {
  background-color: #fff;
  border: 0;
}

.mui-grid-view.mui-grid-9 img {
  width: 60px;
  height: 60px;
}

.mui-grid-view.mui-grid-9 .mui-media-body {
  font-size: 13px;
}

.app .mui-grid-view.mui-grid-9 .mui-table-view-cell {
  border: 0;
}
</style>