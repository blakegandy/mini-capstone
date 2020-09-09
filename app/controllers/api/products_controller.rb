class Api::ProductsController < ApplicationController
  def product_action

    render "product.json.jb"
  end
end
