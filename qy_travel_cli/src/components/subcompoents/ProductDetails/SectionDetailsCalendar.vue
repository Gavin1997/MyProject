<template>
  <div>
    <div class="calendar mt-3 ">
      <div class="tabs mt-3">
        <div class="d-flex">
          <p>
            <img src="../../../assets/img/product_detalis/hover-prev.png" alt="">
          </p>
          <ul class="zw-home-tags  d-flex list-unstyle ">
            <li class=" ml-5 active"><a href="" data-target="#09">2018年09月</a></li>
            <li class="  ml-4"><a href="" data-target="#010">2018年10月</a></li>
            <li class="  ml-4"><a href="" data-target="#011">2018年11月</a></li>
            <li class="ml-4"><a href="" data-target="#012">2018年12月</a></li>
          </ul>
          <p>
            <img src="../../../assets/img/product_detalis/hover-next.png" alt="" class="">
          </p>
        </div>
        <!-- 头部部分 星期 -->
        <div class="week-header">
          <span></span>
          <span></span>
          <span></span>
          <span></span>
          <span></span>
          <span></span>
          <span></span>
        </div>
        <!-- 日期号 -->
        <div class="date-section">
          <div index="0" class="row_1AIx-">
            <div index="0" class="cell_1gqH2">1</div>
            <div index="1" class="cell_1gqH2">2</div>
            <div index="2" class="cell_1gqH2">3</div>
            <div index="3" class="cell_1gqH2">4</div>
            <div index="4" class="cell_1gqH2">5</div>
            <div index="5" class="cell_1gqH2">6</div>
            <div index="6" class="cell_1gqH2">7</div>
          </div>
          <div index="1" class="row_1AIx-">
            <div index="0" class="cell_1gqH2">8</div>
            <div index="1" class="cell_1gqH2">9</div>
            <div index="2" class="cell_1gqH2">10</div>
            <div index="3" class="cell_1gqH2">11</div>
            <div index="4" class="cell_1gqH2">12</div>
            <div index="5" class="cell_1gqH2">13</div>
            <div index="6" class="cell_1gqH2">14</div>
          </div>
          <div index="2" class="row_1AIx-">
            <div index="0" class="cell_1gqH2">15</div>
            <div index="1" class="cell_1gqH2">16</div>
            <div index="2" class="cell_1gqH2">17</div>
            <div index="3" class="cell_1gqH2">18</div>
            <div index="4" class="cell_1gqH2">19</div>
            <div index="5" class="cell_1gqH2">20</div>
            <div index="6" class="cell_1gqH2 showPrice">21
              <p>￥{{res.product.price}}</p>
            </div>
          </div>
          <div index="3" class="row_1AIx-">
            <div index="0" class="cell_1gqH2">22</div>
            <div index="1" class="cell_1gqH2 showPrice">23
              <p>￥{{res.product.price}}</p>
            </div>
            <div index="2" class="cell_1gqH2">24</div>
            <div index="3" class="cell_1gqH2">25</div>
            <div index="4" class="cell_1gqH2">26</div>
            <div index="5" class="cell_1gqH2">27</div>
            <div index="6" class="cell_1gqH2 showPrice">28
              <p>￥{{res.product.price}}</p>
            </div>
          </div>
          <div index="4" class="row_1AIx-">
            <div index="0" class="cell_1gqH2">29</div>
            <div index="1" class="cell_1gqH2">30</div>
            <div index="2" class="cell_1gqH2">31</div>
            <div index="3" class="cell_1gqH2"></div>
            <div index="4" class="cell_1gqH2"></div>
            <div index="5" class="cell_1gqH2"></div>
            <div index="6" class="cell_1gqH2"></div>
          </div>
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
    props:["res"]
  }

</script>
<style lang="scss" scoped>
  // 日期选择
  .calendar {
    background: #fff;
    width: 510px;

    &:before {
      content: "";
      display: table;
    }

    a {
      text-decoration: none;
      color: #636363;
      font-size: 13px;
    }

    .zw-home-tags {
      position: relative;
      top: -5px;
      li{
        &:hover{
          border-bottom:3px solid $my-hoverUnderline;
        }
      }
    }

    // 清楚上边距带来的影响
    .tabs {
      img {
        width: 8px;
        height: 12px;
        margin: 5px 0 5px 25px;

        &:hover {
         
          cursor: pointer;
        }
      }
    }

    .active {
      border-bottom: 4px solid #ff7467;
    }
  }

  .week-header {
    margin-left: 25px;
    width: 450px;
    background: #f5f5f5;


    span {
      color: #636363;
      position: relative;
      display: inline-block;
      padding: 3px 13px;
    }
  }

  .date-section {
    width: 510px;
    overflow: hidden;
    position: relative;

    .showPrice {
      &:hover {
        border: 1px solid #ff7466;
        cursor: pointer;
      }

      p {
        position: relative;
        top: -50px;

      }
    }
  }

  .row_1AIx- {
    height: 69px;
    border-bottom: 1px solid #f5f5f5;
    position: relative;

    p {
      text-align: center;
      margin-top: 3px;
      margin-right: 2px;
      color: #ff7467;
      font-size: 12px;
      font-weight: 500;
    }
  }

  .cell_1gqH2 {

    text-align: center;
    color: #636363;
    height: 70px;
    width: 70px;
    line-height: 70px;
    float: left;
    cursor: not-allowed;
    text-align: center;
    box-sizing: border-box;
    font-weight: 500;
  }

</style>
