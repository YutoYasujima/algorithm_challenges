def maximum_of_three_values(numbers)
  # 以下、解答例
  max = numbers[0]
  max = numbers[1] if max < numbers[1]
  max = numbers[2] if max < numbers[2]
  max
end

### 解答例解説 ###
# 配列の各要素の値を比較し、大きい値を「max」に代入しています。
# 最後に戻り値として「max」を返しています。

### 別解 ###
# アルゴリズムを考えるという意味では不適当かもしれませんが、下記の解答例もあります。
# 「sort」メソッドにより昇順に並び替えた後に、一番最後の要素を返しています。

# def maximum_of_three_values(numbers)
#   numbers.sort[-1]
# end