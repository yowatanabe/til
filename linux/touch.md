# touchコマンド

## タイムスタンプを変更する

有効期限の過ぎたファイルを処理するプログラムをテストする時に使用

```bash
 touch -t YYYYMMDDHHmm.ss 変更したいファイル
```

※実行例

```bash
[cloudshell-user@ip-10-2-89-143 ~]$ TZ=JST-9 ls -l
total 0
-rw-rw-r-- 1 cloudshell-user cloudshell-user 0 Aug  4 07:34 log_file.txt
[cloudshell-user@ip-10-2-89-143 ~]$
[cloudshell-user@ip-10-2-89-143 ~]$ touch -t 202208040900.00 log_file.txt
[cloudshell-user@ip-10-2-89-143 ~]$
[cloudshell-user@ip-10-2-89-143 ~]$ TZ=JST-9 ls -l
total 0
-rw-rw-r-- 1 cloudshell-user cloudshell-user 0 Aug  4  2022 log_file.txt
[cloudshell-user@ip-10-2-89-143 ~]$
```
