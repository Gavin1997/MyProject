
Page({

  /**
   * 页面的初始数据
   */
  data: {
    banner_img_list:[]
  },

  /**
   * 生命周期函数--监听页面加载
   */
  onLoad: function (options) {
     wx.request({
       url:"http://127.0.0.1:3000/index/list",
       tpye:"GET",
       success:(res=>{
         this.setData({
           banner_img_list:res.data
         })
       })
     })
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
    console.log("5:监听用户下拉动作")
    
  },

  /**
   * 页面上拉触底事件的处理函数
   */
  onReachBottom: function () {
    console.log("6:监听用户上拉动作")
  },

  /**
   * 用户点击右上角分享
   */
  onShareAppMessage: function () {
    
  }
})