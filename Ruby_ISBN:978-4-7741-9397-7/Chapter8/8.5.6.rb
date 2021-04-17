puts "ここはトップレベル"

p self
p self.class
puts " \n "

class User
  puts "ここはクラスの内部"
  p self
  p self.class
end