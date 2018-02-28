Rails.application.routes.draw do
  
  

  root 'static_pages#home'
  get 'charts/wins_form'
  get 'charts/drivers_rank'
  get 'charts/column_chart_form'
  post 'charts/drivers_points'
  post 'charts/wins_pie_chart'
  get 'api/drivers'
  get 'api/results'
  get 'api/races'  
  get '/about', to: 'static_pages#about'
  get '/home', to: 'static_pages#home' 
  get '/twitterfeed', to: 'tweets#index'

  resources :races
  resources :results
  resources :drivers

  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end