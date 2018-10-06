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
            disabled_info_prev:"disabled",
            disabled_info_next:"btn_area_active",
            disabled_info_num:""
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
                // console.log(res.data.data);
                // console.log(this.pageCount)
                
                
            })
        },
        next(i){
            if(this.disabled_info_next!="disabled"){
               if(this.pno<this.pageCount-1){
                   this.pno++;
                   this.disabled_info_next="btn_area_active";
                   this.disabled_info_prev="btn_area_active";
                   this.getMsg()
                  
               }else{
                   this.disabled_info_next="disabled"
               }
            }
        },
        prev(){
            if(this.disabled_info_prev!="disabled"){
                if(this.pno<this.pageCount &&this.pno>0){
                    this.pno--;
                    this.getMsg();
                    this.disabled_info_next="btn_area_active";
                    this.disabled_info_prev="btn_area_active";
                }else{
                    this.disabled_info_prev="disabled";
                }


            }
        },
        nowNum(i){
            this.pno=i
            this.getMsg();
            console.log(i)
           
        }
    },
    watch:{},
    created() {
       this.getMsg();
    },
})