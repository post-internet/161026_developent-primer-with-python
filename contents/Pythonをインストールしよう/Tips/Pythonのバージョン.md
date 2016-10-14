## Tips | Python のバージョン

### Python2 と Python3

> Pythonを始めたばかりのユーザーの多くが、どちらのバージョンを使えばいいのか迷っています。
> 私の答えは、「気に入ったチュートリアルに書かれているバージョンにしましょう。そして、あとで違いを調べてください」という言葉につきます。
>
> （引用：[Python 2.7.x と 3.x の決定的な違いを例とともに | プログラミング | POSTD](http://postd.cc/the-key-differences-between-python-2-7-x-and-python-3-x-with-examples/)）

Python のバージョンにおいて， **「2.x 系と 3.x 系のどちらを使うか」** は，
しばしば議論に上がります．

細かな違いはいろいろありますが，
日本人にとって重要となるのは， **Unicode文字の扱い** です．

**Python2 では str 型 と unicode 型があり**，
型があっていないと，予期しない結果になります．

```python
#!python2
print(len("日本語")) # 9
print(len(u"日本語")) # 3
```

一方で， **Python3 では str 型に統合されたため**，
型の心配をする必要がなくなりました．

```python
#!python3
print(len("日本語")) # 3
```

とくに，ASCII文字以外を使うことの多い，我々日本人にとっては，
Python3 を積極的に使うのがよいと思います．

もちろん **使うライブラリがどちらのバージョンに対応しているか** ということも重要ですので，
作るものに合わせてバージョンを使い分けるとよいでしょう．

### バージョン管理ソフト (pyenv, py)

前述の理由から，バージョンを簡単に切り替えられるツールがあります．
Windows では **[py]**，Unix(-like) では **[pyenv]** です．

気になる人は，使い方をググってみてください．

[py]: http://docs.python.jp/3/using/windows.html#python-launcher-for-windows
[pyenv]: https://github.com/yyuu/pyenv
