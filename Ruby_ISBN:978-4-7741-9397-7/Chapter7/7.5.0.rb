class User
  attr_accessor :name

  def initialize(name)
    @name = name
  end

# selfなしでnameメソッドを呼ぶ
  def hello
    "Hello, I am #{name}."
  end

# self付きでnameメソッドを呼ぶ
  def hi
    "Hi, I am #{self.name}."
  end

# 直接インスタンス変数の@nameにアクセスする
  def my_name
    "My name is #{@name}."
  end
end

user = User.new("Alice")
puts user.hello
puts user.hi
puts user.my_name