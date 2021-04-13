puts "小数点第三位まで表示"
a = sprintf("%0.3f", 1.2)
puts a

puts "省略系"
b = "%0.3f" % 1.5
puts b

puts "オブジェクトを複数渡すことも可能(省略形の記述も可能)"

c = sprintf("%0.3f + %0.1f", 0.48, 1.2)
puts c

puts "配列を連結して1つの文字列にする"
d = [10, 20, 30].join
puts d

puts "*演算子を使って文字列を繰り返す"
e = "a1" * 5
puts e