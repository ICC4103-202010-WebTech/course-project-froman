Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root "pages#home"

  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :users do  #user has many events and has one org role
        resources :events, shallow: true
        resources :organization_roles, shallow: true
      end
      resources :organizations do  #orgs has many events and has many org roles
        resources :events, :organization_roles, shallow: true
      end
      resources :users do  #user has many invitations, which are linked to comments and votes
        resources :invitations, shallow: true do
          resources :comments, :votes, shallow: true
        end
      end
      resources :events do  #event has many invitations, comments and votes
        resources :invitations, :comments, :votes, shallow: true
      end
    end
  end

  resources :users, defaults: { format: :html } do  #user has many events and has one org role
    resources :events, defaults: { format: :html }, shallow: true
    resources :organization_roles, defaults: { format: :html }, shallow: true
  end
  resources :organizations, defaults: { format: :html } do  #orgs has many events and has many org roles
    resources :events, :organization_roles, defaults: { format: :html }, shallow: true
  end
  resources :users, defaults: { format: :html } do  #user has many invitations, which are linked to comments and votes
    resources :invitations, defaults: { format: :html }, shallow: true do
      resources :comments, :votes, defaults: { format: :html }, shallow: true
    end
  end
  resources :events, defaults: { format: :html } do  #event has many invitations, comments and votes
    resources :invitations, :comments, :votes, defaults: { format: :html }, shallow: true
  end
end

