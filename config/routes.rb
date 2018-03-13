Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


  namespace :customers do
    get 'dashboard', to: "pages#dashboard", as: "dashboard"
    resources :users do
      resources :requests, only: [:new, :create, :update, :destroy]
    end
  end




  namespace :owners do
    get 'dashboard', to: "pages#dashboard", as: "dashboard"
    resources :users do
    resources :pets, only: [:new, :create, :update, :destroy]
  end
end

  resources :pets, only: [:index, :show]







  # namespace :owners do
  #   resources :user do
  #     resources :pet, only: [:index, :show, :new, :create]
  #     end
  #     resources :request, only: [:index, :show]

  # end


  # namespace :customers do
  #   resources :user do
  #     resources :pet, only: [:index, :show]
  #       resources :request, only: [:index, :show, :new, :create]
  #     end
  #   end

end




  # namespace :customer do
  #   resources :user, only:
  # end

  # resources :request, only: [:index, :show, :new, :create]
# end
