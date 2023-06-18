# Ddosify

## GitHubリポジトリ
https://github.com/ddosify/ddosify

## クイックスタート
```bash
docker run -it --rm ddosify/ddosify ddosify -t <対象URL>
```

## オプション
```
$ docker run -it --rm ddosify/ddosify ddosify -help
Usage of ddosify:
  -P string
        Proxy address as protocol://username:password@host:port. Supported proxies [http(s), socks]
  -T int
        Request timeout in seconds (default 5)
  -a string
        Basic authentication, username:password
  -b string
        Payload of the network packet (body)
  -cert_key_path string
        A path to a certificate key file (usually called 'key.pem')
  -cert_path string
        A path to a certificate file (usually called 'cert.pem')
  -config string
        Json config file path. If a config file is provided, other flag values will be ignored
  -d int
        Test duration in seconds (default 10)
  -debug
        Iterates the scenario once and prints curl-like verbose result
  -h value
        Request Headers. Ex: -h 'Accept: text/html' -h 'Content-Type: application/xml'
  -l string
        Type of the load test [linear, incremental, waved] (default "linear")
  -m string
        Request Method Type. For Http(s):[GET, POST, PUT, DELETE, UPDATE, PATCH] (default "GET")
  -n int
        Total iteration count (default 100)
  -o string
        Output destination (default "stdout")
  -t string
        Target URL
  -version
        Prints version, git commit, built date (utc), go information and quit
```
