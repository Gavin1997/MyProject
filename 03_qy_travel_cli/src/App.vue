<template>
  <div id="app">
    <router-view v-if="isRouterActive"/>
  </div>
</template>

<script>
export default {
  provide(){
    return{
      reload:this.reload,
      jump:this.jump,
      isLogin:false
    }
  },
  data(){
    return{
      isRouterActive:true
    }
  },
  methods:{
    reload(){
      this.isRouterActive = false;
      this.$nextTick(() => {
        this.isRouterActive = true
      })
    },
    jump(){
     this.distance = document.documentElement.scrollTop || document.body.scrollTop ||window.pageYOffset;
     this.step = this.distance/50;
     if(this.distance>0){
       this.distance-=this.step;
       window.scrollTo(0,this.distance);
       setTimeout(this.jump,1);
     }
    }
  },
  name: 'App',
  created(){
    
  },
  mounted(){
    
  },
  watch:{
    '$route':function(to,from) {
      document.body.scrollTop = 0;
      document.documentElement.scrollTop = 0;
      window.pageYOffset = 0;
    }
  }
}
</script>

<style>
#app {
  font-family: 'Avenir', Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
  margin-top: 60px;
}
</style>
