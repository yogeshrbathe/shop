## 'Shop' project installation
1. composer create-project --prefer-dist laravel/laravel:^7.0 shop
2. make changes in .env file
3. php artisan serve
4. crete db name 'shop'
5. php artisan make:migration create_products_table
6. php artisan migrate

routes<br>
GET http://127.0.0.1:8000/api/products<br>
DELETE http://127.0.0.1:8000/api/product/4<br>
POST http://127.0.0.1:8000/api/product<br>
PUT http://127.0.0.1:8000/api/product<br>
