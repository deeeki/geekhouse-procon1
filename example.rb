$:.unshift(File.expand_path('../lib', __FILE__))
require 'poker'
require 'pp'

card = Poker::Card.new 'As'
pp card

hand = Poker::Hand.new 'Ac', 'Ah', 'Kh', 'Qc', '2d'
# 手札
pp hand.cards
# 手札に数値がいくつあるかのハッシュ
pp hand.instance_variable_get('@number_stats')
# 手札に絵柄がいくつあるかのハッシュ
pp hand.instance_variable_get('@suit_stats')
# 判定
pp hand.judge
