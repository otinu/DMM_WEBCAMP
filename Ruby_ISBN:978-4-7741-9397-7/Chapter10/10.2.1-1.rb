def greeting
  puts "おはよう"

  if block_given?
    yield
  end

  puts "こんばんは\n "
end

greeting do
  puts "Hello"
end


puts "block_given?のおかげで、yield部分はスルーされて表示される。"
puts greeting

#======================================

puts "block_given?がないと、yieldが読み込めずにエラーとなる"

def aisatu
  puts "おはよう"
    yield
  puts "こんばんは\n "
end

aisatu do
  puts "Hello"
end

puts aisatu

