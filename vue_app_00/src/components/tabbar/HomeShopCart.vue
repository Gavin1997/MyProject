<template>
    <div>
        <div class="mui-card">
            <div class="mui-card-header" v-for="(item,i) in list" :key="i">
                <div class="cart_info">
                    <div>
                        <h5>{{item.title}}</h5>
                        <h6 class="price">{{item.price*item.count}}</h6>
                    </div>
                    <div class="mui-numbox_container">
                        <div class="mui-numbox">
                            <button class="mui-btn mui-btn-numbox-minus" type="button" @click="goSub(item.iid)">-</button>
                            <input class="mui-input-numbox" type="number" v-model="item.count">
                            <button class="mui-btn mui-btn-numbox-plus" type="button" @click="goAdd(item.iid)">+</button>
                        </div>
                          <mt-button size="small" type="danger" @click="del(item.iid,i)">删除</mt-button>
                    </div>
                </div>
            </div>
            <div class="mui-card-footer">小计:{{total.toFixed(2)}} <span>总共有{{num}}件</span> </div>
           
        </div>
    </div>
</template>
<script>
import {Toast} from "mint-ui";
import { MessageBox} from "mint-ui";
export default {
  inject:['reload'],
  data() {
    return {
      list: [],
      num:''
    };
  },
  methods: {
    goSub(id) {
      console.log(id);
    
      for (var item of this.list) {
        if (item.iid == id) {
          if (item.count <= 1) {
            break;
          }
           item.count--;
        }
       
      }
    },
    goAdd(id) {
      for (var item of this.list) {
        if (item.iid == id) {
          if(item.count>=99){
            item.count=98;
          }
          item.count++;
        }
      }
    },
    del(id,index){
    MessageBox.confirm("确定要删除这个商品吗?").then(()=>{
        this.$axios.post("collection/delete?tid="+id).then(res=>{
          if(res.data.code==1){
            var msg=res.data.msg;
            Toast({
              message:msg,
              duration:1500
            })
             this.$store.commit("substract");
          }else{
            Toast({
              message:res.data.msg,
              duration:1500
            })
          }
          this.reload();
         
          //  this.list.splice(index,1);
       })
    }).catch(v=>{
      console.info(v);
    })
    }
  },
  computed: {
    total() {
      return this.list.reduce((prev, p, i, arr) => {
        return prev + p.price * p.count;
      }, 0);
    }
  },
  created() {
    this.$axios.get("collection/searchlist").then(res => {
      this.list = res.data.msg;
      this.num=this.list.length;
    });
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
.mui-numbox_container {
  display: flex;
  flex-direction: column;
}
</style>