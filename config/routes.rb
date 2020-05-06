Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root "pages#home"

  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resource :user do  #user has many events and has one org role
        resources :events, shallow: true
        resource :organization_role, shallow: true
      end
      resources :organizations do  #orgs has many events and has many org roles
        resources :events, :organization_roles, shallow: true
      end
      resource :user do  #user has many invitations, which are linked to comments and votes
        resources :invitations, shallow: true do
          resources :comments, :votes, shallow: true
        end
      end
      resource :event do  #event has many invitations, comments and votes
        resources :invitations, :comments, :votes, shallow: true
      end
    end
    end

  resource :user do  #user has many events and has one org role
    resources :events, shallow: true
    resource :organization_role, shallow: true
  end
  resources :organizations do  #orgs has many events and has many org roles
    resources :events, :organization_roles, shallow: true
  end
  resource :user do  #user has many invitations, which are linked to comments and votes
    resources :invitations, shallow: true do
      resources :comments, :votes, shallow: true
    end
  end
  resource :event do  #event has many invitations, comments and votes
    resources :invitations, :comments, :votes, shallow: true
    end
  end

