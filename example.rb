$:.unshift(File.expand_path('../lib', __FILE__))
require 'poker'
require 'pp'

hand = Poker::Hand.new 'Ac', 'Ah', 'Kh', 'Qc', '2d'

# 手札のハイカードになりうる数値
pp hand.high_number
# 手札の数値の配列
pp hand.numbers
# 手札の絵柄の配列
pp hand.suits
# 手札に数値がいくつあるかのハッシュ
pp hand.number_stats
# 手札に絵柄がいくつあるかのハッシュ
pp hand.suit_stats
# 手札からストレートを作るための数値の配列
pp hand.__send__(:straight_numbers)
# 判定
pp hand.judge
