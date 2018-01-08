class DecksController < ApplicationController

	# def add_cards
	# 	suits = ["heart", "club", "diamond", "spade"]
	# 	rank = [1..13]
	# 	suits.each do |suit|
	# 		suit 
	# 		rank.each do |rank|
	# 			@deck.card.create(suit: suit, rank: rank)
	# 		end
	# 	end
		
	# end

	def add_cards_to_deck
		@deck.add_cards_to_deck
	end

	def create
		@deck = Deck.create()
		add_cards_to_deck
	end

	def show
		@deck = Deck.find(params[:id])
	end

end
