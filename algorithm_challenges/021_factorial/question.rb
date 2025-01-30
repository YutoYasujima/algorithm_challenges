### 問題021：階乗 ###
# 非負の階乗値を返す関数を定義してください。
# 引数「number」は正の整数です。

### 例 ###
# factorial(5) => 「120」

### 条件 ###
# ・階乗値は再帰的な処理で実装してください。
#   (factorial関数の中でfactorial関数を呼び出す)

### 再帰処理とは？ ###
# ・自分自身を用いる処理のこと。

def factorial(number)

end

### 実装確認 ###
# 下記のコメントアウトを解除すると確認できます。
# VSCodeエディタでは、該当箇所を選択した状態でキーを押下すると
# コメントアウト/コメントアウト解除ができます。
#    Windows/Linux：[Ctrl] + [/]
#    macOS：[Command] + [/]
# テスト実行前にはコメントアウトしてください。

puts "answer: 120, result: #{factorial(5)}"
puts "answer: 720, result: #{factorial(6)}"

### ヒント ###
# 再帰関数は関数定義の中で自分自身を呼び出す関数のことです。
#
#   def function(val)
#     function(val)
#   end
#
# このままだとずっと自分自身を呼び出すことになり、無限ループになります。
#
# 再帰関数を定義するときは、自分自身を呼び出さないための
# 終了条件が必要になります。
#
#   def function(val)
#     return 終了時の値 if 終了条件
#     function(val)
#   end
#
# 上記のように書けば、「val == 0」のときfunction関数は呼び出されないため、
# 無限ループを抜け出せます。
#
# 階乗の処理について考えます。
#
# 階乗は「5 * 4 * 3 * 2 * 1」や「3 * 2 * 1」です。
# 「factorial(3)」について考えます。
# 実現したいのは「3 * 2 * 1」の計算結果を返すことです。
# 「factorial」関数は引数を「number」で受け取ります。
# つまり、下記のような計算が実行できれば良さそうです。
#
#   number * (number - 1) * (number -2)
#
# これを再帰関数で実現します。
#
#   def factorial(number)
#     終了条件
#     number * factorial(number - 1)
#   end
#
# 終了条件は階乗を求めるときの最後の値になります。
# つまり、「number」が「1」なら「1」を返してあげれば良さそうです。
#
#   return 1 if number <= 1
#
# 引数「number」に0以下の値が渡されたときのことを考えて、
# 「number == 0」ではなく一応「number <= 1」としています。
#
# 再帰関数の呼び出しは下記のような流れになります。
#   No.1：
#     number = 3 => 終了条件の結果はfalse
#     「factorial(number - 1)」は「factorial(2)」として呼出
#     「factorial(3)」の処理はまだ終わっていない
#
#     No.2：
#       number = 2 => 終了条件の結果はfalse
#       「factorial(number - 1)」は「factorial(1)」として呼出
#       「factorial(2)」の処理はまだ終わっていない
#
#       No.3：
#         number = 1 => 終了条件の結果はtrue
#         終了時の値を返す
#
#     No.2に戻る：
#       「2 * factorial(1)」で「2 * 1」となり、「2」をNo.1に返す
#
#   No.1に戻る：
#       「3 * factorial(2)」で「3 * 2」となり、「6」が戻り値となる
#
# 以上のヒントを元に問題を解いてみましょう！
#