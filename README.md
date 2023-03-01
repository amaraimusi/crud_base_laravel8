# crud_base_laravel8
CrudBase Laravel8版

@since 2021-11-21

@auther amaraimusi

@license MIT


[開発環境構築手順](README_Environment2.md "開発環境構築手順")


## 本番環境構築

SSHでログイン 例↓

```
ssh -l hogehoge hogehoge.sakura.ne.jp
```

本番環境にLaravel8をインストール

```
cd www/
mkdir crud_base_laravel8
cd crud_base_laravel8
php -r "readfile('https://getcomposer.org/installer');" | php
php composer.phar create-project "laravel/laravel=8.*" dev
cd dev
php -r "readfile('https://getcomposer.org/installer');" | php
php composer.phar require laravel/ui


```


01_upload.shを実行してソースコードをアップロードする



本番環境用の設定ファイル、crud_base_config_p.phpと.env_p.phpを作成し、以下のshellを実行します。

```
02_u_cb_config.sh
04_upload_env.sh
```





## ER図

とりあえずメッセージボードまわりのみ。 draw.ioにて記述しています。


![ER図](doc/crud_base_laravel8.drawio.svg "ER図")

 [ER図:draw.io用xml](doc/crud_base_laravel8.drawio.xml)


## 設計

[システム改修案件を設計 | 既存のメッセージボードにGoodボタン（評価機能）を組み込む](https://amaraimusi.sakura.ne.jp/note_prg/mgt/sys_design_note2.html "システム改修案件を設計 | 既存のメッセージボードにGoodボタン（評価機能）を組み込む")

