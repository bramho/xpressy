Rails.application.routes.draw do
  resources :vacancies do
     resources :reactions
  end

  root "vacancies#index"
end
