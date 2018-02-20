Rails.application.routes.draw do
  get 'charts/drivers_points'
  get 'charts/drivers_rank'
  
  resources :constructorresults
  resources :constructors
  resources :circuits
  resources :races
  resources :results
  resources :drivers
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
