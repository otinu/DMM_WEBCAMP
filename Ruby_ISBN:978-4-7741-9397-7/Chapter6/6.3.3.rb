puts "【キャプチャに名前を付与】\n "
text = "私の誕生日は1977年7月17日です。"
m = /(?<year>\d+)年(?<month>\d+)月(?<day>\d+)日/.match(text)

puts "【シンボルで名前を指定・取得】"
puts m[:year]
puts m[:month]
puts m[:day]

puts "【文字列で指定・取得】"
puts m["year"]

puts "【連番で指定・取得】名前を付けても、連番の利用は可能"
puts m[1..2]


puts "【キャプチャの名前をローカル変数に代入】ダブルクオートの指定などは不要で、名前をそのまま使える。\n "
if /(?<year>\d+)年(?<month>\d+)月(?<day>\d+)日/ =~ text
  a = year #yearにダブルクオートは入れたりせずに利用
  b = month
  c = day

  puts "私の誕生日は" + a + "年" + b + "月" + c + "日です。"
end