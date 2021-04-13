puts "Rubyのif文は最後に評価された式を戻り値として返す。\nif文の戻り値をそのまま変数に代入することも可能。\n"

country = 'italy'

# if文の戻り値を変数に代入する。
# elseif　ではなく、 elsifに注意

greeting =
 if country == "japan"
    "こんにちわ"
 elsif country == "us"
   "Hello"
 elsif country == "italy"
   "ciao"
 else
   "???"
 end

puts greeting

#=============================================
puts "\nRubyでは後置ifが可能"
puts "【通常】月の初日ならポイント5倍"

point = 7
day = 1

if day == 1
 point *= 5
end

puts point
#=============================================
puts "【後置if】ポイント5倍-月の初日なら"

point = 7
day = 1

point *= 5 if day ==1

puts point



