( async function(){
    var res=await ajax({
        url:"http://localhost:3000/user/register",
        type:"post",
    });
    console.log(res);
})()