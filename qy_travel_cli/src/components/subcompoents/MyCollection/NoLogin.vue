<template>
  <div>
   <div class="jumbotron ">
     <h3>你现在还未登录,请登录后再查看我的收藏</h3>
     <hr>
     <p>点击下面的按钮登录</p>
     <p class="lead">
       <button class="btn btn-green mt-2" @click="goLogin()">点击登录</button>
     </p>
   </div>
  </div>
</template>
<script>
export default {
  data(){
    return{}
  },
  methods:{
    goLogin(){
      this.$router.push({path:"/user_login"})
    }
  },
  created() {
    
  },

}
</script>
<style lang="scss" scoped>
.jumbotron {
  padding: 2rem 1rem;
  margin-bottom: 2rem;
  background-color: #e9ecef;
  border-radius: 0.3rem;
  opacity: 0.9;
}
.lead {
  font-size: 1.25rem;
  font-weight: 300;
}
button{
  cursor: pointer;
  &:active{
    opacity:0.6;
  }
}
</style>

