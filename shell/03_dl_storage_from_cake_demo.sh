#!/bin/sh
echo 'リソースのダウンロード'


rsync -auvz amaraimusi@amaraimusi.sakura.ne.jp:www/cake_demo/app/webroot/rsc ../dev/public/
rsync -auvz amaraimusi@amaraimusi.sakura.ne.jp:www/cake_demo/app/webroot/storage ../dev/public/

echo "------------Success"
cmd /k