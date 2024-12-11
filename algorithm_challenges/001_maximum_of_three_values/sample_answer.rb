def maximum_of_three_values(numbers)
  # 引数チェック(不要)
  return unless numbers.is_a?(Array)
  return unless numbers.size == 3
  return unless all_integer?(numbers)

  # 以下、解答例
  max = numbers[0]
  max = numbers[1] if max < numbers[1]
  max = numbers[2] if max < numbers[2]
  max
end

# 不要なメソッド
def all_integer?(array)
  array.all? { |element| element.is_a?(Integer)}
end

### 解答例解説 ###
# 配列の各要素の値を比較し、大きい値を「max」に代入しています。
# 最後に戻り値として「max」を返しています。