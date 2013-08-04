$:.unshift(File.expand_path('../../', __FILE__))
require 'spec_helper'

cases = {
  'straight flush' => 'As Ks Qs Js Ts',
  'four of a kind' => '7s 7h 7d 7c As',
  'full house' => 'Ts Th Td 7c 7d',
  'flush' => 'Ad 4d 5d Jd Kd',
  'straight' => '2s 3h 4s 5d 6c',
  'three of a kind' => '9s 9h 9d Ts 3s',
  'two pair' => 'Ts Th 2c 2h 5d',
  'one pair' => '2s 2d 5c 6d 9c',
  'high cards' => 'Ah Jc 5d 4s 9c',
}

describe Poker::Hand do
  describe '#detect' do
    cases.each do |hand_name, card_args|
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
