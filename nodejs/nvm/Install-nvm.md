# Install NVM

## はじめに

複数のNode.jsバージョンを切り替えて使用したいので、M1 Mac mini に nvm をインストール。

## GitHubのリポジトリ

GitHubのリポジトリにインストール方法が記載されている。

*https://github.com/nvm-sh/nvm*

## インストール

```bash
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash
```

実行例

```bash
$ curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash
  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                 Dload  Upload   Total   Spent    Left  Speed
100 15916  100 15916    0     0  49395      0 --:--:-- --:--:-- --:--:-- 51176
=> Downloading nvm from git to '/Users/bfl/.nvm'
=> Initialized empty Git repository in /Users/bfl/.nvm/.git/
=> Compressing and cleaning up git repository

=> Appending nvm source string to /Users/bfl/.bashrc
=> Appending bash_completion source string to /Users/bfl/.bashrc
=> Close and reopen your terminal to start using nvm or run the following to use it now:

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion


$ nvm --version
0.39.3
```
