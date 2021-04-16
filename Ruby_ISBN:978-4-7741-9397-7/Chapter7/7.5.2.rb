class Foo
  puts "1回目のputs"
  puts "クラス構文直下のself: #{self}"

  puts "（Fooクラス自身を表す）\n "

  def self.bar
    puts "2回目のputs"
    puts "クラスメソッド内のself: #{self}"

    puts "（Fooクラス自身を表す）\n "
  end

  def baz
    puts "3回目のputs"
    puts "インスタンスメソッド内のself: #{self}"

    puts "（Fooクラスのインスタンスを表す）"
  end
end




puts "4回目のputs"
puts  Foo.bar

foo = Foo.new

puts "5回目のputs"
puts foo.baz
