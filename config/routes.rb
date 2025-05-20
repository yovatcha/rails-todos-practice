Rails.application.routes.draw do
  resources :quests
  get "brag" => "brags#index", as: :brags
  get "up" => "rails/health#show", as: :rails_health_check
  root "quests#index"
end
