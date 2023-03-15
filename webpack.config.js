const path = require('path')

const HtmlWebpackPlugin = require('html-webpack-plugin')

const resolvePath = localPath => path.join(__dirname, localPath)
const paths = {
  output: resolvePath('dist'),
}

module.exports = {
  mode: 'production',
  entry: './index.js',
  output: {
    path: paths.output,
    filename: '[name].[contenthash].js'
  },

  module: {
    rules: [
      {
        test: /\.elm$/,
        exclude: [/elm-stuff/, /node_modules/],
        use: [
          { loader: 'elm-hot-webpack-loader' },
          {
            loader: 'elm-webpack-loader',
        }]
      },
      {
        test: /\.css$/,
        use: ['style-loader', 'css-loader']
      },
    ],
  },

  devServer: {
    static: {
      directory: paths.output,
    },
    historyApiFallback: true,
    compress: true,
    port: 9000,
  },

  plugins: [
    new HtmlWebpackPlugin({
      template: 'index.html'
    })
  ]
}
