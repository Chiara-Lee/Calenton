// webpack.config.js
const path = require('path');

module.exports = {
  entry: './assets/search.js', // 入口文件路径，根据您的文件结构调整
  output: {
    filename: 'bundle.js', // 输出的文件名
    path: path.resolve(__dirname, 'static/js'), // 输出文件夹，Hugo 会从 static 中获取静态资源
  },
  module: {
    rules: [
      {
        test: /\.js$/, // 对所有 .js 文件应用
        exclude: /node_modules/, // 排除 node_modules 文件夹
        use: {
          loader: 'babel-loader', // 使用 Babel 转译 ES6+
        },
      },
    ],
  },
  resolve: {
    alias: {
      'fuse.js': path.resolve(__dirname, 'node_modules/fuse.js/dist/fuse.esm.js'), // 设置 fuse.js 的别名
    },
  },
  mode: 'production', // 可设置为 'development' 方便调试
};
