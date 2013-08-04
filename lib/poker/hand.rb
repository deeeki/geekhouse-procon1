module Poker
  class Hand
    attr_reader :cards, :suit_stats, :number_stats

    def initialize *strs
      @cards = strs.map{|s| Card.new(s) }
      @suit_stats = {}
      @number_stats = {}
      @cards.each do |c|
        @suit_stats[c.suit] = @suit_stats[c.suit] ? @suit_stats[c.suit] + 1 : 1
        @number_stats[c.number] = @number_stats[c.number] ? @number_stats[c.number] + 1 : 1
      end
    end

    def high_number
      numbers.max
    end

    def numbers
      @cards.map(&:number)
    end

    def suits
      @cards.map(&:suit)
    end

    def judge
      if straight_flush?
        'straight flush'
      elsif four_of_a_kind?
        'four of a kind'
      elsif full_house?
        'full house'
      elsif flush?
        'flush'
      elsif straight?
        'straight'
      elsif three_of_a_kind?
        'three of a kind'
      elsif two_pair?
        'two pair'
      elsif one_pair?
        'one pair'
      else
        'high cards'
      end
    end

    private
    def straight_flush?
      flush? && straight?
    end

    def four_of_a_kind?
      number_stats.values.include?(4)
    end

    def full_house?
      number_stats.reject{|k, v| v == 1 }.values.sort == [2, 3]
    end

    def flush?
      suit_stats.values.include?(5)
    end

    def straight?
      min_number = numbers.min
      numbers.sort == [1, 10, 11, 12, 13] || numbers.sort == 5.times.map{|i| min_number + i }
    end

    def three_of_a_kind?
      number_stats.values.include?(3)
    end

    def two_pair?
      number_stats.reject{|k, v| v == 1 }.values == [2, 2]
    end

    def one_pair?
      number_stats.values.include?(2)
    end
  end
end
