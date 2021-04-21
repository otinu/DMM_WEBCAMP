puts "定義されたメソッドでの引数の数と呼び出す側で指定する引数の数は同じでないとエラーが発生する。"
def greeting(country)
  if country == "japan"
    "「こんにちわ」\n "
  else
    "hello"
  end
end

=begin
「greeting」のみ(引数なし)だったり、「greeting("japan", "us")」だとエラーが発生。
前者だと予期された引数の数より与えられた引数が少ないため。
後者だと予期された引数の数より与えられた引数が多いため。
=end

puts greeting("japan")

#===========================================================================

puts "デフォルト値ありとデフォルト値なしの引数を混在させることも可能。"

def default_args(a, b, c = 0, d = 0)
  "a=#{a}, b=#{b}, c=#{c}, d=#{d} \n "
end

puts default_args(1,2)
puts default_args(1,2,0,3)
puts default_args(a = 2, b = 5, d = 9)


#puts default_args(1,2, ,3)はエラーとなる。
puts "\!\!\!この場合はdではなく、bに値が代入されるので、要注意。\!\!\!"
puts default_args(a = 2, d = 9)

#============================================================================
puts "動的に変わる値や、ほかのメソッドの戻り値を指定することも可能。"

def foo(time = Time.now, locate = now_locate, message)
  puts "time: #{time}, locate: #{locate}, message: #{message}"
end

def now_locate
  "居酒屋"
end

puts foo(message = "Now bar, hurry come on\!\!")