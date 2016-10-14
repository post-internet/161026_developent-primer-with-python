## For Unix(-like) (MacOS, Linux etc.)

Python 2.7 が入っている場合がありますが，今回は **Python 3.x を使います**[^†1]．

### pyenv の導入

[pyenv] は，複数のバージョンの Python をインストールできるツールです．

pyenv の導入は [pyenv-installer] が便利です．
次のコマンドを実行するだけで終わります．

```bash
$ curl -L https://raw.githubusercontent.com/yyuu/pyenv-installer/master/bin/pyenv-installer | bash
```

次に `~/.bashrc` に次を **追記します**．

```bash
export PATH="/root/.pyenv/bin:$PATH"
eval "$(pyenv init -)"
```

実行した後に，`exec $SHELL -l` か **ターミナルを再起動** します．

[pyenv]: https://github.com/yyuu/pyenv
[pyenv-installer]: https://github.com/yyuu/pyenv-installer

### ビルド環境の導入

pyenv は Python をビルドするので，必要なライブラリなどをインストールする必要があります．
詳しくは，[pyenv の Wiki](https://github.com/yyuu/pyenv/wiki/Common-build-problems#requirements)を見てください．

#### Ubuntu/Debian
```bash
$ sudo apt-get install -y make build-essential libssl-dev zlib1g-dev libbz2-dev \
  libreadline-dev libsqlite3-dev wget curl llvm libncurses5-dev libncursesw5-dev xz-utils
```

#### Fedora/CentOS/RHEL
```bash
$ yum install zlib-devel bzip2 bzip2-devel readline-devel sqlite sqlite-devel openssl-devel
```

#### Mac OS
```bash
brew install readline xz
```

### Python3 の導入

残念ながら， pyenv には最新の Python3 を自動判定する機能はありません．
次のコマンドを実行すると，最新の Python3 のバージョンがわかります．

```bash
$ pyenv install -l | sed 's/\s//g' | grep 3 | grep -v '[^0-9.]' | tail -n 1
3.5.2
```

2016年10月14日現在， 3.5.2 が最新です．
3.5.2 をインストールするには，次のコマンドを実行します．

```bash
$ pyenv install 3.5.2
```

-----

[^†1]: Ref. [Tips | Python のバージョン](./Tips/Pythonのバージョン.md)
