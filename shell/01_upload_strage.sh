#!/bin/sh
echo 'ソースコードを差分アップロードします。'

rsync -auvz ../dev/public/storage amaraimusi@amaraimusi.sakura.ne.jp:www/crud_base_laravel8/dev/public/

echo "------------ Success"
#cmd /k