<template>
  <div>
    <!-- 楼层  4F -->
    <div class="zw-home-zhuanti mt-4">
      <!-- 列表 -->
      <div class="zw-home-ziyouxing-warp container p-0">
        <div class="zw-home-titlerow clearfix">
          <h1 class="'zw-home-bgtitle float-left mt-4 ml-1">最世界·深度旅行</h1>
          <p class="zw-home-subtitle float-left ml-4 mt-5">摆脱千篇一律的旅行，探索属于自己的世界
          </p>
          <!-- 导航条 -->
          <ul class="zw-home-tags  d-flex justify-content-end">
            <li class="float-left ml-5 active"><a href="#">海外CityWalk</a></li>
            <li class="float-left  ml-4"><a href="#">北上广周边</a></li>
            <li class="float-left  ml-4"><a href="#">特色长线</a></li>
            <li class="float-left ml-4"><a href="#">亲子成长</a></li>
          </ul>
        </div>
        <!-- 主要内容 -->
        <div class="zw-home-zhuanti-content mt-2">
          <ul class="zw-home-zhuanti-list container clearfix p-0">
            <li class="zw-home-zhuanti-one float-left" v-for="(p,i) in res.slice(20,21)" v-cloak>
              <a :href="p.href" class="">
                <p class="zw-home-titlerow-icon">
                  海外<br>
                  City Walk
                </p>
                <img :src="p.pic" alt="">
                <div class="zw-home-zhuanti-title d-flex">
                  <p class="price">{{p.price}}<span>元起</span></p>
                </div>
                <div class="zw-home-ziyouxing-info">
                  <h3 class="text-truncate">{{p.details}}</h3>
                </div>
              </a>
            </li>
            <!-- 第二个列表 图2 小 -->
            <li class="zw-home-ziyouxing-item float-left" v-for="(p,i) in res.slice(21,26)">
              <a :href="p.href">
                <img :src="p.pic" alt="">
                <div class="zw-home-ziyouxing-subtitle d-flex ">
                  <p>{{p.price}}<span>元起</span></p>
                </div>
                <div class="zw-home-ziyouxing-info1">
                  <h3 class="">{{p.details}}</h3>
                </div>
              </a>
            </li>
            <!-- 最后一个列表 查看更多 -->
            <li class="zw-home-channel-more2 float-left">
              <a href="#">
                <p class="title">
                  查看更多
                  <br>
                  深度旅行产品
                </p>
                <!-- 圆箭头 -->
                <p class="circle-arrow-icon mt-3 ml-6">
                  <span class="arrow-right mt-3 ml-2"></span>
                </p>
              </a>
              <p class="list">
                <ul class="zw-home-ziyouxing-lastlist d-flex">
                  <li class="ml-4"><a href="#">机票</a></li>
                  <li><a href="#">酒店</a></li>
                  <li><a href="#">机+酒</a></li>
                  <li><a href="#">邮轮</a></li>
                </ul>
              </p>
            </li>
          </ul>
        </div>
      </div>
    </div>
    <!-- 楼层 5F -->
    <div class="zw-home-zhuanti mt-4 bg-gray" id="zw-home-group">
      <!-- 列表 -->
      <div class="zw-home-ziyouxing-warp container p-0">
        <div class="zw-home-titlerow clearfix">
          <h1 class="'zw-home-bgtitle float-left mt-4 ml-1">跟团/半自助游</h1>
          <p class="zw-home-subtitle float-left ml-4 mt-5">旅游需要好的选择，全网精选强力推荐
          </p>
          <!-- 导航条 -->
          <ul class="zw-home-tags  d-flex justify-content-end">
            <li class="float-left  ml-4 active"><a href="#">半自助游</a></li>
            <li class="float-left ml-4"><a href="#">跟团游</a></li>
          </ul>
        </div>
        <!-- 主要内容 -->
        <div class="zw-home-zhuanti-content mt-2">
          <ul class="zw-home-zhuanti-list container clearfix p-0">
            <li class="zw-home-zhuanti-one float-left" v-for="(p,i) in res.slice(26,27)" v-cloak>
              <a :href="p.href" class="">
                <p class="zw-home-titlerow-icon">
                  半自<br>
                  助游
                </p>
                <img :src="p.pic" alt="">
                <div class="zw-home-zhuanti-title d-flex">
                  <p class="price">{{p.price}}<span>元起</span></p>
                </div>
                <div class="zw-home-ziyouxing-info">
                  <h3 class="text-truncate">{{p.details}}</h3>
                </div>
              </a>
            </li>
            <!-- 第二个列表 图2 小 -->
            <li class="zw-home-ziyouxing-item float-left" v-for="(p,i) in res.slice(27,33)">
              <a :href="p.href">
                <img :src="p.pic" alt="">
                <div class="zw-home-ziyouxing-subtitle d-flex ">
                  <p>{{p.price}}<span>元起</span></p>
                </div>
                <div class="zw-home-ziyouxing-info1">
                  <h3 class="">{{p.details}}</h3>
                </div>
              </a>
            </li>
            <!-- 最后一个列表 查看更多 -->
            <li class="zw-home-channel-more3 float-left">
              <a href="#">
                <p class="title">
                  查看更多
                  <br>
                  深度旅行产品
                </p>
                <!-- 圆箭头 -->
                <p class="circle-arrow-icon mt-3 ml-6">
                  <span class="arrow-right mt-3 ml-2"></span>
                </p>
              </a>
              <p class="list">
                <ul class="zw-home-ziyouxing-lastlist d-flex">
                  <li class="ml-4"><a href="#">机票</a></li>
                  <li><a href="#">酒店</a></li>
                  <li><a href="#">机+酒</a></li>
                  <li><a href="#">邮轮</a></li>
                </ul>
              </p>
            </li>
          </ul>
        </div>
      </div>
    </div>
  </div>
</template>
<script>
  export default {
    data() {
      return {}
    },
    props: ["res"]
  }
</script>
<style lang="scss" scoped>
  /*******************************专题推荐*-4F 深度旅行*********************/
  @mixin more {
    width: 265px;
    height: 263px;
    margin: 20px 0 0 20px;
    background-color: $my_ziyouxing_bgColor;
    background-image: linear-gradient(180deg, #b274c7, #4d8ddb);

    a {
      text-decoration: none;
      color: #fff;
    }

    p {
      &:hover {
        opacity: 0.6;
      }
    }
  }

  .zw-home-zhuanti-warp {
    .zw-home-titlerow {
      h1 {
        font-size: 36px;
      }
    }
  }

  .zw-home-zhuanti-list {
    list-style: none;
    position: relative;

    .zw-home-ziyouxing-info {
      width: 400px;
      position: absolute;
      top: 315px;
    }
  }

  .zw-home-zhuanti-one {
    width: 550px;
    height: 265px;
    margin-left: 20px;
    position: relative;

    &:hover {
      img {
        opacity: 0.8;
      }
    }

    img {
      margin-top: 20px;
      width: 550px;
      height: 265px;

    }
  }

  // 专题推荐中第一个图片中的字
  .zw-home-titlerow-icon {
    width: 128px;
    height: 128px;
    border: 3px solid #fff;
    border-radius: 50%;
    position: absolute;
    z-index: 20;
    left: 200px;
    bottom: 50px;
    color: #fff;
    text-align: center;
    line-height: 50px;
    font-size: 20px;
    font-weight: 400;
    background: rgba(0, 0, 0, 0.2);
  }

  .zw-home-zhuanti-title {
    background: rgba(0, 0, 0, 0.7);
    width: 140px;
    height: 50px;
    position: absolute;
    left: 410px;
    top: 235px;

    .price {
      color: #ff7467;
      white-space: nowrap;
      font-size: 24px;
      line-height: 50px;
      margin-left: 30px;

      span {
        font-size: 14px;
        color: silver;
      }
    }
  }

  // 查看更多  专题推荐
  .zw-home-channel-more2 {
    @include more;
  }
  // 5F 半自助游
.zw-home-channel-more3{
   @include more;
    background-color: #3fb4e5;
    background-image: linear-gradient(180deg,#40dbe5,#3e87e6);
}
</style>