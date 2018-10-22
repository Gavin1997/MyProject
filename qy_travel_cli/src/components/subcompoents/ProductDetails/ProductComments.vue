<template>
  <div>
    <!-- 评论与咨询 -->
    <div class="consult mt-5 container">
      <h2>咨询</h2>
      <div class="consult_content_warp container">
        <ul class="consult_list">
          <!-- 第一个评论 -->
          <li class="consult_list_item mt-3" v-for="(item,i) in res" :key="item.com_id">
            <a href="" class="img_box">
              <img src="../../../assets/img/register/200.jpg" alt="">
            </a>
            <div class="item">
              <p class="item_head">
                <h6 class="consult_name">{{item.uname}} <span>{{item.ctime | dateFormat}}</span></h6>
              </p>
              <p class="item_section">
                {{item.content}}
              </p>
            </div>
          </li>
          <div class="divided_page">
            <span @click="prev()" :class=" disabled_info_prev">上一页</span>
            <span v-for="(item,i) in pageCount" class="btn_num" :class="{btn_active:changedActive==i}" @click="now_num(i)">{{i+1}}</span>
            <span @click="next()" :class="disabled_info_next">下一页</span>
          </div>
        </ul>
      </div>
      <div class="product_intro_info">
        <p class="ml-3">
          <img src="../../../assets/img/product_detalis/middle6.png" alt="" maxlength="140">
        </p>
        <div class="textarea-box">
          <div class="textarea-box1">
            <textarea name="" id="" cols="30" rows="10" class="text-area" placeholder="请输入你的问题和想法" maxlength="140"
              v-model="desc" @input="descInput()"></textarea>
            <span class="number">{{txtVal}}/140</span>
            <span class="prompt alert" :class="promptClass">{{prompt}}</span>
            <span class="prompt_login" :class="{login_show:ifshow_login}" @click="gologin()">登录</span>
            <button class="btn" @click="addComment()">咨询</button>
          </div>
        </div>
      </div>
    </div>
  </div>
</template>
<script>
  export default {
    inject: ['reload'],
    data() {
      return {
        txtVal: 0,
        desc: "",
        uname: "",
        isLogin: false,
        promptClass: "", //提示的样式
        prompt: "", //提示的内容
        res: "", //评论内容
        pno: 1, //当前评论页数
        n: 1, //控制页数的变量 和pno去比较逻辑关系
        changedActive: 0,
        pageCount: "", //当前总页数
        tid: this.$route.params.tid, //当前产品的tid
        ifshow_login: true,
        disabled_info_next: "", //当前下一页的图标状态
        disabled_info_prev: "disabled", //当前伤医二院的图标状态
        distance_scroll:"",//当前添加到评论的滚轮位置
        success_num:0   //记录计算成功的数字
      }
    },
    methods: {
      descInput() {
        this.txtVal = this.desc.length;
      },
      addComment() {
        //添加评论
        this.$http.get(`/comment/add?uname=${this.uname}&content=${this.desc}&tid=${this.tid}`).then(res => {
          this.prompt = res.data.msg;
          
          if (res.data.code == 1) {
            this.promptClass = "alert-success"
            this.desc = "";//清空内容
            this.txtVal = 0;//清空计算字体个数
            this.ifshow_login = true;//已登录
            this.success_num ++;//发生变化 监听的元素就发ajax请求
            //保存当前的滚轮位置
           //如果当前是登录状态 且成功添加到评
          } else if (this.isLogin === true && res.data.code == -1) {
            this.ifshow_login = false;
          } else {
            this.promptClass = "alert-danger"
          }
        })
      },
      gologin() {
        this.$router.push({
          path: "/user_login",
          query:{redirect:`/product_details/${this.tid}`}
        })
      },
      getmore() {
        this.$http.get(`/comment/searchcomment?tid=${this.tid}&pno=${this.pno}`).then(res => {
          this.res = res.data.obj.comments;
        })
      },
      //点击下一页
      next() {
        if (this.pno < this.pageCount ) {
          this.pno++;
          this.n++;
          this.changedActive=this.n-1;
          this.getmore();
          this.disabled_info_prev = "";
        } else {
          this.disabled_info_next = "disabled";
        }
      },
      //点击上一页
      prev() {
        if (this.disabled_info_prev != "disabled") {
          if (this.pno <= this.pageCount && this.pno > 1 ) {
            this.pno--;
            this.n--;
             this.changedActive=this.n-1;
            this.getmore();
            this.disabled_info_next = "";
          } else {
            this.disabled_info_prev = "disabled";
          }
        }
      },
      //点击当前页
      now_num(i) {//0,1,2,3
        this.pno = i+1;//1,2,3,4
        this.changedActive = i;
        this.n = i+1;
        if(i>=0 &&i<this.pageCount){
          this.disabled_info_next="";
          this.disabled_info_prev="";
        }
        this.getmore();
      }
    },
    created() {
      (async function (self) {
        //1.判断是否登录
        var res = await self.$http.get("/users/islogin")
        if (res.data.ok == 1) {
          self.isLogin = false;
          self.uname = res.data.uname;
        } else {
          self.isLogin = true;
        }
        //2.查询评论咨询列表
        var res = await self.$http.get(`/comment/searchcomment?tid=${self.tid}&pno=${self.pno}`);
        self.res = res.data.obj.comments;
        self.pageCount = res.data.obj.pageCount;
      })(this)
    },
    watch: {
     success_num(){
       this.getmore()
     }
    },
  }

</script>
<style lang="scss" scoped>
  //返回的消息显示区域
  .prompt {
    position: absolute;
    left: 350px;
    font-size: 14px;
  }

  .prompt_login {
    position: absolute;
    left: 610px;
    background: #5BC0DE;
    padding: 0.2rem 0.3rem;
    color: #fff;
    cursor: pointer;
    border: 1px solid #5BC0DE;
    border-radius: 5px;
  }

  .login_show {
    display: none;
  }

  span.red {
    color: red;
  }

  //分页区域
  .divided_page {
    font-size: 13px;
    margin: 0.8rem 0 0 35rem;

    span {
      cursor: pointer;
    }

    .btn_num {
      padding: 0.8rem 0.3rem;
      text-align: center;
      line-height: 0.2rem;
      display: inline-block;

    }

    .btn_active {
      background: #3dc681;
    }
  }

  // 咨询
  .consult {
    text-align: center;
    position: relative;

    h2 {
      padding-right: 15rem;
    }

    .product_intro_info {
      text-align: left;
      display: flex;
      margin-top: 40px;

      p :first-child {
        border: 1px solid transparent;
        border-radius: 50%;
        font-size: 14px;
      }

      img {
        width: 88px;
        height: 88px;
      }
    }

    .textarea-box1 {
      text-align: left;
      width: 580px;
      height: 180px;
      background: #eee;
      box-shadow: none;
      padding-left: 50px;

      button {
        background: #3dc681;
        color: #fff;
        margin-left: 460px;
        position: absolute;
        cursor: pointer;
      }
    }

    .text-area {
      margin-top: 10px;
      width: 550px;
      height: 120px;
      color: #636363;
      font-size: 14px;
    }
  }

  //评论显示列表
  .consult_content_warp {
    text-align: left;

    .consult_list {
      list-style: none;

      .consult_list_item {
        width: 720px;
        padding-bottom: 0.7rem;
        border-bottom: 1px solid #ddd;

        a.img_box {
          border: 1px solid transparent;
          border-radius: 50%;
          overflow: hidden;
          float: left;

          img {
            width: 48px;
            height: 48px;
            vertical-align: middle;
          }
        }

        .item {
          position: relative;
          left: 0.8rem;
          top: 0.2rem;

          .consult_name {
            font-size: 14px !important;

            span {
              font-weight: 500;
              color: #636363;
              font-size: 12px;
            }
          }

          .item_section {
            margin-top: 0.5rem;
            font-size: 13px;
          }
        }
      }
    }
  }

</style>
