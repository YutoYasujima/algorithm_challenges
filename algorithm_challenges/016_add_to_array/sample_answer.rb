def add_to_array(num)
  # 以下、解答例
  array = []
  (num + 1).times do |index|
    array.push(index)
  end
  array
end

### 解答例解説 ###
# ヒントに書いたとおりの流れです。
#
# 「num + 1」回繰り返し処理を行います。
# 問題文には『「0」から「指定した値」まで』とあるため、
# 引数「num」に「5」が渡されたとき、5回の繰り返しでは、
# 「4」までしか追加することができません。
#
#   1週目：「index」には「0」が代入される
#          「array」に「index」を追加
#          => 「array」は「[0]」になる
#
#   2週目：「index」には「1」が代入される
#          「array」に「index」を追加
#          => 「array」は「[0, 1]」になる
#
#   3週目：「index」には「2」が代入される
#          「array」に「index」を追加
#          => 「array」は「[0, 1, 2]」になる
#
#   4週目：「index」には「3」が代入される
#          「array」に「index」を追加
#          => 「array」は「[0, 1, 2, 3]」になる
#
#   5週目：「index」には「4」が代入される
#          「array」に「index」を追加
#          => 「array」は「[0, 1, 2, 3, 4]」になる
#
# 「num + 1」つまり、6回繰り返すことで「5」を追加できる。
#
#   6週目：「index」には「5」が代入される
#          「array」に「index」を追加
#          => 「array」は「[0, 1, 2, 3, 4, 5]」になる
#
# 最後に作成した「array」を返せばOKです！



### 発展問題解答例 ###
# def add_to_array_advanced(num, count)
#   array = []
#   count.times do |index|
#     array << (num + index)
#   end
#   array
# end

### 解答例解説 ###
# 今度は「count」分の値がほしいので、繰り返し回数は
# count回で大丈夫です。
#
# 前の問題では「0」から数え始めていましたが、今度は「num」から
# 数え始めてほしいので「array << (num + index)」とすることで
# 「num」からスタートすることができます。
#
# 「add_to_array_advanced(2, 4)」の例で考えます。
#
#   1週目：「index」には「0」が代入される
#          「num + index」は「2 + 0」なので、「array << 2」となる
#          => 「array」は「[2]」になる
#
#   2週目：「index」には「1」が代入される
#          「num + index」は「2 + 1」なので、「array << 3」となる
#          => 「array」は「[2, 3]」になる
#
#   3週目：「index」には「2」が代入される
#          「num + index」は「2 + 2」なので、「array << 4」となる
#          => 「array」は「[2, 3, 4]」になる
#
#   4週目：「index」には「3」が代入される
#          「num + index」は「2 + 3」なので、「array << 5」となる
#          => 「array」は「[2, 3, 4, 5]」になる
#
# 最後に「array」を返せばOKです。
