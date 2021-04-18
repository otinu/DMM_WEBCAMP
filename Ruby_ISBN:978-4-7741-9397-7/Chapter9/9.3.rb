def currency_of(country)
  case country
  when :japan
    "yen"
  when :us
    "dollar"
  when :india
    "rupee"
  else
  end
end

puts currency_of(:us)

puts "when節にないイタリアは何も処理をされず、エラーも何も表示されない。"
puts currency_of(:italy)

#===============================================
puts "【ここから魚】"

def sea(fish)
  case fish
  when :tinu
    "黒鯛"
  when :kiss
    "砂浜の女王"
  when :gure
    "クロ"
  else
    puts "【raiseを使って、エラーを発生させる】 \n "
    raise "#{fish}はwhen節で定義されていないから、ここでraiseがエラーとして返してくれる。おかげで、人間はエラーに気づける。"
  end
end

puts sea(:tinu)
puts sea(:kyuusen)