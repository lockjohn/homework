var path = require('path');

module.exports = {
  context: __dirname,
  entry: "./entry.jsx",
  output: {
      path: path.resolve(__dirname),
      filename: "bundle.js"
  },
  //
  module: {
    rules: [
      {
        test: [/\.jsx?$/],
        exclude: /(node_modules)/,
        use: {
          loader: 'babel-loader',
          query: {
            presets: ['env', 'react']
          }
        },
      }
    ]
  },
  //devtools add source-map functionality
  devtool: 'source-map',
  //can specify file extensions to process w/out explicitly naming them.
  resolve: {
    extensions: ['.js', '.jsx', '*']
  },
};
