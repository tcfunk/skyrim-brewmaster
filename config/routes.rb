SkyrimBrewmaster::Application.routes.draw do
  resources :ingredients
  resources :effects
  
  root to: 'application#index'
end
