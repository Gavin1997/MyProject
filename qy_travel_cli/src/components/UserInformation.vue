<template>
    <div>
        <!-- 头部 -->
        <home-header-top></home-header-top>
        <!-- 主体 -->
        <user-information></user-information>
        <!-- 尾部 -->
        <user-footer></user-footer>
    </div>
</template>
<script>
// 引入子组件
import HomeHeaderTop from "../components/subcompoents/HomeHeader/HomeHeaderTop"
import UserInformation from '../components/subcompoents/user/information';
import UserFooter from "../components/subcompoents/user/UserFooter"
export default {
    data(){
        return{}
    },
    methods:{},
    components:{
        HomeHeaderTop,
        UserInformation,
        UserFooter
    }
}
</script>
<style lang="scss" scoped>

</style>

