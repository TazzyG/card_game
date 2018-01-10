class Deck < ApplicationRecord
	has_many :cards
	has_many :energy_levels

	RANKS = [2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14]

  def create_heart_cards
  	RANKS.each do |rank| 
  		Card.create(suit: "heart", rank: rank, deck_id: self.id)
  	end
  	
  end

  def create_club_cards
  	RANKS.each do |rank| 
  		Card.create(suit: "club", rank: rank, deck_id: self.id)
  	end
  	
  end

  def create_diamond_cards
  	RANKS.each do |rank| 
  		Card.create(suit: "diamond", rank: rank, deck_id: self.id)
  	end
  	
  end

  def create_spade_cards
  	RANKS.each do |rank| 
  		Card.create(suit: "spade", rank: rank, deck_id: self.id)
  	end
  	
  end

  def add_cards_to_deck
		create_heart_cards
		create_club_cards
		create_diamond_cards
		create_spade_cards
	end

	
	def pick_a_card_from_deck
		self.cards.sample
	end


	
end
