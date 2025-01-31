def gcd(number1, number2)
  # 以下、解答例
  return number1 if number2 == 0
  gcd(number2, number1 % number2)
end

### 解答例解説 ###
# ユークリッドの互除法における再帰関数の終了条件は、
# 長方形の「長辺 % 短辺 == 0」です。
# 解答例で言うと「number1 % number2 == 0」ですが、
# 最後に呼び出されるgcd関数は「gcd(number2, 0)」となるため、
# 「if number2 == 0」が終了条件となります。
#
# もし終了条件が満たされなければ、次のgcd関数の呼び出しでは
# 短辺だった「number2」が「number1」(長辺)になり、
# 「長辺 % 短辺」の余りが「number2」(短辺)となります。
#