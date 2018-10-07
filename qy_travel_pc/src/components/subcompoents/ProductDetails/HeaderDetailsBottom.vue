<template>
  <div>
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
            <input type="text" name="keyword" placeholder="请输入目的地/产品名称" class="my-form-control">
            <div class="input-group-append h-75">
              <button class="search_btn"></button>
            </div>
          </div>
          <!-- 右边订单和收藏 -->
          <div class="zw-home-header-app d-flex ml-5 ">
            <div class="my_order">
              <img src="../../../assets/img/icon/20180910234323.png" alt="">
             <p>我的订单</p>
            </div>
            <div class="my_love">
              <img src="../../../assets/img/icon/20180910234252.png" alt="">
              <p>我的收藏</p>
            </div>
            <!-- 下载按钮 -->
             
          </div>
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
    
      position: absolute;
      width: 56px;
      height: 30px;
      top: 0px;
      left: 517px;
      
    

  }

  // 输入框 搜索框
  .my-form-control {
    display: block;
    height:20px !important;
    width:500px;
    padding: 10px 8px;
    line-height: 1.5;
    background-color: #f6f6f6;
    border-radius:3px;
    border:1px solid #13af7e;
    font-size: 16px;
    // background:#F1F1F1 url("../img/icon/fangdajinghei.png") no-repeat 98% center;
    background-size: 20px 20px;

  }
  .search_btn{
      width:100%;
      height:42px;
      border:0;
      outline: 0;
      background: #13af7e url("../../../assets/img/icon/fangdabai.png") no-repeat center center;
      background-size:16px;
      &:hover{
          cursor: pointer;
      }
  }

  // 右侧下载APP
  .zw-home-header-app {
    position: relative;
    .my_order , .my_love{
        display: flex;
        text-align: center;
        justify-content: space-between;
        margin: 12px 12px 12px 20px;
        &:hover{
            cursor: pointer;
        }
      img {
        width: 20px;
        height: 20px;
      }
      p{
          padding-left:5px;
          color:#13af7e;
          &:hover{
               color:cadetblue;
          }
      }
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