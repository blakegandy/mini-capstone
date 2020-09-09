class Api::ProductsController < ApplicationController
  def product_action
    @products = Product.all
    render "product.json.jb"
  end
end
