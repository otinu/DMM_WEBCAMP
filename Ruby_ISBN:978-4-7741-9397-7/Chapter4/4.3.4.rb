puts "ブロック内でそれぞれの条件によって処理を分岐させることも可能。"

numbers = [1, 2, 3, 4, 5]
sum = 0
numbers.each do |f|
  sum_value = if f.odd?
                f * 10 #奇数は10倍
              else
                f      #偶数はそのまま
              end
  sum +=  sum_value
end

puts sum
puts "今回の場合、あえて三項演算子を使わなかったが、これだとリーダブルじゃない。"
puts "しかし、これでも処理は問題ないのは新しい発見。"

#================================================================================
puts "each doを使わずにコンパクトに表現することも可能。"
array = [1, 2, 3, 4]
num = 0
array.each { |f| num += f }

puts num