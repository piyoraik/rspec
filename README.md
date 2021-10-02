# Rspec

## What's is

How to use に記述しているコマンド 1 つを実行することで
クローン〜Rspec の実行までを行い、結果はターミナルに出力されます。
また、Rspec 実行後クローンしたものは削除されます。

## How to use

Makefile があるフォルダまで移動し下記コマンドを実行する

```shell
$ make up github=(githubのURLを入れる(https))
```

### windows の場合

下記 URL から make を使えるようにする
http://gnuwin32.sourceforge.net/packages/make.htm

### Makefile を使わない場合

Makefile を使わない場合は、下記コマンドを実行してください。
docker run --rm raityupiyo/rspec:v1.0 (github の URL を入れる(https))

## Docker Hub

https://hub.docker.com/r/raityupiyo/rspec
