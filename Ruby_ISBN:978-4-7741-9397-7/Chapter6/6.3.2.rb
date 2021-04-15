puts "正規表現の確認"

text = "私の誕生日は1977年7月17日です。"
m = /(\d+)年(\d+)月(\d+)日/.match(text)

puts "【マッチした部分全体を取得】"
puts m
puts m[0]

puts "【キャプチャの1・2・3番目を取得】"
puts m[1]
puts m[2]
puts m[3]

puts "【Rangeを使って取得】結果は1つずつ取り出す場合と同じ。"
puts m[1..3]

puts "【最後のキャプチャを取得】"
puts m[-1]

