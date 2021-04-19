fish = { tinu: "黒鯛", kiss: "砂浜の女王", gure: "クロ" }

puts "キーやハッシュのみの出力"
p fish.keys
p fish.values

puts "キーやハッシュの確認"
puts  fish.has_key?(:gure)
puts  fish.has_key?(:kiss)
