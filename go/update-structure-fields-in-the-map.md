# マップ内の構造体フィールドを更新する

以下のマップ内の構造体フィールドの`item3`のStockの値を更新したい。

```go
type Product struct {
  Name  string
  Price int
  Stock int
}

var inventory = map[string]Product{
  "item1": {"Item 1", 10, 1},
  "item2": {"Item 2", 20, 2},
  "item3": {"Item 3", 30, 3},
}
```

マップ内の構造体フィールドは直接更新できない。

```go
func main() {
  inventory["item3"].Stock = 5

  fmt.Println(inventory)
}
```

上記コードを実行すると以下のエラーになる。

```bash
cannot assign to struct field inventory[itemName].Stock in map
```

マップ内の構造体フィールドを更新するには以下のようにする。

```go
func main() {
  newStockValue := 5
  item := inventory["item3"]
  item.Stock = newStockValue
  inventory["item3"] = item

  fmt.Println(inventory)
}
```

```bash
$ go run ../main.go
map[item1:{Item 1 10 1} item2:{Item 2 20 2} item3:{Item 3 30 5}]
```
