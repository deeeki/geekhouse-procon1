module Poker
  class Card
    MARK_HASH = {
      'A' => 14,
      'K' => 13,
      'Q' => 12,
      'J' => 11,
      'T' => 10,
    }
    attr_reader :number, :suit

    def initialize str
      parse(str)
    end

    private
    def parse str
      value, @suit = str.split('')
      @number = convert(value)
    end

    def convert num
      (MARK_HASH[num] || num).to_i
    end
  end
end
