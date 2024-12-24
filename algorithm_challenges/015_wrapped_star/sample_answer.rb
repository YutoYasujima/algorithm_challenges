def wrapped_star(num, width)
  # 以下、解答例
  num.times do |index|
    print '☆'
    puts if index % width == width - 1
  end
  puts
end

### 解答例解説 ###
# ヒントに書いたとおりの流れです。
# 最後の「puts」メソッド呼び出しはなくても構いません。
#
# ヒントでは「width」が「3」の例をあげました。
# 「width」が「3」のときは、「index」が「2」のとき、
# 「☆」を表示したら改行すれば良かったと思います。
#
# 『「width」が「4」のときは、「index」が「3」のとき』、
# 『「width」が「5」のときは、「index」が「4」のとき』と
# なっていきます。
#
#「if index % width == width - 1」の部分が上記を
# 表現しています。
