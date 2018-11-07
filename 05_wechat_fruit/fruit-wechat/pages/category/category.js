// pages/category/category.js
Page({

  /**
   * 页面的初始数据
   */
  data: {
     navbar:["当季时令","葡萄浆果"," 西瓜蜜瓜","芒橙柑柚","桃李"],
     currentTab:0,
     checkCodeBtnOpacity:1,
     checkCodeOpacity:0,
     animationData:{},
     products:[],
     hasMore:true
    
  },
  //导航栏切换更换index
  navbarTap:function(e){
    this.setData({
      currentTab:e.currentTarget.dataset.idx,
    })
    setTimeout(()=>{
      this.setData({
        hasMore:false
      })
    },1000)
    setTimeout(()=>{
      this.setData({
        hasMore:true
      },2000)
    })
  },
  getMsg(){
    wx.request({
      url:'http://127.0.0.1:3333/products/products',
      methods:'GET',
      dataType:"json",
      success:(result)=>{
        this.setData({
          products:result.data,
        })
        setTimeout(()=>{
          this.setData({
            hasMore:false
          })
        },1000)
        
      }
    })
  },
  //3.跳转
  gosearch:function(){
    wx.navigateTo({
      url: '../search/search',
    })
  },

  /**
   * 生命周期函数--监听页面加载
   */
  onLoad: function (options) {
    //获得商品
    this.getMsg()
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

  },

  /**
   * 页面上拉触底事件的处理函数
   */
  onReachBottom: function () {

  },

  /**
   * 用户点击右上角分享
   */
  onShareAppMessage: function () {

  }
})