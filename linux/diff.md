# diffコマンド

## コマンドの出力の結果をdiffで直接比較する

```bash
diff <(コマンド) <(コマンド)
```

※実行例

```
※差分がない場合

cloudshell-user@ip-10-4-41-3 ~]$ aws s3 ls s3://demo-replication-bucket-source/ --recursive
2023-07-06 21:48:26          0 test.txt
2023-07-06 21:51:47          0 test2.txt
[cloudshell-user@ip-10-4-41-3 ~]$
[cloudshell-user@ip-10-4-41-3 ~]$ aws s3 ls s3://demo-replication-bucket-destination/ --recursive
2023-07-06 21:48:26          0 test.txt
2023-07-06 21:51:47          0 test2.txt
[cloudshell-user@ip-10-4-41-3 ~]$
[cloudshell-user@ip-10-4-41-3 ~]$ diff <(aws s3 ls s3://demo-replication-bucket-source/ --recursive) <(aws s3 ls s3://demo-replication-bucket-destination/ --recursive)
[cloudshell-user@ip-10-4-41-3 ~]$


※差分がある場合

[cloudshell-user@ip-10-4-41-3 ~]$
[cloudshell-user@ip-10-4-41-3 ~]$ aws s3 ls s3://demo-replication-bucket-source/ --recursive
2023-07-06 21:48:26          0 test.txt
2023-07-06 21:51:47          0 test2.txt
2023-07-06 21:52:44          0 test3.txt
[cloudshell-user@ip-10-4-41-3 ~]$ aws s3 ls s3://demo-replication-bucket-destination/ --recursive
2023-07-06 21:48:26          0 test.txt
2023-07-06 21:51:47          0 test2.txt
[cloudshell-user@ip-10-4-41-3 ~]$
[cloudshell-user@ip-10-4-41-3 ~]$ diff <(aws s3 ls s3://demo-replication-bucket-source/ --recursive) <(aws s3 ls s3://demo-replication-bucket-destination/ --recursive)
3d2
< 2023-07-06 21:52:44          0 test3.txt
[cloudshell-user@ip-10-4-41-3 ~]$
```
