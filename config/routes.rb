Rails.application.routes.draw do
  root to: 'home#index'
  devise_for :trainers
  resources :trainers
  # get "capture", to: "capture"
  patch "capture", to: "pokemons#capture"
  patch "damage", to: "pokemons#damage"

  get "pokemon/new", to: "pokemons#new"
  post "pokemon/create", to: "pokemons#create"
  patch "pokemon/new", to: "pokemons#new"
  # post "pokemon/new", to: "pokemons#new"
  # get "pokemon/new", to: "pokemons#new"

  # get "trainers/:id", to: "trainers#show"
end
