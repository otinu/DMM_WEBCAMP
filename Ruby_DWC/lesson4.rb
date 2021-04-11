name = "福田哲也"
puts name

$animal = "inu" #グローバル変数　プロジェクト内のどこでも使用できる。
@fish = "tinu" #インスタンス変数　クラス内の全メソッド（どこでも）使用できる
bird = "kakko" #ローカル変数　宣言したメソッド・ブロック内でのみ使用する。

puts $animal
puts @fish
puts bird

