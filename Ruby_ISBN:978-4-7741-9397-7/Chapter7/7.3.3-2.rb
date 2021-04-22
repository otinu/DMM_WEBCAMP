class User

  #newメソッドによって、initializeは呼び出される
  def initialize(name)
    @name = name
  end

  # @nameを外部から参照するためのメソッド。  いわゆる、ゲッター。
  puts "ゲッターはattr_readerで置き換え可能"
  def name
    @name
  end

  # @nameを外部から変更するためのメソッド。　いわゆる、セッター。
  puts "セッターはatter_writerで置き換え可能"
  def name=(value)
    @name = value
  end
end

user = User.new("Alice")

#本来、@nameを外部から参照したい場合は、name メソッドを呼べば良い。
puts user.name

# この場合は変数に代入しているように見えるが、実際はname=メソッドを呼び出している
# つまり、"Bob"はname=メソッドの引数として渡され、インスタンス変数@name を外部から変更するメソッドとなっている。
user.name = "Bob"

puts user.name

puts " \n "
puts "ゲッターとセッターを合わせたものがatter_accessor"

#参照URL https://qiita.com/k-penguin-sato/items/5b75be386be4c55e3abf