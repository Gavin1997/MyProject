<template>
    <div>
<footer id="m_footer">
        <div id="footer">
                <!--关于我们-->
            <ul>
                <li><h5>关于我们</h5></li>
                <li><a href="#">穷游简介</a></li>
                <li><a href="#">联系我们</a></li>
                <li><a href="#">合作伙伴</a></li>
            </ul>
            <!--加入穷游-->
            <ul>
                <li><h5>加入穷游</h5></li>
                <li><a href="#">招聘职位</a></li>
            </ul>
            <!--网站条款-->
            <ul>
                <li><h5>网站条款</h5></li>
                <li><a href="#">会员条款</a></li>
                <li><a href="#">社区指南</a></li>
                <li><a href="#">版权声明</a></li>
                <li><a href="#">免责声明</a></li>
            </ul>
            <!--帮助中心-->
            <ul>
                <li><h5>帮助中心</h5></li>
                <li><a href="#">新手上路</a></li>
                <li><a href="#">使用帮助</a></li>
                <li><a href="#">网站地图</a></li>
            </ul>
            <!--关注我们-->
            <ul>
                <li><h5>关注我们</h5></li>
                <li>
                    <a href="#">
                        <img src="../../../assets/img/icon/sina.png" alt=""><img src="../../../assets/img/icon/flickr.png" alt=""><img src="../../../assets/img/icon/renren.png" alt="">
                </a>
                </li>
                <li class="">
                    <a href="#">
                        <img src="../../../assets/img/icon/douban.png" alt=""><img src="../../../assets/img/icon/weico.png" alt=""><img src="../../../assets/img/icon/ing.png" alt="">
                    </a>
                </li>
            </ul>
            <!--客户端下载-->
            <ul>
                <li><a href="#"><img src="../../../assets/img/icon/iphone.png" alt=""></a></li>
            </ul>
    
        </div>
        <div id="footer-2">
            <!--Q穷游-->
            <img src="../../../assets/img/footer/login_logo2.41bd0a52.png" alt="">
            <ul>
                <li><h6>2004-2017 &copy; 穷游网™ qyer.com All rights reserved.  京ICP备12003524号  京公网安备11010502023470</h6></li>
                <li><h6><a href="index.html">穷游网</a>为<a href="#">旅行</a>者提供原创实用的<a href="#">出境</a><a href="#">游旅行指南</a>和<a href="#">旅游攻略</a><a href="#">旅行社区</a>和问答交流平台,并提供 <a href="#">签证</a>、<a href="#">保险</a>、<a
                            href="#">机票</a>、<a href="#">酒店预订</a>、<a href="#">租车</a>等服务。</h6></li>
            </ul>
        </div>
 </footer>
    </div>
</template>
<script>
export default {
    data(){
        return{}
    }
}
</script>
<style lang="scss" scoped>
// /底部样式
#m_footer{
  background:$my_backgroundColor;
}
//清除上边距带来的影响 加一个table
#m_footer::before{
  content:"";
  display:table;
}
#m_footer::after{
  content:"";
  display:block;
  clear:both;
}
#footer{
  width:1160px;
  padding-right: 15px;
  padding-left: 15px;
  margin-right: auto;
  margin-left: auto;
  display:flex;
  margin-top:50px;
  ul{
    list-style: none;
    float:left;
    margin-left:90px;
 
    &:nth-child(5) 
      //关于我们众小图标的尺寸大小
    img{
         width:25px;
         height:25px;
         padding: 5px;
         li{
           display:flex;
         }
    }
    h5{
      color:$my_t_fontColor;
      margin-bottom:10px;
    }
    //关于下载图标的大小
    &:last-child{
        img{
          width:135px;
          height:40px;
        }
    }
  }
  a{
    color:$my_fontColor;
    text-decoration: none;
    font-size: $my_fontSize;
    &:hover{
      text-decoration: underline;
    }
  }
}
//Q穷游
#footer-2{
  width:1160px;
  padding-right: 15px;
  padding-left: 15px;
  margin-right: auto;
  margin-left: auto;
  display: flex;
  margin-top:50px;

  //文字不换行
  white-space: nowrap;
  //q穷游图片大小
  img{
    width:110px;
    height:40px;
    margin-left: 80px;
  }
  ul{
    list-style: none;
    h6{
      margin-left:20px;
      margin-top:3px ;
      color:$my_fontColor;
      font-size: $my_fontSize;
      //最下方文字中的小链接样式
      a{
        color:$my_fontColor;
        text-decoration: none;
        &:hover{
          text-decoration: underline;
        }
      }
    }
  }
}

</style>

