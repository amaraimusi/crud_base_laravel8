#!/bin/sh
echo 'ソースコードを差分アップロードします。'

rsync -avz  ../dev/.env_p amaraimusi@amaraimusi.sakura.ne.jp:www/crud_base_laravel8/dev/.env



echo "------------ Success"
cmd /k