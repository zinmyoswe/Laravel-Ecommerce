<p align="center"><img src="https://res.cloudinary.com/dtfbvvkyp/image/upload/v1566331377/laravel-logolockup-cmyk-red.svg" width="400"></p>

<p align="center">
<a href="https://travis-ci.org/laravel/framework"><img src="https://travis-ci.org/laravel/framework.svg" alt="Build Status"></a>
<a href="https://packagist.org/packages/laravel/framework"><img src="https://poser.pugx.org/laravel/framework/d/total.svg" alt="Total Downloads"></a>
<a href="https://packagist.org/packages/laravel/framework"><img src="https://poser.pugx.org/laravel/framework/v/stable.svg" alt="Latest Stable Version"></a>
<a href="https://packagist.org/packages/laravel/framework"><img src="https://poser.pugx.org/laravel/framework/license.svg" alt="License"></a>
</p>

## Installation

 Clone the repo and `cd` into it

 `composer install`

 Rename or copy `.env.example` file to `.env`

 `php artisan key:generate`

 Set your database credentials in your `.env` file

 Set your Stripe credentials in your `.env` file. Specifically `STRIPE_KEY` and `STRIPE_SECRET`

 Set your Algolia credentials in your `.env` file. Specifically `ALGOLIA_APP_ID` and `ALGOLIA_SECRET`. 

 Set your Braintree credentials in your `.env` file if you want to use PayPal. Specifically `BT_MERCHANT_ID`, `BT_PUBLIC_KEY`, `BT_PRIVATE_KEY`. If you don't, it should still work but won't show the paypal payment at checkout.

 Set your `APP_URL` in your `.env` file. This is needed for Voyager to correctly resolve asset URLs.

 Set `ADMIN_PASSWORD` in your `.env` file if you want to specify an admin password. If not, the default password is 'password'

 `php artisan ecommerce:install`. This will migrate the database and run any seeders necessary. 

 `npm install`

 `npm run dev`

 `npm run watch`

 `php artisan make:migration`

 `php artisan migrate`

 `php artisan db:seed`

 `php artisan serve`

 Visit `localhost:8000` in your browser

 Visit `/admin/login` if you want to access the Voyager admin backend. Admin User/Password: `admin@admin.com/password`. Admin Web User/Password: `adminweb@adminweb.com/password`

## Package used

 Stripe payment : https://github.com/cartalyst/stripe-laravel

 Shopping cart  : https://github.com/hardevine/LaravelShoppingcart


