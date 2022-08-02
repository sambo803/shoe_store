Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get "/shoes" => "shoes#index"
  post "/shoes" => "shoes#create"
  get "/shoes/id:" => "shoes#post"
  patch "/shoes/id:" => "shoes#update"
  delete "shoes/id:" => "shoes#destroy"
end
