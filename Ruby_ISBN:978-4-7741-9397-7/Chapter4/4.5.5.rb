puts "範囲オブジェクトを配列にして、ループ処理を実行"
numbers = (1..4).to_a
sum = 0
numbers.each { |f| sum += f }
puts sum

puts "範囲オブジェクトを直接使って、ループ処理を実行"
num = 0
(1..4).each { |f| num += f }
puts num

puts "更に、stepメソッドを使って間隔を指定"
somenum = 0
(1..10).step(2) { |f| somenum += f }
puts somenum

array = []
(1..10).step(2) { |f| array << f } # <<は配列の末尾に格納する。
p array
