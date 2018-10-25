<template>
    <div class="app-container">

        <!-- 1:顶部导航 -->
        <mt-header fixed title="易购商城"></mt-header>
        <!-- 2:路由 -->
        <router-view v-if="isRouterAlive" @shwobox="showbox()"></router-view>
        <!-- 3:tabbar -->
        <nav class="mui-bar mui-bar-tab">
            <router-link class="mui-tab-item " to="/home">
                <span class="mui-icon mui-icon-home"></span>
                <span class="mui-tab-label">首页</span>
            </router-link>
            <router-link class="mui-tab-item " to="/home/member">
                <span class="mui-icon mui-icon-contact"></span>
                <span class="mui-tab-label">会员</span>
            </router-link>
            <router-link class="mui-tab-item" to="/home/shopcart" >
                <span class="mui-icon mui-icon-extra mui-icon-extra-cart" ><span class="mui-badge">{{$store.getters.optCount}}</span></span>
                <span class="mui-tab-label">购物车</span>
            </router-link>
            <router-link class="mui-tab-item" to="/home/search">
                <span class="mui-icon  mui-icon-search"></span>
                <span class="mui-tab-label">搜索</span>
            </router-link>
        </nav>
    </div>
</template>
<script>
    export default {
        name:"app",
        provide (){
            return {
                reload:this.reload,
            }
        },
        data() {
            return {
                isRouterAlive:true,
                list: [],
                num:0
            }
        },
        methods:{
          reload (){
              this.isRouterAlive = false;
              this.$nextTick(()=>{
                  this.isRouterAlive = true;
              })
          },
        },
        created() {
            this.$axios.get("http://127.0.0.1:3000/cartlist/list").then(res => {
                this.list = res.data.msg;
                // console.log(this.list);
               this.num=this.list.length;
            });
        },
    }
</script>
<style>
    .app-container {
        padding-top: 40px;
        padding-bottom: 50px;
        overflow-x: hidden;
    }

    .mui-bar-tab .mui-tab-item-tao.mui-active {
        color: #007aff;
    }

    .mui-bar-tab .mui-tab-item-tao {
        display: table-cell;
        overflow: hidden;
        width: 1%;
        height: 50px;
        text-align: center;
        vertical-align: middle;
        white-space: nowrap;
        text-overflow: ellipsis;
        color: #929292;
    }

    .mui-bar-tab .mui-tab-item-tao .mui-icon {
        top: 3px;
        width: 24px;
        height: 24px;
        padding-top: 0;
        padding-bottom: 0;
    }

    .mui-bar-tab .mui-tab-item-tao .mui-icon~.mui-tab-label {
        font-size: 11px;
        display: block;
        overflow: hidden;
        text-overflow: ellipsis;
    }
</style>