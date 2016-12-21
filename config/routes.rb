Rails.application.routes.draw do
  get 'teammates/index'

  get 'teammates/new'

  get 'teammates/create'

  get 'teammates/edit'

  get 'teammates/show'

  get 'teammates/update'

  get 'teammates/destroy'

  get 'participant_teams/index'

  get 'participant_teams/new'

  get 'participant_teams/create'

  get 'participant_teams/edit'

  get 'participant_teams/show'

  get 'participant_teams/update'

  get 'participant_teams/destroy'

  resources :tournaments do
    resources :participant_teams do
      resources :teammates
    end
  end

  root :to => 'tournaments#index'
end
