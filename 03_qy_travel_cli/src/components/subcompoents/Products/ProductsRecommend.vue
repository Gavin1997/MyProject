<template>
  <div>
    <div class="zw-recommdendation-wrap">
      <div class="item-header clear">
        <h3>本期热卖</h3>
        <a @click.prevent="getmore()">查看更多</a>
      </div>
      <div class="zw-recommendation-section">
        <ul class="recommendation-list">
          <li class="recommendation-list-item" v-for="(item,i) in res" @click.prevent="getdetails(item.tid)">
            <a  >
              <img :src="item.sm" alt="">
              <p class="price_discount">秒杀</p>
            </a>
            <div class="float-right item-box text-ellipsis">
              <div class="item-info  ">
                <h6 class="text-ellipsis">{{item.title | ellipse(24)}}</h6>
              </div>
              <div class="item-price">
                <span>{{item.price}}</span><em>元起</em>
              </div>
            </div>
          </li>
        </ul>
      </div>
    </div>
  </div>
</template>
<script>
  export default {
    data() {
      return {
          res:"",
          pno:1,
          pageCount:""
      }
    },
    methods: {
        getlist(){
            this.$http.get(`products/list?pno=${this.pno}`).then(res=>{
                this.res = res.data.data.products;
                this.pageCount = res.data.data.pageCount;
            })
        },
        // 查看详细
        getdetails(tid){
            this.$router.push({path:`/product_details/${tid}`})
        },
        //查看更多
        getmore(){
          if(this.pno<this.pageCount){
            this.pno++;
            this.$http.get(`products/list?pno=${this.pno}`).then(res=>{
                this.res = res.data.data.products;
            })
          }else{
            this.pno =1;
          }
        }
    },
    created() {
        this.getlist()
    }
  }

</script>
<style lang="scss" scoped>
 
 /* 清除浮动 */
  .clear::after {
    content: '';
    display: block;
    clear: both;
  }

  /* 右浮动 */
  .float-right {
    float: right;
  }

  /* 文字两排隐藏 */
  .text-ellipsis {
    text-overflow: ellipsis;
    overflow: hidden;
    /* css3新属性 */
    display: -webkit-box;
    -webkit-box-orient: vertical;
    -webkit-line-clamp: 2;
  }
a{
    cursor: pointer;
}
  .zw-recommdendation-wrap {
    width: 260px;
    height: 569px;
    background: #fff;
  }

  /* 头部样式 文字标题 */
  .zw-recommdendation-wrap .item-header h3 {
    color: #636363;
    font-weight: 600;
    float: left;
    margin: 10px;
  }

  .zw-recommdendation-wrap .item-header a {
    text-decoration: none;
    color: #666;
    float: right;
    margin: 15px 10px;
  }

  .zw-recommdendation-wrap .item-header a:hover {
    color: #3DC681;
  }

  /* 列表样式 图片 */
  .zw-recommendation-section .recommendation-list {
    list-style: none;
  }

  .zw-recommendation-section .recommendation-list .recommendation-list-item {
    margin: 15px 10px;
    overflow: hidden;
    cursor: pointer;
    position: relative;
  }
// 秒杀
  .zw-recommendation-section .recommendation-list .recommendation-list-item .price_discount {
    position: absolute;
    background: #ff7467;
    z-index: 1;
    top: 0rem;
    left:.325rem;
    color: #fff;
    padding: 1px;

  }

  .zw-recommendation-section .recommendation-list .recommendation-list-item:hover {
    color: #3DC681;
  }

  .zw-recommendation-section .recommendation-list .recommendation-list-item .item-box {
    width: 150px;
  }

  .zw-recommendation-section .recommendation-list .recommendation-list-item a img {
    width: 80px;
    height: 80px;
  }

  .zw-recommendation-section .recommendation-list .recommendation-list-item .item-info h6 {
    font-weight: normal;
    font-size: 14px;
  }

  /* 价格区域 */
  .zw-recommendation-section .recommendation-list .recommendation-list-item .item-price {
    margin-top: 17px;
  }

  .zw-recommendation-section .recommendation-list .recommendation-list-item .item-price span {
    color: #ff7467;
    font-size: 20px;
  }

  .zw-recommendation-section .recommendation-list .recommendation-list-item .item-price em {
    font-style: normal;
    font-size: 12px;
    color: #666;
  }

</style>
