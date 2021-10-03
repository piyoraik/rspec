# Rspec

## What's is

How to use に記述しているコマンド 1 つを実行することで  
クローン〜Rspec の実行までを行い、クローンしたアプリのサーバー立ち上げまで行います。  
Rspecの実行結果は、コマンドを実行したターミナルに出力されます。

## Tools needed to work

- [Docker](https://docs.docker.com/engine/installation/)
- makeコマンド

### for Windows

下記 URL から make を使えるようにする  
http://gnuwin32.sourceforge.net/packages/make.htm  

## How to use

### Start up

**Rspec とサーバーの立ち上げを行うコンテナを起動します**  
Makefile があるフォルダまで移動し下記コマンドを実行する

```shell
$ make up github=(githubのURLを入れる(https))
```

実行すると Rspec が走り、且つ 3000 番ポートでサーバーが立ち上がるのでブラウザで確認します。  
ブラウザからアクセスするポートを変更したい場合は、Makefile6 行目の`HOSTPORT := 3000`の値を変更してください。

### Inside

**サーバーが立ち上がっているコンテナの内部にアクセスします。**  
サーバーはこの操作を行わなくても立ち上がっているため、Rspecを手動で実行するケースなどに使用します。   
Makefile があるフォルダまで移動し下記コマンドを実行する

```shell
$ make exec
```

実行するとコンテナ内に入ることができるので、Cloud9 と同様に扱えます。  
bookers フォルダ内にクローンしたものが存在するので`cd bookers`で移動しましょう。

コンテナから抜け出すときは`exit`を入力し実行しましょう。

### down

**サーバー を立ち上げているコンテナを終了する**  
レビューが終わった後に、サーバーを停止するために、このコマンドを実行してください。  

```shell
make down
```

## Docker Hub

https://hub.docker.com/r/raityupiyo/rspec  
https://hub.docker.com/r/raityupiyo/rails
