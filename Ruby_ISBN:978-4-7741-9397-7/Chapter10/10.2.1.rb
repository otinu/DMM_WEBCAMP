def greeting
  puts "おはよう"
  yield
  yield
  puts "こんばんは"
end

greeting do
  puts "Hello"
end

