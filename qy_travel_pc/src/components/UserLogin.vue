<template>
    <div>
        <!-- 用户登录 -->
        <user-login></user-login>
        <user-footer></user-footer>
    </div>
</template>
<script>
import UserFooter from "./subcompoents/user/UserFooter"
import UserLogin from "./subcompoents/user/login"
export default {
    data(){
        return{}
    },
    methods:{},
    components:{
        UserFooter,
        UserLogin
    }
}
</script>
<style lang="scss" scoped>

</style>

