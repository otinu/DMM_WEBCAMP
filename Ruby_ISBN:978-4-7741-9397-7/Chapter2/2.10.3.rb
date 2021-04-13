puts "unless文を用いることで、if文の否定形ではなく、肯定形で表すことができます。\n "

def systemcheck
 status = "ok"
 unless status == "ok"
  "何か異常はありますか。"
 else
   "正常です。"
 end
end

puts systemcheck

puts "ただし、elsifは使えないため、2分岐で決着がつく場合しか使えない"

def systemcall
  call = "Help Me"
  unless  call == "SOS"
    "応答してください"
  elsif call == "All Green"
    "良好です。"
  else
    "緊急事態発生!!"
  end
end

puts systemcall
      