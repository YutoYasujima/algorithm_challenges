### 問題017：(単純な)線形探索 ###
# 指定された値と最初に一致した要素の要素番号を
# 返すメソッドを定義してください。
# 引数「array」は配列です。
# 引数「value」は探索したい値です。

### 例 ###
# simple_linear_search([2, 1, 4, 3], 4) => 「2」
# simple_linear_search(['h', 'e', 'l', 'l', 'o'], 'l') => 「2」
# simple_linear_search(['a', 'p', 'p', 'l', 'e'], 'b') => 「-1」

### 条件 ###
# ・線形探索(前から順に比較していく探索方法)で実装してください。
# ・Arrayクラスの「index」メソッドは使用しないでください。
# ・「array」内に「value」と一致する値が存在しなかった場合、
#   「-1」を返してください。

def simple_linear_search(array, value)

end

### 実装確認 ###
# 下記のコメントアウトを解除すると確認できます。
# VSCodeエディタでは、該当箇所を選択した状態でキーを押下すると
# コメントアウト/コメントアウト解除ができます。
#    Windows/Linux：[Ctrl] + [/]
#    macOS：[Command] + [/]
# テスト実行前にはコメントアウトしてください。

# puts "#{simple_linear_search([2, 1, 4, 3], 4)}"
# puts "#{simple_linear_search(['h', 'e', 'l', 'l', 'o'], 'l')}"
# puts "#{simple_linear_search(['a', 'p', 'p', 'l', 'e'], 'b')}"

### ヒント ###
# 配列「array」の各要素と「value」を比較していきましょう！
#
# 今回は「each」メソッドで繰り返していきます。
# また、「value」を見つけたときの要素番号も必要なので、
# 「with_index」メソッドも使用します。
#
#   array.each.with_index do |element, index|
#     「element」と「value」を比較する
#   end
#
# 最初に「element」と「value」が一致したときの要素番号を
# 返してあげればよいので、一致したところで「return」してしまいましょう！
#
#   return 要素番号 if 「element」と「value」を比較する
#
# 上記のように書くことで、『もし「element」と「value」が一致したら、
# そのときの要素番号を返す』とすることができます。
#
# 「return」が呼び出された場合、そこでメソッドの処理が終了するため、
# もし繰り返し1周目で一致した場合、その後の余計な処理をする必要がなくなるため、
# 処理効率が上がります。
#
# もし「array」内に「value」が見つからなかった場合は、
# 繰り返しが終わった後に「-1」を返してあげれば良さそうです。
#
# 以上のヒントを元に問題を解いてみましょう！
