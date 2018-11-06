// pages/cart/cart.js
Page({

  /**
   * 页面的初始数据
   */
  data: {
    isHasProduct: false, //判断购物车是否时有产品
    productList: [],
    isChecked: false,
    isCheckedSelf: false,
    totalMoney: 0,
    
  },

  /**
   * 生命周期函数--监听页面加载
   */
  onLoad: function (options) {
    this.getMsg();
  },
  getMsg() {
    //获取数据
    wx.request({
      url: 'http://127.0.0.1:3333/cart/list',
      method: 'GET',
      dataType: 'json',
      responseType: 'text',
      success: (result) => {
       
        if (result.data.data.length > 0) {
          this.setData({
            isHasProduct: true,
            productList: result.data.data,
          })
         
          for(var i=0;i<this.data.productList.length;i++){
           var isSelect = "productList["+i+"].isSelect"
            this.setData({
                [isSelect]:false
            })
           console.log(this.data.productList[i])
          }
        } else {
          this.setData({
            isHasProduct: false
          })
        }
       
      },
    });
  },
  //   当选中的状态放生变化的时候
  switchSelect:function(e) {
    //设置总价格
    var Allprice = 0;
    //当前触发操作的元素
    var el  = e.currentTarget.dataset;
    //获取id和下标
    var id = el.id;
    var index = parseInt(el.index);
    this.data.productList[index].isSelect = !this.data.productList[index].isSelect;
    //2. 价钱统计
    //价钱统计
    if (this.data.productList[index].isSelect) {
      this.data.totalMoney = this.data.totalMoney + this.data.productList[index].price;
      console.log(this.data.totalMoney)
    }else{
      this.data.totalMoney = this.data.totalMoney - this.data.productList[index].price;
    }
    //3.判断是否全选
    for(var i=0;i<this.data.productList.length;i++){
      Allprice = Allprice+this.data.productList[i].price;
    }
    if(Allprice == this.data.totalMoney){
      this.data.isAllSelect = true;
    }else{
      this.data.isAllSelect = false;
    }
    this.setData({
      productList:this.data.productList,
      totalMoney:this.data.totalMoney,
      isAllSelect:this.data.isAllSelect
    })
  },

  allSelect: function (e) {
    //处理全选逻辑
    let i = 0;
    if (!this.data.isAllSelect)
    {
      for (i = 0; i < this.data.carts.length; i++) {
        this.data.carts[i].isSelect = true;
        this.data.totalMoney = this.data.totalMoney + this.data.carts[i].price;
      }
    }
    else
    {
      for (i = 0; i < this.data.carts.length; i++) {
        this.data.carts[i].isSelect = false;
      }
      this.data.totalMoney=0;
    }
    this.setData({
      carts: this.data.carts,
      isAllSelect: !this.data.isAllSelect,
      totalMoney: this.data.totalMoney,
    })
  },
  // 去结算
  toBuy() {
    wx.showToast({
      title: '去结算',
      icon: 'success',
      duration: 3000
    });
  },
  //改变数量
  modifyCount(e) {
    var el = e.currentTarget.dataset;
    var index = el.index;
    var num = this.data.productList[index].count;
    if (el.isadd === "true") {
      var key = "productList[" + index + "].count";
      num++
      this.setData({
        [key]: num
      })
    } else if (el.isadd === "false") {
      var key = "productList[" + index + "].count";
      num--
      if (num > 0) {
        this.setData({
          [key]: num
        })
      } else {
        this.setData({
          [key]: 1
        })
      }
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