Rails.application.routes.draw do

  get "/products/new" => "products#new"

   get "/products" => "products#index"

  get "/" => "products#index"

   get "/products/:id" => "products#show"

   post "/products" => "products#create"

   get "products/:id/edit" => "products#edit"

   patch "/products/:id" => "products#update"

   delete "/products/:id" => "products#destroy"

   get "/products/:id/images/new" => "images#new"
   post "/products/:id/images" => "images#create"

   get "/signup" => "users#new"
   post "/users" => "users#create"

   get "/login" => "sessions#new"
   post "/login" => "sessions#create"
   get "/logout" => "sessions#destroy"
end
