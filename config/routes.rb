Rails.application.routes.draw do
  resources :tournaments do
    resources :participant_teams do
      resources :teammates
    end
  end

  root :to => 'tournaments#index'
end
