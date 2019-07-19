require "card"
require "rspec"

RSpec.describe Card do 

  describe "Card#initalize" do
    let(:card) { Card.new(:ace, :spades) }

    it "should assign the card a value" do 
      expect(card.value).to eq(:ace)
    end

    it "should assign the card a suit" do 
      expect(card.suit).to eq(:spades)
    end

  end

  describe "Card::suits" do
    it "should return an array of all possible card suit" do
      expect(Card.suits.sort).to eq([:spades, :clubs, :hearts, :diamonds].sort)
    end
  end

  describe "Card::values" do
    it "should return an array of all possible card values" do
      expect(Card.values.sort).to eq([:deuce, :three, :four, :five, :six, :seven, :eight, :nine, :ten, :jack, :queen, :king, :ace].sort)
    end
  end

  
  describe "Card#beats?" do 
    let(:card) { Card.new(:ace, :spades) }
    let(:other_card) { Card.new(:deuce, :hearts)}
    it "should return true if the card's value is higher than the compared card's value" do
      expect(card.beats?(other_card)).to eq(true)
    end

    it "should return false if the card's value is not higher than the compared card's value" do
      expect(other_card.beats?(card)).to eq(false)
    end
  end

end

