def array_length(array)
  # 以下、解答例
  length = 0
  array.each { length += 1 }
  length
end

### 解答例解説 ###
# 「length = 0」で変数「length」に「0」を代入しておきます。
#
# 繰り返し処理の中で「length」をインクリメントしていきます。
# このとき、「length」は繰り返し処理の前に宣言しておく必要があります。
# ブロック(「{}」や「do ～ end」の中)の中で「length」を宣言すると、
# 毎回新しい「length」が作られることになり、要素の数を数えることが
# できません。下記はダメな例です。
#
#   array.each do
#     length = 0
#     length += 1
#   end
#
# 要素の数だけ「length = 0 + 1」を繰り返すだけなので、
# 「length」は「1」にしかなりません。
#
# 最後に要素数「length」を戻り値として返しましょう！
# Rubyでは最後に評価されたものがメソッドの戻り値になるため、
# メソッドの最後に「length」を呼び出してあげます。
