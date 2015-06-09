class PokerHandEvaluator

  def initialize(s, v)
    @suits = s
    @values = v
    @ranks = []
  end

  def hand_rank
    royal_flush
    straight_flush
    flush
    straight
    muliple_values
    if @ranks.max == 9
      "you have a Royal Flush"
    elsif @ranks.max == 8
      "you have a Straight Flush"
    elsif @ranks.max == 7
      "you have Four of a kind"
    elsif @ranks.max == 6
      "you have a Full House"
    elsif @ranks.max == 5
      "you have a Flush"
    elsif @ranks.max == 4
      "you have a Straight"
    elsif @ranks.max == 3
      "you have Three of a kind"
    elsif @ranks.max == 2
      "you have Two Pair"
    elsif @ranks.max == 1
      "you have a Pair"
    else
      @ranks == []
      "you have a High Card"
    end
  end

  def straight
    if @values.sort[-1] - @values.sort[0] == 4 || @values == [2,3,4,5,14] && @suits.uniq.length != 1
      @ranks << 4
    end
  end

  def flush
    if @suits.uniq.length == 1
      @ranks << 5
    end
  end

  def straight_flush
    if @values.sort[-1] - @values.sort[0] == 4 && @suits.uniq.length == 1
      @ranks << 8
    end
  end

  def royal_flush
    if straight_flush && @values.sort === [10, 11, 12, 13, 14]
      @ranks << 9
    end
  end

  def muliple_values
    occurences = Hash.new 0
    @values.each do |value|
      occurences[value] += 1
      if occurences.length == 2 && occurences.values.include?(2 && 3)
        @ranks << 6
      else
        occurences.each_value do |value|
          if value == 4
            @ranks << 7
          elsif value == 3
            @ranks << 3
          elsif value == 2 && occurences.values.count(2) == 2
            @ranks << 2
          elsif value == 2
            @ranks << 1
          end
        end
      end
    end
  end
end





                 

                 
