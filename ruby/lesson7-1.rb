puts "整数値の1番目を入力してください"
i = gets.to_i
puts "整数値の2番目を入力してください"
t = gets.to_i

total = i * t
if total == 0
 puts "入力された内容のいずれかが 0 または 文字 のため、結果が0となりました。"
else
 puts "計算結果は#{total}でした"
end