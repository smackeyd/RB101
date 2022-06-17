RANKS = %w(A 2 3 4 5 6 7 8 9 10 J Q K)
SUITS = %w(Spades Hearts Diamonds Clubs)
DECK = RANKS.product(SUITS)

def sum_of_cards(cards)
  values = cards.map { |card| card[0] }

  sum = 0
  values.each do |value|
    if value == 'A'
      sum += 11
    elsif value.to_i == 0 # J, Q, K
      sum += 10
    else
      sum += value.to_i
    end
  end

  values.select { |value| value == "A" }.count.times do
    sum -= 10 if sum > 21
  end
  sum
end

def initialize_deck
  DECK.shuffle
end

def deal_cards(p_or_d, deck)
  2.times do
    p_or_d << deck.pop
  end
end

my_deck = []
game_deck = initialize_deck
deal_cards(my_deck, game_deck)

p my_deck
p sum_of_cards(my_deck)
