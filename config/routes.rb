Rails.application.routes.draw do
  
  root 'static_pages#home'
  get 'charts/drivers_rank'
  
  
  post 'charts/drivers_points'
  post 'charts/wins_pie_chart'
  post 'charts/drivers_rank'
  
  get 'api/drivers'
  get 'api/results'
  get 'api/races'

  get '/about', to: 'static_pages#about'
  get '/home', to: 'static_pages#home' 
  get '/twitterfeed', to: 'tweets#index'
  get '/piecharts', to: 'charts#wins_form'
  get '/columncharts', to: 'charts#column_chart_form'
  get '/linecharts', to: 'charts#line_chart_form'

  resources :races
  resources :results
  resources :drivers

  match '*a', :to => 'error#not_found', via: :get
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end