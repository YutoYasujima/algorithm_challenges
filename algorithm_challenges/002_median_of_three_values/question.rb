### 問題002：三値の中央値 ###
# ３つの整数の中央値を返すメソッドを定義してください。
# 引数「numbers」は３つの整数をもつ配列です。

### 例 ###
# median_of_three_values([1, 2, 3]) =>「2」
# median_of_three_values([1, 2, 2]) =>「2」
# median_of_three_values([1, 2, 1]) =>「1」
# median_of_three_values([1, 1, 1]) =>「1」

### 条件 ###
# 特にありません。

def median_of_three_values(numbers)

end

### 実装確認 ###
# 下記のコメントアウトを解除すると確認できます。
# VSCodeエディタでは、該当箇所を選択した状態でキーを押下すると
# コメントアウト/コメントアウト解除ができます。
#    Windows/Linux：[Ctrl] + [/]
#    macOS：[Command] + [/]
# テスト実行前にはコメントアウトしてください。

# puts median_of_three_values([1, 2, 3])

### 発展問題 ###
# 配列内の整数の中央値を返すメソッドを定義してください。
# 引数「numbers」はすべて整数である配列です。

### 例 ###
# median_of_three_values_advanced([3, 3, 3]) =>「3」
# median_of_three_values_advanced([3, 2, 4, 1]) =>「2.5」
# median_of_three_values_advanced([3, 2, 2, 1, 3]) =>「2」

### 条件 ###
# ・もし配列の要素数が偶数だった場合は、中央値となり得る２つの
#   平均値を中央値としてください。
# ・配列の要素数が「0」個(空)だった場合は、「nil」を返してください。
# ・戻り値は整数でも小数でも構いません。

### 注意 ###
# ・発展問題にテストはありません。下記の実装確認で
#   上記例のようになることを確認してください。

def median_of_three_values_advanced(array)

end

### 実装確認 ###
# puts "[3, 3, 3] => #{median_of_three_values_advanced([3, 3, 3])}"
# puts "[1, 2, 3, 4] => #{median_of_three_values_advanced([1, 2, 3, 4])}"
# puts "[1, 2, 2, 3, 3] => #{median_of_three_values_advanced([3, 2, 2, 1, 3])}"
