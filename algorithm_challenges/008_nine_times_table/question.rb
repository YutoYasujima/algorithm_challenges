# 問題008：九九を表示する
# 九九の結果を返すメソッドを定義してください。

# 例：
# nine_times_table  => [
#                        [1, 2, 3, 4, 5, 6, 7, 8, 9],
#                        [2, 4, 6, 8, 10, 12, 14, 16, 18],
#                        ...
#                        [9, 18, 27, 36, 45, 54, 63, 72, 81]
#                      ]

# 条件：
# ・特にありません。

def nine_times_table

end

### 実装確認 ###
# 下記のコメントアウトを解除すると確認できます。
# VSCodeエディタでは、該当箇所を選択した状態でキーを押下すると
# コメントアウト/コメントアウト解除ができます。
#    Windows/Linux：[Ctrl] + [/]
#    macOS：[Command] + [/]
# テスト実行前にはコメントアウトしてください。

# table_array = nine_times_table
# puts "["
# table_array.each.with_index do |row_array, index|
#   print "  #{row_array}"
#   print "," unless table_array.size - 1 == index
#   puts
# end
# puts "]"

p nine_times_table

### ヒント ###
# ・まず１の段の配列を作ってみましょう！
#   １の段の配列を作成するには、配列を用意して1～9を
#   追加してあげればできそうです。
#   配列に対して同じような操作を繰り返す場合は、
#   繰り返し処理が有効です。
#   Rubyの繰り返し処理には「each」メソッドや「map」メソッドが
#   ありますが、「times」メソッドや「upto」メソッド、「step」
#   メソッドなどもあります。
#   今回は1～9という数字の繰り返しをしたいので、
#  「upto」メソッドを使用してみましょう！
#
#     one_step_array = []
#     1.upto(9) do |number|
#       one_step_array << number
#     end
#
#   上記のように書くことで、ブロック変数「number」に1～9までの数字に
#   対する繰り返し処理が行われます。
#     1週目：numberに「1」が代入される。
#           「one_step_array << 1」で配列に「1」が追加される。
#           one_step_arrayは[1]となる。
#     2週目：numberに「2」が代入される。
#           「one_step_array << 2」で配列に「2」が追加される。
#           one_step_arrayは[1, 2]となる。
#
#     ...
#
#     9週目：numberに「9」が代入される。
#           「one_step_array << 9」で配列に「9」が追加される。
#           one_step_arrayは[1, 2, 3, 4, 5, 6, 7, 8, 9]となる。
#
#  ・次は２の段の配列の作成を考えてみます。
#
#      two_step_array = []
#      1.upto(9) do |number|
#        two_step_array << 2 * number
#      end
#
#    １の段との違いは「2 * number」となっている点です。
#
#  ・３の段の配列の作成はどうなるでしょうか？
#
#      three_step_array = []
#      1.upto(9) do |number|
#        three_step_array << 3 * number
#      end
#
#    「3 * number」以外は１の段、２の段と同じです。
#      ↑の数字が1～9まで変化する以外は、全く同じ処理になりそうです。
#
#  ・iの段の配列を作成してみましょう！
#
#      i_step_array = []
#      1.upto(9) do |number|
#        i_step_array << i * number
#      end
#
#    変数「i」が無いため上記の処理を動かすことはできませんが、
#    「i」に1～9を代入できれば１の段～９の段の配列が作成できそうです。
#    つまり、iの段の処理を9回繰り返すことができれば、
#    九九の配列が作れそうですね！
#