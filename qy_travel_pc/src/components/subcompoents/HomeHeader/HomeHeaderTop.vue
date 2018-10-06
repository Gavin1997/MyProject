<template>
  <div>
    <div>
      <div class="q-layer-header">
        <div class="header-inner ">
          <a href="#"><img src="../../../assets/img/icon/logo_116x36.png" alt=""></a>
          <div class="q-header-nav d-flex ml-4">
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
          <div class="q-header-fun">
            <ul>
              <li>
                <span>
                  <a href="#">
                    <input type="text" class="input mb-2"></a>
                  <img src="../../../assets/img/icon/fangdajing.png" alt="">
                </span>
              </li>
              <li class="my_fontColor">|</li>
              <li><a href="#"><img src="../../../assets/img/icon/qq.png" alt=""></a></li>
              <li><a href="#"><img src="../../../assets/img/icon/micro blog.png" alt=""></a></li>
              <li><a href="#"><img src="../../../assets/img/icon/wechat.png" alt=""></a></li>
              <li><a href="register.html">注册</a></li>
              <li><a href="login.html">登录</a></li>
            </ul>
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
    }
  }
</script>
<style lang="scss" scoped>
.header-inner {
    white-space: nowrap;
    display: flex;
    padding:3px;
    //头部导航左侧q穷游图标
    a img{
    width:58px;
    height:18px;
    margin-left:30px;
}
}
@media screen and (max-width:1460px){
    .header-inner{
        width:1460px;
       margin-left:10px;
    }
}
//列表样式
.q-header-nav{ 
    ul{
        list-style: none;
        display:flex;
         line-height: 24px;
       li:first-child{
           margin-left:20px;
       }
       //下拉菜单中的样式修饰 社区
       li:nth-child(3){
                 ol li{
              margin:0;
               padding:5px 15px;
               &:hover{
                   background:#E3FAE1;    
               }
               a{
                font-weight: normal;
                color:#666;
               }
           }
        &:hover ol{
            max-height: 240px;
            opacity: 1;
       }
       //第一个li中旅行论坛小图标
       &:hover ol li:first-child :after{
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
li:nth-child(5),li:nth-child(7),li:nth-child(8),li:last-child{   
    ol li{
  margin:0;
 padding:5px 15px;
  &:hover{
      background:#E3FAE1;  
  }
  a{
   font-weight: normal;
   color:#666;
  }
}
&:hover ol{
max-height: 260px;
opacity: 1;
}
}
    //每个列表的间距
        li{ 
                   
            margin-left:30px;
        }
    a{
        text-decoration: none;
        font-weight:bold;
        color:$my_t_fontColor;
        font-size:14px;
        &:hover{
            color:$my_hoverColorcolor;
        }
    }
}
}//头不右侧图标媒体查询
@media screen and (max-width:1400px){
    .q-header-fun{
       margin-right: 10%;
       position: relative;
       left:-5%;
    }
}
// 头部右侧图标注册登录
.q-header-fun{
    margin-left:25%;
    padding-right:2%;
    ul{
        list-style: none;
        display: flex;
        li{
            margin:0;
            margin-left:8px;
            &:first-child {
                color:$my_t_fontColor;
                padding-left:10px;
                a{
                    opacity: 0;
                    //  &:hover{
                    //      opacity: 0;
                    //  }
                }
                span {
                    &:hover a{
                        opacity: 1;
                        transition:all .6s linear;
                    }
                }
                
            }
            img{
                width:18px;
                height:16px;
                margin-left:10px;
                &:hover{
                    border:1px solid $my_hoverColorcolor;
                }          
            }
            a{
                text-decoration: none; 
                color:$my_t_fontColor;
                &:hover{
                    color:$my_hoverColorcolor;
                }
            }
        }
    }
}
//输入框样式
.zw-product-header-search{
    input{
        border: 1px solid #ccc;
        border-radius: 5px;
        color: #000;
        font-size: 1em;
        height: 20px;
        padding: 0px 16px;
        background:#fff url("../../../assets/img/icon/fangdajinghei.png") no-repeat  99% center;
        background-size:contain; 
        outline: 0;
        display: block;
        width: 500px;
        padding: 10px 8px;
        line-height: 1.5;
        background-color: #F1F1F1;
        border-radius: 20px;
        font-size: 8px  
    }
}
// 
.ml-3{
    margin-left:5px; 
}
.mr-3{
    margin-right:2rem;
}
//下拉菜单
.dropdown {
    position: relative;
    img{
        width:50px;
        height: 14px;
        position: relative;
        top:-6px;
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
    color: #212529 ;
    text-align: left;
    list-style: none;
    background-color: #fff;
    background-clip: padding-box;
    border: 1px solid rgba(0, 0, 0, 0.15);
    border-radius: 0.25rem;
    max-height: 0px;
    transition: all 0.5s ease;
    opacity:0;
    overflow: hidden;
  }
  .dropdown-menu {
   @include dropdown-style;
   z-index: 1001;
    img{
       position: relative;
       top:3px;
        width:18px;
        height:13px;
        padding:0 5px;
    }
  }
 
  .dropdown-menu1 {
    @include dropdown-style;
    z-index: 1001;
    
    img{
        position: relative;
       top:3px;
        width:18px;
        height:13px;
        padding:0 5px;
    }
  }
</style>