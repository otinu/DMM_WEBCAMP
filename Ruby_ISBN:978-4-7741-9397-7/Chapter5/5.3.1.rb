puts "シンボルのクラス確認"
puts :apple.class

puts "文字列のクラス確認"
puts "apple".class

puts "「大量の同じシンボル」と「大量の同じ文字列」であれば、前者の方がメモリ効率が良く、速い。"

puts "オブジェクトIDの確認 全て同一"
puts :apple.object_id
puts :apple.object_id
puts :apple.object_id

puts "文字列のオブジェクトIDの確認 全て異なる"
puts "apple".object_id
puts "apple".object_id
puts "apple".object_id