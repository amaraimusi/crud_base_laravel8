#!/bin/sh
echo 'ダウンロード'

rsync -auvz amaraimusi@amaraimusi.sakura.ne.jp:www/crud_base_laravel8/dev/crud_base_config.php ../dev/crud_base_config_p.php

echo "------------Success"
cmd /k