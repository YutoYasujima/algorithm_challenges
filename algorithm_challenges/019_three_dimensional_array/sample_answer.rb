def three_dimensional_array(exams)
  # 以下、解答例
  result = Array.new(4) { Array.new(3, 0) }
  4.times do |student|
    3.times do |subject|
      result[student][subject] = (exams[0][student][subject] + exams[1][student][subject])
    end
  end
  result
end

### 解答例解説 ###
# ヒントに書いたとおりの流れです。
#
# 戻り値用の２次元配列を用意します。
# 用意した２次元配列に、１回目と２回目の試験結果を合計したものを代入しています。

### 別解 ###
# ３次元配列だからと、素直に３回繰り返し処理を行うと下記のようになります。
#
#   def three_dimensional_array(exams)
#     exam_num = exams.size
#     student_num = exams[0].size
#     subject_num = exams[0][0].size
#     result = Array.new(student_num) { Array.new(subject_num, 0) }
#
#     student_num.times do |student|
#       exam_num.times do |exam|
#         subject_num.times do |subject|
#           result[student][subject] += exams[exam][student][subject]
#         end
#       end
#     end
#     result
#   end

### 別解解説 ###
# 前提として、「各試験・各学生・各教科がすべて同じ数だけある」としています。
# この書き方であれば、試験数・学生数・教科数が変わっても
# 正しい２次元配列を作成することができると思います。
#
#   p three_dimensional_array([
#         [[  1,   2,   3,   4,   5], [  6,   7,   8,   9,   10]],
#         [[ 10,  20,  30,  40,  50], [ 60,  70,  80,  90,  100]],
#         [[100, 200, 300, 400, 500], [600, 700, 800, 900, 1000]]
#       ])
#
#      => [[111, 222, 333, 444, 555], [666, 777, 888, 999, 1110]]
#
# ３次元配列「exams」が下記であることを想定します。
#   exams = [
#             [
#               [1, 2, 3],    ...試験１回目のAさんの３教科の得点
#               [4, 5, 6],    ...試験１回目のBさんの３教科の得点
#               [7, 8, 9],    ...試験１回目のCさんの３教科の得点
#               [10, 11, 12]  ...試験１回目のDさんの３教科の得点
#             ],
#             [
#               [13, 14, 15], ...試験２回目のAさんの３教科の得点
#               [16, 17, 18], ...試験２回目のBさんの３教科の得点
#               [19, 20, 21], ...試験２回目のCさんの３教科の得点
#               [22, 23, 24]  ...試験２回目のDさんの３教科の得点
#             ],
#           ]
#
# 「exams[0]」は下記を示しています。
#
#   [
#     [1, 2, 3],
#     [4, 5, 6],
#     [7, 8, 9],
#     [10, 11, 12]
#   ]
#
# そのため、「exams[0].size」で、生徒数を取得することができます。
# 「exams[0][0]」は下記を示しています。
#
#   [1, 2, 3]
#
# そのため、「exams[0][0].size」で、教科数を取得することができます。
#
# それ以外の部分に関しては、基本的に解答の処理と同じです。
# 繰り返し処理の入れ子の順番が外から「学生」「試験」「教科」に
# なっているので、注意してください！
