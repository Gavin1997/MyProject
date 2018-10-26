<template>
    <div>
     <div class="user-info-warp">
         <div class="bg-show"></div>
         <div class=user-info-avatar>
             <img src="../../img/profile/200.jpg" alt="" width="64" hieght="64">
         </div>
         <div class="user-info-name">
            <p class="user-name">weigong</p>
            <a href="">退出登录</a>
         </div>
     </div>
    </div>
</template>
<script>
    export default{
    data(){
        return{}
    },
     methods:{},
     created(){}
   }
</script>
<style scoped>
*{
    margin:0;
    padding:0;
}
.user-info-warp{
   width:100%;
   position:relative;
   background: #fff url("../../img/profile/headImage_lite.png") no-repeat center center;
   background-size:cover; 
   height:184px;
}
.user-info-avatar{
    width:64px;
    height:64px;
    border-radius: 50%;
    overflow: hidden;
    position: absolute;
    left:50%;
    top:50%;
    margin-top:-32px;
    margin-left:-32px;
}
.bg-show{
    width:100%;
    height:50px;
    position: absolute;
    bottom:0;
    background-image:linear-gradient(180deg,rgba(0,0,0,.3),rgba(0,0,0,.1)); 
}
.user-info-name{
    position: absolute;
    left:40%;
    top:75%;
    display: flex;
}
.user-info-name p{
    font-size:15px;
    color:#fff;
    font-weight: 600;
    margin-right:10px;
}
.user-info-name a{
 color:#fff;
 font-size:13px;
}
.user-info-name a:hover{
    text-decoration: underline;
}
/*3. 通用箭头大于 */
.arrow{
  display: flex;
  justify-content: space-between;
  align-items: center;
}
.arrow::after{
  content:"";
  border-top:4rpx solid #ccc;
  border-right:4rpx solid #ccc;
  transform: rotate(45deg);
  width:16rpx;
  height:16rpx;
  z-index: 99;
}

</style>
