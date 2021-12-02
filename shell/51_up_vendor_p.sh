#!/bin/sh
echo '本番環境へvendor_pをアップロードします。'

rsync -auvz  ../dev/vendor_p/vendor amaraimusi@amaraimusi.sakura.ne.jp:www/crud_base_laravel8/dev/

echo "------------ Success"
cmd /k