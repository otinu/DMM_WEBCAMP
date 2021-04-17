class User
end

user = User.new

puts "【Userクラスのオブジェクトはto_sメソッドやnil?メソッドを呼び出すことが可能"
puts user.to_s
puts user.nil?

puts "理由は、Userクラスがオブジェクトクラスを継承しているため。"
puts User.superclass

puts "次のようにして、継承したメソッドの一覧を確認可能。"
puts user.methods.sort