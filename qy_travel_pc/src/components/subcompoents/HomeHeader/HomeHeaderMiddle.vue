<template>
  <div>
    <div class="zw-header-new-wrapper">
      <div class="zw-header-new-nav container d-flex justify-content-around">
        <ul class="zw-header-new-mainnav list-unstyle d-flex  ">
          <li class="dropdown p-3"><a href="#">机酒自由行</a><span class="dropdown-toggle-white"></span>
            <ol class="dropdown-menu3  ">
              <li><a href="#">全部</a></li>
              <li><a href="#">自由行</a></li>
              <li><a href="#">特价机票</a></li>
              <li><a href="#">酒店</a></li>
              <li> <a href="#">邮轮</a></li>
              <li><a href="#">马尔代夫<img src="../../../assets/img/hidden-icon/re.png" alt=""></a></li>
            </ol>
          </li>
          <li class="p-3"><a href="#">特价机票</a></li>
          <li class="dropdown p-3"><a href="#">跟团游</a><span class="dropdown-toggle-white"></span>
            <ol class="dropdown-menu3 d-flex">
              <li><a href="#">全部</a></li>
              <li><a href="#">跟团游</a></li>
              <li><a href="#">半自助游<img src="../../../assets/img/hidden-icon/re.png" alt=""></a></li>
            </ol>
          </li>
          <li class="p-3"><a href="#">酒店</a></li>
          <li class="dropdown p-3"><a href="#">当地玩乐</a><span class="dropdown-toggle-white"></span>
            <ol class="dropdown-menu3 ">
              <li><a href="#">全部</a></li>
              <li><a href="#">日游小团</a></li>
              <li><a href="#">深度体验</a></li>
              <li><a href="#">门票票卷</a></li>
              <li><a href="#">餐饮美食</a></li>
              <li><a href="#">Wifi电话卡</a></li>
              <li><a href="#">购物</a></li>
              <li><a href="#">保险</a></li>
              <li><a href="#">接送机</a></li>
              <li><a href="#">欧洲铁路<img src="../../../assets/img/hidden-icon/re.png" alt=""></a></li>
            </ol>
          </li>
          <li class="p-3"><a href="#">海岛游</a></li>
          <li class="p-3"><a href="#">邮轮</a></li>
          <li class="p-3"><a href="#">租车自驾</a></li>
          <li class="p-3  dropdown"><a href="#">深度旅行</a><span class="dropdown-toggle-white"></span>
            <ol class="dropdown-menu3 ">
              <li><a href="#">全部</a></li>
              <li><a href="#">CityWalk</a></li>
              <li><a href="#">特色长线</a></li>
              <li><a href="#">Q-home</a></li>
            </ol>
          </li>
        </ul>
        <!-- 右侧小导航 -->
        <ul class="zw-header-new-subnav list-unstyle d-flex p-3">
          <li><a href="#">签证</a></li>
          <li><a href="#">保险</a></li>
          <li><a href="#">WIFI电话卡</a></li>
        </ul>
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
//下拉菜单样式
.dropdown {
    position: relative;
    img{
        width:50px;
        height: 14px;
        position: relative;
        top:-6px;
    }
  }
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
//   二级导航 背景
.zw-header-new-wrapper{
    background:linear-gradient(180deg,#43C67B,#10BFA4);
 

}
.zw-header-new-mainnav{
    li {
       padding-left:1rem; 
        a{
        color:#fff; 
        text-decoration: none;
        }
   }
}

// 白色图标的下拉图标
.dropdown-toggle-white::after {
    display: inline-block;
    width: 0;
    height: 0;
    margin-left: 0.255em;
    vertical-align: 0.255em;
    content: "";
    border-top: 0.3em solid #fff;
    border-right: 0.3em solid transparent;
    border-bottom: 0;
    border-left: 0.3em solid transparent;
  }
//   右侧小导航 签证玩乐
.zw-header-new-subnav{
    //加一条小横线
    li:not(:last-child):after{
        content:"|";
        display:inline;
        color:#0C5F44;
        opacity: .5;
        padding:0 7px;
    }
     li a{
        text-decoration: none;
        color:#0C5F44;
        padding-left:5px;
    }
}
//隐藏菜单中的样式  机酒自由行
.zw-header-new-mainnav{
    ol{
        display: none !important;
    }
    li:first-child,li:nth-child(3),li:nth-child(5),li:last-child {
        &:hover {
            background-color:rgb(29, 161, 117);
        }
        &:hover ol{
           display: inline-block !important;
           li{
               float:left;
               background-color:transparent !important;
               font-size:14px;
              
           }
        }
        ol li{
            &:first-child,&:last-child{
                background: #fff;
            }
            margin:0;
            padding:5px 15px;    
      a{
       font-weight: normal;
       color:#666;
       &:hover{
           color:rgb(17, 192, 134);
       }
      }
  }
    }
    img{
        width:25px;
        position: relative;
        top:2px;
    }
}

.dropdown-menu2{
    @include dropdown-style;
    border:0px;
    z-index: 10001;
}
.dropdown-menu3{
    display: none;
    position: absolute;
    left: 0;
    top: 50px;
    background-color: #fff;
    width: 240px;
    height: auto;
    padding: 5px 5px 10px 25px;
    border: 1px solid #e3e3e3;
    z-index: 100;
    border-bottom-left-radius: 4px;
    border-bottom-right-radius: 4px;
    box-shadow: 0 0 18px rgba(0,0,0,.2);
    list-style: none;
  
}
</style>