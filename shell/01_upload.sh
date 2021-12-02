#!/bin/sh
echo 'ソースコードを差分アップロードします。'

rsync -auvz --exclude='.env' ../dev amaraimusi@amaraimusi.sakura.ne.jp:www/crud_base_laravel8/

echo "------------ Success"
#cmd /k