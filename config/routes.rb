Rails.application.routes.draw do
  namespace :api do
    get "/product_path" => "products#product_action"
    get "/products_path" => "products#all_products_action"
  end
end
