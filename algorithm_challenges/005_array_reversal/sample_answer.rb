def array_reversal!(array)
  #以下、解答例
  (array.size / 2).times do |index|
    temp = array[index]
    array[index] = array[array.size - 1 - index]
    array[array.size - 1 - index] = temp
  end
  array
end

### 解答例解説 ###
# 配列の中身を反転させるため、「1つ目の要素と最後の要素、2つ目の要素と最後から2番目の要素...」
# といった具合に要素を入れ替えていきます。
# 試行回数は「配列のサイズ / 2」になります。
# 「[1, 2, 3, 4, 5]」という配列があるとします。
#   1回目：「1」と「5」を入れ替える
#     [5, 2, 3, 4, 1]
#   2回目：「2」と「4」を入れ替える
#     [5, 4, 3, 2, 1]
#
# 配列のサイズが「5」(奇数)だった場合、配列の真ん中の入れ替えに意味はありません。
#   3回目：「3」自身を入れ替える
#     [5, 4, 3, 2, 1]
#
# これ以上入れ替えを行ってしまうと入れ替えた値が元に戻ってしまいます。
#   4回目：「4」と「2」を入れ替える
#     [5, 2, 3, 4, 1]
#   5回目：「5」と「1」を入れ替える
#     [1, 2, 3, 4, 5]
#
# 上記から、配列のサイズが「5」だった場合、試行回数は2回で良いことが分かります。
# Rubyでは「整数 / 整数」の割り算を行うと小数以下は切り捨てられるため、「5 / 2」は「2」となります。
#
# 2つの値を入れ替える場合は、一時的にどちらかの値を保持しておく必要があります。
#   「a = 3, b = 5」があるとき：
#     入れ替えができない：
#       a = b => 変数「a」に変数「b」の「5」を代入
#       b = a => 変数「b」に変数「a」の「5」を代入
#     入れ替えができる：
#       temp = a => 変数「temp」に変数「a」の「3」を代入
#       a = b    => 変数「a」に変数「b」の「5」を代入
#       b = temp => 変数「b」に変数「temp」の「3」を代入

# 引数「array」には配列を渡してテストを実行していますが、
# "abcde"などの文字列を反転させることも可能です。
# これは『文字列にも「size(length)」メソッドがある』『文字列に対して「characters[index]」で
# 文字を取得できる』からです。

# 「array_reversal!」メソッドは破壊的なメソッドのため、
# 引数で渡した配列の中身も反転されます。
#   array = ["a", "b", "c", "d", "e"]
#   戻り値が反転されている：
#     array_reversal!(array) => ["e", "d", "c", "b", "a"]
#   引数として渡した「array」も反転されている：
#     array => ["e", "d", "c", "b", "a"]
#
# 非破壊的な「array_reversal」メソッドを定義するためには、
# 引数「array」と同じ要素を持つ別の配列を用意し、別の配列の方を反転させる必要があります。
#   def array_reversal(array)
#     copy_array = array.dup
#     (copy_array.size / 2).times do |index|
#       temp = copy_array[index]
#       copy_array[index] = copy_array[copy_array.size - 1 - index]
#       copy_array[copy_array.size - 1 - index] = temp
#     end
#     copy_array
#   end
#
# Arrayクラスの「dup」メソッドで引数「array」の軽いコピーを行い、コピーした「copy_array」
# を反転して返しています。
#   array = ["a", "b", "c", "d", "e"]
#   戻り値が反転されている：
#     array_reversal(array) => ["e", "d", "c", "b", "a"]
#   引数として渡した「array」はそのまま：
#     array => ["a", "b", "c", "d", "e"]

### 別解 ###
# Rubyなら下記のような記法も可能です。
#   def array_reversal!(array)
#     (array.size / 2).times { |index| array[index], array[array.size - 1 - index] = array[array.size - 1 - index], array[index] }
#     array
#   end
#
# 「a, b = b, a」で簡単に入れ替えができます。
