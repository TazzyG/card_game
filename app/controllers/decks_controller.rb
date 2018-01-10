class DecksController < ApplicationController

	before_action :set_deck, only: [:show]

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

	def index
		@decks = Deck.all
	end

	def new
		@deck = Deck.new
	end

	def create_new_deck
		@deck = Deck.create!
		@deck.add_cards_to_deck
		redirect_to @deck 
	end

	def show_me_card_from_deck
		@my_card = @deck.cards.sample
		redirect_to card_path(@my_card)
	end

	def add_cards_to_deck
		@deck.add_cards_to_deck
	end

	def create_new_deck_with_hearts
		@deck = Deck.create!
		@deck.create_heart_cards
		redirect_to @deck 
	end

	def create_new_deck_with_clubs
		@deck = Deck.create!
		@deck.create_club_cards
		redirect_to @deck 
	end

	def create_new_deck_with_diamonds
		@deck = Deck.create!
		@deck.create_diamond_cards
		redirect_to @deck 
	end

	def create_new_deck_with_spades
		@deck = Deck.create!
		@deck.create_spade_cards
		redirect_to @deck 
	end

	def create
		@deck = Deck.create()
		add_cards_to_deck
	end

	def show
		@deck = Deck.find(params[:id])
	end

	private 
	def set_deck
		@deck = Deck.find(params[:id])
	end

end
