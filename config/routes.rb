Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'decks#new'
  resources :cards
  resources :decks do
  	resources :energy_levels 
  	collection do 
  		post :create_new_deck
  		post :create_new_deck_with_hearts
  		post :create_new_deck_with_clubs
  		post :create_new_deck_with_diamonds
  		post :create_new_deck_with_spades
  		# post :show_me_card_from_deck
  	end
  end


end
