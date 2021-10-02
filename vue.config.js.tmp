const path = require("path");
const vueSrc = "./src";

module.exports = {
    publicPath: process.env.NODE_ENV === 'production'
    ? '/learnit/'
    : '/',
    configureWebpack: {
      resolve: {
        alias: {
          "@": path.resolve(__dirname, vueSrc)
        },
        extensions: ['.js', '.vue', '.json']
      }
    }
}