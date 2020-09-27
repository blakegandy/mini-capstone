Rails.application.routes.draw do
  namespace :api do
    # get "/product_path" => "products#product_action"
    # get "/product_url_path/:name" => "products#product_url_action"
    # get "/products_path" => "products#all_products_action"
    get "/products" => "products#index"
    get "/products/:id" => "products#show"
    post "/products" => "products#create"
    patch "/products/:id" => "products#update"
    delete "/products/:id" => "products#destroy"


    get "/suppliers" => "suppliers#index"
    get "/suppliers/:id" => "suppliers#show"
    post "/suppliers" => "suppliers#create"

    post "/users" => "users#create"
    post "/sessions" => "sessions#create"

    get "/orders" => "orders#index"
    post "/orders" => "orders#create"
    get "/orders/:id" => "orders#show"

    get "/carted_products" => "carted_products#index"
    get "/carted_products/:id" => "carted_products#index"
    post '/carted_products' => "carted_products#create"
  end
end
