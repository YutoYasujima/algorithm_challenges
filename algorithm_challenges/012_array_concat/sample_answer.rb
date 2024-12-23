def array_concat(array1, array2)
  # 以下、解答例
  array = []
  array1.each { |element|  array.push(element) }
  array2.each { |element|  array.push(element) }
  array
end

### 解答例解説 ###
# 「array1 = [1, 2, 3]」「array2 = ['a', 'b'」」で
# 考えてみます。
#
# まず用意した配列「array」に１つ目の配列「array1」の要素を
# 追加していきます。
#
#   1週目：「element」に「1」が代入される
#         「array.push(element)」で「array」に「1」を追加
#         => 「array」は「[1]」
#
#   2週目：「element」に「2」が代入される
#         「array.push(element)」で「array」に「2」を追加
#         => 「array」は「[1, 2]」
#
#   3週目：「element」に「3」が代入される
#         「array.push(element)」で「array」に「3」を追加
#         => 「array」は「[1, 2, 3]」
#
# これで１つ目の配列「array1」が「array」に追加されました。
# 同じようにして２つ目の配列「array2」の要素を「array」に
# 追加していきます。
#
#   1週目：「element」に「'a'」が代入される
#         「array.push(element)」で「array」に「'a'」を追加
#         => 「array」は「[1, 2, 3, 'a']」
#
#   2週目：「element」に「'b'」が代入される
#         「array.push(element)」で「array」に「'b'」を追加
#         => 「array」は「[1, 2, 3, 'a', 'b']」
#
# あとは結合した「array」を戻り値にするために、
# メソッドの最後に書いておけばOKです！

### 別解 ###
# Rubyでは下記のような書き方もできます。
#
#   def array_concat(array1, array2)
#     [*array1, *array2]
#   end
#
# 通常配列の中で別の配列を呼び出すと下記のようになります。
#
#   numbers = [1, 2, 3]
#   array = [numbers]
#     => 「array」の中身は「[[1, 2, 3]]」
#
# しかし、「[*numbers]」のように配列の中の配列の前に「*」
# を付けることで、中の配列を展開することができます。
#
#   numbers = [1, 2, 3]
#   array = [*numbers]
#     => 「array」の中身は「[1, 2, 3]」
#
# 上記別解は、２つの配列をそれぞれ配列の中で展開することで、
# 結合した配列を作成することができます。
# ただし、通常時はArrayクラスの「concat」メソッド、「push」
# メソッドを使った方が良いかもしれません。
# その辺は好みになると思います。
