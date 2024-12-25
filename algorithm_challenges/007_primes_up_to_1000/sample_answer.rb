def primes_up_to_1000
  # 以下、解答例1
  primes_array = []
  (2..1000).each do |number|
    is_not_prime = false
    (2...number).each do |n|
      if number % n == 0
        is_not_prime = true
        break
      end
    end
    primes_array << number unless is_not_prime
  end
  primes_array
end

### 解答例解説 ###
# 解答例1：
# 素数とは、『「1」を含めない、「1」と自分自身でのみ割り切れる数』のことです。
# つまり、「1」と自分自身以外の数で割り切れた場合は素数ではありません。
#
# 「(2..1000).each do |number|」は、「1」は素数ではないことが分かっているので、
# 「2～1000」の間のすべての数に対して繰り返し処理を行うことを定義しています。
#
# 「is_not_prime = false」は、素数か否かを判定するフラグになっています。
# trueなら「素数ではない」、falseなら「素数である」ということを表現します。
#
# 「(2...number).each do |n|」は、「1」と自分自身以外の数で割るための
# 繰り返し処理を定義しています。「(2...number)」(「.」が3つ)とすることで、
# 「2～number未満」のRangeオブジェクトを生成し、繰り返し処理を行います。
#
# 「if number % n == 0」は、判定対象の数である「number」が割り切れる(あまりが無い)場合、
# 素数判定フラグ「is_not_prime」をtrueにし、break句によって「(2...number).each do |n|」
# の方の繰り返し処理を抜けています。
#
# 「primes_array << number unless is_not_prime」は、「is_not_prime」がfalseの場合に
# 整数「number」を配列に追加しています。
#
# 以上の処理で「1～1000」までの素数を取得できますが、効率の良い処理ではありません。
# 下記のように定義して、計算回数「count」を見ると「number % n」の計算が78,022回も
# 行われていることが分かります。
#
#   def primes_up_to_1000
#     primes_array = []
#     count = 0
#     (2..1000).each do |number|
#       is_not_prime = false
#       (2...number).each do |n|
#         count += 1
#         if number % n == 0
#           is_not_prime = true
#           break
#         end
#       end
#       primes_array << number unless is_not_prime
#     end
#     puts "計算回数：#{count}回"
#     primes_array
#   end

# 解答例2：
# 無駄な繰り返し処理を削減します。
# まず、偶数は「2」で割り切れるので素数ではないことが分かります。
#
# また、奇数であっても削減できるものがありそうです。例えば「27」や「45」は
# 「9」で割り切ることができます。「9」は「3」の倍数なので「27」や「45」は
# 「3」という素数でも割り切れることが分かります。
# つまり、「3, 5, 7, 9, 11, 13, 15, 17, ...」という奇数すべてで
# 割り切れるかどうかを判定するのは無駄な処理になるため、
# 「3, 5, 7, 11, 13, 17, ...」という素数で割りきれるのか判定すれば良さそうです。
#
# 上記から繰り返し処理を次のように変更できます。
#   ・素数判定したい数を割る数は、奇数のみで良い。
#   ・素数判定したい数を割る数は、「2」以外の判明している素数で良い。
#
#   def primes_up_to_1000
#     primes_array = [2]
#     (3..1000).step(2) do |number|
#       is_not_prime = false
#       (1..(primes_array.size - 1)).each do |index|
#         if number % primes_array[index] == 0
#           is_not_prime = true
#           break
#         end
#       end
#       primes_array << number unless is_not_prime
#     end
#     primes_array
#   end
#
# 「primes_array = [2]」は、「2」は素数であることが確定しているので、最初から
# 配列に加えています。
#
# 「(3..1000).step(2) do |number|」は、「3～1000」までの範囲を１つ飛ばし(奇数のみ)で
# 繰り返すことを定義しています。
#
# 「(1..(prime_array_size - 1)).each do |index|」は、現在判明している素数で、
# 素数判定したい数を割るための繰り返し処理を定義しています。
# 「1..」となっている理由は、「primes_array[0]」には「2」が入っており、「number」は
# 奇数であることが確定しているため、「2」で割り切れないことが分かっているからです。
#
# この修正により、計算回数を78,022回から14,622回まで削減することができました。
# ただし、もっと削減できそうです。

# 解答例3：
# 「81」の約数は、「1, 3, 9, 27, 81」です。
# これは「1 * 81」「3 * 27」「9 * 9」というペアで「81」になることを示しています。
# つまり、「1」「3」「9」で割り切れるということは、「9」「27」「81」でも割り切れる
# ということを示しています。
#
# このことから、割る数は素数判定したい数の平方根まで、つまり、割る数の２乗が素数判定
# したい数以下までの約数を調べれば良いことが分かります。
#   例)「225」の約数 => 「1, 3, 5, 15, 45, 75, 225」
#      「15」の２乗が「225」なので、「15」まで調べれば良い。
#       解答例2までの考え方も取り入れると、「15」以下の素数で割り切れるか調べれば良い。
#       つまり、「3」か「5」で割り切れたら素数ではないことが分かります。
#
#   def primes_up_to_1000
#     primes_array = [2, 3]
#     (5..1000).step(2) do |number|
#       is_not_prime = false
#       index = 1
#       while primes_array[index] * primes_array[index] <= number
#         if number % primes_array[index] == 0
#           is_not_prime = true
#           break
#         end
#         index += 1
#       end
#       primes_array << number unless is_not_prime
#     end
#     primes_array
#   end
#
# 今回は「primes_array = [2, 3]」としています。「3」も素数として確定しているので、
# 初期値に追加しています。
#
# 「(5..1000).step(2) do |number|」は、「3」を素数として初期値に追加した影響で、
# 次の奇数である「5」からスタートさせています。
#
# 「index = 1」は、解答例2でも解説したとおり、「primes_array」に「2」が入っているからです。
#
# 「while primes_array[index] * primes_array[index] <= number」は、割る数の２乗が
# 素数判定したい数を超えるまで繰り返しをするように定義しています。
# 計算は「number % primes_array[index]」「primes_array[index] * primes_array[index]」
# の２か所で行われています。
# 計算回数を求めるには、下記のようにメソッドを修正します。
#
#   def primes_up_to_1000
#     primes_array = [2, 3]
#     count = 0
#     (5..1000).step(2) do |number|
#       is_not_prime = false
#       index = 1
#       while (count += 1) && (primes_array[index] * primes_array[index] <= number)
#         count += 1
#         if number % primes_array[index] == 0
#           is_not_prime = true
#           break
#         end
#         index += 1
#       end
#       primes_array << number unless is_not_prime
#     end
#     puts "計算回数：#{count}回"
#     primes_array
#   end
#
# この修正により、計算回数を14,622回から3,774回まで削減することができました。

### 備考 ###
# 引数に正の整数を渡して素数かどうか判定するメソッドは、
# Rubyなら下記のように定義できるようです。
#   def prime?(number)
#     return false if number <= 1
#     (2..Math.sqrt(number)).none? { |i| number % i == 0 }
#   end
#
# 「1」は素数ではないため、すぐにfalseを返します。
# 「(2..Math.sqrt(number))」は、「2」から「numberの平方根」までの範囲を示しています。
# 「none?」メソッドによって、「2」から「numberの平方根」の範囲内の整数で「number」を
# 割っていったときに、割り切れたものがあった場合はfalse(素数ではない)、割り切れるものが
# 無かった場合はtrue(素数である)を返します。
