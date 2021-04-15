puts "【キーを使った繰り返し処理】"

fish = {"tinu" => "黒鯛", "kiss" => "砂浜の女王", "gure" => "クロ"}

=begin これだと、keyしか取り出せない。

fish.each do |i, j|
  puts "#{i} : #{j}"
end

=end

fish.each do |key, value|
  puts "#{key} : #{value}" #ここで、puts から p に変えるとダブルクオートが付くか付かないかの違い。
end 
puts " \n "

puts "【ハッシュの削除をすると、削除したキーに対応する値が戻り値となる。】"
puts fish.delete("gure")
puts fish                #グレは消えている