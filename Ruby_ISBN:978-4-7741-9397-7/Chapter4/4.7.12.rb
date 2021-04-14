puts "空の配列を作成するArray.new。"
puts "Book.newなどでは空の配列は作成できない。"
a = Array.new(5)
p a

puts "第二引数を指定することで、初期値をnilから別の値にすることも可能。"
b = Array.new(5, "未入力")
p b

puts "Array.newでは、ブロックを使って初期値を設定することも可能。"
c = Array.new(5) { |f| f ** 2 }
p c
