<template>
  <div>
    <div style="background-color:#f1f4f8;">
      <div class="st"><img src="../../../assets/img/notfound/404_03.png"></div>
      <div class="fh">
        <router-link to="/home"><img src="../../../assets/img/notfound/404_06.png"></router-link>
      </div>
      <div class="fh"><b id="num">{{num}}</b>秒后跳转到首页</div>
    </div>
  </div>
</template>
<script>
  export default {
    data() {
      return {
         num:5
      }
    },
    methods: {

    },
    mounted(){
       var timer = setInterval(()=>{
           if(this.num<=0){
            this.$router.push("/home");
            clearInterval(timer)
           }else{
               this.num--
           }
       },1000)
    } 
  }
</script>
<style lang="scss" scoped>
  ul {
    list-style: none;
    margin: 0px;
    padding: 0px;
  }

  .fl {
    float: left;
  }

  .fr {
    float: right;
  }

  .cl {
    clear: both;
  }

  * {
    font-family: "微软雅黑";
    font-size: 12px;
    color: #5f5f5f;
  }

  a {
    font-family: "微软雅黑";
    font-size: 12px;
    color: #5f5f5f;
    text-decoration: none;
  }

  a:hover {
    color: #f00;
    border: 0px;
  }

  img {
    border: 0px;
  }

  .st {
    width: 728px;
    height: 320px;
    text-align: center;
    margin: 0 auto;
    margin-top: 70px;
  }

  .fh {
    width: 728px;
    height: 89px;
    text-align: center;
    margin: 0 auto;
    margin-top: 15px;
  }
</style>