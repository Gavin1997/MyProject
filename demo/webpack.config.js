const path = require("path");
module.exports={
    //指定导出文件的运行模式
    //开发模式:导出文件钟包含注释和说明
    //产品模式:导出文件会压缩,删除注释/空白
    mode:"development",//production  
    //webpack打包的入口文件
    entry: './src/js/index.js',
    //webpack打包结果的输出文件
    output: {
        path: path.resolve(__dirname, 'dist'),
        filename: 'js/[name].[hash:8].js'
    },
   
    //声明要使用的各种加载器(loader),用于打包非JS文件
    module:{
        rules:[
            {test:/\.css$/,
             use:['style-loader','css-loader']
            },
            {
                test:/\.(jpg|png|gif|ico|svg|ttf|eot|woff|)$/,
                use:['url-loader']
            }

        ]
    },
    plugins:[
          
    ],
    externals:{
        'jquery':'window.jQuery'
    }
}