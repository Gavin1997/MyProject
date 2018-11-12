<template>
  <div>
    <div class="q-container" id="app">
      <div class="login-container">
        <div class="login-wrapper">
          <div class="login-logo">
            <router-link to="/home">
              <img src="../../../assets/img/register/login_logo2.41bd0a52.png" alt="" width="126px" height="46px">
            </router-link>
            <span class="title">登录</span>
          </div>
          <div class="login-section_login">
            <div class="login-section-top mt-2 d-flex ">
              <div class="active"><a href="#">账号登录</a></div>
              <div><a href="#">游客登录</a></div>
            </div>
            <form action="">
              <div>
                <input type="text" placeholder="用户名" class="my-form-control1 mt-3" v-focus v-model="uname">
                <!-- <span :class="unameClass">请输入用户名不能为空</span> -->
              </div>
              <div>
                <input type="password" placeholder="密码" class="my-form-control1 mt-3" v-model="upwd" @keydown.13="login($event)">
                <!-- <span :class="upwdClass">请输入密码不能为空</span> -->
              </div>
              <p class="login-forget mt-3 mb-2"><a href="#">忘记密码?</a></p>
              <button type="button" value="登录" class="btn-green" @click="login($event)">登录</button>
              <p :class="login_active" class="mt-2" style="width:80%;" v-text="res.msg"></p>
            </form>
            <div class="login-auth d-flex justify-content-around mt-3">
              <a href="#"><img src="../../../assets/img/register/wechat.png" alt=""></a>
              <a href="#"><img src="../../../assets/img/register/qq.png" alt=""></a>
            </div>
            <div class="login-section-bottom pb-4 mt-3">
              <span>没有帐号?<router-link to="user_register" class="ml-2 text_none">立即注册</router-link></span> <span class="ml-5"> 境外手机号注册</span>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</template>
<script>
import Qs from "qs"
  export default {
    data() {
      return {
        res: "",
        uname: "",
        upwd: "",
        login_active: "",
      }
    },
    methods: {
      login(e) {
      this.$http.post("users/signin",
          Qs.stringify({
            uname: this.uname,
            upwd: this.upwd
          })
        ).then(res => {
          this.res = res.data;
          if (res.data.ok == 0) {
            this.login_active = "alert alert-danger";
          } else {
            this.login_active = "alert alert-success";
              if(this.$route.query.redirect!=undefined){
                this.$router.push({path:`${this.$route.query.redirect}`})
              }else{
                setTimeout(()=>{
                  if(e.Keycode==13){
                    this.$router.push({path:"/home"})
                  }
                 this.$router.push({path:"/home"})
                 },2000)
              }
            
          }
        })
      }
    },
    created(){
      
    },
    mounted(){
      
    }
  }

</script>
<style lang="scss" scoped>
.text_none{
    text-decoration: none;
    color:#5cad77;
}
.q-container{
    width:100%;
    box-sizing: border-box;
}
.login-container{
    width:100%;
    width: 100%;
    height: 100%;
    min-width: 960px;
    min-height: 765px;
    background: url( "../../../assets/img/register/web_login_bg.ecb39528.jpg") top/cover no-repeat ;
}
.login-wrapper{
    position: absolute;
    width:700px;
    height:570px;
    left:50%;
    height:50%;
    margin-left:-350px;  
}
.login-logo{
    position:absolute;
    left:50%;
    top:40%;
    margin-left:-180px;
    width:380px;
    height:46px;
    .title{
        font-size:24px;
        color:#fff;
    }
}
.my-form-control1 {
  outline: 0;
  display: inline-block;
  width: 280px;
  padding: 10px 8px;
  line-height: 1.5;
  border-radius: 5px;
  font-size: 8px; }
  @mixin Login-area {
    padding-left: 30px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.3);
    background: hsla(0, 0%, 100%, 0.95);

    .btn-green {
      width: 300px;
      padding: 10px;
      height: 40px;
      line-height: 12px;
      background: #5cad77;
      border: 1px solid #5cad77;
      border-radius: 5px;
      outline: 0;
      cursor: pointer;
      &:active{
        opacity: 0.7;
      }
    }
  }

  .login-section-top {
    height: 60px;

    div {
      width: 190px;

      &:hover {
        border-bottom: 3px solid #5cad77;
      }
    }

    .active {
      border-bottom: 3px solid #5cad77;
    }

    a {
      color: #959595;
      text-decoration: none;
      font-weight: 300;
      line-height: 60px;
    }
  }

  .login-section_login {
    text-align: left;
    width: 320px;
    position: absolute;
    left: 50%;
    top: 50%;
    margin-left: -160px;
    margin-top: 50px;
    @include Login-area;

    .login-forget {
      font-size: 12px;
      margin-left: 240px;

      a {
        text-decoration: none;
        color: $my_fontColor;
      }
    }

    .login-auth {
      img {
        width: 48px;
        height: 48px;
        transition: all 0.2s linear;

        &:hover {
          transform: scale(1.1);
        }
      }
    }
  }

</style>
