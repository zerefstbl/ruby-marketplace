Rails.application.routes.draw do
  get 'up' => 'rails/health#show', as: :rails_health_check

  namespace :api,
            defaults: { format: :json },
            constraints: { subdomain: 'api' },
            path: '/' do
    scope module: :v1 do
    end
  end
end
