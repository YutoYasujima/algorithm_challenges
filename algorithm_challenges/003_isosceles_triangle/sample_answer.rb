def isosceles_triangle(length)
  # 引数チェック(不要)
  return unless numbers.is_a?(Integer)

  # 以下、解答例
  triangle_array = []
  length.times do |row|
    line_array = []
    length.times do |col|
      if row >= col
        line_array.push(1)
      else
        line_array.push(0)
      end
    end
    triangle_array.push(line_array)
  end
  triangle_array
end

### 解答例解説 ###
# ２次元配列を作成するために二重ループをしています。
# 引数「length」が「3」のとき、「row」と「col」は下記のようになります。
#      |  col
#      | 0 1 2
# -----+-------
#     0| 1 0 0
# row 1| 1 1 0
#     2| 1 1 1
#
# 上記の表を見ると、「row」と「col」の要素番号が一致するところまでは
# 「1」を追加し、それ以降は「0」を追加すれば良いことが分かります。
#   「row」が「0」のループ：
#       「col」が「0」のとき、「line_array」に「1」を追加。
#       「col」が「1」のとき、「line_array」に「0」を追加。
#       「col」が「2」のとき、「line_array」に「0」を追加。
#   「row」が「1」のループ：
#       「col」が「0」のとき、「line_array」に「1」を追加。
#       「col」が「1」のとき、「line_array」に「1」を追加。
#       「col」が「2」のとき、「line_array」に「0」を追加。
#
# これを繰り返すことによって、二等辺三角形を作ることができます。

### 別解 ###
# Rubyっぽく書くと下記のようになるかと思います。
#
# def isosceles_triangle(length)
#   triangle_array = []
#   length.times do |row|
#     triangle_array << Array.new(length, 0).map.with_index { |_, col| row >= col ? 1 : 0 }
#   end
#   triangle_array
# end

### 別解解説 ###
# 「<<」は「Array.push」メソッドの代わりです。
# 「Array.new(length, 0)」で「length」個の要素を持つ配列(値はすべて「0」)を作成します。
# 「map.with_index」で要素番号も取得しつつ「map」メソッドで新しい配列を作成します。
# ブロック引数「|_, col|」について：
#     「_」には要素の値が代入されますが使用しません。
#     「col」には要素番号が代入されます。
# ブロックスコープの「row >= col ? 1 : 0」は、解答例解説に記載した考え方になります。

### 発展 ###
# 下記のような二等辺三角形も作成してみると面白いと思います。
# 上と左が等辺：
#   ***
#   **
#   *

# 上と右が等辺：
#   ***
#    **
#     *

# 下と右が等辺：
#     *
#    **
#   ***

### 発展解答例 ###
# 上と左が等辺：
#   def isosceles_triangle(length)
#     triangle_array = []
#       length.times do |row|
#         triangle_array << Array.new(length, 0).map.with_index { |_, col| col <= (length - 1 - row) ? 1 : 0 }
#       end
#       triangle_array
#   end

# 上と右が等辺：
#   def isosceles_triangle(length)
#     triangle_array = []
#     length.times do |row|
#       triangle_array << Array.new(length, 0).map.with_index { |_, col| row <= col ? 1 : 0 }
#     end
#     triangle_array
#   end

# 下と右が等辺：
#   def isosceles_triangle(length)
#     triangle_array = []
#       length.times do |row|
#         triangle_array << Array.new(length, 0).map.with_index { |_, col| col >= (length - 1 - row) ? 1 : 0 }
#       end
#       triangle_array
#   end