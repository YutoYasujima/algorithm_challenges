def simple_linear_search(array, value)
  # 以下、解答例
  array.each.with_index do |element, index|
    return index if element == value
  end
  -1
end

### 解答例解説 ###
# ヒントに書いたとおりの流れです。
#
# 「array = [2, 5, 3, 4, 3, 1]」、「value = 3」で考えてみます。
#
#   1週目：「element」には「2」、「index」には「0」が代入される
#         「element」と「value」を比較する => 等しくないため次の周へ
#
#   2週目：「element」には「5」、「index」には「1」が代入される
#         「element」と「value」を比較する => 等しくないため次の周へ
#
#   3週目：「element」には「3」、「index」には「2」が代入される
#         「element」と「value」を比較する => 等しい
#         「return index if 3 == 3」となるため、「index」の「2」を返す
#
# ここで「return 2」を行っているのでメソッドの処理は終了します。
#
# 「value = 6」だったとします。上記の「array」に「6」は存在しません。
# この場合「each」メソッドによる繰り返し処理が終わるまでの間に
# 「return」が実行されることはありません。
#
# そのため、繰り返し処理終了後に「-1」をすることで
# 戻り値が「-1」となり、「value」が見つからなかったという結果になります。



### 備考 ###
# 解答例では「each」メソッドを使用しましたが、Ruby以外の言語でも
# 通用するように「times」メソッドで実装してみます。
#
#   def simple_linear_search(array, value)
#     array.size.times do |index|
#       return index if array[index] == value
#     end
#     -1
#   end
#
# やっていることは解答例とほとんど同じですが、こちらは
# 文字列内の文字の探索も行えます。
#   ※String型には「each」メソッドはありませんが、
#    「each_char」メソッドがあるようです。
#
#   simple_linear_search('apple', 'e') => 「4」
#
# 文字列内の文字列一致の探索方法はまたいずれ...。
#
#
#
# 「each.with_index」メソッドや「times」メソッドは
# (おそらく)下記の流れで処理が行われています。
#
#   1.カウント変数を「i = 0」として内部的に用意(ブロック変数「index」に代入されている値)
#   2.「i < 繰り返し回数(今回で言えば配列の要素数)」の比較
#     true  => ブロック内の処理を実行
#     false => 繰り返し処理終了(「3.」「4.」は行わない)
#   3.カウント変数「i」をインクリメント(i = i + 1)
#   4.「2.」に戻る
#
# 1周当たりの比較回数は「simple_linear_search」内の「array[index] == value」
# と上記「2.」の「i < 繰り返し回数(今回で言えば配列の要素数)」の2回になります。
#
# つまり、単純に計算すると配列のサイズ「N」のとき、N回繰り返しを行うため、
# 2N回の比較が行われることになります。
# 塵も積もれば山となるため、比較回数を減らしたいと思います。
#
# そのための方法として「番兵法」と呼ばれるものがあります。
#
# 要素の最後に「value」を追加することで、必ず探索が成功するようにします。
# この最後の「value」が「番兵」と呼ばれます。
#
#   def simple_linear_search(array, value)
#     index = 0
#     array << value
#     while 1
#       break if array[index] == value
#       index += 1
#     end
#     index == array.size - 1 ? -1 : index
#   end
#
# 「array << value」は「array」が配列でも文字列でも大丈夫なように、
# 「push」メソッドではなく「<<」で「value」を追加しています。
#
# 「while 1 ～ end」は無限ループを示しています。
# 「array[index] == value」がtrueになるとき、「break」によって繰り返し処理を
#  抜け出しています。
# 今回の場合は、「array」の最後に「value」を追加しており、必ず「value」が
# 見つかるためこのような書き方ができます。
#
# 繰り返し処理を抜け出した後に「index == array.size - 1 ? -1 : index」を
# 実行しています。これは『見つけた「value」が番兵(一番最後の要素)なら「-1」、
# そうでないなら「index」を返す』ということを示しています。
#
# 上記のように書くと、繰り返しの中で行っている比較は「array[index] == value」
# のみとなり、配列のサイズが「N」のとき、比較回数はN回になります。
# つまり、解答例のだいたい半分の処理回数で実行できるということになります。
#
# このように、少しでも処理回数を減らすため「番兵法」というものがあります。
