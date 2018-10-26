<template>
    <div class="app_search">
        <div class="mui-card">
            <!-- 商品输入框 -->
            <div class="mui-card-content">
                <div class="mui-card-content-inner">
                    <input type="text" value="" placeholder="国庆好货 天天抢" v-model="kw">
                    <mt-button type="danger" size="small">搜索</mt-button>
                </div>
            </div>
        </div>
        <!-- 商品列表 -->
        <div class="mui-card">
            <div class="mui-card-header">搜索结果</div>
            <div class="mui-card-content">
                <div class="mui-card-content-inner">
                    <ul class="mui-table-view">
                        <li class="mui-table-view-cell mui-media" v-for="(item,i) in list" :key="item.id" @click="shopinfo(item.lid)">
                            <a href="javascript:;">
                                <img class="mui-media-object mui-pull-left" :src="item.sm">
                                <div class="mui-media-body">
                                    {{item.title}}
                                    <p class='mui-ellipsis'>{{item.subtitle}}</p>
                                </div>
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
            
            <div class="mui-card-footer">
                <div class="button_next">
                  <button @click="prev()" :class="disabled_info">上一页</button>
                  <button @click="next()" :class="disabled_next_info">下一页</button>
                </div>
            </div>
        </div>
    </div>
</template>
<script>
 import {Toast} from 'mint-ui';
export default {
   
  data() {          
    return {
        list:[],
        kw:'',
        pno:0,
        pageCount:[],
        disabled_next_info:"active",
        disabled_info:"disabled",
        
    }
  },
  methods: {
      getMsg(){
         this.$axios.get("search/list?kw="+this.kw+"&pno="+this.pno).then(res=>{
             this.list=res.data.msg.products;
             this.pageCount=res.data.msg.pageCount;
         })
      },
      shopinfo(id){
        //   console.log(id);
          this.$router.push("/home/goodsinfo/"+id)
      },
      next(){
        if(this.kw!=""){
            this.pno++;
            if(this.pno>=this.pageCount &&this.pno>0){
                Toast({
                    message:"已经是最后一页了哦,没有更多了,输入别的看看吧",
                    duration:1000
            }) 
            this.pno=this.pageCount-1;   
            }else{
                this.disabled_info="active"
            this.getMsg();
            } 
        }else{
            Toast({
                message:"亲,你还没有输入任何内容哦",
                duration:1500
            })
        }
      },
      prev(){
         if(this.pno<=this.pageCount &&this.pno>0){
              this.pno--;
              this.disabled_next_info="";
             this.getMsg()
             if(this.pno==0){
                 this.disabled_info="disabled";
             }else{
                 this.disabled_info="active";
             }
         }
      }
  },
  created() {
      
  },
  watch:{
      kw(){
        this.getMsg()
      }
  }
};
</script>
<style scoped>
.button_next{
    width:100%;
    display:flex;
    justify-content: flex-end;
}
.button_next .active{
    background: #08b6f6;
    color:#fff;
}
.button_next .disabled{
    opacity:0.6;
    cursor: not-allowed;
}
</style>