<template>
    <div>
     <!-- 注册 -->
     <user-register></user-register>
     <!-- 用户页面底部 -->
    <user-footer></user-footer>
    </div>
</template>
<script>
import UserRegister from "./subcompoents/user/register"
import UserFooter from "./subcompoents/user/UserFooter"
export default {
    data(){
        return{}
    },
    methods:{},
    components:{
        UserRegister,
        UserFooter
    }
}
</script>
<style lang="scss" scoped>

</style>

