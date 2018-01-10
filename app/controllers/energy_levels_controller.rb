class EnergyLevelsController < ApplicationController

	before_action :set_energy_level, except: [:index]
	before_action :set_deck, except: [:index]

	def index
		@energy_levels = EnergyLevel.all
	end

	def new
	end

	def create
		@energy_level = @deck.energy_levels.create(energy_level_params)

		if @deck.save notice: "One Energy Pod Engaged!!"
		else
			notice: "Oops, error, perhaps another time"
		end
	end

	def show
	end

	def edit
	end

	def update
	end

	def destroy
	end

	private 
		def set_energy_level
			@energy_level = EnergyLevel.find(params[:id])
		end

		def energy_level_params
			params.require(:comment).permit(:mood_type, :rating)
		end

		def set_deck
			@deck = Deck.find(params[:deck_id])
		end
end
