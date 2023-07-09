# pipreqs

## 概要
- プロジェクトに必要なパッケージのみ構成される`requirements.txt`を作成することができる
- `pip freeze > requirements.txt`よりスッキリしたものが作成される

## インストール
```
pip install pipreqs
```

## 実行方法
```
pipreqs <パス>
```

## 実行例
```
$ python -m venv venv
$ . venv/bin/activate
$ pip list
Package    Version
---------- -------
pip        23.1.2
setuptools 65.5.0
$
$ pip install pipreqs pytz
〜略〜
$
$ pip list
Package            Version
------------------ --------
certifi            2023.5.7
charset-normalizer 3.2.0
docopt             0.6.2
idna               3.4
pip                23.1.2
pipreqs            0.4.13
pytz               2023.3
requests           2.31.0
setuptools         65.5.0
urllib3            2.0.3
yarg               0.1.9
$
$ ls
main.py venv
$
$ cat main.py
from datetime import datetime

from pytz import timezone

print(datetime.now(timezone("Asia/Tokyo")))
$
$ pipreqs .
INFO: Successfully saved requirements file in ./requirements.txt
$
$ ls
main.py                 requirements.txt        venv
$ cat requirements.txt
pytz==2023.3
$
```
