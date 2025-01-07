def binary_search(array, value)
  # 以下、解答例
  pl = 0
  pr = array.size - 1
  while pl <= pr
    pc = (pl + pr) / 2
    if array[pc] > value
      pr = pc - 1
    elsif array[pc] < value
      pl = pc + 1
    else
      return pc
    end
  end
  -1
end

### 解答例解説 ###
# ヒントに書いたとおりの流れです。
#
# 最初に「pl」に要素番号「0」を、「pr」に最後の要素番号
# 「array.size - 1」を代入しておきます。
