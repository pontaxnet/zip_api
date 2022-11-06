Rails.application.routes.draw do
  root "zips#top"
  get 'sample',  to: 'zips#sample'
  get 'sample_tb',  to: 'zips#sample_tb'
  get 'sample_js',  to: 'zips#sample_js'
  get 'api_search',  to: 'zips#api_search'
  post 'zips/search'
  post 'zips/search_tb'

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
