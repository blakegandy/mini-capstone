class Api::ProductsController < ApplicationController
  # def product_action
  #   @selection = params[:name]
  #   @product = Product.find_by(name: @selection)
  #   render "show.json.jb"
  # end

  # def product_url_action
  #   @selection = params[:name]
  #   @product = Product.find_by(name: @selection)
  #   render "show.json.jb"
  # end

  # def all_products_action
  #   @products = Product.all
  #   render "index.json.jb"
  # end

  def index
    @products = Product.all
    if params[:search]
      @products = @products.where("name iLIKE?", "%#{params[:search]}%")
    end

    if params[:sort] == "price"
      @products = @products.order(:price)
    end
    render "index.json.jb"

    # if params[:sort] == "price" && params[:sort_order] == "desc"
    #   @products = @products.order(price: :asc)
    # end
    
  end

  def show
    @product = Product.find(params[:id])
    render "show.json.jb"
  end

  def create
    @product = Product.new(
      id: params[:id],
      name: params[:name],
      price: params[:price],
      description: params[:description],
      stock: params[:stock]
    )
    if @product.save
      render "show.json.jb"
    else
      render json: {errors: @product.errors.full_messages}
    end
  end

  def update
    @product = Product.find(params[:id])
    @product.name = params[:name] || @product.name
    @product.price = params[:price] || @product.price
    @product.description = params[:description] || @product/description
    @product.stock = params[:stock]

    if @product.save
      render "show.json.jb"
    else
      render json: {errors: @product.errors.full_messages}
    end
  end

  def destroy
    product = Product.find(params[:id])
    product.destroy
    render json: {message: "The item has been deleted!"}
  end
end
