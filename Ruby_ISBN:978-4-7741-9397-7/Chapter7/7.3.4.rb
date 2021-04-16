class User
  def initialize(name)
    @name = name
  end

  # self.を付けるとクラスメソッドになる
  #クラスメソッドはインスタンス変数(インスタンスに含まれるデータ)を使わない場合に定義。
  #インスタンス変数使わないVer インスタンス
  def self.create_users(names)
    names.map do |name|
      User.new(name)
    end
  end

  #これはインスタンスメソッド
  def hello
    "Hello, I am #{@name}."
  end
end

names = ["Alice", "Bob", "Carol"]

#==================================ここまでが、諸々の定義=============


#クラスメソッドを呼び出して、usersに格納
users = User.create_users(names)
p users
users.each do |user|
  #インスタンスメソッドの呼び出し
  #インスタンスメソッドはインスタンス変数(インスタンスに含まれるデータ)を読み書きする場合に活用する。
  puts user.hello
end