class User
  #読み取り専用のメソッドだけを自動定義
  attr_reader :name

  #newメソッドによって、initializeは呼び出される
  def initialize(name)
    @name = name
  end
end

user = User.new("Alice")
puts user.name

user.name = "Bob"