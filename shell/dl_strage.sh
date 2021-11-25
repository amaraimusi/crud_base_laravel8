#!/bin/sh
echo 'リソースのダウンロード'

#rsync -auvz amaraimusi@amaraimusi.sakura.ne.jp:www/CrudBase/laravel7/dev/public/storage/neko ../dev/public/storage/
#rsync -auvz amaraimusi@amaraimusi.sakura.ne.jp:www/cake_demo/app/webroot/storage/neko ../dev/public/storage/
rsync -auvz amaraimusi@amaraimusi.sakura.ne.jp:www/CrudBase/laravel7/dev/public/rsc ../dev/public/

echo "------------Success"
cmd /k