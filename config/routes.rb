Rails.application.routes.draw do
  root to: 'home#index'
  devise_for :trainers
  resources :trainers

  # call capture; name capture as prefix; set URI to capture
  patch '/capture', to: 'pokemons#capture', as: 'capture'
  patch '/damage', to: 'trainers#show', as: 'damage'

end
