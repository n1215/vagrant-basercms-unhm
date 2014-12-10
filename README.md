Vagrant template for baserCMS on Ubuntu , Nginx, HHVM and MariaDB
=================================================================

baserCMSのHHVMによる動作確認のために作ったVagrantのテンプレートとAnsibleのPlaybookです。
冪等性やセキュリティはあまり考慮していません。

構成
----
* Ubuntu (trusty 64bit)
* Nginx
* HHVM (fast-cgi) 
* MariaDB

要件
----
* VirtualBox
* Vagrant
※ Ansibleはゲストマシンに押し込んであるので多分Windowsでも動くはず

インストール
------------

    $ git clone https://github.com/n1215/vagrant-basercms-unhm
    $ cd vagrant-basercms-unhm
    $ vagrant up

http://192.168.33.10 にアクセス
※ スマートURLオン

管理画面
--------
* URL: http://192.168.33.10/admin/users/login
* 管理者ユーザー名 admin
* 管理者パスワード basercms

※ 各設定は ansible/group-vars/allから変更可能

注意事項
--------
unserialize()関数が上手く動かなかったため、
/var/www/basercms/app/webroot/theme/nada-icons/Elements/search.phpの一部を削除しています。
