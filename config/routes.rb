Rails.application.routes.draw do
  devise_for :users
  resources :users, except: :create
  get 'create_user' => 'users#add_new_user', as: :new_user_by_admin
  post 'create_user' => 'users#create', as: :create_user

  resources :vacancies do
     resources :reactions
  end

  root "vacancies#index"
end
