# rubocop:disable Layout/HashAlignment
# rubocop:disable Layout/ArgumentAlignment

Rails.application.routes.draw do
  devise_for :users
  get 'up' => 'rails/health#show', as: :rails_health_check

  namespace :api, defaults: { format: :json },
  constraints: { subdomain: 'api' }, path: '/' do
    scope module: :v1,
    constraints: ApiConstraints.new(version: 1, default: true) do
    end
  end
end
