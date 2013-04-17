RachelAndTheKings::Application.routes.draw do
  root :to => "home#index"

  resources :shows, only: [:index]
end
