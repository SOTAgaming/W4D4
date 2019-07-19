require "rspec"
require "deck"

RSpec.describe Deck do 
  describe "Deck::all_cards"
    it "should generate a deck of 52 cards" do
      expect(Deck.all_cards.uniq.length).to eq(52)
    end

  describe "Deck#initialize" do
    let(:deck) { Deck.new }
    it "should set instance variable, @cards, to represent the deck of cards" do
      expect(deck.cards.count).to eq(52)
    end
  end


end