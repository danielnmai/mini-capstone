Rails.application.routes.draw do

  get "/products/new" => "products#new"

   get "/products" => "products#index"

   get "/products/:id" => "products#show"

   post "/products" => "products#create"

   get "products/:id/edit" => "products#edit"

   patch "/products/:id" => "products#update"

   delete "/products/:id" => "products#destroy"
end
