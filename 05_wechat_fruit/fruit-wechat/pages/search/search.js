// pages/search/search.js
Page({

  /**
   * 页面的初始数据
   */
  data: {
    hasMore:false
  },

  /**
   * 生命周期函数--监听页面加载
   */
  onLoad: function (options) {
      
  },
  //1.获得焦点
  searchFocus:function(){
    console.log("请输入要搜索的内容")
  },
  //2.获得输入的内容
  searchInput:function(e){
    this.setData({
      kw:e.detail.value
    })
  },
  //3.失去焦点搜索
  searchBlur:function(e){
   var kw= (this.data.kw);
   this.setData({
     hasMore:true
   })
    wx.request({
      url: 'http://127.0.0.1:3333/products/search',
      data: {kw},
      method: 'GET', // OPTIONS, GET, HEAD, POST, PUT, DELETE, TRACE, CONNECT
      // header: {}, // 设置请求的 header
      success: (res)=>{
        if(res.data.code==1){
          wx.showToast({
            title: '查询成功',
            icon: 'success',
            duration: 1500,
            mask: true, 
          });
        this.setData({
          products:res.data.data,
          hasMore:false
        })
      }else{
        wx.showToast({
          title:"没有找到关键字",
          icon:'loading',
          duration: 1500,
        })
        this.setData({
          hasMore:false
        })
      }
    }
    })
  },
  //4.去详情页
  godetails:function(e){
    var pid = e.currentTarget.dataset.pid;
     wx.navigateTo({
      url:"../details/details?pid="+pid
    });
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