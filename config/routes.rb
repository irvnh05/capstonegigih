Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
 
  #api/v1/article
  namespace :api do
    namespace :v1 do
      resources :articles
      resources :reports
    end
  end
end
