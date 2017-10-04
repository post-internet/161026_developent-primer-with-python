## For MacOS

Python 2.7 が入っていますが，今回は **Python 3.x を使います**[^†1]．

### Homebrew の導入

[Homebrew] とは， MacOS 用のパッケージマネージャです．
パッケージがあれば， **コマンドひとつでインストールできます**．

Homebrew の導入は，次のコマンドを実行します．

```bash
$ /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```

[Homebrew]: http://brew.sh/index_ja.html

### Python3 の導入

次のコマンドを実行します．

```bash
$ brew update
$ brew install python3
```

-----

[^†1]: Ref. [Tips | Python のバージョン](./Tips/Pythonのバージョン.md)
