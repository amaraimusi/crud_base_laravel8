#!/bin/sh
echo '本番環境のvendorをダウンロードします。'

rsync -auvz  amaraimusi@amaraimusi.sakura.ne.jp:www/laravel8/dev/vendor ../dev/vendor_p

echo "------------ Success"
cmd /k