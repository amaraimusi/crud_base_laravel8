#!/bin/sh
echo 'ソースコードを差分アップロードします。'

rsync -auvz ../dev/crud_base_config_p.php amaraimusi@amaraimusi.sakura.ne.jp:www/coralpaint_mng/dev/crud_base_config.php
rsync -auvz ../dev/public/index.php amaraimusi@amaraimusi.sakura.ne.jp:www/coralpaint_mng/dev/public/index.php

echo "------------ Success"
cmd /k