<template>
  <div>
    <div class="zw-home-header">
      <div class="d-flex justify-content-between container pt-3">
        <!-- 标题 穷游商城大字 -->
        <div class="zw-home-header-logo ml-5 ">
          <router-link to="/home">
            <h1>穷游商城</h1>
          </router-link>
        </div>
        <!-- 搜素框 -->
        <div class="zw-home-header-search mr-5">
          <datalist id="searchlist">
            
          </datalist>
          <input type="text" name="keyword" placeholder="搜索国家、城市、产品" class="my-form-control">
          <div class="input-group-append h-75">
            <img class="btn p-0" src="../../../assets/img/icon/fangdajinghei.png">
          </div>
        </div>
        <!-- 右边下载 -->
        <div class="zw-home-header-app d-flex ml-5 ">
          <div class="logo">
            <img src="../../../assets/img/1-nav/qyerlogo.png" alt="">
          </div>
          <div class="title-box ">
            <p>手机下单立享优惠</p>
            <p>尽在穷游App</p>
          </div>
          <!-- 下载按钮 -->
          <a class="btn btn-green mt-2 ml-3 ">下载</a>
        </div>
      </div>
    </div>
  </div>
</template>
<script>
  export default {
    data() {
      return {}
    },
    methods: {}
  }
</script>
<style lang="scss" scoped>
  /*********穷游商城 第三个导航栏 ***********/
  .zw-home-header {
    background: #fff;
  }

  .zw-home-header-logo {
    a {
      text-decoration: none;
    }

    h1 {
      color: #13AF7E;
      font-weight: normal;

    }
  }

  .zw-home-header-search {
    position: relative;
  }

  .input-group-append {
    img {
      position: absolute;
      width: 32px;
      height: 32px;
      top: 5px;
      left: 480px;
      cursor: pointer;
    }

  }

  // 输入框 搜索框
  .my-form-control {
    outline: 0;
    display: block;
    width: 500px;
    padding: 10px 8px;
    line-height: 1.5;
    background-color: #F1F1F1;
    border-radius: 20px;
    font-size: 8px;
    // background:#F1F1F1 url("../img/icon/fangdajinghei.png") no-repeat 98% center;
    background-size: 20px 20px;

  }

  // 右侧下载APP
  .zw-home-header-app {
    position: relative;
    top: -8px;

    .logo {
      img {
        margin: 12px 12px 12px 20px;
        width: 40px;
        height: 40px;
      }
    }

    .title-box {
      p:first-child {
        font-weight: bold;
        font-size: 12px;
      }

      p:last-child {
        font-size: 8px;
        color: #666;
      }

      margin: 14px 0;
    }

    a {
      line-height: 30px;
      width: 50px;
      height: 30px;
      display: block;
      text-decoration: none;
    }
  }
</style>