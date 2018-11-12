
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
      }
    },
    props:['imgArry'],
    methods: {
    },

    created() {
    }

  }

</script>
<style lang="scss" scoped>


</style>
