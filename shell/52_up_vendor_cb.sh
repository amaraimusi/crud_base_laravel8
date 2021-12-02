#!/bin/sh
echo '本番環境へvendorのCrudBaseをアップロードします。'

rsync -auvz  ../dev/vendor/CrudBase amaraimusi@amaraimusi.sakura.ne.jp:www/crud_base_laravel8/dev/vendor

echo "------------ Success"
cmd /k