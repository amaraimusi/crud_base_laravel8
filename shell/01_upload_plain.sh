#!/bin/sh
echo 'ソースコードを差分アップロードします。'

rsync -auvz ../plain amaraimusi@amaraimusi.sakura.ne.jp:www/crud_base_laravel8/

echo "------------ Success"
#cmd /k