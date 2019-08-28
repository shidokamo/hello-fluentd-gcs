# Hello Fluentd GCS
Fluentd の Google Cloud Storage の出力プラグインのテストサンプルです。

## 出力プラグインの種類
2019年8月現在公式ページにて、以下の出力プラグインが見つかります。
今回は、`fluent-plugin-gcs` を使用します。

* [fluent-plugin-gcs](https://github.com/daichirata/fluent-plugin-gcs)
* [fluent-plugin-google-cloud-storage](https://github.com/hfwang/fluent-plugin-google-cloud-storage)
* [fluent-plugin-google-cloud-storage-out](https://github.com/matsuokah/fluent-plugin-google-cloud-storage-out)

| |fluent-plugin-gcs|fluent-plugin-google-cloud-storage|fluent-plugin-google-cloud-storage-out|
|:---|:---:|:---:|:---:|
|Star| 20 | 13 | 5 |
|最初のリリース|2016/11/27|2014/09/30|2016/08/01|
|最後のリリース|2019/05/31|2016/02/09|2016/01/12|

## インストール
```bash
make install
```

## ローカルでプログラムを fluentd とテストする方法
```bash
fluentd -c ./fluent.conf

# Open another terminal
make log LOG_INTERVAL=1   # Slow rate log injection
make log                  # Max rate log injection
```
* fluentd がログローテートを検出しながらデータを取り込みます。
* 設定された、`flush_interval` の間隔で GCS にファイルを書き込みます。

