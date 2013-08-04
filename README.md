# Question

<pre>
問題：
プログラム引数で与えられる5枚のカード情報から、その5枚を用いて出来る一番強いポーカーの役を判定して出力せよ(*1)(*2)。

プログラム引数は以下のように与えられる。
$ prog Ac Th Kd 3h As

カード情報について(*3)(*4)(*5)
1文字目：数値 (A:エース 2〜9:数字 T:10 J:11 Q:12 K:13)
2文字目：スート(s:スペード h:ハート d:ダイヤ c:クローバー)

ポーカー役の強さの順番と出力値、それに対応する入力例
1:straight flash (As Ks Qs Js Ts) (*6)
2:four of a kind (7s 7h 7d 7c As)
3:full house (Ts Th Td 7c 7d)
4:flush (Ad 4d 5d Jd Kd)
5:straight (2s 3h 4s 5d 6c)
6:three of a kind (9s 9h 9d Ts 3s)
7:two pair (Ts Th 2c 2h 5d)
8:one pair (2s 2d 5c 6d 9c)
9:high cards (Ah Jc 5d 4s 9c)

*1 入力が「As Ks Qs Js Ts」のとき、「straight flash\n」と出力すること
*2 標準入力からの入力内容は無し
*3 カード情報は特に決まった順番はなく、ランダムに与えられる
*4 大文字・小文字は例示の通り与えられる
*5 ジョーカーは無い
*6 T J Q K A はストレートになるが、J Q K A 2 はストレートにならない

全ての役の判定実装が間に合わない場合、部分的に実装して「○番と○番以外は判定できます」という申告もアリ。
</pre>
