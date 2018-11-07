<template>
  <div>
   <div class="my_collection_warp container">
     <div class="collection_head_title">
       <h3>我收藏的商品 <span>{{products_res.length}}</span></h3>
       <router-link to="/home">&gt;&gt;更多穷游商城产品</router-link>
     </div>
     <div class="prompt_nomore" v-if="ifshow">
       <h3>{{this.res_msg}}</h3>
     </div>
     <!-- 产品1 -->
     <div class="collection_product mt-2 " v-for="(item,i) of products_res" :key="i">
      <div class="collection-bigcard-item" >
        <a @click="goDetails(item.tid)">
          <img :src="item.md_pic" alt="">
        </a>
        <div class="collection-item-info clearfix">
            <div class="collection-item-info-title">
              <a @click="goDetails(item.tid)">{{item.title}}</a>
            </div>
            <div class="collection-item-info-subtitle">
               <ul class="clearfix">
                 <li>秒杀</li>
                 <li>{{item.subtitle}}</li>
               </ul>
            </div>
            <div class="collection-item-info-price">
              <span><em>¥</em>{{item.price}}<i>元起</i></span>
              <span class="line">{{item.old_price}}元</span>
              <div class="collection-item-info-sold-out clearfix">
                <a class="cancel_collection" id="cancel" @click="cancel_collection(item.tid)">取消收藏</a>
                <span>{{item.sold_count}} <em>件已售</em></span>
              </div>
            </div>
        </div>
      </div>
     </div>
   </div>
  </div>
</template>
<script>
import Qs from "qs";
export default {
  inject:['reload'],
  data(){
    return{
      products_res:"",
      res_msg:"",
      ifshow:false,//当前提示消息是否显示
    }
  },
  props:["uname"],
  methods:{
    //跳转到当前产品的详情页
    goDetails(tid){
      this.$router.push(`/product_details/${tid}`);
    },
    //删除当前产品
    cancel_collection(tid){
      this.$http.post("/collection/delete",Qs.stringify({tid})).then(res=>{
          this.reload();
      });
    }
  },
  created() {
    this.$http.get(`/collection/searchlist?uname=${this.uname}`).then(res=>{
      this.products_res = res.data.data;
      if(res.data.code==-1){
        this.ifshow = true;
         this.res_msg = res.data.msg;
      }else{
        this.ifshow = false;
      }
    })
  },
  components:{}
}
</script>
<style lang="scss" scoped>
a{
  cursor: pointer;
}
.prompt_nomore{
   color: #0c5460;
  background-color: #d1ecf1;
  border-color: #bee5eb;
  padding:0.5rem 0.2rem;
}
.prompt_nomore .prompt_nomore {
  color: #062c33;
}
 .my_collection_warp{
   margin-top:1.5rem;
   text-align: left;
  padding-left:100px;
   padding-bottom:0;
  
   .collection_head_title{
       width:880px;
       display: flex;
       justify-content: space-between;
       h3{
         font-weight: 500;
       }
       a{
         text-decoration: none;
         cursor: pointer;
         color:#0073b6;
         font-size:14px;
         line-height: 36px;
       }
   }
   .collection_product{
         border:1px solid #ddd;
         width:880px;
         height:152px;
         &:hover{
           box-shadow:0px 0px 5px 1px #ddd;
         }
         &:hover #cancel{
           display: block;
         }
      .collection-bigcard-item{
        a{
          img{
            width:255px;
            height:152px;

          }
        }
        .collection-item-info{
          width:590px;
          float:right;
          padding:15px;
          //标题
          .collection-item-info-title{
            overflow: hidden;
            a{
              font-size:18px;
              font-weight: 500;
              text-decoration: none;
              color:#000;
              display: -webkit-box;
              -webkit-line-clamp:2;
              -webkit-box-orient:vertical;
              &:hover{
                color:#00b081;
              
              }
            }
          }
          //秒杀 赠wifi等
          .collection-item-info-subtitle{
              ul{
                list-style: none;
                margin-top:0.8rem;
                li{
                  float:left;
                  border:1px solid #4a90e2;
                  color: #4a90e2;
                  padding:0.1rem 0.7rem;
                  height:18px;
                  line-height: 18px;
                  font-size:14px;
                  &:not(:first-child){
                    margin-left:12px;
                  }
                }
              }
          }
          //价格 
          .collection-item-info-price{
            margin-top:0.8rem;
             span{
               &:first-child{
                  color: #ff7362;
                  font-size: 26px;
                  em{
                    font-size:14px;
                    font-style:normal;
                    font-weight: 500;
                  }
                  i{
                    font-size:12px;
                    color:#666;
                    font-style:normal;
                    margin-left:0.2rem;
                  }
               }
             }
             .line{
                 color:#666;
                 font-size:12px;
                 text-decoration: line-through;
               }
             //销售数量
             .collection-item-info-sold-out{
                float:right;
                margin-top:0.5rem;
                position:relative;
                a{
                  text-decoration: none;
                  font-size: 14px;
                  color:#0073b6;
                  position: absolute;
                  bottom:2rem;
                  display: none;
                }
                span{
                  font-size:13px;
                  color:#00b081;
                  em{
                    color:#666;
                    font-size:14px;
                    font-style: normal;
                  }
                }
             }
          }
        }
      }
   }
 }
</style>

