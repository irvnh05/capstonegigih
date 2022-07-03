Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
 
  post '/auth/login', to: 'authentication#login' 
  # get '/*a', to: 'application#not_found' 

  #api/v1/article
  namespace :api do
    namespace :v1 do
      resources :articles
      resources :reports
      resources :users, param: :_username 
    end
  end
end
