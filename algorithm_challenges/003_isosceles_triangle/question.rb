# 問題003：二等辺三角形を表示する
# 二等辺三角形を表示するための二次元配列を返すメソッドを定義してください。
# 引数「length」は辺の長さです。

# 例：
# isosceles_triangle(3) => [
#                            [1, 0, 0],
#                            [1, 1, 0],
#                            [1, 1, 1]
#                          ]

# 条件：
# 特にありません。

def isosceles_triangle(length)

end

### 実装確認 ###
# 下記のコメントアウトを解除すると確認できます。
# VSCodeエディタでは、該当箇所を選択した状態でキーを押下すると
# コメントアウト/コメントアウト解除ができます。
#    Windows/Linux：[Ctrl] + [/]
#    macOS：[Command] + [/]
# テスト実行前にはコメントアウトしてください。

# length = 3
# triangle_array = isosceles_triangle(length)
# puts "["
# triangle_array.each.with_index do |line_array, index|
#   print "  #{line_array}"
#   print "," unless triangle_array.size - 1 == index
#   puts
# end
# puts "]"

# 下記の処理のコメントアウトを解除すると、
# 「length」が「3」のとき、次のような表示になります。
#   *
#   **
#   ***

# length1 = 3
# triangle_array = isosceles_triangle(length1)
# triangle_array.each do |line_array|
#   line_array.each do |value|
#     if value == 1
#       print "*"
#     else
#       print " "
#     end
#   end
#   puts
# end