def array_sum(array)
  # 以下、解答例
  sum = 0
  array.each do |element|
    sum += element
  end
  sum
end

### 解答例解説 ###
# 問題の条件に『引数「array」配列の要素は「すべて整数」とします。』と
# あるので、「sum = 0」で初期化します。
# 繰り返し処理のブロック変数「element」に「array」配列の要素が
# 代入されていくので、「sum」に次々足し合わせて合計を出しています。
#
# 「array」配列が空だった場合は、「each」メソッドは１回も繰り返し処理を
# 行いません。そのため「sum」は初期化した「0」のまま返すことになります。
#
# 下記でもOKです。
#
#   def array_sum(array)
#     sum = 0
#     array.each { |element| sum += element }
#     sum
#   end



### 発展問題解答例 ###
#   def array_sum_advanced(array)
#     return nil if array.empty?
#     if array[0].is_a?(Integer)
#       sum = 0
#     elsif array[0].is_a?(String)
#       sum = ''
#     end
#     array.each do |element|
#       sum += element
#     end
#     sum
#   end

### 発展問題解答例解説 ###
# 処理の流れはヒントの通りです。
# 上記解答例では「if ～ elsif ～ end」で整数か文字列かの条件分岐を
# 行っていますが、今回の問題の場合は「if ～ else ～ end」でも構いません。
