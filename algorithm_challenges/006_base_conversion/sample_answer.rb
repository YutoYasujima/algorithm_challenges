def base_conversion(number, base)
  # 以下、解答例
  reverse_number_array = []
  while number >= base
    reverse_number_array << number % base
    number /= base
  end
  reverse_number_array << number
  number_to_alphabet_in_array(reverse_number_array).reverse.join
end

def number_to_alphabet_in_array(numbers)
  numbers.map do |number|
    case number
    when 10
      'A'
    when 11
      'B'
    when 12
      'C'
    when 13
      'D'
    when 14
      'E'
    when 15
      'F'
    else
      number
    end
  end
end

### 解答例解説 ###
# 繰り返し処理にwhileを使っています。これは何回繰り返しをすれば良いか
# 分からない場合によく使われると思います。
# ただし、無限ループにならないように気を付けてください。
# whileの条件式「number >= base」は整数「number」が基数「base」で割りきれる間は、
# while内部の処理を繰り返すことを表現しています。
#
# 配列「reverse_number_array」にはあまりを追加していきますが、
# これは最終的な結果の逆順になっています。
#
# 「number /= base」で「number」に「number / base」の商を代入します。
# 「number < base」(商が基数で割り切れなくなった)となったらwhileの条件式「number >= base」が
# falseとなるため、繰り返しが終了します。
#
# 最後の計算の商を先頭に追加する必要があるため、「reverse_number_array << number」を行います。
#
# 配列「reverse_number_array」内にアルファベットに変換する必要がある数値を変換しまします。
# 配列「reverse_number_array」は変換値の逆順になっているため、Arrayクラスの「reverse」メソッド
# を使用して、正しい順に並び替えています。
# Arrayクラスの「join」メソッドで配列の各要素を結合して文字列に変換しています。

### 別解 ###
