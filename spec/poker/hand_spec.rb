$:.unshift(File.expand_path('../../', __FILE__))
require 'spec_helper'

CASES = {
  'As Ks Qs Js Ts' => 'straight flush',
  '7s 7h 7d 7c As' => 'four of a kind',
  'Ts Th Td 7c 7d' => 'full house',
  'Ad 4d 5d Jd Kd' => 'flush',
  'Ac 2s 3h 4s 5d' => 'straight',
  'Ts Jh Qs Kd Ac' => 'straight',
  '9s 9h 9d Ts 3s' => 'three of a kind',
  'Ts Th 2c 2h 5d' => 'two pair',
  '2s 2d 5c 6d 9c' => 'one pair',
  'Ah Jc 5d 4s 9c' => 'high cards',
}

describe Poker::Hand do
  describe '#judge' do
    CASES.each do |card_args, hand_name|
      describe %[when given cards "#{card_args}"] do
        let(:hand){ Poker::Hand.new(*card_args.split(' ')) }
        subject{ hand.judge }
        it %[judged as "#{hand_name}"] do
          subject.must_equal hand_name
        end
      end
    end
  end
end
