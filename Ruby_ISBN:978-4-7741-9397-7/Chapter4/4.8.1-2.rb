puts "【with_index】メソッド"
puts "eachメソッドの各処理結果に添え字を付与する。\n "

fish = ["tinu", "gure", "kiss", "kyuusenn", "hata", "kasago", "anago"]
fish.each_with_index { |i, j| puts " 要素番号【#{j}】 #{i} " }

puts "mapメソッドの各処理に添え字を付与する。\n "

animal = ["lion", "elephant", "tiger"]
animals = animal.map.with_index { |i, j| "アニマル番号#{j} #{i}" }
p animals

puts "with_indexメソッドを活用して、添え字番号で格納する要素を振り分ける。\n "
#「"k"を文字列に含んだ魚」かつ「要素番号が奇数」の配列を削除
array = fish.delete_if.with_index { |fish, i| fish.include?("k") && i.odd? }
p array