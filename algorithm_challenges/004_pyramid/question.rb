# 問題004：ピラミッドを表示する
# ピラミッドを表示するための二次元配列を返すメソッドを定義してください。
# 引数「height」はピラミッドの高さです。

# 例：
# pyramid(3) => [
#                 [0, 0, 1, 0, 0],
#                 [0, 1, 1, 1, 0],
#                 [1, 1, 1, 1, 1]
#               ]

# 条件：
# 特にありません。

def pyramid(height)

end

### 実装確認 ###
# 下記のコメントアウトを解除すると確認できます。
# VSCodeエディタでは、該当箇所を選択した状態でキーを押下すると
# コメントアウト/コメントアウト解除ができます。
#    Windows/Linux：[Ctrl] + [/]
#    macOS：[Command] + [/]
# テスト実行前にはコメントアウトしてください。

# height = 3
# pyramid_array = pyramid(height)
# puts "["
# pyramid_array.each.with_index do |line_array, index|
#   print "  #{line_array}"
#   print "," unless pyramid_array.size - 1 == index
#   puts
# end
# puts "]"

# 下記の処理のコメントアウトを解除すると、
# 「height」が「3」のとき、次のような表示になります。
#     *
#    ***
#   *****

# height1 = 3
# pyramid_array = pyramid(height1)
# pyramid_array.each do |line_array|
#   line_array.each do |value|
#     if value == 0
#       print " "
#     else
#       print "*"
#     end
#   end
#   puts
# end