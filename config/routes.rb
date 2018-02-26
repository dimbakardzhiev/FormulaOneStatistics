Rails.application.routes.draw do
  root 'static_pages#home'
  get 'charts/drivers_points'
  get 'charts/drivers_rank'
  

  get '/about', to: 'static_pages#about'
  get '/home', to: 'static_pages#home' 
  get '/charts', to: 'charts#wins_form'
  get '/wins_pie_chart', to: 'charts#wins_pie_chart'
  
  resources :races
  resources :results
  resources :drivers
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end