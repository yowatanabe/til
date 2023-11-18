# TerraformでAuroraクラスターを削除する際のエラーと対処法

Terraformを使用して作成した動作確認用のAuroraクラスターを削除しようとした際に以下のエラーが発生した。

```bash
Error: RDS Cluster final_snapshot_identifier is required when skip_final_snapshot is false
```

このエラーは`skip_final_snapshot`が`false`に設定されている場合、`final_snapshot_identifier`が必要であるということを伝えている。

動作確認用に作成したリソースでありクラスター削除前の最終スナップショット取得は不要だったため、対応策としてTerraformのテンプレートに以下の定義を追加した。

```hcl
resource "aws_rds_cluster" "test" {
  # 既存の設定...

  skip_final_snapshot = true
}
```

上記設定により最終スナップショットはスキップされる。その後、以下のコマンドでresource指定でapplyを実行した。

```bash
terraform apply -target=aws_rds_cluster.test
```

apply後、再度terraform destroyを実行してクラスターが正常に削除された。
