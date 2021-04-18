puts "10.2.2.rb と処理の結果は全く同じ。"
puts "こちらはProcオブジェクトを作成し、greetingメソッドに渡している。"

def greeting(&block)
  puts "おはよう"
  text = block.call("Hello")
  puts text
  puts "こんばんは"
end

#Procオブジェクトを作成
repeat_proc = Proc.new { |text| text * 2 }

#作成したProcメソッドを渡して、greetingメソッド呼び出し
greeting(&repeat_proc)

puts "必ず、&を付けて呼び出し。"