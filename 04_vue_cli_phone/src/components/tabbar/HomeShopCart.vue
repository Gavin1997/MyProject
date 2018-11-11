<template>
  <div>
    <div class="mui-card">
      <div class="mui-card-header" v-for="(item,i) in products_res" :key="i" @click="goDetails(item.tid)">
        <div class="cart_info">
          <div>
            <h5>{{item.title}}</h5>
            <h6 class="price">{{item.price}}</h6>
             <mt-button size="small" type="danger" @click="del(item.tid,i)" style="margin-left:75%;">删除</mt-button>
          </div>
       
          <div class="img_container">
            <img v-lazy="item.md_pic">
          </div>
        </div>
      </div>
      <div class="mui-card-footer"><span>总共有{{num}}件</span> </div>

    </div>
  </div>
</template>
<script>
  import Qs from "qs";
  import {
    Toast
  } from "mint-ui";
  import {
    MessageBox
  } from "mint-ui";
  export default {
    inject: ['reload'],
    data() {
      return {
        products_res: "",
        res_msg: "",
        ifshow: false, //当前提示消息是否显示
        uname: "",
        num: ''
      };
    },
    methods: {
      //跳转到当前产品的详情页
      goDetails(tid) {
        this.$router.push(`/home/goodsinfo/${tid}`);
      },
      del(tid, index) {
        MessageBox.confirm("确定要删除这个商品吗?").then(() => {
          this.$axios.post("/collection/delete", Qs.stringify({
            tid
          })).then(res => {
            if (res.data.code == 1) {
              var msg = res.data.msg;
              Toast({
                message: msg,
                duration: 1500
              })
            } else {
              Toast({
                message: res.data.msg,
                duration: 1500
              })
            }
            this.reload();
          })
        }).catch(v => {
          console.info(v);
        })
      }
    },
    computed: {
      // total() {
      //   return this.list.reduce((prev, p, i, arr) => {
      //     return prev + p.price * p.count;
      //   }, 0);
      // }
    },
    created() {
      (async function (self) {
        //1.判断用户是否登录
         var res = await self.$axios.get("/users/islogin")
        if (res.data.ok == 1) {
          self.isLogin = true;
          self.uname = res.data.uname;
          self.uid = res.data.uid;
        } else {
          self.isLogin = false;
        }
        //2.查询当前用户的购物车
        var res = await self.$axios.get(`/collection/searchlist?uname=${self.uname}`)
          self.products_res = res.data.data;
         self.num = self.products_res.length;
          if (res.data.code == -1) {
            self.ifshow = true;
            self.res_msg = res.data.msg;
          } else {
            self.ifshow = false;
          }
      })(this)
    }
  };
</script>
<style scoped>
  .cart_info {
    width: 355px;
    display: flex;
    justify-content: space-between;
  }

  .cart_info .price {
    color: #ff7363;
    font-weight: 600;
  }

  .img_container{
     width:190px;
     height:80px;
  }
  .img_container img{
    width:100%;
    height:80px;
  }
</style>