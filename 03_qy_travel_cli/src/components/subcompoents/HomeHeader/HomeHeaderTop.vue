<template>
  <div>
    <header>
      <div class="q-layer-header">
        <div class="header-inner ">
          <a href="#"><img src="../../../assets/img/icon/logo_116x36.png" alt=""></a>
          <div class="q-header-nav d-flex ml-1">
            <ul>
              <li><a href="#">目的地</a></li>
              <li><a href="#">锦囊</a></li>
              <!-- 下拉菜单 -->
              <li class="dropdown"><a href="#">社区</a><span class="dropdown-toggle"></span>
                <ol class="dropdown-menu">
                  <li>
                    <img src="../../../assets/img/hidden-icon/luntan.png" alt=""><a href="#"> 旅行论坛</a>
                  </li>
                  <li> <img src="../../../assets/img/hidden-icon/wenda.png" alt=""> <a href="#">旅行问答</a></li>
                  <li><img src="../../../assets/img/hidden-icon/jne.png" alt=""><a href="#">JNE旅行生活美学</a></li>
                  <li><img src="../../../assets/img/hidden-icon/tongban1.png" alt=""><a href="#">结伴同游</a></li>
                  <li><img src="../../../assets/img/hidden-icon/tongban.png" alt=""><a href="#">负责任的旅行</a></li>
                  <li><img src="../../../assets/img/hidden-icon/sheying.png" alt=""><a href="#">特别策划</a></li>
                  <li><img src="../../../assets/img/hidden-icon/sheyiji.png" alt=""><a href="#">旅行精选视频</a></li>
                </ol>
              </li>
              <li><a href="#">行程助手</a></li>
              <li class="dropdown"><a href="#">商城</a><span class="dropdown-toggle"></span><img src="../../../assets/img/icon/z-flag.gif"
                  alt="">
                <ol class="dropdown-menu">
                  <li><img src="../../../assets/img/hidden-icon/xingli.png" alt=""><a href="#">机酒自由行</a></li>
                  <li><img src="../../../assets/img/hidden-icon/dangdi.png" alt=""><a href="#">当地玩乐</a></li>
                  <li><img src="../../../assets/img/hidden-icon/qianzheng.png" alt=""><a href="#">签证</a></li>
                  <li><img src="../../../assets/img/hidden-icon/chuzuche.png" alt=""><a href="#">租车自驾</a></li>
                  <li><img src="../../../assets/img/hidden-icon/youlun.png" alt=""><a href="#">邮轮</a></li>
                  <li><img src="../../../assets/img/hidden-icon/baoxian.png" alt=""><a href="#">保险</a></li>
                  <li><img src="../../../assets/img/hidden-icon/sirendingz.png" alt=""><a href="#">私人定制</a></li>
                  <li><img src="../../../assets/img/hidden-icon/tielu.png" alt=""><a href="#">欧洲铁路</a></li>
                </ol>
              </li>
              <li><a href="#">机票</a></li>
              <li class="dropdown"><a href="#">酒店·民宿</a><span class="dropdown-toggle"></span>
                <ol class="dropdown-menu1">
                  <li><img src="../../../assets/img/hidden-icon/hotel.png" alt=""><a href="#">酒店</a></li>
                  <li><img src="../../../assets/img/hidden-icon/aibilin.png" alt=""><a href="#">爱彼迎</a></li>
                  <li><img src="../../../assets/img/hidden-icon/chinese hotel.png" alt=""><a href="#">华人旅馆</a></li>
                </ol>
              </li>
              <li class="dropdown"><a href="#">独家深度</a> <span class="dropdown-toggle"></span>
                <ol class="dropdown-menu1">
                  <li><img src="../../../assets/img/hidden-icon/tielu.png" alt=""><a href="#">特色长线</a></li>
                  <li><img src="../../../assets/img/hidden-icon/dujialvyou.png" alt=""><a href="#">独家旅游</a></li>
                  <li><img src="../../../assets/img/hidden-icon/Q-home.png" alt=""><a href="#">Q-Home</a></li>
                </ol>
              </li>
              <li class="dropdown"><a href="#">穷游APP</a><span class="dropdown-toggle"></span>
                <ol class="dropdown-menu1">
                  <li><img src="../../../assets/img/hidden-icon/qiongyouapp.png" alt=""><a href="#">穷游App</a></li>
                  <li><img src="../../../assets/img/hidden-icon/xingchengzushou.png" alt=""><a href="#">行程助手</a></li>
                  <li><img src="../../../assets/img/hidden-icon/qiongyoujinnang.png" alt=""><a href="#">穷游锦囊</a></li>
                </ol>
              </li>
            </ul>
          </div>
          <!--导航栏右侧小图标 -->
          <!-- 登录前 -->
          <div class="q-header-fun" v-if="isLogin">
            <ul>
              <li>
                <span>
                  <a href="#">
                    <input type="text" class="input mb-2"></a>
                  <img src="../../../assets/img/icon/fangdajing.png" alt="">
                </span>
              </li>
              <li class="my_fontColor">|</li>
              <!-- <li><a href="#"><img src="../../../assets/img/icon/qq.png" alt=""></a></li>
              <li><a href="#"><img src="../../../assets/img/icon/micro blog.png" alt=""></a></li>
              <li><a href="#"><img src="../../../assets/img/icon/wechat.png" alt=""></a></li> -->
              <li class="qq"><a></a></li>
              <li class="wechat"><a></a></li>
              <li class="weibo"><a></a></li>
              <li>
                <router-link to="/user_register">注册</router-link>
              </li>
              <li>
                <router-link to="/user_login">登录</router-link>
              </li>
            </ul>
          </div>
          <!-- 登录后-->
          <div class="q-header-fun" v-else id="signin" >
            <ul>
              <li>
                <span>
                    <input type="text" class="input mb-2">
                  <img src="../../../assets/img/icon/fangdajing.png" alt="">
                </span>
              </li>
              <li class="my_fontColor">|</li>
              <li class="dropdown my_collection">
                <a>Welcome</a> <span id="uanme" style="color:#fff;" v-text="uname"></span>
                  <ul>
                    <li> <p @click="goUserInfo()">个人中心</p></li>
                    <li> <p @click="gocollection()">我的收藏</p></li>
                  </ul>
                </li>
              <li><a id="btnSignout" @click="signout()">注销</a></li>
            </ul>
          </div>
        </div>
      </div>
    </header>
  </div>
</template>
<script>
  export default {
      inject:['reload'],
    data() {
      return {
        isLogin: true,
        uname:""
      }
    },
    methods:{
        // 注销
        signout(){
            this.$http.get("users/signout").then(res=>{
               this.reload()
            })
            
        },
        gocollection(){
          this.$router.push({path:"/my_collection"})
        },
        goUserInfo(){
          this.$router.push({path:"/user_information"})
        }
    },
    created(){
      //验证是否登录
        this.$http.get("/users/islogin").then(res=>{
           if(res.data.ok==1){
               this.isLogin = false;
               this.uname=res.data.uname;
           }else{
               this.isLogin=true;
           }
        })
    },
  }

</script>
<style lang="scss" scoped>
a{
    cursor: pointer;
}
  .my_fontColor {
    color: #C0C0C0;
  }
  header {
    width: 100%;
    background-image: linear-gradient(180deg, #323232, #2A2A2A);
     min-width: 1460px;

    ul {
      list-style: none;
    }
  }
  .header-inner {
    width: 100%;
    white-space: nowrap;
    display: flex;
    padding: 0.2rem;
    justify-content: space-between;
    // min-width:1920px;

    //头部导航左侧q穷游图标
    a img {
      width: 58px;
      height: 18px;
      margin-left: 3%;
    }
  }
  @media screen and(min-width:1910px) {
    .header-inner {
      display: flex;
      padding: 0.2rem;

    }
  }
  //列表样式
  .q-header-nav {

    ul {
      list-style: none;
      display: flex;
      line-height: 1.5rem;

      li:first-child {
        margin-left: 1.2rem;
      }

      //下拉菜单中的样式修饰 社区
      li:nth-child(3) {
        ol li {
          margin: 0;
          padding: 0.3rem 0.9rem;

          &:hover {
            background: #E3FAE1;
          }

          a {
            font-weight: normal;
            color: #666;
          }
        }

        &:hover ol {
          max-height: 240px;
          opacity: 1;
        }

        //第一个li中旅行论坛小图标
        &:hover ol li:first-child :after {
          display: inline-block;
          width: 0;
          height: 0;
          margin-left: 1em;
          vertical-align: 0em;
          content: "";
          border-top: 0.3em solid transparent;
          border-right: 0;
          border-bottom: 0.3em solid transparent;
          border-left: 0.4em solid #666;
        }
      }


      //下拉菜单  商城 酒店 民宿
      li:nth-child(5),
      li:nth-child(7),
      li:nth-child(8),
      li:last-child {
        ol li {
          margin: 0;
          padding: .3125rem .9375rem;

          &:hover {
            background: #E3FAE1;
          }

          a {
            font-weight: normal;
            color: #666;
          }
        }

        &:hover ol {
          max-height: 16.25rem;
          opacity: 1;
        }
      }

      //每个列表的间距
      li {

        margin-left: 1.875rem;
      }

      a {
        text-decoration: none;
        font-weight: bold;
        color: $my_t_fontColor;
        font-size: .875rem;

        &:hover {
          color: $my_hoverColorcolor;
        }
      }
    }
  }
  //头部右侧图标媒体查询
  // 头部右侧图标注册登录
  .q-header-fun {
    position: relative;
    margin-right: 2%;
    input{
      border-radius: 5px;
      padding:0.1rem 0.2rem;
      background:#fff url("../../../assets/img/icon/fangdajinghei.png") no-repeat 100% 100%;
      background-size:contain;
    }
    ul {
      list-style: none;
      display: flex;
      line-height: 24px;
       .qq{
         background: url("../../../assets/img/icon/qq.png") no-repeat;
         background-size:contain;
         width:20px;
         height:20px;
        cursor: pointer;
        &:hover{
          background: url("../../../assets/img/icon/qq_green.png") no-repeat;
          background-size:contain;
        }
       }
       .wechat{
         background: url("../../../assets/img/icon/wechat.png") no-repeat 100% 100%;
         background-size:contain;
         width:20px;
         height:20px;
         cursor: pointer;
         &:hover{
           background: url("../../../assets/img/icon/wechat-green.png") no-repeat 100% 100%;
           background-size:contain;
         }
       }
       .weibo{
         background: url("../../../assets/img/icon/weibo.png") no-repeat 100% 100%;
         background-size:contain;
         width: 20px;
         height:20px;
         cursor: pointer;
         &:hover{
           background: url("../../../assets/img/icon/weibo-green.png") no-repeat 100%;
          background-size:contain;
         }
       }
      li {
        margin: 0;
        margin-left: .5rem;
       //qq
        &:first-child {
          color: $my_t_fontColor;
          padding-left: .625rem;

          input {
            opacity: 0;
            //  &:hover{
            //      opacity: 0;
            //  }
          }
          span {
            &:hover input {
              opacity: 1;
              transition: all .6s linear;
            }
          }
        }
        img {
          position:absolute;
          width: 18px;
          height: 16px;
          right:12.8rem;
          top:0.2rem;
        }

        a {
          text-decoration: none;
          color: $my_t_fontColor;

          &:hover {
            color: $my_hoverColorcolor;
          }
        }
      }
    }
    .my_collection {
      position:relative;
      ul{
        li{ color:#666;
        margin-left:60px;
         cursor: pointer;
          background: #ffffff;
         padding:0.4rem 0.8rem;
          &:hover {
          color:#3DC681;
        }
         }
        display: none;
        position:absolute;
         top:1.5rem;
       
      }
      &:hover ul{
          display: block;
      }
    }
  }

  //输入框样式
  .zw-product-header-search {
    input {
      border: 1px solid #ccc;
      border-radius: 5px;
      color: #000;
      font-size: 1em;
      height: 1.25rem;
      padding: 0px 1rem;
      background: #fff url("../../../assets/img/icon/fangdajinghei.png") no-repeat 99% center;
      background-size: contain;
      outline: 0;
      display: block;
      width: 31.25rem;
      padding: .625rem .5rem;
      line-height: 1.5;
      background-color: #F1F1F1;
      border-radius: 1.25rem;
      font-size: .5rem;
    }
  }

  // 
  .ml-3 {
    margin-left: .3125rem;
  }

  .mr-3 {
    margin-right: 2rem;
  }

  //下拉菜单
  .dropdown {
    position: relative;

    img {
      width: 50px;
      height: 14px;
      position: relative;
      top: -0.375rem;
    }
  }

  .dropdown-toggle::after {
    display: inline-block;
    width: 0;
    height: 0;
    margin-left: 0.255em;
    vertical-align: 0.255em;
    content: "";
    border-top: 0.3em solid $my_t_fontColor;
    border-right: 0.3em solid transparent;
    border-bottom: 0;
    border-left: 0.3em solid transparent;
  }

  //下拉菜单样式
  @mixin dropdown-style {
    position: absolute;
    top: 100%;
    left: 0;
    z-index: 1000;
    float: left;
    min-width: 6rem;
    padding: 0.5rem 0;
    margin: 0.125rem 0 0;
    font-size: 1rem;
    color: #212529;
    text-align: left;
    list-style: none;
    background-color: #fff;
    background-clip: padding-box;
    border: 1px solid rgba(0, 0, 0, 0.15);
    border-radius: 0.25rem;
    max-height: 0px;
    transition: all 0.5s ease;
    opacity: 0;
    overflow: hidden;
  }

  .dropdown-menu {
    @include dropdown-style;
    z-index: 1001;

    img {
      position: relative;
      top: 3px;
      width: 18px;
      height: 13px;
      padding: 0 5px;
    }
  }

  .dropdown-menu1 {
    @include dropdown-style;
    z-index: 1001;

    img {
      position: relative;
      top: 3px;
      width: 18px;
      height: 13px;
      padding: 0 5px;
    }
  }

</style>
