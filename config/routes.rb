Rails.application.routes.draw do
  namespace :api do
    get "/product_path" => "products#product_action"
    get "/product_url_path/:name" => "products#product_url_action"
    get "/products_path" => "products#all_products_action"
    get "/products" => "products#index"
    get "/products/:id" => "products#show"
    post "/products" => "products#create"
    patch "/products/:id" => "products#update"
  end
end
