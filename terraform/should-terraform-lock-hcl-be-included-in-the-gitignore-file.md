# .terraform.lock.hclを.gitignoreファイルに含めるべきか？

`.terraform.lock.hcl`は.gitignoreに含めずにGitHubなどでバージョン管理する。

terraform initコマンドを実行するたびに、`.terraform.lock.hcl`を自動的に作成または更新される。

このファイルをバージョン管理リポジトリに含めることで、設定自体の変更の可能性を議論するのと同じように、コードレビューを通じて外部依存関係の変更の可能性を議論することができる。

[Lock File Location](https://developer.hashicorp.com/terraform/language/files/dependency-lock#lock-file-location)
