# dict

## Pythonで多重辞書の要素を取り出す方法

1. インデックスを使用する方法

- 各辞書のキーを順番に指定する
- 存在しないキーを指定するとエラーになる

```
dict1 = {
    'dict2': {
        'key1': 'value1',
        'key2': 'value2'
    },
    'dict3': {
        'key3': 'value3',
        'key4': 'value4'
    }
}


# 'value1'を取り出す
value = dict1['dict2']['key1']
print(value)  # 結果: value1


# 'value3'を取り出す
value = dict1['dict3']['key3']
print(value)  # 結果: value3


# 存在しないキーを取り出す
value = dict1['dict4']['key5']  # 結果: KeyError: 'dict4'
```


2. `get()`メソッドを使用する方法

- 存在しないキーを指定した場合にエラーは発生せずにデフォルト値を返す

```
dict1 = {
    'dict2': {
        'key1': 'value1',
        'key2': 'value2'
    },
    'dict3': {
        'key3': 'value3',
        'key4': 'value4'
    }
}


# 'value1'を取り出す
value = dict1.get('dict2', {}).get('key1')
print(value)  # 結果: value1


# 'value3'を取り出す
value = dict1.get('dict3', {}).get('key3')
print(value)  # 結果: value3


# 存在しないキーを取り出す
value = dict1.get('dict4', {}).get('key5')
print(value)  # 結果: None
```
