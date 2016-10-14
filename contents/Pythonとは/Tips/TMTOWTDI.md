## Tips | There's more than one way to do it

Python の `There should be one -- and preferably only one -- obvious way to do it.` と対になる考えが，
Perl の **There's more than one way to do it** です．
邦訳すると，「**やりかたはひとつじゃない**」．

実際，Perl のコードは個々人の個性が大きく反映されると思います．
やりたいことをググると，各々が違う書き方で書いているなんてこともよくあります．

例えば，次の3つのコードは同じ結果を返します．
（例ですから，わざとらしく酷い書き方をしています．）

```perl
@arr = (0, 5, 10);
for $num (@arr) {
  print $num . "\n";
}
```

```perl
$arrRef = [0, 5, 10];
foreach (@$arrRef) {
  print "$_\n";
}
```

```perl
use v5.10;
map { say } 0, 5, 10;
```

もちろん，学ぶ側としては迷いやすいかもしれません．
ですが，**誰でも書けるコードを作ったところで楽しいのでしょうか**．
試行錯誤して，「これが自分の考える最高のコードだ」と思えるものを作る．
遊んで書く言語としては，Perl は最高の言語だと僕は思います．

**Perl は最初に触る言語としては色々つまづきやすいので，今回は Python を教えます．**
