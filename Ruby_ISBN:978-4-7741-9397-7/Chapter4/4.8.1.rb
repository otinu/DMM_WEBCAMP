puts "【each_with_index】メソッド"
puts "eachメソッドの各処理結果に添字を付与する。\n "

fish = ["tinu", "gure", "kiss", "kyuusenn"]
fish.each_with_index { |i, j| puts " 要素番号【#{j}】 #{i} " }