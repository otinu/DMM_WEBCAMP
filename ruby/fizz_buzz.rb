 def fizz_buzz(i)
  if (i % 3 == 0) && (i % 5 == 0) then
    puts "FizzBuzz"
  elsif i % 3 == 0 then
    puts "Fizz"
  elsif i % 5 == 0 then
    puts "Buzz"
  else
    puts "#{i}"
  end
 end

puts "FizzBuzzプログラムを開始します。整数を入力してください。"
i = gets.to_i
puts fizz_buzz(i)