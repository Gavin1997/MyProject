
Page({

  /**
   * 页面的初始数据
   */
  data: {
    banner_img_list_top: [],//顶部轮播图
    banner_img_list_bottom:[],//下方轮播图
    indexList:[],//主页详情信息
    miaosha:[],//秒杀板块
    jingxuan:[],//精选模块
    xinping:[],//新品模块
    recommendList:[],//每日推荐
    hasMore:true, //是否显示正在加载
    pno:0,//当前页面的页数
    pageSize:4,//当前页面显示的产品数量
    indicatorDots: true,//显示面板指示点
    autoplay: true,//自动播放
    beforeColor: "white",//指示点颜色
    afterColor: "white",//当前选中的指示点颜色
    text:"新鲜水果到,有礼进店享!",//公告文字
    size:14,//公告文字大小
    marquee_margin:30,//文字距离图片的右边距
    marqueeDistance:0,//向左移动的距离
    marqueePace:1,
    timer:20,//定时器的间隔秒数
    
  },

  /**
   * 生命周期函数--监听页面加载
   */
  onLoad: function (options) {
    //1.向服务器发送请求获取图片轮播
    wx.request({
      url: 'http://127.0.0.1:3333/index/imglist',
      method: 'GET',
      dataType: 'json',
      responseType: 'text',
      success: (result)=>{
        this.setData({
          banner_img_list_top:result.data.slice(0,3),
          banner_img_list_bottom:result.data.slice(3)
        })
      },
    });
    //2.获取主页信息数据
    wx.request({
      url:'http://127.0.0.1:3333/index/index',
      methods:'GET',
      dataType:'json',
      success:(result)=>{
        this.setData({
          indexList:result.data,
          miaosha:result.data.slice(2,8),
          jingxuan:result.data.slice(9,12),
          xinping:result.data.slice(13)
        })
      }
    });
    //3.获取推荐产品分页,加载更多
    wx.request({
      url:"http://127.0.0.1:3333/products/list",
      methods:'GET',
      dataType:'json',
      success:(result)=>{
        this.setData({
          recommendList:result.data.data.products
        })
      }
    })

    var that = this;
    //文字的长度
    let length = that.data.text.length * that.data.size;
    that.setData({
      length,
      windowWidth:10
    }),
    //2.调用滚动字体函数
    that.scrollTxt();
    //3.调用倒计时函数
    var date_interval = setInterval(that.countDwon,1000);
    
  },
  //1.滚动字体函数
  scrollTxt:function(){
    var that = this;
    var length = that.data.length;//字体的长度
    var windowWidth = that.data.windowWidth;
      if(length>windowWidth){
        var timer = setInterval(function(){
          //最大宽度 = 文字的长度+文字距离图片的右边距
          var maxscrollwidth = length+that.data.marquee_margin;
          //向左移动的距离    初始为0
            var crentleft = that.data.marqueeDistance;
            if(crentleft<maxscrollwidth){
              that.setData({
                marqueeDistance:crentleft+that.data.marqueePace
              })
            }
            else{
              that.setData({
                marqueeDistance:0
              });
              // clearInterval(timer);
            }
        },that.data.timer)
      }else{
        //换行显示
        that.setData({marquee_margin:"1000"})
      }
  },
  //2.倒计时函数
  countDwon:function(end){
    var now = new Date();
    var end = new Date("2018/11/11 18:00:00");
    var s = parseInt((end-now)/1000);//时间差的秒数
    if(s>0){
      var day = parseInt(s/3600/24);//剩余天数
      if(day<10) d = "0"+d;
      var hours = parseInt(s%(3600*24)/3600);
      if(hours<10) hours="0"+hours;
      var mintues = parseInt(s%3600/60);
      if(mintues<10) mintues= "0"+mintues;
      s = s%60;
      if(s<10) s="0"+s;
      this.setData({
        day,
        hours,
        mintues,
        s
      })
    }else{
      clearInterval(date_interval);
      date_interval = null;
    }
  },
          
          
    

  /**
   * 生命周期函数--监听页面初次渲染完成
   */
  onReady: function () {
   
  },

  /**
   * 生命周期函数--监听页面显示
   */
  onShow: function () {
   
  },
  
  /**
   * 生命周期函数--监听页面隐藏
   */
  onHide: function () {
    console.log("4:当前组件--onHide")
    
  },

  /**
   * 生命周期函数--监听页面卸载
   */
  onUnload: function () {

  },

  /**
   * 页面相关事件处理函数--监听用户下拉动作
   */
  onPullDownRefresh: function () {
    console.log("5:监听用户下拉动作")

  },

  /**
   * 页面上拉触底事件的处理函数
   */
  onReachBottom: function () {
        //3.获取推荐产品分页,加载更多
        wx.request({
          url:"http://127.0.0.1:3333/products/list",
          data:{
            pno:++this.data.pno,
            pageSize:this.data.pageSize
          },
          methods:'GET',
          dataType:'json',
          success:(result)=>{
            var pageCount = result.data.data.pageCount;
            if(this.data.pno>=pageCount){
              this.setData({
                hasMore:false,
              })
            }
            var rows = this.data.recommendList.concat(result.data.data.products);
            this.setData({
               recommendList:rows
            })
           
          }
         
        })
  },

  /**
   * 用户点击右上角分享
   */
  onShareAppMessage: function () {

  }
})
