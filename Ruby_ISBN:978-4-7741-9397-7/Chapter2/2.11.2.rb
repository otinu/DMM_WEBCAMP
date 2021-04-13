puts "Rubyで最初から用意されているメソッド"

puts "1.空文字があればtrue、そうでなければfalse"
a = ''.empty?
b = 'abc'.empty?

puts a
puts b

puts "引数の文字列が含まれていればtrue、そうでなければfalse"
c = 'watch'.include?('at')
d = 'watch'.include?('in')

puts c
puts d
puts "奇数ならtrue、偶数ならfalse"
e = 1.odd?
f = 2.odd?

puts e
puts f
puts "偶数ならtrue、奇数ならfalse"
g = 1.even?
h = 2.even?

puts g
puts h
puts "オブジェクトがnilであればtrue、そうでなければfalse"
i = nil.nil?
j = a.nil? #4行目でaにはtrueが格納されている。

puts i
puts j


puts "「?」付きのメソッドは自分で作ることも可"
def fizzbuzz?(i)
  i % 15 == 0
end

puts fizzbuzz?(3)
puts fizzbuzz?(5)
puts fizzbuzz?(15)