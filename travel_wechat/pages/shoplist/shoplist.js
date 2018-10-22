// pages/shoplist/shoplist.js
Page({

  /**
   * 页面的初始数据
   */
  data: {
     shopList:[],//保存数量
     pageIndex:0,//当前显示页面
     pageSize:8,//每页数量
     rows:[],//拼接的数组商品列表
  },

  /**
   * 生命周期函数--监听页面加载
   */
  loadMore(){
    wx.request({
      url: 'http://127.0.0.1:3101/products/produts',
      data: {
        pno:++this.data.pageIndex,
        pageSize:this.data.pageSize,
      },
      type: 'GET',
      success: (result)=>{
        var rows = this.data.shopList.concat(result.data.data);
        this.setData({
          shopList:rows
        })
      },
    });
  },
  onLoad: function (options) {
      this.loadMore();
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
    //1.显示第一页数据,清空
    this.setData({
      pageIndex:0,
      shopList:[]
    })
    //2.加载加更多
    this.loadMore();
    //3.停止下拉动作多次执行
     wx.stopPullDownRefresh()
  },

  /**
   * 页面上拉触底事件的处理函数
   */
  onReachBottom: function () {
    this.loadMore()
  },

  /**
   * 用户点击右上角分享
   */
  onShareAppMessage: function () {

  }
})