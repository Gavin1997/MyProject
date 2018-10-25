
<template>
  <div>
      <el-carousel :intercal="3000" height="420px" arrow="hover">
        <el-carousel-item v-for="(item,i) in imgArry" :key="item.id">
           <img :src="item.img" alt="">
        </el-carousel-item>
      </el-carousel>
  </div>
</template>
<!-- </template> -->
<script>
  export default {
    data() {
      return {
        imgArry: [],
      }
    },
    methods: {
      getlist() {
        this.$http.get("index/list").then(result => {
          this.imgArry = result.data;
        })
      }
    },

    created() {
      this.getlist();
    }

  }

</script>
<style lang="scss" scoped>


</style>
