# rubocop:disable Layout/HashAlignment
# rubocop:disable Layout/ArgumentAlignment

Rails.application.routes.draw do
  devise_for :users
  get 'up' => 'rails/health#show', as: :rails_health_check

  namespace :api, defaults: { format: :json }, path: '/' do
    scope module: :v1 do
      resources :users, only: %i[show create update destroy]
    end
  end
end
