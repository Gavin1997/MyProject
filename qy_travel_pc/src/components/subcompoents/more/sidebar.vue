<template>
  <div>
    <div class="zw-siderbar-wrap">
      <!-- 工具栏边栏-包裹 -->
      <div class="zw-sidebar-section">
        <!-- 本节内容 -->
        <ul class="sidebar-section-list">
          <li class="sidebar-section-list-item" @click="goback()">
            <a>
              <img src="../../../assets/img/icon/icon01.png" alt="">
              <p>返回顶部</p>
            </a>
          </li>
          <li class="sidebar-section-list-item border-none">
            <a>
              <img src="../../../assets/img/icon/icon02.png" alt="">
              <p>我的订单</p>
            </a>
          </li>
          <li class="sidebar-section-list-item border-none">
            <a>
              <img src="../../../assets/img/icon/icon03.png" alt="">
              <p>我的收藏</p>
            </a>
          </li>
          <li class="sidebar-section-list-item border-none">
            <a>
              <img src="../../../assets/img/icon/icon04.png" alt="">
              <p>手机立减</p>
            </a>
          </li>
        </ul>
      </div>
    </div>
  </div>
</template>
<script>
  export default {
    data() {
      return {}
    },
    methods:{
        goback(){
              document.documentElement.scrollTop = document.body.scrollTop = 0;
        }
    },
  }

</script>
<style lang="scss" scoped>
.zw-siderbar-wrap{
    position:fixed;
    top:20rem;
    right:3.5rem;
    z-index: 10;
}
  .border-none {
    border-top: 0 !important;
  }

  .sidebar-section-list {
    list-style: none;
  }

  .sidebar-section-list-item {
    text-align: center;
    width: 53px;
    height: 53px;
    background-color: #ffffff;
    border: 1px solid #b2b2b2;
  }

  .sidebar-section-list-item:hover {
    background-color: #00b081;
  }

  .sidebar-section-list-item:hover a {
    color: #ffffff;
  }

  .sidebar-section-list-item a {
    text-decoration: none;
    font-size: 12px;
    color: #b2b2b2;
    text-align: center;
    position: relative;
    cursor: pointer;
  }

  /* .sidebar-section-list-item span:hover{
                    color:#FFFFFF;
                    } */
  .sidebar-section-list-item a img {
    margin-top:8px;
  }

</style>
