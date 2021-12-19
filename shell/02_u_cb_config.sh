#!/bin/sh
echo 'ソースコードを差分アップロードします。'

rsync -auvz ../dev/crud_base_config_p.php amaraimusi@amaraimusi.sakura.ne.jp:www/crud_base_laravel8/dev/crud_base_config.php
rsync -auvz ../dev/public/index.php amaraimusi@amaraimusi.sakura.ne.jp:www/crud_base_laravel8/dev/public/index.php


echo "------------ Success"
cmd /k