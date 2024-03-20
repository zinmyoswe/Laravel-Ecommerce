<p align="center"><img src="https://res.cloudinary.com/dtfbvvkyp/image/upload/v1566331377/laravel-logolockup-cmyk-red.svg" width="400"></p>

<p align="center">
<a href="https://travis-ci.org/laravel/framework"><img src="https://travis-ci.org/laravel/framework.svg" alt="Build Status"></a>
<a href="https://packagist.org/packages/laravel/framework"><img src="https://poser.pugx.org/laravel/framework/d/total.svg" alt="Total Downloads"></a>
<a href="https://packagist.org/packages/laravel/framework"><img src="https://poser.pugx.org/laravel/framework/v/stable.svg" alt="Latest Stable Version"></a>
<a href="https://packagist.org/packages/laravel/framework"><img src="https://poser.pugx.org/laravel/framework/license.svg" alt="License"></a>
</p>

## Demo

`INDEX Page`

![image](https://user-images.githubusercontent.com/29988949/80226543-58bb9880-8601-11ea-88b9-b0c870c95f7c.png)

`Product Slide`
![image](https://user-images.githubusercontent.com/29988949/80224163-2f4d3d80-85fe-11ea-9cdb-bf67bd3dceb6.png)

`PRODUCTS Page`

![image](https://user-images.githubusercontent.com/29988949/80225185-93bccc80-85ff-11ea-80e4-dc129aecc335.png)


`Algolia Search`

![image](https://user-images.githubusercontent.com/29988949/80266763-8250e000-8652-11ea-9cac-688462fb6c0d.png)

`PRODUCT DETAIL Page`

![image](https://user-images.githubusercontent.com/29988949/80225662-34ab8780-8600-11ea-9dce-11e7ecf75ffd.png)

`CART PAGE`

![image](https://user-images.githubusercontent.com/29988949/80226203-e8ad1280-8600-11ea-81be-24419271e6ee.png)

`Shipping Page`

![image](https://user-images.githubusercontent.com/29988949/80250312-6df7ed80-8628-11ea-8faf-9ec7541c51c6.png)

`Stripe Payment success`

![image](https://user-images.githubusercontent.com/29988949/80250520-e3fc5480-8628-11ea-88af-d3b228c9a37f.png)

`LOGIN Page`

![image](https://user-images.githubusercontent.com/29988949/80223792-9c140800-85fd-11ea-995d-a39a86f7e662.png)

`ADMIN PAGE`

![image](https://user-images.githubusercontent.com/29988949/80226592-6bce6880-8601-11ea-9db3-5755162c92f5.png)







## Installation

 Clone the repo and `cd` into it

 `composer install`

 Rename or copy `.env.example` file to `.env`

 `php artisan key:generate`

 Set your database credentials in your `.env` file

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

 `php artisan storage:link`

 `php artisan serve`

 `localhost:8000`

 `localhost:8000/admin/login`

  Admin User/Password: `admin@admin.com/password`.
  
  Admin Web User/Password: `adminweb@adminweb.com/password`

## Stripe

 Enter your `stripe key` and Enter your `stripe secret` in `.env` file.
 
 these keys can be get from https://dashboard.stripe.com/test/dashboard by creating stripe account

```php
STRIPE_KEY   = Enter your stripe key

STRIPE_SECRET= Enter your stripe secret
```

## Algolia

 Enter your `algolia app_id` and Enter your `algolia secret` in `.env` file.

 these keys can be get from https://www.algolia.com/apps/ by creating algolia account

```php
ALGOLIA_APP_ID = Enter your algolia app_id

ALGOLIA_SECRET = Enter your algolia secret
```

## Package used

 Stripe payment : https://github.com/cartalyst/stripe-laravel

 Shopping cart  : https://github.com/hardevine/LaravelShoppingcart


