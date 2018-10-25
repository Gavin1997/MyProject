<template>
  <div class="app-goods-list">

    <div class="app-goods-item" v-for="(item,i) in list" :key="item.lid" @click="getDetail(item.lid,$event)">
      <!-- <router-link :to="'/home/goodsinfo/'+item.id"> -->
      <img :src="item.img_url" alt="">
      <h1 class="title">{{item.title}}</h1>
      <h6 class="details">英特尔i5,GTX1080英特尔,3k屏幕,94%色域 120Hz高刷新,至尊超薄</h6>
      <!-- </router-link> -->
      <div class="info">
        <p class="price">
          <span class="old">￥{{item.price}}</span>
          <span class="now">￥{{item.price}}</span>
        </p>
        <p class="sell">
          <span>热卖中</span>
          <span>剩<em>{{item.sold_count}}</em>件</span>
        </p>
      </div>
    </div>
    <mt-button type="primary" size="large" @click.native="getMore()">加载更多</mt-button>
  </div>
</template>
<script>
  import {
    Toast
  } from 'mint-ui';
  export default {
    data() {
      return {
        list: [],
        pageIndex: 0, //当前页数
        length: 0, //保存当前返回回来的数据的长度

      };
    },
    methods: {
      getDetail(id, e) {
        console.log(e)
        // console.log(e.target.dataset.id)
        //编程式导航一:
        this.$router.push("/home/goodsinfo/" + id);
        //编程式导航二:
        // this.$router.push({path:"/home/goodsinfo/"})
        //编程式导航三:
        //  this.$router.push({name:"goodsinfo"})

      },
      getMore() {
        this.pageIndex++;
        this.$axios.get("goodslist/list?pno=" + this.pageIndex).then(res => {
          this.list = this.list.concat(res.data.msg.data);
          this.length += res.data.msg.data.length;
          if (this.length < this.length + res.data.msg.data.length) {
            Toast({
              message: "加载成功",
              duration: 500
            })
          } else {
            Toast({
              message: "没有更多了",
              duration: 1000
            })
          }
        });
      }

    },
    created() {
      this.getMore()
    }
  };
  //点击当前商品跳转,商品详细信息组件
  //标签  <router-link></router-link>
  //编程  this.$router.push("/路由")
</script>
<style scoped>
  .app-goods-list {
    display: flex;
    flex-wrap: wrap;
    padding: 7px;
    justify-content: space-between;
    border: 1px solid #ddd;
  }

  .app-goods-list .app-goods-item {
    width: 49%;
    border: 1px solid #ccc;
    box-shadow: 0 0 8px #ccc;
    /*h-shadow v-show blur spread color insert*/
    margin: 4px 0;
    padding: 5px;
    flex-direction: column;
    justify-content: space-between;
    min-height: 350px;
  }

  .app-goods-list .app-goods-item img {
    width: 100%;
    height: 40%;
  }

  .app-goods-list .app-goods-item .title {
    font-size: 0.8rem;
    font-weight: 500;
    text-align: center;
  }

  .app-goods-list .app-goods-item .details {
    font-size: 12px;
    color: #666;
    max-height: 40px;
    min-height: 40px;
    width: 100%;
    overflow: hidden;
  }

  .app-goods-list .app-goods-item .info {
    background: #fff;
  }

  .app-goods-list .app-goods-item .price .old {
    text-decoration: line-through;
    color: #666;
    font-size: 10px;
  }

  .app-goods-list .app-goods-item .price .now {
    color: #ff7467;
    font-weight: 600;
  }

  .app-goods-list .app-goods-item .sell {
    color: #666;
    display: flex;
    justify-content: space-between;
    padding: 3px;
    font-size: 12px;
  }
</style>