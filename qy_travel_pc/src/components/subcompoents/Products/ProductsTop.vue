<template>
  <div>
    <!-- 头部导航 -->
    <div>
      <div class="nav_products">
        <ul>
          <li class="ml-3">
            <a href="#">自由行</a>
          </li>
          <li>
            <a href="#">机票</a>
          </li>
          <li>
            <a href="#">跟团游</a>
          </li>
          <li>
            <a href="#">半自助游</a>
          </li>
          <li>
            <a href="#">日游小团</a>
          </li>
          <li>
            <a href="#">最世界独家</a>
          </li>
          <li>
            <a href="#">邮轮</a>
          </li>
          <li>
            <a href="#">酒店</a>
          </li>
          <li>
            <a href="#">签证</a>
          </li>
          <li>
            <a href="#">保险</a>
          </li>
          <li>
            <a href="#">城市交通</a>
          </li>
          <li>
            <a href="#">门票/票卷</a>
          </li>
          <li>
            <a href="#">WiFi电话卡</a>
          </li>
        </ul>
      </div>
      <div class="crumb_seachr">
        <ul class="clearfix list-unstyle">
          <li class="float-left ml-4">您已选择&gt;</li>
          <!-- <li class="float-left "> &nbsp; "{{decodeURI(this.kw)}}"</li> -->
          <li class="float-left "> &nbsp; 先说这个</li>
        </ul>
      </div>
      <div class="stwrap mt-4">
        <ul class="list-unstyle d-flex">
          <li class="sort_default">
            <a href="#">综合排序</a>
          </li>
          <li>
            <a href="#">销量↓</a>
          </li>
        </ul>
      </div>
    </div>
  </div>
</template>
<script>
  export default {
    data() {
      return {}
    },
    props:["kw"],
    methods: {},
    created() {

    },
  }

</script>
<style lang="scss" scoped>
  // 产品页面导航栏
  .nav_products,
    {
    height: 51px;
    border-left: 1px solid #E3E3E3;
    border-top: 0;
    border-bottom: 2px solid #13AF7E;

    ul {
      display: flex;
      background-color: #FAFAFA;
      width: 1100px;
      list-style: none;
      position: relative;
      border-top: 1px solid #E3E3E3;
      border-right: 1px solid #E3E3E3;

      li {
        width: auto;
        text-align: center;
        cursor: pointer;
        position: relative;
        height: 50px;
        white-space: nowrap;

        &:not(:last-child):after {
          content: "|";
          color: #ddd;
          margin: 3px;
        }

        a {
          padding: 0 8px;
          text-align: center;
          text-decoration: none;
          color: #323232;
          font-size: 16px;
          display: inline-block;
          font-weight: 500;
          height: 100%;
          line-height: 50px;

          &:hover {
            background-color: #666;
          }
        }
      }
    }
  }

  .crumb_seachr {
    height: 70px;
    background-color: #FAFAFA;

    li {
      font-size: 14px;
      line-height: 70px;
    }
  }

  .stwrap {
    ul {
      width: 138px;
      justify-content: space-between;

      li {
        a {
          text-decoration: none;
          color: #323232;

          &:hover {
            color: #12af7e;
          }
        }
      }

      .sort_default {
        font-size: 15px;

        a {
          color: #12af7e;
        }
      }
    }
  }

</style>
