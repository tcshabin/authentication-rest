Step:1 

docker run --rm -u 1093600277:1093600277 -v $(pwd):/app composer create-project --prefer-dist laravel/laravel:^10.0 authentication

Update env and docker yml file and dockerfile

Step:2

docker compose up -d --build

Step:3

docker compose exec app php artisan migrate

Step:4 reff: (https://chatgpt.com/share/1962cbd5-fc20-4937-a8b5-4ec9666452fb)

docker compose exec app composer require laravel/sanctum

Step5:

docker compose exec app php artisan vendor:publish --provider="Laravel\Sanctum\SanctumServiceProvider"


Step6:

docker compose exec app php artisan migrate

docker compose exec app php artisan make:controller AuthController

docker compose exec app php artisan make:controller DashboardController

docker ps
docker exec -it 3778d3557b96 sh
cd ..
ls 
chmod -R 777 html

Step 7:

Edit Handler.php file for show errors in rest api
Update the codes
---------------------------------------------------------------------------------------------------

Multiple Database Connection (reff : https://chatgpt.com/share/65568034-e8a0-43f3-ac94-24096f8b81b1)

Step 1:

Edit in file config/database.php add mysql2
Also edit Env file. If edited env file please do,
docker compose exec app php artisan config:clear

Step 2:

docker compose exec app php artisan make:model Product -m
Then add permission

Step 3:

Then update code in migration file and model file to connect new database migration after that run
docker compose exec app php artisan migrate



