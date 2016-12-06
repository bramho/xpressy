Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: "registrations" }
  resources :users, except: :create
  get 'create_user' => 'users#add_new_user', as: :new_user_by_admin
  post 'create_user' => 'users#create', as: :create_user

  # devise_for :users, controllers: {
  #       sessions: 'users/sessions'
  #     }

  resources :vacancies do
     resources :reactions
     resources :vacancy_steps
     resources :vacancy_modules
  end

  # resources :vacancy_steps
  resources :companies
  resources :locations

  root "vacancies#index"
end
