<template>
  <div id="app">
    <router-view v-if="isRouterActive"/>
  </div>
</template>

<script>
export default {
  provide(){
    return{
      reload:this.reload
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
    }
  },
  name: 'App',
  watch:{
    '$route':function(to,from) {
      document.body.scrollTop = 0;
      document.documentElement.scrollTop = 0;
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
