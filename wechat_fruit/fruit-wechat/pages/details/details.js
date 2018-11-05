// pages/details/details.js
Page({

  /**
   * 页面的初始数据
   */
  data: {
    detailsList:[],
    ismiaosha:false,//是否为促销秒杀产品
  },

  /**
   * 生命周期函数--监听页面加载
   */
  onLoad: function (options) {
    var pid = options.pid;
    wx.request({
      url: 'http://127.0.0.1:3333/products/details',
      data:{pid},
      method: 'GET',
      dataType: 'json',
      success: (result)=>{
        console.log(result.data.data[0].isdiscount);
        if(result.data.data[0].isdiscount==1){
          this.setData({
            ismiaosha:true
          })
        }
        this.setData({
          detailsList:result.data.data[0],
          isdiscount:result.data.data[0].isdiscount
        })
      },
    });
    // 调用倒计时函数

    var date_interval = setInterval(this.countDwon, 1000);
  },
  // 倒计时函数
  countDwon: function (end) {
    var now = new Date();
    var end = new Date("2018/11/11 18:00:00");
    var s = parseInt((end - now) / 1000);//时间差的秒数
    if (s > 0) {
      var day = parseInt(s / 3600 / 24);//剩余天数
      if (day < 10) day = "0" + day;
      var hours = parseInt(s % (3600 * 24) / 3600);
      if (hours < 10) hours = "0" + hours;
      var mintues = parseInt(s%3600/60);
      if (mintues < 10) mintues = "0" + mintues;
      s = s % 60;
      if (s < 10) s = "0" + s;
      this.setData({
        day,
        hours,
        mintues,
        s
      })
    } else {
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