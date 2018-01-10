class EnergyLevel < ApplicationRecord
	belongs_to :deck, optional: true 
end
