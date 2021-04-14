puts "【inject】メソッド"

puts "injectメソッドを使わなかった場合"
numbers = [1, 2, 3, 4]
sum = 0
numbers.each { |f| sum += f }
puts sum

puts "injectメソッドを使った場合"

array = [1, 2, 3, 4]
=begin
1.初回のみ引数(0)がブロック(result)の第一引数に格納される
2.ループの2回目以降はその場面で格納されたresultの値を使っていく
3.最終的な処理は次のようになる。
　((((0 + 1) + 2) + 3) + 4)
=end

num = array.inject(0) { |result, f| result + f }
puts num

#===============================================================
puts "文字列にも使用可能"

text = ["Have ","a " ,"nice", "day", "!"]
message = text.inject("Good bye,") { |result, f| result + f }
puts message
