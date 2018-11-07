<template>
  <div>
    <!-- 列表 自由行 保证列表 -->
    <home-footer-top></home-footer-top>
    <!-- 底部黑色部分-->
    <footer>
    <div class="my_i_footer">
      <div class="footer">
        <!-- 穷游商城 -->
        <div class="footer1">
          <div class="footer1-1">
            <h1>穷游商城</h1>
            <h6>从一张机票、一家酒店的订购，到一次暖心的接机服务、一张轻松融入当地的交通卡，<br class="my-br">让我们带你探索这个世界</h6>
          </div>
          <ul class="footer1-about">
            <li class="my-left-m"><a href="#">关于穷游商城<span>|</span></a></li>
            <li><a href="#">服务与隐私<span>|</span></a></li>
            <li><a href="#">联系我们<span>|</span></a></li>
            <li><a href="#">旅游度假资质<span>|</span></a></li>
            <li><a href="#">营业执照<span>|</span></a></li>
            <li><a href="#">投诉建议</a></li>
          </ul>
          <p class="mt-2 ml-3">2004-2018 &copy; 穷游网™ qyer.com All rights reserved. Version v5.57 京ICP备12003524号
            京公网安备11010502023470 京ICP证140673号</p>
          <ul class="footer1-about">
            <li class="my-left-m">友情链接：</li>
            <li><a href="http://www.juzigo.com/" target="_blank">交通查询</a></li>
            <li><a href="https://www.wannar.com/" target="_blank">美国旅游</a></li>
            <li><a href="http://www.qyer.com/tag/UboG7F0svKI/" target="_blank">房车租赁</a></li>
            <li><a href="http://tool.qyer.com/" target="_blank">旅行工具</a></li>
            <li><a href="http://www.meiguiauto.com/" target="_blank">美规车网</a></li>
          </ul>
        </div>
        <!-- 关注我们 三个小图-->
        <div class="footer2">
          <ul class="footer1-about">
            <li><a href="#">
                <h2>关注我们</h2>
              </a></li>
            <li><a href="#"><img src="../../../assets/img/icon/wechatyuan.png" alt=""></a></li>
            <li><a href="#"><img src="../../../assets/img/icon/micro blogyuan.png" alt=""></a></li>
            <li><a href="#"><img src="../../../assets/img/icon/email yuan.png" alt=""></a></li>
          </ul>
          <!-- 立刻扫描下载APP -->
          <div class="footer2-1">
            <ul class="footer1-about">
              <li>
                <h3>立刻扫描<br>下载APP</h3>
              </li>
              <li><img src="../../../assets/img/footer/foot-qrcode-qapp.png" alt=""></li>
            </ul>
          </div>
        </div>
      </div>
    </div>
    </footer>
  </div>
</template>
<script>
//引入子组件
import HomeFooterTop from "./HomeFooterTop"
  export default {
    data() {
      return {}
    },
    methods: {},
    components:{
      HomeFooterTop
    }

  }
</script>
<style lang="scss" scoped>
  .my-br {
    line-height: 20px;
  }

  //底部样式
  .my_i_footer {
    background: $my_backgroundColor;
    color: $my_fontColor;
    //字体不换行
    white-space: nowrap;
  }

  .footer {
    width: 1160px;
    padding-right: 15px;
    padding-left: 15px;
    margin-right: auto;
    margin-left: auto;
    display: flex;

    p {
      font-size: 12px;
    }
  }

  //列表 关于穷游商城
  .footer1-about {
    display: flex;
    list-style: none;
    font-size: $my_fontSize;

    li {
      margin-left: 20px;

      span {
        margin-left: 20px;
      }

      a {
        color: $my_fontColor;
        text-decoration: none;

        &:hover {
          text-decoration: underline;
        }
      }
    }

    //友情链接
    &:last-child {
      margin-top: 10px;
    }
  }

  //列表的样式
  .footer1-1 {
    display: flex;

    h1 {
      color: #fff;
      margin-top: 50px;
    }

    h6 {
      padding: 55px 20px;
      font-weight: normal;
    }
  }

  //下内边距 友情链接ul
  .footer1 {
    ul {
      &:last-child {
        padding-bottom: 50px;
      }
    }
  }

  //关注我们
  .footer2 {
    ul {
      margin-top: 60px;

      h2 {
        color: #fff;
        font-weight: normal;
        margin-top: 10px;
      }
    }

    .footer2-1 {
      h3 {
        color: #fff;
        font-weight: normal;
      }

      ul {
        margin: 10px auto;

        li:last-child {
          background: #FFF;
          width: 100px;
          height: 100px;

          img {
            padding: 5px;
          }
        }
      }
    }
  }
</style>