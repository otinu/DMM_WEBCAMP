puts "10.3.2.rbに同じ内容の別の記述方法あり。"


def greeting(&block)
  puts "おはよう"
  text = block.call("Hello")
  puts text
  puts "こんばんは"
end

greeting do |text|
  text * 2
end