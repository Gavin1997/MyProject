//请求后台数据填充页面
 new Vue({
     el:"#main",
     data(){
         return{
             res:[
              {title:"",details:"",price:0,pic:"",href:""},
              {title:"",details:"",price:0,pic:"",href:""},
              {title:"",details:"",price:0,pic:"",href:""}
             ]
            
         }
         
     },
     created() {
         //this--->指向当前这个Vue对象
         
        //  (async function(self){
        //      var res=await axios.get(
        //          "http://localhost:3000/index/"
        //      );
        //      self.res=res.data
        //      console.log(res.data)
        //  })(this)

        // var self=this;
        //   axios.get(
        //    "http://localhost:3000/index/")
        //     .then(function(res){
        //     self.res=res.data;
        //  })
       
         axios.get(
            "http://127.0.0.1:3000/index/")
             .then(res=>{
                 //箭头函数的this会指向继承自外部的this
               this.res=res.data;
               console.log(this.res)
              
          })
        
     },
 })

//选项条
jQuery.fn.tab=function(){
    this//侵入
       .children("div.zw-home-titlerow")
       .children("ul:first")
       .addClass("tabs")//ul
       .children("li:first")//第一个li
       .addClass("active")
       .parent().children()//所有的li下的a元素
       .children("a")//a
       .attr("data-toggle","tab")
       .parent().parent()
       .next().addClass("container") //div
       .children("div:first").addClass("active")//第一个div
        //触发事件的元素
        $(".tabs:has([data-toggle=tab])")
        .on("mouseover","[data-toggle]",e=>{
        var $tar=$(e.target);
        if(!$tar.parent().is(".active")){
          $tar.parent().addClass("active")
            .siblings().removeClass("active");
          var id=$tar.attr("data-target");
          $(id).addClass("show")
            .siblings().removeClass("show");
        }
      })
}
$(function(){////DOM操作加载完就提前执行,不等css和图片
   //选项卡
   $(".zw-home-wanle .zw-home-ziyouxing-warp").tab();
   $(".zw-home-ziyouxing .zw-home-ziyouxing-warp").tab();
   $(".zw-home-zhuanti .zw-home-ziyouxing-warp").tab();
   $("#zw-home-group .zw-home-ziyouxing-warp").tab();
})