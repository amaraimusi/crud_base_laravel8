#!/bin/sh
echo 'ソースコードを差分アップロードします。'

rsync -auvz ../dev/app amaraimusi@amaraimusi.sakura.ne.jp:www/crud_base_laravel8/dev/
rsync -auvz ../dev/bootstrap amaraimusi@amaraimusi.sakura.ne.jp:www/crud_base_laravel8/dev/
rsync -auvz ../dev/config amaraimusi@amaraimusi.sakura.ne.jp:www/crud_base_laravel8/dev/
rsync -auvz ../dev/public amaraimusi@amaraimusi.sakura.ne.jp:www/crud_base_laravel8/dev/
rsync -auvz ../dev/resources amaraimusi@amaraimusi.sakura.ne.jp:www/crud_base_laravel8/dev/
rsync -auvz ../dev/routes amaraimusi@amaraimusi.sakura.ne.jp:www/crud_base_laravel8/dev/
rsync -auvz ../dev/vendor/CrudBase amaraimusi@amaraimusi.sakura.ne.jp:www/crud_base_laravel8/dev/vendor
rsync -auvz ../dev/crud_base_config_p.php amaraimusi@amaraimusi.sakura.ne.jp:www/crud_base_laravel8/dev/crud_base_config.php
rsync -auvz ../dev/.env_p amaraimusi@amaraimusi.sakura.ne.jp:www/crud_base_laravel8/dev/.env

echo "------------ Success"
#cmd /k