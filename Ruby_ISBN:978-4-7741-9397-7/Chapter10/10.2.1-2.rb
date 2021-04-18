def greeting
  puts "おはよう"
  text = yield "Hello"
  puts text
  puts "こんばんわ"
end

greeting do |text|
  text * 2
end