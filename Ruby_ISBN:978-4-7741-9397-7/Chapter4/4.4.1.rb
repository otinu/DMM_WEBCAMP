puts "【mapメソッド】"

puts "mapメソッドを使わなかった場合"
numbers = [1, 2, 3, 4, 5]
new_numbers = []
numbers.each { |f| new_numbers << f * 10 }
p new_numbers

puts "mapメソッドを使った場合"
array = [1, 2, 3, 4, 5]
new_numbers = numbers.map{ |f| f * 10 }
p new_numbers

puts "mapメソッドを使うことで、【空の配列を用意する】【要素を格納する】を一度に行うことができる"