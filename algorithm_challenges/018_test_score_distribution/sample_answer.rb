def test_score_distribution(scores)
  # 以下、解答例
  dist_array = Array.new(11, 0)
  scores.each { |score| dist_array[score / 10] += 1 }
  dist_array.each.with_index do |dist, index|
    if index == 10
      printf('%9d|', index * 10)
    else
      printf("%3d ～%3d|", index * 10, index * 10 + 9)
    end
    dist.times { print " *" }
    puts
  end
end

### 解答例解説 ###
# ヒントに書いたとおりの流れです。
#
# 「scores.each { |score| dist_array[score / 10] += 1 }」の部分で
# 「dist_array」に得点分布を作成しています。
#
# 「if index == 10 ～ else ～ end」の部分は、100点分布のラベルだけ
# 特別なのでわざわざ別に「printf｣メソッドを用意しています。
#
# 「dist.times { print " *" }」の部分で各区間毎の「*」を
# 表示すればOKです。



### 発展問題解答例 ###
#   def test_score_distribution_advanced(scores)
#     dist_array = Array.new(11, 0)
#     scores.each { |score| dist_array[score / 10] += 1 }
#     dist_array.max.downto(1) do |score_num|
#       dist_array.each do |dist_num|
#         if dist_num >= score_num
#           print('   *')
#         else
#           print('    ')
#         end
#       end
#       puts
#     end
#     horizontal_line = ''
#     interval_names = ''
#     dist_array.size.times do |index|
#       horizontal_line += '----'
#       interval_names += sprintf("%4d", index * 10)
#     end
#     puts horizontal_line
#     puts interval_names
#   end

### 解答例解説 ###
# 各区間の得点の個数を「dist_array」にまとめるところまでは、
# 前の問題と同じです。
#
# 「dist_array.max」で縦方向に最大何個「*」を表示しなければならないのか
# を求めています。「downto」メソッドで最大個数から１個まで表示するための
# 繰り返し処理を行います。
#
# 例えば下記のように表示したいとします。
#   dist_array = [1, 3, 0, 2]
#
#   1行目:       *
#   2行目:       *       *
#   3行目:   *   *       *
#         ----------------
#            a   b   c   d
#
# 縦方向に３個「*」を表示しなければならない区間(b)があるため、
# 行方向の処理を３回繰り返さなければならないことが分かります。
# 「downto｣メソッドを使うことで、指定した値までディクリメント(-1)
# しながら繰り返し処理を行うことができます。
#
#   3.downto(1)do |index|
#     「*」表示処理
#   end
#
# 上記のように書くことで、「index」には周毎に「3, 2, 1」が代入されます。
# この「downto」メソッドのブロックの中で、「dist_array」の各値について
# 見ていきます。
#
# 「index」が「3」のとき、「dist_array」の要素の値が「3以上」ならば「*」を表示する。
# 「index」が「2」のとき、「dist_array」の要素の値が「2以上」ならば「*」を表示する。
# 「index」が「1」のとき、「dist_array」の要素の値が「1以上」ならば「*」を表示する。
#
# とすることで「*」を表示することができます。
# 発展問題解答例の「if dist_num >= score_num」の部分がそのための比較です。
#
# あとは、ラベル部分を表示するための処理になります。
