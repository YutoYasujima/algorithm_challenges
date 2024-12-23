def array_copy(array)
  # 以下、解答例
  copy = []
  array.each do |element|
    copy.push(element)
  end
  copy
end

### 解答例解説 ###
# 配列「copy」を用意して、引数「array」配列の各要素を
# 追加しています。
# 最後にコピーした配列「copy」を返しています。

### 別解1 ###
# アルゴリズムを考えるという意味では不適切かもしれませんが、
# Rubyならワンライナーで書けます。
#
#   def array_copy(array)
#     array.map { |element| element }
#   end
#
# 「map」メソッドはブロックスコープの結果を配列にまとめて
# 返してくれるメソッドのため、「array」の各要素の値を
# まとめて返しています。
# つまり、「map」メソッドが内部的に「copy = []」のような
# 配列を持っていて、勝手に「element」を「copy」に追加して
# くれると考えると分かりやすいかと思います。
#
# 「map」メソッドは作った配列を返すところまでやってくれるので、
# 作った配列が「array_copy」の戻り値になっています。

### 別解2 ###
# 冗長的ですが下記のような書き方もできます。
#
#   def array_copy(array)
#     copy = Array.new(array.length, 0)
#     array.each.with_index do |element, index|
#       copy[index] = array[index]
#     end
#     copy
#   end
#
# 「Array.new(配列のサイズ, 各要素の初期値)」で
# 「array」と同じサイズの配列を「copy」に代入しています。
# 「array = [1, 2, 3]」のとき、「copy = [0, 0, 0]」になります。
#
# 「array.each.with_index do |element, index|」で
# 要素の要素番号(インデックス)も一緒に取得することができます。
# 「array = ['a', 'b', 'c']」とすると、下記のようになります。
#
#   1週目：
#     element => 'a'
#     index   => 0
#
#   2週目：
#     element => 'b'
#     index   => 1
#
#   3週目：
#     element => 'c'
#     index   => 2
#
# あとは「array」の各要素を、「copy」の同じ要素番号の
# 要素に代入すればコピーができます。
