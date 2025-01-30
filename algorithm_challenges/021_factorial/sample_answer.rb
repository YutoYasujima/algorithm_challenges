def factorial(number)
  # 以下、解答例
  return 1 if number <= 1
  number * factorial(number - 1)
end

### 解答例解説 ###
# ヒントに書いたとおりの流れです。
