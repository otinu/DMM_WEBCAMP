def greeting
  puts "おはよう"
  text = yield "Hello"
  puts text
  puts "こんばんわ"
end

# yieldを使って、ブロックを活用する際、ブロック変数も統一する必要がある。この場合はtext
greeting do |text|
  text * 2
end