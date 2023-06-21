# Undo Last Git Commit

- 間違ってcommitしてしまい、追加/変更したファイルをそのまま戻したい
- まだpushはしていない

以下のコマンドで直前のコミットを取り消すことができる

```bash
git reset --soft HEAD^
```
