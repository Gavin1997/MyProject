<template>
    <div>
  <!-- 注册容器 -->
     <div class="q-container" id="app">
         <div class="login-container">
             <div class="login-wrapper">
                 <div class="login-logo">
                     <router-link to="/home">
                     <img src="../../../assets/img/register/login_logo2.41bd0a52.png" alt="" width="126px" height="46px">
                    </router-link>
                     <span class="title">注册</span>
                 </div>
                 <div class="login-section mt-3">
                    <form  method="get" action="users/register">
                    <div class="input_list">
                        <span>用户名:</span><input type="text" v-focus placeholder="请输入您的用户名" maxlength="12" class="my-form-control1 mt-5" name="uname" v-model="uname">
                        <span class=" input_list_prompt" :class="unameClass">请输入用户名6~12位,只能是数字或字母</span>
                    </div>
                    <div class="input_list">
                        密码:&nbsp; &nbsp; <input type="password" placeholder="请输入您的密码" maxlength="8" class="my-form-control1" name="upwd" v-model="upwd">
                        <span class=" input_list_prompt" :class="upwdClass">6-8位数字,字母结合,至少包含一个大写字母和数字</span>
                    </div>
                    <div class="input_list">
                        邮箱:&nbsp; &nbsp; <input type="email" placeholder="请输入您的邮箱地址" class="my-form-control1" name="email" v-model="email">
                        <span class=" input_list_prompt" :class="emailClass">请输入正确格式的邮箱地址</span>
                    </div>
                    <div class="input_list">
                        电话:&nbsp; &nbsp; <input type="phone" placeholder="请输入您的电话号码" maxlength="16" class="my-form-control1" name="phone" v-model="phone">
                        <span class=" input_list_prompt" :class="phoneClass">请输入有效的电话号码</span>
                    </div>
                    <div class="input_list">
                        姓名:&nbsp; &nbsp; <input type="text" placeholder="请输入您的姓名" maxlength="16" class="my-form-control1" name="user_name" v-model="user_name">
                        <span class=" input_list_prompt" :class="user_nameClass">请输入你的姓名</span>
                    </div>
                    <div class="input_list">
                        <span>验证码:</span>  
                        <input type="text" placeholder="请输入验证码" class="my-form-control2" v-model="v_code">
                       <canvas width="120" height="30" id="vify" class="ml-4" @click="changeCode()"></canvas>  
                       <span class=" input_list_prompt" :class="v_codeClass" v-text="v_code_text"></span>    
                     </div>
                    <div class="input_list">
                        性别: <input type="radio" value="1" id="gender1" name="gender" v-model="gender">
                         <label for="gender1">男</label>
                         <input type="radio" value="0" id="gender2" v-model="gender">
                         <label for="gender2">女</label>
                    </div>
                    <!-- <button tpye="button" class="btn-green" @click="submit()"> 注册</button> -->
                    
                    <input type="button" value="注册" class="btn-green" @click="submit()">
                    <span :class="promit_register" v-text="res.msg"></span>
                    </form>
                    <button type="button" value="登录" class="btn-login btn_position" v-if="orLoign" @click="gologin">登录</button>
                    <div class="login-section-bottom pb-4 mt-3 ">
                        <span>已有穷游帐号?<a  class="ml-2" @click="gologin">登录</a></span> <span class="ml-5"> 同意<a href="#">会员条款</a>和<a href="#">免责声明</a></span>
                    </div>
                 </div>
             </div>
         </div>
     </div>
    </div>
</template>
<script>
import Qs from "qs"
    export default{
        data(){
        return{
            res:"",
            uname:"",
            upwd:"",
            email:"",
            phone:"",
            user_name:"",
            gender:"",
            v_code:"",  //当前输入验证码的值
            v_code_num:[], //当前动态生成的验证码
            v_code_text:"请输入验证码,注意大小写",
            promit_register:"",//动态接收服务器返回的注册结果
            v_codeClass:"alert alert-danger",
            unameClass:"alert alert-danger",
            upwdClass:"alert alert-danger",
            emailClass:"alert alert-danger",
            phoneClass:"alert alert-danger",
            user_nameClass:"alert alert-danger",
            orLoign:false,  //是否显示登录按钮
        }
    },
    methods:{
        // 返回指定范围随机数
       rn(min,max){
         var n = parseInt(Math.random()*(max-min)+min);
         return n;
       },
        //返回指定范围颜色
        rc(mix,max){
            var r = this.rn(mix,max);
            var g = this.rn(mix,max);
            var b = this.rn(mix,max);
            return `rgb(${r},${g},${b})`;
        },
        // 验证码
        vify_code(){
            var vify = document.getElementById("vify");
            var ctx = vify.getContext("2d");
            ctx.fillStyle = this.rc(180,230);
            ctx.fillRect(0,0,120,30);
            //创建4个字符
            var pool="ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz";
            for(var i=0;i<4;i++) {
                var c =pool[this.rn(0,pool.length)];
                ctx.textBaseline="top";
                ctx.font="23px SimHei";
                ctx.fillStyle=this.rc(80,180);
                ctx.fillText(c,i*28,5);
                // console.log(c)
                this.v_code_num+=c;
            }
            //创建六条干扰线
            for(var i=0;i<6;i++) {
                ctx.beginPath();
                ctx.strokeStyle=this.rc(0,255);
                ctx.moveTo(this.rn(0,120),this.rn(0,30));
                ctx.lineTo(this.rn(0,120),this.rn(0,30));
                ctx.stroke();
            }
            //创建30个干扰点
            for(var i=0;i<30;i++){
                ctx.beginPath();
                ctx.fillStyle=this.rc(0,255);
                ctx.arc(this.rn(0,120),this.rn(0,30),1,0,2*Math.PI);
                ctx.fill();
            }
             
        },
        // 点击变化验证码
        changeCode(){
            this.v_code_num=[];
            this.vify_code();      
        },
        //注册
        submit() {
            this.$http.post("users/register",
            Qs.stringify({
                uname:this.uname,
                upwd:this.upwd,
                email:this.email,
                phone:this.phone,
                user_name:this.user_name,
                gender:this.gender,
            })
            ).then(res=>{
                this.res=res.data;
                  console.log(this.res)
                if(this.res.code==1){
                    this.promit_register="alert alert-success";
                    this.orLoign=true;
                }else{
                    this.promit_register="alert alert-danger";
                    this.orLoign=false;
                }
            })
        },
        //登录按钮跳转页面
        gologin(){
          this.$router.push({path:"/user_login"})
        }
    },
    created() {
      
    },
    mounted() {
       this.vify_code();
    },
    watch:{
        uname(){
            console.log(this.uname)
            var reg=/^[0-9a-zA-Z]{6,12}$/;
            if(this.uname.length>6 &&reg.test(this.uname)){
                this.unameClass="alert alert-success";
            }else{
                this.unameClass="alert alert-danger";
            }
        },
        upwd() {
            var reg=/^(?![a-z0-9]+$)(?![A-Za-z]+$)[A-Za-z0-9]{6,8}$/;
            if(this.upwd.length>6 &&reg.test(this.upwd)){
                this.upwdClass="alert alert-success";
            }else{
                this.upwdClass="alert alert-danger";
            }
        },
        email() {
            var reg=/^[^.@]+@[^.@]+\.(com|cn|net)$/;
            if(this.email.length>0&&reg.test(this.email)){
                this.emailClass="alert alert-success";
            }else{
                this.emailClass="alert alert-danger"
            }
        },
        phone() {
            var reg=/^[1][3578][0-9]{9}$/
            if(this.phone.length>0 &&reg.test(this.phone)){
                this.phoneClass="alert alert-success"
            }else{
                this.phoneClass="alert alert-danger"
            }
        },
        user_name() {
           if(this.user_name.length>0 &&this.user_name.length<16){
               this.user_nameClass="alert alert-success"
           }else{
               this.user_nameClass="alert alert-danger"
           }
        },
        v_code() {
           if(this.v_code==this.v_code_num){
               this.v_code_text="验证码正确";
               this.v_codeClass="alert alert-success"
           }    
            else{
                this.v_code_text="请重新输入验证码";
                this.v_codeClass="alert alert-danger"
            }
        },
        gender() {
            
        }
       
    }
    }
</script>
<style lang="scss" scoped>
a{
    cursor: pointer;
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
    width:380px;
    height:46px;
    .title{
        font-size:24px;
        color:#fff;
    }
}
@mixin Login-area {
    padding-left:30px;
    box-shadow: 0 0 10px rgba(0,0,0,.3);
    background: hsla(0,0%,100%,.95);
    .btn-green{
        width:300px;
        padding:10px;
        height:40px;
        line-height: 12px;
        background:#5CAD77;
        border:1px solid #5CAD77;
        border-radius: 5px;
        outline: 0;
    }
    .login-section-bottom{
        font-size:14px;
        color:$my_t_fontColor;
        line-height: 12px;
        a{
            color:#5CAD77;
            text-decoration: none;
        }

    }
}
div.login-section{
   @include Login-area;
}
.my-form-control1 {
    outline: 0;
    display: inline-block;
    width: 280px;
    padding: 10px 8px;
    line-height: 1.5;
    border-radius: 5px;
    font-size: 8px; }
    .my-form-control2 {
        outline: 0;
        display: inline-block;
        width: 100px;
        padding: 10px 8px;
        line-height: 1.5;
        border-radius: 5px;
        font-size: 8px;
    }
    .input_list{
        text-align: left;
        margin-top:5%;
        width:100%;
        white-space: nowrap;
        overflow: hidden;
        .input_list_prompt{
           margin-left:10px;
            font-size:12px;
        }
        #vify{
           position: relative;
           top:10px;
           cursor: pointer;
        }
    }
   .btn-login{
     padding:0.5rem 1rem;
     background: #5BC0DE;
     color:#F5F5F5;
     outline: 0;
     border:1px solid #5BC0DE;
     border-radius: 5px;
     cursor: pointer;
     &:active{
         opacity: 0.7;
     }
   }
   .btn_position{
    margin-left:500px;
}
</style>
