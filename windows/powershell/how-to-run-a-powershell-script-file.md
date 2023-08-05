# How to run a PowerShell script file

Windows 10 でPowerShellスクリプトファイル(.ps1等)の実行できるようにする方法

## 環境

- Windows 10 Pro

## PowerShellの実行ポリシーを変更

デフォルトではスクリプトファイルを実行すると以下のようなエラーとなる。

```powershell
PS C:\Users\demo> Invoke-WebRequest -UseBasicParsing -Uri "https://raw.githubusercontent.com/pyenv-win/pyenv-win/master/pyenv-win/install-pyenv-win.ps1" -OutFile "./install-pyenv-win.ps1"; &"./install-pyenv-win.ps1"
& : このシステムではスクリプトの実行が無効になっているため、ファイル C:\Users\demo\install-pyenv-win.ps1 を読み込むこと
ができません。詳細については、「about_Execution_Policies」(https://go.microsoft.com/fwlink/?LinkID=135170) を参照してく
ださい。
発生場所 行:1 文字:173
+ ... n.ps1" -OutFile "./install-pyenv-win.ps1"; &"./install-pyenv-win.ps1"
+                                                 ~~~~~~~~~~~~~~~~~~~~~~~~~
    + CategoryInfo          : セキュリティ エラー: (: ) []、PSSecurityException
    + FullyQualifiedErrorId : UnauthorizedAccess
PS C:\Users\demo>
```

原因はPowerShellの実行ポリシーの既定値が`Restricted`になっているため。`Restricted`はスクリプトファイルの実行を禁止されている。

https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.core/about/about_execution_policies

```powershell
PS C:\Users\demo> Get-ExecutionPolicy
Restricted
```

スクリプトファイルを実行可能にするには管理者権限でPowerShellを起動し、`Set-ExecutionPolicy -ExecutionPolicy RemoteSigned`を実行することで実行ポリシーを`RemoteSigned`に変更する。

```powershell
PS C:\Windows\system32> Set-ExecutionPolicy -ExecutionPolicy RemoteSigned

実行ポリシーの変更
実行ポリシーは、信頼されていないスクリプトからの保護に役立ちます。実行ポリシーを変更すると、about_Execution_Policies
のヘルプ トピック (https://go.microsoft.com/fwlink/?LinkID=135170)
で説明されているセキュリティ上の危険にさらされる可能性があります。実行ポリシーを変更しますか?
[Y] はい(Y)  [A] すべて続行(A)  [N] いいえ(N)  [L] すべて無視(L)  [S] 中断(S)  [?] ヘルプ (既定値は "N"): Y
PS C:\Windows\system32>
PS C:\Windows\system32> Get-ExecutionPolicy
RemoteSigned
PS C:\Windows\system32>
```
