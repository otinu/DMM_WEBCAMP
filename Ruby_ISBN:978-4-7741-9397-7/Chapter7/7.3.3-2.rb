class User
  def initialize(name)
    @name = name
  end

  # @nameを外部から参照するためのメソッド
  def name
    @name
  end
 
  # @nameを外部から変更するためのメソッド
  def name = (value)
    @name = value
  end
end

user = User.new("Alice")

#本来、@nameを外部から参照したい場合は、name メソッドを呼べば良い
puts User.name

# この場合は変数に代入しているように見えるが、実際はname=メソッドを呼び出している
# つまり、"Bob"はname=メソッドの引数として渡され、インスタンス変数@name を外部から変更するメソッドとなっている。
user.name = "Bob"

puts user.name