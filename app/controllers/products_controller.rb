class ProductsController < ApplicationController
  def index
    @products = Product.all
    render "index.html.erb"
  end

  def new
    render "new.html.erb"
  end

  def create
    @product = Product.new(
      name: params[:name],
      price: params[:price],
      description: params[:description],
      stock: params[:stock],
      supplier_id: params[:supplier_id]
    )
    @product.save
    redirect_to "/products/#{@product.id}"
  end

  def show
    @product = Product.find(params[:id])
    render "show.html.erb"
  end

  def edit
    @recipe = Recipe.find(params[:id])
    render "edit.html.erb"
  end

  def update
    @product = Product.find(params[:id])
    @product.update(   
      name: params[:name],
      price: params[:price],
      description: params[:description],
      stock: params[:stock],
      supplier_id: params[:supplier_id]
    )
    @product.save
    redirect_to "/products/#{@product.id}"
  end
end
