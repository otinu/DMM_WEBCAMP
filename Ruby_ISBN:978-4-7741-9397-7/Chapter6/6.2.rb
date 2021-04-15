text = <<-TEXT
名前：伊藤淳一
電話：03-1234-5678
住所：兵庫県西脇市板波町1-2-3
TEXT


puts text + " \n "
puts "【正規表現での文字列検索】"
puts text.scan /\d\d-\d\d\d\d-\d\d\d\d/