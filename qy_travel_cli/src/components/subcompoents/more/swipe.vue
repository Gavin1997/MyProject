<template>
<div class="app_subcomp_swipt">
    <mt-swipe :auto="3000">
      <mt-swipe-item v-for="(item,i) in imgArry" :key="item.id">
        <img :src="item.img" alt="">
      </mt-swipe-item>
    </mt-swipe>
  </div>
</template>
<script>
export default {
  data(){
    return{
      imgArry:[],
    }
  },
  methods:{
    getlist(){
          this.$http.get("index/list").then(result=>{
              this.imgArry=result.data;
          })
      }
  },

  created(){
    this.getlist();
  }
  
}
</script>
<style lang="scss" scoped>

.app_subcomp_swipt .mint-swipe {
  height: 26.25rem;
}
.app_subcomp_swipt .mint-swipe .mint-swipe.item{
  text-align: center;
}
.app_subcomp_swipt .mint-swipe img {
  width: 100%;
  height:100%;
  
}
</style>

