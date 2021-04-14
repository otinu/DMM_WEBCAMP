puts "【select】メソッド"
puts "各要素に対して判定を行い、真の要素だけを集めた新たな配列を返す。"
numbers = [1, 2, 3, 4, 5, 6]
even_numbers = numbers.select { |f| f.even? }
p even_numbers

puts "【reject】メソッド"
puts "selectメソッドと真逆。"
puts "各要素に対して判定を行い、偽の要素だけを集めた新たな配列を返す。"
array = [1, 2, 3, 4, 5, 6]
non_multiples_of_thhree = numbers.reject { |f| f % 3 == 0 }
p non_multiples_of_thhree
