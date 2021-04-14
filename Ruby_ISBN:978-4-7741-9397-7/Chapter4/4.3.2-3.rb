puts "同じ処理を続けてすることも可能。最終的な配列の要素が変動することはない。"
array = [1, 2, 3, 4]
sum = 0
array.each do |f|
  sum += f
end

puts sum

array.each do |f|
   sum += f
end

puts sum
puts array

#============================================
puts "奇数の要素を削除する"
numbers = [1, 2, 3, 4, 5]

numbers.delete_if do |f|
  f.odd?
end

p numbers


