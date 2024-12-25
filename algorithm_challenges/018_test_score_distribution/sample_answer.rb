def test_score_distribution(scores)
  # 以下、解答例
  dist_array = Array.new(11, 0)
  scores.each { |score| dist_array[score / 10] += 1 }
  dist_array.each.with_index do |dist, index|
    if index == 10
      printf('%9d|', index * 10)
    else
      printf("%3d ～%3d|", index * 10, index * 10 + 9)
    end
    dist.times { print " *" }
    puts
  end
end

### 解答例解説 ###
# ヒントに書いたとおりの流れです。
#
# 「scores.each { |score| dist_array[score / 10] += 1 }」の部分で
# 「dist_array」に得点分布を作成しています。
#
# 「if index == 10 ～ else ～ end」の部分は、100点分布のラベルだけ
# 特別なのでわざわざ別に「printf｣メソッドを用意しています。
#
# 「dist.times { print " *" }」の部分で各区間毎の「*」を
# 表示すればOKです。