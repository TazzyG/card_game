class CardsController < ApplicationController

	def index
		@cards = Card.all
	end

	

	def show
		@card = Card.find(params[:id])
	end

	def card_params
		params.require(:card).permit(:suit, :rank)
	end

end
