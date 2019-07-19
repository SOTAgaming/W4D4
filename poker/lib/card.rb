class Card
  attr_reader :value, :suit

  CARD_VALUES = {
    :deuce => 2,
    :three => 3,
    :four  => 4,
    :five  => 5,
    :six   => 6,
    :seven => 7,
    :eight => 8,
    :nine  => 9,
    :ten   => 10,
    :jack  => 11,
    :queen => 12,
    :king  => 13,
    :ace   => 14
  }

  SUIT_VALUES = {
    :spades => 4,
    :hearts => 3,
    :diamonds => 2,
    :clubs => 1
  }

  def self.values 
    CARD_VALUES.keys
  end 

  def self.suits
    SUIT_VALUES.keys
  end

  def initialize(value, suit)
    @value = value 
    @suit = suit
  end

  def beats?(other_card)
    return true if CARD_VALUES[self.value] > CARD_VALUES[other_card.value]
    false
  end

end