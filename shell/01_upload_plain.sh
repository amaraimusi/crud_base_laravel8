#!/bin/sh
echo 'ソースコードを差分アップロードします。'

rsync -auvz --exclude='crud_base_config.php' ../plain amaraimusi@amaraimusi.sakura.ne.jp:www/crud_base_laravel8/
rsync -auvz ../plain/app/crud_base_config_p.php amaraimusi@amaraimusi.sakura.ne.jp:www/crud_base_laravel8/plain/app/crud_base_config.php

rsync -auvz ../outer amaraimusi@amaraimusi.sakura.ne.jp:www/crud_base_laravel8/

echo "------------ Success"
#cmd /k