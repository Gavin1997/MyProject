new Vue({
    el:"#app",
    data(){
        return{
            res: {
                products: [{
                    category: "",
                    departure: "",
                    price: "",
                    promise: "",
                    prompt: "",
                    sold_count: "",
                    subtitle: "",
                    title: "",
                    tid: "",
                    product_number: ""
                }, ]
            },
            pno:0,
            pageCount:[],
            kw:decodeURI(location.search.split("=")[1]),
            n:0,
            disabled_info:"disabled"
        }
    },
    methods:{
        getdetails(tid){
            window.location.href=`http://127.0.0.1:3000/product_details.html?tid=${tid}`;
        },
        getMsg(){
            axios.get("http://127.0.0.1:3000/products?kw="+this.kw+"&pno="+this.pno).then(res=>{
                console.log(this.kw)
                this.res=res.data.data.products;
                this.pageCount=res.data.data.pageCount;
            })
        }
    },
    watch:{},
    created() {
       this.getMsg();
    },
})