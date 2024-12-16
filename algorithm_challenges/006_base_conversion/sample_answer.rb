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
# def base_conversion(number, base)
#   return number_to_alphabet(number) if number < base
#   base_conversion(number / base, base) + number_to_alphabet(number % base)
# end
#
# def number_to_alphabet(number)
#   if (10..15).include?(number)
#     (number - 10 + 65).chr
#   else
#     number.to_s
#   end
# end
#
# 再帰関数でやってみました。
# 「再帰関数」とは自分自身を呼び出す関数(メソッド)です。
# 必ず終わりの条件を設定する必要があります。
# 繰り返し処理で書き換えることが可能なので、あまり実用的では無いかもしれません。
# 解答例では配列を使用しましたが、今回は文字列を基本として定義しました。
#
# 「return number_to_alphabet(number) if number < base」が再帰関数の終わりの条件になります。
# 「base_conversion(10, 2)」で再帰関数の流れを解説します。
#   No.1：
#     number = 10 => 「number < base」はfalse
#     2行目の「base_conversion(10 / 2, 2)」呼出
#     「base_conversion」の処理はまだ終わっていない
#
#     No.2：
#       number = 5 => 「number < base」はfalse
#       2行目の「base_conversion(5 / 2, 2)」呼出
#       「base_conversion」の処理はまだ終わっていない
#
#       No.3：
#         number = 2 => 「number < base」はfalse
#         2行目の「base_conversion(2 / 2, 2)」呼出
#         「base_conversion」の処理はまだ終わっていない
#
#         No.4：
#           number = 1 => 「number < base」はtrue
#           「return number_to_alphabet(1)」で「'1'」をNo.3に返す
#
#       No.3に戻る：
#         「'1' + number_to_alphabet(2 % 2)」で'10'をNo.2に返す
#
#     No.2に戻る：
#       「'10' + number_to_alphabet(5 % 2)」で'101'をNo.1に返す
#
#   No.1に戻る：
#     「'101' + number_to_alphabet(10 % 2)」で'1010'を返し終了
#
# 「number_to_alphabet」メソッドの中の「(number - 10 + 65).chr」の部分を解説します。
# 文字には文字コードという番号が当てられています。
#   'A'なら「65」、'B'なら「66」、'C'なら「67」...
# ただし、文字コードには「Unicode」や「ASCII」などの種類があるので、
# 常に『'A'なら「65」』とは言い切れません。
#   ※「文字コード」という言葉は、「文字に当てられた番号」、「文字に番号を当てた体系的な仕組み」
#     の両方の意味で使われると思われます。
#
# 上記のコードでは、「10」という数値を'A'(文字コード「65」)に変換するために、
# 「(number - 10 + 65).chr」としています。Integerクラスの「chr」メソッドは
# 文字コードを文字に変換するメソッドです。
# これにより、「10～15」の数値を「A～F」のアルファベットに変換しています。
