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

### 発展問題 ###
# 問題文の条件が下記のように修正された場合の「array_sum」メソッドを
# 定義してください。

### 発展問題条件 ###
# ・Arrayクラスの「sum」メソッドは使用しないでください。
# ・引数「array」配列の要素は「すべて整数」または「すべて文字列」とします。
#   文字列の合計とは、文字列を連結することとします。
#
#     array_sum(['a', 'b', 'c', 'd', 'e']) => 'abcde'
#
# ・引数「array」配列の要素がが空だった場合、「nil」を返してください。

### 発展問題ヒント ###
# ・まず、配列が空だった場合は「nil」を返してメソッドの処理を
#   終わらせてしまいます。「return nil」で実現できます。
#   配列が空であるかどうかはArrayクラスの「empty?」メソッドが利用できます。
#
#     array.empty? => 空なら「true」を返す
#
# ・配列が空でないことが確定するので、配列の要素は必ず１つはあることになります。
#   条件には「すべて整数」または「すべて文字列」とあるので、１つ目の要素の型が
#   Integer型なのかString型なのかで「sum」の初期値を決めましょう。
#   型の判定には「is_a?」メソッドが利用できます。
#   「is_a?」メソッドはレシーバー(下記の場合「array[0]」)の型が、
#   引数で渡された型(下記の場合「Integer」)であるときは「true」を返します。
#
#     array[0].is_a?(Integer) => 「array[0]」が整数なら「true」を返す
#
# ・あとは解答例と同じ流れでできるはずです。

### 発展問題解答例 ###
#   def array_sum(array)
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
