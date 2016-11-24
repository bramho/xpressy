Rails.application.routes.draw do
  devise_for :users
  
  resources :vacancies do
     resources :reactions
  end

  root "vacancies#index"
end
