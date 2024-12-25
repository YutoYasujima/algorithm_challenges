def median_of_three_values(numbers)
  # 以下、解答例
  numbers.sort[numbers.length / 2]
end

### 解答例解説 ###
# 「sort」メソッドにより昇順に並び替えた後に、一番真ん中の要素を返しています。
# 「numbers.length」は「3」で確定しています。
# Rubyでは「整数 / 整数」の割り算を行うと小数以下は切り捨てられるため、
# 「3 / 2」は「1」となります。
#
# ここでは「sort」メソッドを使ってしまいましたが、ソート(並び替え)のアルゴリズムは
# たくさんあるので、またいずれ...。

### 別解 ###
# 下記の解答が王道なのかもしれません。
#
#   def median_of_three_values(numbers)
#     # 見づらいため変数に代入
#     a = numbers[0]
#     b = numbers[1]
#     c = numbers[2]
#     if a >= b       # ※１
#       if b >= c
#         b
#       elsif c >= a
#         a
#       else
#         c
#       end
#     elsif a > c    # ※２
#       a
#     elsif b > c
#       c
#     else
#       b
#     end
#   end

### 別解解説 ###
# 僕はこんなキレイな条件式を書け無いと思います。
# また同じ問題をやっても解答例の条件式はぱっと出てこないと思います。
#
# 三値の大小比較には13パターンあります。
#  1: a = b = c
#  2: a > b > c
#  3: a > c > b
#  4: a = b > c
#  5: a = c > b
#  6: a > b = c
#  7: b > a > c
#  8: b > c > a
#  9: b > a = c
# 10: b = c > a
# 11: c > a > b
# 12: c > b > a
# 13: c > a = b
#
# 別解「※１」の部分の条件式「a >= b」内を辿ります。
# a >= b
#    b >= c   → 「a >= b >= c」となります。
#                これは上記13パターンの内、「1, 2, 4, 6」に当てはまります。
#                （「a」「b」「c」の並び順で「b」が真ん中に来るパターン。）
#    c >= a   → 「c >= a >= b」となります。（前の分岐の否定により「b < c」もある。）
#                これは上記13パターンの内、「11, 13」に当てはまります。
#                （「c」「a」「b」の並び順で「a」が真ん中に来るパターン。）
#    else     → 「a > c > b」となります。（前の分岐の否定「b < c」「c < a」から。）
#                これは上記13パターンの内、「3」に当てはまります。
#
# 別解「※２」の部分では条件式「a > c」に加え、「※１」の否定「a < b」も条件となります。
# そのため、「b > a > c」となります。
# これは上記13パターンの内、「7」に当てはまります。
#
# このようにして、別解の条件分岐によって13パターンが網羅され、中央値が返されます。



### 発展問題解答例 ###
#
#   def median_of_three_values_advanced(array)
#     return nil if array.size == 0
#     sorted_array = array.sort
#       center_index = sorted_array.size / 2
#       if sorted_array.size % 2 == 0
#         (sorted_array[center_index] + sorted_array[center_index - 1]) / 2.0
#       else
#         sorted_array[center_index]
#       end
#   end
#
# 基本的にやっていることは解答例と同じです。
#
# まずは配列が空だった場合に「nil」を返しています。
#
# 次に配列を「sort」メソッドで並び替えています。
# この後、配列の要素数が奇数か偶数かで求め方が変わります。
# 並び変えた後の配列の要素数が奇数なら、真ん中の要素が中央値となります。
#
#   sorted_array = [1, 2, 3, 4, 5]
#   center_index = sorted_array.size / 2 => 「2」
#     ※「整数 / 整数」なら商(割り算の結果)の小数部分が切り捨てられます。
#   sorted_array[2] => 中央値は「3」
#
# 要素数が偶数だった場合は、真ん中の２つの値の平均値を取ります。
#
#   sorted_array = [2, 3, 4, 5]
#   center_index = sorted_array.size / 2 => 「2」
#
#   「sorted_array[2]」と、そのひとつ前の要素「sorted_array[2 - 1]」の平均値を求めます。
#   (sorted_array[2] + sorted_array[2 - 1]) / 2.0
#     ※「2.0」で割っている理由は、割り算のどちらかが小数であれば、結果も小数になるからです。
#       Ruby以外の言語でも同じような性質があったりします。
#   「(3 + 4) / 2.0」 => 中央値は「3.5」
#
# これで中央値を求めることができます。
# もっと厳密にやるのであれば、「sort」メソッドを自作したり、戻り値を「小数第１位まで」とかに
# できると思いますが、ここではそこまでやりません。



### 備考 ###
# 仮に中央値ではなく、配列内に存在する真ん中の値を取得したいとします。
#
#   [1, 2, 3, 3, 5, 2, 4] => 「3」を取得したい
#
# その場合は下記のようにします。
#
#   def median_of_three_values_advanced(array)
#     return nil if array.length == 0
#     uniq_sorted_array = array.uniq.sort
#     center_index = uniq_sorted_array.size / 2
#     if uniq_sorted_array.size % 2 == 0
#       (uniq_sorted_array[center_index] + uniq_sorted_array[center_index - 1]) / 2.0
#     else
#       uniq_sorted_array[center_index]
#     end
#   end
#
# 「uniq」メソッドで配列内の重複をまとめてから「sort」メソッドで並び替えることで
# 真ん中の値を取得することができます。
#
#   [3, 1, 2, 2, 3, 2].uniq => [3, 1, 2]
#   [3, 1, 2].sort => [1, 2, 3]
#
# ユニークかした後の配列が奇数か偶数かで分岐させるのであれば、
# 発展問題解答例と同じことをすればOKです。
