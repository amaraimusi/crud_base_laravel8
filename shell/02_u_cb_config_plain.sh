#!/bin/sh
echo 'ソースコードを差分アップロードします。'

rsync -auvz ../plain/crud_base_config_p.php amaraimusi@amaraimusi.sakura.ne.jp:www/crud_base_laravel8/plain/crud_base_config.php

echo "------------ Success"
cmd /k