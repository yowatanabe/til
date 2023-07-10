# fstab

## /etc/fstabの書き方

### Amazon EFS

```bash
[ec2-user@ip-172-22-49-70 ~]$ cat /etc/fstab
# EFSマウントヘルパーを使用して、EFSファイルシステムを自動的にマウントする場合
file-system-id:/ efs-mount-point efs _netdev,noresvport,tls,iam 0 0

# NFSを使用して EFSファイルシステムを自動的にマウントする場合
file_system_id.efs.aws-region.amazonaws.com:/ efs-mount-point nfs4 nfsvers=4.1,rsize=1048576,wsize=1048576,hard,timeo=600,retrans=2,noresvport,_netdev 0 0
```


|フィールド|説明|
|---|---|
|file-system-id:/<br>file_system_id.efs.aws-region.amazonaws.com:/|file-system-id:/ → マウントヘルパー使用時。Amazon EFS ファイルシステムID。<br>file_system_id.efs.aws-region.amazonaws.com:/ → NFS使用時。Amazon EFSのDNS名。|
|efs-mount-point|EC2 インスタンスの EFS ファイルシステムのマウントポイント|
|efs<br>nfs4| efs → マウントヘルパー使用時<br>nfs4 → NFS使用時|
|mount options|ファイルシステムのマウントオプション<br>[※EFSマウントヘルパー使用時はこちらを参照](https://docs.aws.amazon.com/ja_jp/efs/latest/ug/automount-with-efs-mount-helper.html#mount-fs-auto-mount-update-fstab)<br>[※NFS使用時はこちらを参照](https://docs.aws.amazon.com/ja_jp/efs/latest/ug/nfs-automount-efs.html)|
|0|ゼロ以外の値の場合、ファイルシステムを dump でバックアップする必要があることを示す。EFSの場合、この値は0になっている必要がある。|
|0|起動時に fsck がファイルシステムをチェックする順序。EFSファイルシステムの場合、起動時にfsckを実行すべきでないことを示すにはこの値を0にする。|
