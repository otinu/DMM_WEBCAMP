puts "case文を用いることで、if文でelsifを用いるよりもシンプルに記述することができる。"

def fishing
  fish = "tinu"
  case fish
  when "kiss"
    "砂浜の女王"
  when "gure"
    "クロ"
  when "kisyuduri","tinu" #この場合、 kissyuduri || tinu となる。
    "黒鯛"
  else
    "What's Fish!?"
  end
end

puts fishing

puts "thenを活用することでリーダブルになる。ケースバイケースで使用。"

def fishing
  fish = "kiss"
  case fish
  when "kiss" then "砂浜の女王"
  when "gure" then "クロ"
  when "tinu" then "黒鯛"
  else "What's Fish!?"
  end
end

puts fishing