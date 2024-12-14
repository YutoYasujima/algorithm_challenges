def pyramid(height)
  #以下、解答例
  pyramid_array = []
  pyramid_base = height * 2 - 1
  height.times do |step|
    line_array = []
    pyramid_base.times do |index|
      if (index >= (height - 1 - step)) && (index <= (height - 1 + step))
        line_array.push(1)
      else
        line_array.push(0)
      end
    end
    pyramid_array.push(line_array)
  end
  pyramid_array
end

### 解答例解説 ###
# ピラミッドの段と配置の関係を整理します。
# ピラミッドの高さ「height」が「3」のときは下記のようになります。
#       |   index
#       | 0 1 2 3 4
# ------+----------
#      0| 0 0 1 0 0
# step 1| 0 1 1 1 0
#      2| 1 1 1 1 1

# ピラミッドの底辺「pyramid_base」のサイズは、ピラミッドの高さ「height」に依存します。
#   「height」が「1」：底辺のサイズは「1」
#   「height」が「2」：底辺のサイズは「3」
#   「height」が「3」：底辺のサイズは「5」
#   「height」が「4」：底辺のサイズは「7」
#
# これにより、ピラミッドの横(配列)のサイズは「height * 2 - 1」であることが分かります。

# 配列内に「1」を配置する場所は、ピラミッドの段「step」に依存します。
#   ピラミッドの高さ「height」が「1」のとき：
#     「step」が「0」：要素番号「0」に配置
#
#   ピラミッドの高さ「height」が「2」のとき：
#     「step」が「0」：要素番号「1」に配置
#     「step」が「1」：要素番号「0～2」に配置
#
#   ピラミッドの高さ「height」が「3」のとき：
#     「step」が「0」：要素番号「2」に配置
#     「step」が「1」：要素番号「1～3」に配置
#     「step」が「2」：要素番号「0～4」に配置
#
# これにより、配列の真ん中の要素番号は「height - 1」であり、
# 「1」は真ん中の要素番号「-step」～「+step」までの範囲に配置すれば良いことが分かります。

### 別解 ###
# Rubyっぽく書くと下記のようになるかと思います。
#
# def pyramid(height)
#   pyramid_array = []
#   pyramid_base = height * 2 - 1
#   height.times do |step|
#     pyramid_array << Array.new(pyramid_base, 0).map.with_index do |value, index|
#       value = 1 if (index >= (height - 1 - step)) && (index <= (height - 1 + step))
#       value
#     end
#   end
#   pyramid_array
# end

### 別解解説 ###
# 「<<」は「Array.push」メソッドの代わりです。
# 「Array.new(pyramid_base, 0)」で「pyramid_base」個の要素を持つ配列(値はすべて「0」)を作成します。
# 「map.with_index」で要素番号も取得しつつ「map」メソッドで新しい配列を作成します。
# ブロック引数「|value, index|」について：
#     「value」には要素の値「0」が代入されます。
#     「index」には要素番号が代入されます。
# 条件式に一致するときのみ、「value」に「1」を代入しています。
# 条件式に一致しないときは、「value」は「0」のままになっています。

### 発展 ###
# 逆さピラミッドを作ってみましょう！
# また、配列は「1」を代入するのではなく、ピラミッドの段を代入しましょう。
#   ピラミッドの高さ「height」が「3」：
#     1 1 1 1 1
#       2 2 2
#         3
#
#   ピラミッドの高さ「height」が「5」：
#     1 1 1 1 1 1 1 1 1
#       2 2 2 2 2 2 2
#         3 3 3 3 3
#           4 4 4
#             5

### 発展解答例 ###
# def pyramid(height)
#   pyramid_array = []
#     pyramid_base = height * 2 - 1
#     height.times do |step|
#       pyramid_array << Array.new(pyramid_base, 0).map.with_index do |value, index|
#         value = step + 1 if (index >= step) && (index <= (pyramid_base - 1 - step))
#         value
#       end
#     end
#     pyramid_array
# end