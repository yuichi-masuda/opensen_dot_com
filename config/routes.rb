Rails.application.routes.draw do
  namespace :api do
  get 'tournaments/index'
  end

  resources :tournaments do
    resources :participant_teams do
      resources :teammates
    end
  end

  namespace :api, { format: 'json' } do
    resources :tournaments do
      resources :participant_teams do
        resources :teammates
      end
    end
  end

  root :to => 'tournaments#index'
end
