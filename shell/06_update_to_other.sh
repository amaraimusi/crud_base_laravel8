#!/bin/sh
echo 'CrudBaseをMainプロジェクトへ送る'

rsync -auvz ~/git/crud_base_laravel8/dev/public/css/CrudBase ~/git/cake_demo/app/webroot/css/
rsync -auvz ~/git/crud_base_laravel8/dev/public/js/CrudBase ~/git/cake_demo/app/webroot/js/
rsync -auvz ~/git/crud_base_laravel8/dev/vendor/CrudBase ~/git/cake_demo/app/Vendor/

echo "------------ Success!"
cmd /k