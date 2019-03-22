Rails.application.routes.draw do
  namespace :admin do
      resources :courses

      root to: "courses#index"
    end
  root 'pages#index'
  #get 'pages/about'
  get "about" => "pages#about"
  get  "courses" => "courses#index"
end
