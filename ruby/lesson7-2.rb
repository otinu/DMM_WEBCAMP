puts "これから入力する2文字の四則演算結果を返します"
puts "整数値の1番目を入力してください"
i = gets.to_i
puts "整数値の2番目を入力してください"
j = gets.to_i

sum = i + j
diff = i - j
pro = i * j
quo = i / j

puts "入力された値は#{i}と#{j}でした。計算結果は次のようになります"
puts "和は#{sum}"
puts "差は#{diff}"
puts "積は#{pro}"
puts "商は#{quo}"
puts "以上で終了します"

