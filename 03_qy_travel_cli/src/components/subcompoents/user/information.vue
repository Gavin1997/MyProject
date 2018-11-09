<template>
  <div style="background:#f5f5f5">
    <div class="user-info-warp">
      <div class="user-info">
        <ul class="list-unstyle info">
          <li>
            <img src="../../../assets/img/register/200.jpg" alt="">
          </li>
          <li>weigong <span v-if="isman">♂</span> <span v-else>♀</span></li>
          <li>等级:<span>新进弟子</span></li>
          <li>穷币:<span>0</span></li>
          <li>前往兑换<span>>></span></li>
          <li>现居:<span>成都</span></li>
        </ul>
        <ul class="list-unstyle info">
          <li>首页</li>
          <li>足迹与点评</li>
          <li>我的想去</li>
          <li>贴子</li>
          <li>照片</li>
          <li>问答</li>
          <li>行程计划</li>
          <li>商城订单</li>
          <li class="arrow-bottom">更多
            <ul class="dropdown">
              <li>微锦囊</li>
              <li>我的收藏</li>
              <li>商城的优惠券</li>
            </ul>
          </li>
        </ul>
      </div>
    </div>
    <!-- 下方显示个人资料 -->
    <div class="user-detail">
      <div class="user-set-nav">
        <ul class="list-unstyle">
          <li :class="{active:isself==i}" v-for="(item,i) in self" @click="changeTab(i)">
            <img v-lazy="item.pic" alt="">
        
            <span>{{item.title}}</span>
          </li>
        </ul>
      </div>
        <!-- 修改头像 -->
       <div class="user-detail-show"  v-if="isself">
        <div class="user-show-title">
         
          <h3>修改头像</h3>
        </div>
        <div class="user-info-deatils">
            <ul class="list-unstyle">
               <li class="info-img"></li>
               <li class="chose-img"> 
                  <!-- <form methods="POST" action="/uploads" enctype="multipart/from-data"  @submit.prevent="submit"> -->
                     <input type="file" name="avatar-pic" class="">
                     <button type="button" value="确定">确定</button>
                 <span>支持jpg、png、jpeg、bmp，图片大小1M以内</span>
               </li>
            </ul>
        </div>
      </div>
      <!-- 个人资料 -->
      <div class="user-detail-show" v-else>
        <div class="user-show-title">
          <h3>个人资料</h3>
          <button>编辑资料</button>
        </div>
        <div class="user-info-deatils">
            <ul class="list-unstyle">
                <li>用户名称:<span>weigong</span></li>
                <li>性 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 别:<span>男</span></li>
                <li>生 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 日:<span>0000年00月00日</span></li>
                <li>现居住地:<span>成都</span></li>
                <li>曾居住地:<span></span></li>
                <li>个性签名:<span></span></li>
                <li>个人网站:<span></span></li>
                <li>旅行偏好:<span></span></li>
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
        self:[
          {
           title:"个人资料",
           pic:require("../../../assets/img/icon/user.png")
          },
          {
            title:"修改头像",
            pic:require("../../../assets/img/icon/avatar_icon.png")
          }
        ],
        isman: true,
        isself:0,//是否是个人资料状态
      }
    },
    methods: {
      //跟换导航栏
      changeTab(i){
        this.isself = i;
      }
    },
  }

</script>
<style lang="scss" scoped>
a{
  cursor: pointer;
}
  .user-info-warp {
    width: 978px;
    height: 110px;
    border: 1px solid #ddd;
    box-shadow: 0px 5px 5px #666;
    margin: 0 auto;

  }

  .user-info {
    height: 110px;
    display: flex;
    flex-direction: column;
    justify-content: space-between;

    ul.info {
      display: flex;
      // justify-content: 
      vertical-align: middle;

      &:first-child {
        align-items: center;

        li {
          margin-left: 2rem;
          margin-top: 0.5rem;

          //头像图片
          &:first-child {
            width: 48px;
            height: 48px;
            overflow: hidden;
            border: 1px solid transparent;
            border-radius: 50%;

            img {
              width: 50px;
              height: 50px;
            }
          }

          //名字
          &:nth-child(2) {
            position: relative;
            top: -3px;
            font-size: 20px;
            font-weight: 500;

            span {
              color: #009CFF;
              font-weight: 999;
            }
          }

          // 等级
          &:nth-child(3) {
            font-size: 13px;

            span {
              font-size: 13px;
              color: #0073C6;
              font-weight: 999;
            }
          }

          // 穷币
          &:nth-child(4) {
            font-size: 13px;

            span {
              color: #10b041;
              font-weight: 600;
            }
          }

          // 兑换
          &:nth-child(5) {
            font-weight: 600;
            font-size: 13px;
            color: #10b041;
          }

          // 现居
          &:last-child {
            font-size: 13px;

            span {
              color: #636363;
              font-weight: 600;
            }
          }
        }
      }

      &:last-child {
        justify-content: flex-start;
        align-items: center;

        li {
          padding: 0.8rem;
          border-right: 1px solid #ddd;
          border-top: 1px solid #ddd;
          border-bottom: 1px solid #ddd;
          cursor: pointer;
          background: #F8F8F8;
          font-weight: 600;
          color: #636363;
          font-size: 15px;

          &:last-child {
            position: relative;

            &:hover .dropdown {
              display: block;
            }
          }

          &:hover {
            background: #fff;
          }
        }
      }
    }
  }

  .arrow-bottom {
    display: inline-block;
    z-index: 99;
  }

  .arrow-bottom::after {
    content: "";
    position: absolute;
    top: 1.2rem;
    left: 2.7rem;
    border-top: 5px solid #666;
    border-left: 5px solid transparent;
    border-right: 5px solid transparent;
  }

  //   下拉菜单
  .dropdown {
    list-style: none;
    position: absolute;
    white-space: nowrap;
    left: -60px;
    top: 45px;
    display: none;
  }

  // 下方详细区域
  .user-detail {
   margin-top:3rem !important;
    width: 978px;
    height: 602x;
    border: 1px solid #ddd;
    box-shadow: 0px 5px 5px #666;
    margin: 0 auto;
    display: flex;
    justify-content: space-between;
  }
  .info-img{
    width:100px;
    height:100px;
    overflow: hidden;
    border:1px solid #ddd;
    border-radius: 50%;
    background: #F8F8F8 url("../../../assets/img/register/200.jpg") no-repeat center center;
    background-size:contain; 
  }
  .chose-img{
      button{
        background: #3f9f5f;
        color:#fff;
        border:0;
        padding:8px 13px;
        border-radius: 5px;
        cursor: pointer;
        &:hover{
           opacity: .7;
        }
      }
      span{
        font-size:13px;
        color:#000;
      }
   
  }

  .user-set-nav {
    // width: 208px;
    // height: 102px;
    text-align: left;
    ul {
      li {
        width: 230px;
        padding: 0.1rem 0.2rem;
        vertical-align: middle;
        text-align: center;
        &:nth-child(2){
            margin-top:1rem;
        }

        img {
          width: 25px;
          height: 25px;
        }

        span {
          font-size: 16px;
          font-weight: 600;
          color: #636363;
          position: relative;
          top: -3px;
          cursor: pointer;
        }
      }
      .active {
        background: #72AF8B;
        cursor: pointer;

        span {
          color: #fff !important;
        }
      }
    }
  }
  .user-detail-show{
    background: #fff;
    width: 742px;
    height: 602px;
    border: 1px solid #ddd;
    box-shadow: 0px 5px 5px #666;
  }
  .user-show-title{
      padding:0.8rem;
      display: flex;
      justify-content: space-between;
      border-bottom:1px solid #ddd;
      h3{
          font-size: 24px;
          font-weight: 500;
      }
      button{
          background: #3f9f5f;
          border:0;
          color:#fff;
          padding:0.5rem 0.4rem;
          cursor: pointer;
      }
  }
.user-info-deatils{
    text-align: left;
    padding:1.2rem;
    li{
        margin:1rem;
        color:#a1a1a1;
        font-weight: 200;
        span{
            margin-left:0.8rem;
            color:#000;
        }
    }
}
</style>
