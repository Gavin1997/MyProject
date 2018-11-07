<template>
    <div>
      <div class="order-user-info">
          <div class="container">
              <div class="user-info-left clearfix">
                  <a href="" class="img_box">
                      <img src="../../../assets/img/register/200.jpg" alt="">
                  </a>
                  <div class="user_head_info clearfix">
                      <p class="user_head_name">{{uname}}</p>
                      <p class="user_head_lv">
                          <span>等级 <a>新进弟子</a></span>
                          <span>穷币 <i>0</i></span>
                      </p>
                  </div>
              </div>
              <div class="user-info-right">
                <ul class="clearfix">
                    <li> <a>首页</a></li>
                    <li><a>我的订单</a></li>
                    <li><a>我的优惠券</a></li>
                    <li class="userActive"><a>我的收藏</a></li>
                </ul>
              </div>
          </div>
      </div>
    </div>
</template>
<script>
export default {
    data(){
        return{}
    },
    props:["uname"],
    methods:{},
    created() {
        
    },
}
</script>
<style lang="scss" scoped>
.order-user-info{
   margin-top:1.5rem;
    padding-left:100px;
    div.container{
         border: 1px solid #ddd;
        
    }
    text-align: left;
    .user-info-left{
        width:505px;
        padding-top:15px;
        display: inline-block;
        a.img_box{
            border:1px solid transparent;
            border-radius: 50%;
            overflow: hidden;
            float: left;
        }
        img{
          width:80px;
          height:80px;
          vertical-align: middle;
        }
        .user_head_info{
            margin-left:0.5rem;
            float:left;
            .user_head_name{
                font-weight: 600;
                font-size: 16px;
                margin: .8rem .8rem 0 .8rem;
            }
            .user_head_lv{
                margin-top:.2rem;
                span:first-child{
                    display: inline-block;
                    height:1.875rem;
                    margin-left:0.7rem;
                    color:#959595;
                    font-size:13px;
                    border-right: 1px solid #ececec;
                    line-height: 30px;
                    padding-right:1.25rem;
                    a{
                        margin-left:.5rem;
                        font-style: normal;
                        color:#0073b6;
                    }
                }
                span:last-child{
                    padding-left:1.25rem;
                    color:#959595;
                    font-size:13px;
                    i{
                        margin-left:.625rem;
                        font-style: normal;
                        color:#0073b6;
                    }
                }
            }
        }
    }
    .user-info-right{
        &::before{
            border:24px solid #fff;
            border-top:24px solid #fafafa;
            border-right:24px solid #fafafa;
            display: inline-block;
            content:"";
            position: absolute;
        }
        width:625px;
        height:48px;
        display: inline-block;
        line-height: 48px;
        background: #fafafa;
        border-bottom:1px solid #e0e0e0;
        box-sizing: border-box;
        position: relative;
        top:-3rem;
        left:2.5rem;
        ul{
            list-style: none;
            li{
                a{
                    cursor: pointer;
                }
                &:first-child{
                    margin-left:6rem;
                }
                float: left;
                margin-left:4.5rem;
            }
            .userActive{
                font-weight: 600;
                color:#00b081;
                padding-bottom:0;
                border-bottom:2px solid #00b081;
            }
        }
    }
}
</style>

