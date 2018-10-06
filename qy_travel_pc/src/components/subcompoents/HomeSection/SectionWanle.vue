<template>
  <div>
    <!-- 楼层 3F -->
    <!-- 当地玩乐 -->
    <div class="zw-home-wanle">
      <div class="zw-home-ziyouxing container mt-5 bgtitle">
        <div class="zw-home-ziyouxing-warp">
          <div class="zw-home-titlerow clearfix">
            <h1 class="'zw-home-bgtitle float-left mt-4">当地玩乐</h1>
            <p class="zw-home-subtitle float-left ml-4 mt-5">像当地人一样，体验最本土的吃喝玩乐
            </p>
            <!-- 导航条 -->
            <ul class="zw-home-tags  d-flex justify-content-end">
              <li class="float-left ml-5 active"><a href="" data-target="#japan">日本</a></li>
              <li class="float-left  ml-4"><a href="" data-target="#Thailand">泰国</a></li>
              <li class="float-left  ml-4"><a href="" data-target="#Spain">西班牙</a></li>
              <li class="float-left ml-4"><a href="" data-target="#Iitaly">意大利</a></li>
              <li class="float-left  ml-4"><a href="" data-target="#Australia">澳大利亚</a></li>
              <li class="float-left ml-4"><a href="" data-target="Mocrocco">摩洛哥</a></li>
            </ul>
          </div>
          <!-- 内容 -->
          <div class="zw-home-wanle-content clearfix show" id="japan">
            <ul class="zw-home-wanle-list">
              <!-- 玩乐左大图图1 -->
              <li class="zw-home-wanle-one float-left clearfix" v-for="(p,i) in res.slice(14,15)">
                <a :href="p.href">
                  <img :src="p.pic" alt="">
                  <div class="mask"></div>
                  <h3 class="title">{{p.details}}</h3>
                  <div class="zw-home-wanle-info d-flex justify-content-between">
                    <p class="type ">城市玩乐</p>
                    <p class="price">{{p.price}} <span>元起</span></p>
                  </div>
                </a>
              </li>
              <!-- 玩乐小图 大图右边1 -->
              <li class="zw-home-wanle-item float-left clearfix" v-for="(p,i) in res.slice(15,17)">
                <a :href="p.href">
                  <p class="pics"><img :src="p.pic" width="120" height="120" style="display: block;">
                    <h3 class="title1">{{p.details}}</h3>
                  </p>
                  <p class="price">{{p.price}}<span>元起</span></p>
                </a>
              </li>
              <!-- 玩乐小大图 右边2 -->
              <!-- <li class="zw-home-wanle-item float-left clearfix">
                        <a href="#">
                        <p class="pics"><img src="img/3F/14422177585931.jpg" width="120" height="120" style="display: block;">
                        <h3 class="title1">【8月30日秒杀】【打卡必玩】日本东京迪斯尼乐园/迪士尼海洋1日实体票/电子票</h3></p>
                        <p class="price">534<span>元起</span></p>
                        </a>
                    </li> -->
              <!-- 查看更多 -->
              <li class="zw-home-channel-more1 float-right mt-2 mr-2">
                <a href="#">
                  <p class="title">
                    查看更多
                    <br>
                    当地玩乐产品
                  </p>
                  <!-- 圆箭头 -->
                  <p class="circle-arrow-icon mt-3 ml-7 ">
                    <span class="arrow-right mt-3 ml-2"></span>
                  </p>
                </a>
                <p class="list">
                  <ul class="zw-home-ziyouxing-lastlist d-flex">
                    <li class="ml-3"><a href="#">WiFi电话卡</a></li>
                    <li><a href="#">交通票卷</a></li>
                    <li><a href="#">景点门票</a></li>
                    <li><a href="#">特色体验</a></li>
                  </ul>
                </p>
              </li>
              <!--玩乐大图 右图3 -->
              <li class="zw-home-wanle-item float-left clearfix mt-2 ml-3 " v-for="(p,i) in res.slice(17,18)" v-cloak>
                <a :href="p.href">
                  <p class="pics"><img :src="p.pic" width:120px height:120px style="display: block;">
                    <h3 class="title1">{{p.details}}</h3>
                  </p>
                  <p class="price">{{p.price}}<span>元起</span></p>
                </a>
              </li>
              <!-- 玩乐 图4 -->
              <li class="zw-home-wanle-item float-left clearfix mt-2 ml-0" v-for="(p,i) in res.slice(18,19)" v-cloak>
                <a :href="p.href">
                  <p class="pics"><img :src="p.pic" width:120px height:120px style="display: block;">
                    <h3 class="title1">{{p.details}}</h3>
                  </p>
                  <p class="price">{{p.price}}<span>元起</span></p>
                </a>
              </li>
              <!-- 玩乐 图5 -->
              <li class="zw-home-wanle-item float-left clearfix mt-2 ml-3 pl-1" v-for="(p,i) in res.slice(19,20)"
                v-cloak>
                <a :href="p.href">
                  <p class="pics"><img :src="p.pic" width:120px height:120px style="display: block;">
                    <h3 class="title1">{{p.details}}</h3>
                  </p>
                  <p class="price">{{p.price}}<span>元起</span></p>
                </a>
              </li>
            </ul>
          </div>
          <div class="zw-home-wanle-content clearfix " id="Thailand">
            <ul class="zw-home-wanle-list">
              <!-- 玩乐左大图图1 -->
              <li class="zw-home-wanle-one float-left clearfix" v-for="(p,i) in res.slice(14,15)">
                <a :href="p.href">
                  <img :src="p.pic" alt="">
                  <div class="mask"></div>
                  <h3 class="title">{{p.details}}</h3>
                  <div class="zw-home-wanle-info d-flex justify-content-between">
                    <p class="type ">城市玩乐</p>
                    <p class="price">{{p.price}} <span>元起</span></p>
                  </div>
                </a>
              </li>
              <!-- 玩乐小图 大图右边1 -->
              <li class="zw-home-wanle-item float-left clearfix" v-for="(p,i) in res.slice(15,17)">
                <a :href="p.href">
                  <p class="pics"><img :src="p.pic" width="120" height="120" style="display: block;">
                    <h3 class="title1">{{p.details}}</h3>
                  </p>
                  <p class="price">{{p.price}}<span>元起</span></p>
                </a>
              </li>
              <!-- 玩乐小大图 右边2 -->
              <!-- <li class="zw-home-wanle-item float-left clearfix">
                        <a href="#">
                        <p class="pics"><img src="img/3F/14422177585931.jpg" width="120" height="120" style="display: block;">
                        <h3 class="title1">【8月30日秒杀】【打卡必玩】日本东京迪斯尼乐园/迪士尼海洋1日实体票/电子票</h3></p>
                        <p class="price">534<span>元起</span></p>
                        </a>
                    </li> -->
              <!-- 查看更多 -->
              <li class="zw-home-channel-more1 float-right mt-2 mr-2">
                <a href="#">
                  <p class="title">
                    查看更多
                    <br>
                    当地玩乐产品
                  </p>
                  <!-- 圆箭头 -->
                  <p class="circle-arrow-icon mt-3 ml-7 ">
                    <span class="arrow-right mt-3 ml-2"></span>
                  </p>
                </a>
                <p class="list">
                  <ul class="zw-home-ziyouxing-lastlist d-flex">
                    <li class="ml-3"><a href="#">WiFi电话卡</a></li>
                    <li><a href="#">交通票卷</a></li>
                    <li><a href="#">景点门票</a></li>
                    <li><a href="#">特色体验</a></li>
                  </ul>
                </p>
              </li>
              <!--玩乐大图 右图3 -->
              <li class="zw-home-wanle-item float-left clearfix mt-2 ml-3 " v-for="(p,i) in res.slice(17,18)" v-cloak>
                <a :href="p.href">
                  <p class="pics"><img :src="p.pic" width:120px height:120px style="display: block;">
                    <h3 class="title1">{{p.details}}</h3>
                  </p>
                  <p class="price">{{p.price}}<span>元起</span></p>
                </a>
              </li>
              <!-- 玩乐 图4 -->
              <li class="zw-home-wanle-item float-left clearfix mt-2 ml-0" v-for="(p,i) in res.slice(18,19)" v-cloak>
                <a :href="p.href">
                  <p class="pics"><img :src="p.pic" width:120px height:120px style="display: block;">
                    <h3 class="title1">{{p.details}}</h3>
                  </p>
                  <p class="price">{{p.price}}<span>元起</span></p>
                </a>
              </li>
              <!-- 玩乐 图5 -->
              <li class="zw-home-wanle-item float-left clearfix mt-2 ml-3 pl-1" v-for="(p,i) in res.slice(19,20)"
                v-cloak>
                <a :href="p.href">
                  <p class="pics"><img :src="p.pic" width:120px height:120px style="display: block;">
                    <h3 class="title1">{{p.details}}</h3>
                  </p>
                  <p class="price">{{p.price}}<span>元起</span></p>
                </a>
              </li>
            </ul>
          </div>
          <div class="zw-home-wanle-content clearfix" id="Spain">
            <ul class="zw-home-wanle-list">
              <!-- 玩乐左大图图1 -->
              <li class="zw-home-wanle-one float-left clearfix">
                <!-- <a href="#">
                            <img src="img/3F/14491343424708.jpg" alt="">
                            <div class="mask"></div>
                            <h3 class="title">【秒杀8.8大促大阪专属福袋】】【打卡必玩】日本大阪环球影城入园电子票</h3>
                            <div class="zw-home-wanle-info d-flex justify-content-between">
                                <p class="type ">城市玩乐</p>
                                <p class="price">480 <span>元起</span></p>
                            </div>
                        </a> -->
              </li>
              <!-- 玩乐小图 大图右边1 -->
              <li class="zw-home-wanle-item float-left clearfix">
                <!-- <a href="https://z.qyer.com/deal/49655/" >
                            <p class="pics"><img src="img/3F/151358585488407518508896561411.jpg" width="120" height="120" style="display: block;">
                            <h3 class="title1">【8月30日秒杀】【打卡必玩】日本东京迪斯尼乐园/迪士尼海洋1日实体票/电子票</h3></p>
                            <p class="price">100<span>元起</span></p>
                        </a> -->
              </li>
              <!-- 玩乐小大图 右边2 -->
              <li class="zw-home-wanle-item float-left clearfix">
                <!-- <a href="#">
                            <p class="pics"><img src="img/3F/14422177585931.jpg" width="120" height="120" style="display: block;">
                            <h3 class="title1">【8月30日秒杀】【打卡必玩】日本东京迪斯尼乐园/迪士尼海洋1日实体票/电子票</h3></p>
                            <p class="price">534<span>元起</span></p>
                            </a> -->
              </li>
              <!-- 查看更多 -->
              <li class="zw-home-channel-more1 float-right mt-2 mr-2">
                <a href="#">
                  <p class="title">
                    查看更多
                    <br>
                    当地玩乐产品
                  </p>
                  <!-- 圆箭头 -->
                  <p class="circle-arrow-icon mt-3 ml-7 ">
                    <span class="arrow-right mt-3 ml-2"></span>
                  </p>
                </a>
                <p class="list">
                  <ul class="zw-home-ziyouxing-lastlist d-flex">
                    <li class="ml-3"><a href="#">WiFi电话卡</a></li>
                    <li><a href="#">交通票卷</a></li>
                    <li><a href="#">景点门票</a></li>
                    <li><a href="#">特色体验</a></li>
                  </ul>
                </p>
              </li>
              <!--玩乐大图 右图3 -->
              <li class="zw-home-wanle-item float-left clearfix mt-2">
                <!-- <a href="#">
                                <p class="pics"><img src="img/3F/14422178162559.jpg" width:120px height:120px style="display: block;">
                                <h3 class="title1">【8月13日秒杀】日本JR北海道hokkaido rail pass周游券(3/4/5/7日可选)</h3></p>
                                <p class="price">1012<span>元起</span></p>
                                </a> -->
              </li>
              <!-- 玩乐 图4 -->
              <li class="zw-home-wanle-item float-left clearfix mt-2 ml-0">
                <!-- <a href="#">
                                <p class="pics"><img src="img/3F/14410968959037.jpg" width:120px height:120px style="display: block;">
                                <h3 class="title1">【省钱神器】日本关西周游卡KANSAI THRU PASS(2日券/3日券)</h3></p>
                                <p class="price">125<span>元起</span></p>
                                </a> -->
              </li>
              <!-- 玩乐 图5 -->
              <li class="zw-home-wanle-item float-left clearfix mt-2 ml-3 pl-1">
                <!-- <a href="#">
                                <p class="pics"><img src="img/3F/15259390915266.jpg" width:120px height:120px style="display: block;">
                                <h3 class="title1">【8月14日秒杀】【省钱神器】全日本JR Pass周游券(7/14/21日可选)</h3></p>
                                <p class="price">1799<span>元起</span></p>
                                </a> -->
              </li>
            </ul>
          </div>
          <div class="zw-home-wanle-content clearfix" id="Iitaly">
            <ul class="zw-home-wanle-list">
              <!-- 玩乐左大图图1 -->
              <li class="zw-home-wanle-one float-left clearfix">
                <!-- <a href="#">
                            <img src="img/3F/14491343424708.jpg" alt="">
                            <div class="mask"></div>
                            <h3 class="title">【秒杀8.8大促大阪专属福袋】】【打卡必玩】日本大阪环球影城入园电子票</h3>
                            <div class="zw-home-wanle-info d-flex justify-content-between">
                                <p class="type ">城市玩乐</p>
                                <p class="price">480 <span>元起</span></p>
                            </div>
                        </a> -->
              </li>
              <!-- 玩乐小图 大图右边1 -->
              <li class="zw-home-wanle-item float-left clearfix">
                <!-- <a href="https://z.qyer.com/deal/49655/" >
                            <p class="pics"><img src="img/3F/151358585488407518508896561411.jpg" width="120" height="120" style="display: block;">
                            <h3 class="title1">【8月30日秒杀】【打卡必玩】日本东京迪斯尼乐园/迪士尼海洋1日实体票/电子票</h3></p>
                            <p class="price">100<span>元起</span></p>
                        </a> -->
              </li>
              <!-- 玩乐小大图 右边2 -->
              <li class="zw-home-wanle-item float-left clearfix">
                <!-- <a href="#">
                            <p class="pics"><img src="img/3F/14422177585931.jpg" width="120" height="120" style="display: block;">
                            <h3 class="title1">【8月30日秒杀】【打卡必玩】日本东京迪斯尼乐园/迪士尼海洋1日实体票/电子票</h3></p>
                            <p class="price">534<span>元起</span></p>
                            </a> -->
              </li>
              <!-- 查看更多 -->
              <li class="zw-home-channel-more1 float-right mt-2 mr-2">
                <a href="#">
                  <p class="title">
                    查看更多
                    <br>
                    当地玩乐产品
                  </p>
                  <!-- 圆箭头 -->
                  <p class="circle-arrow-icon mt-3 ml-7 ">
                    <span class="arrow-right mt-3 ml-2"></span>
                  </p>
                </a>
                <p class="list">
                  <ul class="zw-home-ziyouxing-lastlist d-flex">
                    <li class="ml-3"><a href="#">WiFi电话卡</a></li>
                    <li><a href="#">交通票卷</a></li>
                    <li><a href="#">景点门票</a></li>
                    <li><a href="#">特色体验</a></li>
                  </ul>
                </p>
              </li>
              <!--玩乐大图 右图3 -->
              <li class="zw-home-wanle-item float-left clearfix mt-2">
                <!-- <a href="#">
                                <p class="pics"><img src="img/3F/14422178162559.jpg" width:120px height:120px style="display: block;">
                                <h3 class="title1">【8月13日秒杀】日本JR北海道hokkaido rail pass周游券(3/4/5/7日可选)</h3></p>
                                <p class="price">1012<span>元起</span></p>
                                </a> -->
              </li>
              <!-- 玩乐 图4 -->
              <li class="zw-home-wanle-item float-left clearfix mt-2 ml-0">
                <!-- <a href="#">
                                <p class="pics"><img src="img/3F/14410968959037.jpg" width:120px height:120px style="display: block;">
                                <h3 class="title1">【省钱神器】日本关西周游卡KANSAI THRU PASS(2日券/3日券)</h3></p>
                                <p class="price">125<span>元起</span></p>
                                </a> -->
              </li>
              <!-- 玩乐 图5 -->
              <li class="zw-home-wanle-item float-left clearfix mt-2 ml-3 pl-1">
                <!-- <a href="#">
                                <p class="pics"><img src="img/3F/15259390915266.jpg" width:120px height:120px style="display: block;">
                                <h3 class="title1">【8月14日秒杀】【省钱神器】全日本JR Pass周游券(7/14/21日可选)</h3></p>
                                <p class="price">1799<span>元起</span></p>
                                </a> -->
              </li>
            </ul>
          </div>
          <div class="zw-home-wanle-content clearfix" id="Australia">
            <ul class="zw-home-wanle-list">
              <!-- 玩乐左大图图1 -->
              <li class="zw-home-wanle-one float-left clearfix">
                <!-- <a href="#">
                            <img src="img/3F/14491343424708.jpg" alt="">
                            <div class="mask"></div>
                            <h3 class="title">【秒杀8.8大促大阪专属福袋】】【打卡必玩】日本大阪环球影城入园电子票</h3>
                            <div class="zw-home-wanle-info d-flex justify-content-between">
                                <p class="type ">城市玩乐</p>
                                <p class="price">480 <span>元起</span></p>
                            </div>
                        </a> -->
              </li>
              <!-- 玩乐小图 大图右边1 -->
              <li class="zw-home-wanle-item float-left clearfix">
                <!-- <a href="https://z.qyer.com/deal/49655/" >
                            <p class="pics"><img src="img/3F/151358585488407518508896561411.jpg" width="120" height="120" style="display: block;">
                            <h3 class="title1">【8月30日秒杀】【打卡必玩】日本东京迪斯尼乐园/迪士尼海洋1日实体票/电子票</h3></p>
                            <p class="price">100<span>元起</span></p>
                        </a> -->
              </li>
              <!-- 玩乐小大图 右边2 -->
              <li class="zw-home-wanle-item float-left clearfix">
                <!-- <a href="#">
                            <p class="pics"><img src="img/3F/14422177585931.jpg" width="120" height="120" style="display: block;">
                            <h3 class="title1">【8月30日秒杀】【打卡必玩】日本东京迪斯尼乐园/迪士尼海洋1日实体票/电子票</h3></p>
                            <p class="price">534<span>元起</span></p>
                            </a> -->
              </li>
              <!-- 查看更多 -->
              <li class="zw-home-channel-more1 float-right mt-2 mr-2">
                <a href="#">
                  <p class="title">
                    查看更多
                    <br>
                    当地玩乐产品
                  </p>
                  <!-- 圆箭头 -->
                  <p class="circle-arrow-icon mt-3 ml-7 ">
                    <span class="arrow-right mt-3 ml-2"></span>
                  </p>
                </a>
                <p class="list">
                  <ul class="zw-home-ziyouxing-lastlist d-flex">
                    <li class="ml-3"><a href="#">WiFi电话卡</a></li>
                    <li><a href="#">交通票卷</a></li>
                    <li><a href="#">景点门票</a></li>
                    <li><a href="#">特色体验</a></li>
                  </ul>
                </p>
              </li>
              <!--玩乐大图 右图3 -->
              <li class="zw-home-wanle-item float-left clearfix mt-2">
                <!-- <a href="#">
                                <p class="pics"><img src="img/3F/14422178162559.jpg" width:120px height:120px style="display: block;">
                                <h3 class="title1">【8月13日秒杀】日本JR北海道hokkaido rail pass周游券(3/4/5/7日可选)</h3></p>
                                <p class="price">1012<span>元起</span></p>
                                </a> -->
              </li>
              <!-- 玩乐 图4 -->
              <li class="zw-home-wanle-item float-left clearfix mt-2 ml-0">
                <!-- <a href="#">
                                <p class="pics"><img src="img/3F/14410968959037.jpg" width:120px height:120px style="display: block;">
                                <h3 class="title1">【省钱神器】日本关西周游卡KANSAI THRU PASS(2日券/3日券)</h3></p>
                                <p class="price">125<span>元起</span></p>
                                </a> -->
              </li>
              <!-- 玩乐 图5 -->
              <li class="zw-home-wanle-item float-left clearfix mt-2 ml-3 pl-1">
                <!-- <a href="#">
                                <p class="pics"><img src="img/3F/15259390915266.jpg" width:120px height:120px style="display: block;">
                                <h3 class="title1">【8月14日秒杀】【省钱神器】全日本JR Pass周游券(7/14/21日可选)</h3></p>
                                <p class="price">1799<span>元起</span></p>
                                </a> -->
              </li>
            </ul>
          </div>
          <div class="zw-home-wanle-content clearfix" id="Mocrocco">
            <ul class="zw-home-wanle-list">
              <!-- 玩乐左大图图1 -->
              <li class="zw-home-wanle-one float-left clearfix">
                <!-- <a href="#">
                            <img src="img/3F/14491343424708.jpg" alt="">
                            <div class="mask"></div>
                            <h3 class="title">【秒杀8.8大促大阪专属福袋】】【打卡必玩】日本大阪环球影城入园电子票</h3>
                            <div class="zw-home-wanle-info d-flex justify-content-between">
                                <p class="type ">城市玩乐</p>
                                <p class="price">480 <span>元起</span></p>
                            </div>
                        </a> -->
              </li>
              <!-- 玩乐小图 大图右边1 -->
              <li class="zw-home-wanle-item float-left clearfix">
                <!-- <a href="https://z.qyer.com/deal/49655/" >
                            <p class="pics"><img src="img/3F/151358585488407518508896561411.jpg" width="120" height="120" style="display: block;">
                            <h3 class="title1">【8月30日秒杀】【打卡必玩】日本东京迪斯尼乐园/迪士尼海洋1日实体票/电子票</h3></p>
                            <p class="price">100<span>元起</span></p>
                        </a> -->
              </li>
              <!-- 玩乐小大图 右边2 -->
              <li class="zw-home-wanle-item float-left clearfix">
                <!-- <a href="#">
                            <p class="pics"><img src="img/3F/14422177585931.jpg" width="120" height="120" style="display: block;">
                            <h3 class="title1">【8月30日秒杀】【打卡必玩】日本东京迪斯尼乐园/迪士尼海洋1日实体票/电子票</h3></p>
                            <p class="price">534<span>元起</span></p>
                            </a> -->
              </li>
              <!-- 查看更多 -->
              <li class="zw-home-channel-more1 float-right mt-2 mr-2">
                <a href="#">
                  <p class="title">
                    查看更多
                    <br>
                    当地玩乐产品
                  </p>
                  <!-- 圆箭头 -->
                  <p class="circle-arrow-icon mt-3 ml-7 ">
                    <span class="arrow-right mt-3 ml-2"></span>
                  </p>
                </a>
                <p class="list">
                  <ul class="zw-home-ziyouxing-lastlist d-flex">
                    <li class="ml-3"><a href="#">WiFi电话卡</a></li>
                    <li><a href="#">交通票卷</a></li>
                    <li><a href="#">景点门票</a></li>
                    <li><a href="#">特色体验</a></li>
                  </ul>
                </p>
              </li>
              <!--玩乐大图 右图3 -->
              <li class="zw-home-wanle-item float-left clearfix mt-2">
                <!-- <a href="#">
                                <p class="pics"><img src="img/3F/14422178162559.jpg" width:120px height:120px style="display: block;">
                                <h3 class="title1">【8月13日秒杀】日本JR北海道hokkaido rail pass周游券(3/4/5/7日可选)</h3></p>
                                <p class="price">1012<span>元起</span></p>
                                </a> -->
              </li>
              <!-- 玩乐 图4 -->
              <li class="zw-home-wanle-item float-left clearfix mt-2 ml-0">
                <!-- <a href="#">
                                <p class="pics"><img src="img/3F/14410968959037.jpg" width:120px height:120px style="display: block;">
                                <h3 class="title1">【省钱神器】日本关西周游卡KANSAI THRU PASS(2日券/3日券)</h3></p>
                                <p class="price">125<span>元起</span></p>
                                </a> -->
              </li>
              <!-- 玩乐 图5 -->
              <li class="zw-home-wanle-item float-left clearfix mt-2 ml-3 pl-1">
                <!-- <a href="#">
                                <p class="pics"><img src="img/3F/15259390915266.jpg" width:120px height:120px style="display: block;">
                                <h3 class="title1">【8月14日秒杀】【省钱神器】全日本JR Pass周游券(7/14/21日可选)</h3></p>
                                <p class="price">1799<span>元起</span></p>
                                </a> -->
              </li>
            </ul>
          </div>
        </div>
      </div>
    </div>
  </div>
</template>
<script>
export default {
    data(){
        return{}
    },
    props:["res"],
    methods:{},
    created(){}
}
</script>
<style lang="scss" scoped>
/**********************当地玩乐***************/
.zw-home-wanle{
    background: $my-main-Color;
    height:500px;
}
.zw-home-wanle-content {
   margin-top:30px;
}
#Thailand,#Spain,#Iitaly,#Australia,#Mocrocco{
    display: none;
}
.zw-home-wanle-list{
    list-style: none;
}
.zw-home-wanle-one{
    width:370px;
    position: relative;
    &:hover{
        img{
            opacity:0.7;
        }
    }
    img{
        width:370px;
        overflow: hidden;
    }
    .title{
        color:#fff;
    }
    .mask{
        width:370px;
        height:175px;
        position:absolute;
        left:0;
        right:0;
        bottom:0;
        top:80px;
        background-image:linear-gradient(180deg,transparent,#000)
    }
}
h3.title{
    position: absolute;
    left:20px;
    right:20px;
    bottom:60px;
    font-size:18px;
    line-height:24px;
    overflow: hidden;
    font-weight: 400;
    display:-webkit-box;
    -webkit-line-clamp:2;
    -webkit-box-orient: vertical;
}
.zw-home-wanle-info{
   color:silver;
   position: absolute;
   left:20px;
   right: 20px;
   bottom:15px;
   font-size:14px;
}
// 玩乐图一价格众小字
.zw-home-wanle-info .type{
    height:10px;
    position: relative;
    top:20px;
}
.zw-home-wanle-info .price{
    font-size:30px;
    color:$my_priceColor;
    span{
        font-size:14px;
        color:silver;
    }
}
// 玩乐小图 大图右1
.zw-home-wanle-item {
    position: relative;
    width:370px;
    height:125px;
    background: $my_jijiu_fontcolor;
    margin-left:20px;
    &:hover{
        img{
          opacity:0.7;
        }
    }
    img{
        height:125px;
        
    }
    a{
        width:250px;
        height:102px;
    }
    .title1{
        position: absolute;
        width:250px;
        color:#020101;
        left:130px;
        right:20px;
        bottom:50px;
        font-size:18px;
        line-height:24px;
        overflow: hidden;
        font-weight: 400;
        display:-webkit-box;
        -webkit-line-clamp:2;
        -webkit-box-orient: vertical;
    }
    .price{
       position: absolute;
        top:80px;
        left:270px;
        font-size:30px;
        color:$my_priceColor;
        white-space: nowrap;
        
        span{
            font-size:14px;
            color:silver;
        }
    }
    
}
.zw-home-channel-more1{
    a{
        text-decoration: none;
        color:#fff;
    }
    width:370px !important;
    height:265px;
    margin:20px 0 0 20px; 
    background-color: #ff6a71;
    background-image: linear-gradient(180deg,#ff6476,#ff7467);
    p{
        &:hover{
            opacity: 0.6;
        }
    }
}
</style>

