puts "&&や||を使った場合、必ずしもtrueかfalseが戻り値になるとは限りません。\n "
puts "整数値が返ります。"
a = 1 && 2 && 3
puts a

puts "nilが返ります。"
b = 1 && nil && 3
puts b

puts "trueが返らないで整数が返り、falseはfalseとして返します。"
c = 1 && true && 3
d = 1 && false && 3
puts c
puts d

puts "eの出力です。判定はどちらも偽であるため、最終判定のfalseを返します。"
e = nil || false
puts e

puts "fの出力です。判定はどちらも偽であるため、最終判定のnilを返します"
f = false || nil
puts f

puts "2を評価した時点で式全体の真偽値が真であることが確定したため、2を返します。"
g = nil || false || 2 || 3
puts g