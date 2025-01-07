def binary_search(array, value)
  # 以下、解答例
  pl = 0
  pr = array.size - 1
  while pl <= pr
    pc = (pl + pr) / 2
    if array[pc] > value
      pr = pc - 1
    elsif array[pc] < value
      pl = pc + 1
    else
      return pc
    end
  end
  -1
end

### 解答例解説 ###
# ヒントに書いたとおりの流れです。
#
# 最初に「pl」に要素番号「0」を、「pr」に最後の要素番号
# 「array.size - 1」を代入しておきます。



### 別解 ###
# 上記解答例では、「while」メソッドを使っていますが、
# 「begin ～ end while」メソッド(構文？)を使うと繰り返し条件式
# 「pl <= pr」の実行回数を１回減らすことができます。
#
#   def binary_search(array, value)
#     pl = 0
#     pr = array.size - 1
#     begin
#       pc = (pl + pr) / 2
#       if array[pc] > value
#         pr = pc - 1
#       elsif array[pc] < value
#         pl = pc + 1
#       else
#         return pc
#       end
#     end while pl <= pr
#     -1
#   end
#
# 「while」メソッドと「begin ～ end while」メソッドの違いは
# 「繰り返し条件式の評価を先に行うか後に行うか」です。
#
# 「while」メソッドの場合、繰り返し条件式の評価を先に行うため、
# 条件によっては繰り返し用の処理が１度も行われない
# 可能性があります。
#
# 「begin ～ end while」メソッドの場合、繰り返し条件式の評価を
# 後に行うため、必ず１度は繰り返し用の処理が行われることになります。
#
# 今回の問題の場合は、繰り返し用の処理は１度は行っても大丈夫です。
# そのため、上記のような書き方ができるという訳です！
