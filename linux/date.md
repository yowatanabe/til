# dateコマンド

## タイムゾーンを指定する

AWS CloudShell を使って何かしらのテストを行う時の時間を記録するときによく使う

```bash
TZ=JST-9 date
```

※実行例

```
[cloudshell-user@ip-10-4-23-161 ~]$ date
Thu Jun 22 12:08:51 UTC 2023
[cloudshell-user@ip-10-4-23-161 ~]$ TZ=JST-9 date
Thu Jun 22 21:08:55 JST 2023
[cloudshell-user@ip-10-4-23-161 ~]$
```
