// pages/group/gruop.js
Page({

  /**
   * 页面的初始数据
   */
  data: {
     pageList:[]
  },

  /**
   * 生命周期函数--监听页面加载
   */
  onLoad: function (options) {
    this.getMsg();
  },
  //1.获取拼团页详情
  
   getMsg(){
     wx.request({
       url: 'http://127.0.0.1:3333/tabbar/pingtuan',
       method: 'GET',
       dataType: 'json',
       success: (result)=>{
         console.log(result.data)
         this.setData({
           pageList:result.data
         })
       },
     });
   },
   //2.跳转到详情
   showDetails:function(id){
    wx.navigateTo({
      url:"../details/details?pid="+id
    })
  },
  showpingtuanDetails:function(e){
    var pid = e.currentTarget.dataset.pid;
    this.showDetails(pid)
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