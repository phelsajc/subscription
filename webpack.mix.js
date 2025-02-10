const mix = require('laravel-mix');
const webpack = require('webpack');
require('dotenv').config(); // Load .env

mix.js('resources/js/app.js', 'public/js')
    .sass('resources/sass/app.scss', 'public/css')
    .setResourceRoot("/public/");

// Inject environment variables into Vue
mix.webpackConfig({
    plugins: [
        new webpack.DefinePlugin({
            'process.env': {
                VUE_APP_STRIPE_PUBLIC: JSON.stringify(process.env.VUE_APP_STRIPE_PUBLIC)
            }
        })
    ]
});
