Rails.application.routes.draw do

  namespace :api, defaults: { format: :json } do
    resources :users, only: %w[show]
  end

  devise_for :users,
    defaults: { format: :json },
    path: '',
    path_names: {
      registration: 'api/signup',
      sign_in: 'api/login',
      sign_out: 'api/logout'
    },
    controllers: {
      sessions: 'sessions',
      registrations: 'registrations'
    }
end
