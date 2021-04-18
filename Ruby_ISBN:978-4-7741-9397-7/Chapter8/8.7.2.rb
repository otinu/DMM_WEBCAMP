module Loggable
  def log(text)
    puts "[LOG]#{text}"
  end
  module_function :log
end

Loggable.log("Hello")


class Product
  include Loggable

  def title
    log "title is called"
    "A great movie \n "
  end
end

puts "ミックスインした後でもlogモジュールファンクションは特異メソッドとして、利用可能。"
puts Loggable.log("Hello World")

puts "ミックスインされたメソッドとしても利用可能"
product = Product.new
puts product.title

puts "ただし、モジュールファンクションがミックスインされた場合はprivateに属する。"
puts "そのため、Productクラスのlogメソッドとして、外部から呼び出すことはできない。"
product = Product.new
puts product.log "fuga"

