Rails.application.routes.draw do
  resources :vacancies

  root "vacancies#index"
end
