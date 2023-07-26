# Download all objects in Amazon S3 bucket

Amazon S3の任意のバケットのオブジェクトを全てダウンロードする

## AWS CloudShell を使用

1. 任意のS3バケットを指定

`S3バケット名`を任意のS3バケット名に置き換える

```bash
TARGET_S3_BUCKET=S3バケット名
```

2. (任意)オブジェクト一覧を作成

```bash
TZ=JST-9 aws s3 ls s3://${TARGET_S3_BUCKET}/ --recursive > ${TARGET_S3_BUCKET}_`TZ=JST-9 date +%Y%m%d_%H%M%S`.txt
```

3. ダウンロード

```bash
aws s3 cp s3://${TARGET_S3_BUCKET}/ ./${TARGET_S3_BUCKET} --recursive
```

4. zipで圧縮

```bash
zip -rm ${TARGET_S3_BUCKET}_`TZ=JST-9 date +%Y%m%d_%H%M%S`.zip ${TARGET_S3_BUCKET}
```

5. AWS CloudShellの`アクション`-`ファイルのダウンロード`より以下のファイルをダウンロードする

```text
S3バケット名_yyyymmdd_hhmmss.txt  # オブジェクト一覧
S3バケット名_yyyymmdd_hhmmss.zip  # ダウンロードファイル
```
