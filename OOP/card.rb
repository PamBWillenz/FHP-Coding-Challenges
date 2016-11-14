class Card
  attr_accessor :rank, :suit

  def initialize(rank, suit)
    @rank = rank
    @suit = suit
  end

  def output_card
    puts "#{self.rank} of #{self.suit}"
    # puts "#{@rank} of #{@suit}"
  end

  def self.random_card
    Card.new(rank, suit)
  end
end

class Deck
  def initialize
    @cards = []
    @rank = %w{A 2 3 4 5 6 7 8 9 10 J Q K}
    @suit = %w{Spades Hearts Diamonds Clubs}
    @rank.each do |r|
      @suit.each do |s|
        @cards << Card.new(r, s)
      end
    end
  end


  def shuffle
    @cards.shuffle!
  end

  def deal
    @cards.shift
  end

  def output
    @cards.each do |card|
      card.output_card
    end
  end
end

deck = Deck.new
deck.shuffle
deck.output
deck.deal


