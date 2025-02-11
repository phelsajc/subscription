# CoDev Assessment
Package | Version
--- | ---
[Node](https://nodejs.org/en/) | 16.20.0
[Npm](https://nodejs.org/en/)  | 8.19.4
[Composer](https://getcomposer.org/)  | V2.7.7
[Php](https://www.php.net/)  | 7.2.5 - 8.0.28
[Mysql](https://www.mysql.com/)  |10.4.28

# Config Environment
1. composer install
2. copy .env.example .env
3. Set up database credentials in  ```.env``` file
4. Set up Stripe keys
5. php artisan key:generate
6. php artisan jwt:secret
# Database
1. Migrate database ```php artisan migrate```
2. ```php artisan db:seed --class=PlansSeeder```, this will create sample plans
# Installation
1. ```npm install``` to install dependencies
2. ```npm run dev``` for development or ```npm run build``` for production
# Run Server
1. ```php artisan serve```
2. Open browser and go to localhost:8000.
