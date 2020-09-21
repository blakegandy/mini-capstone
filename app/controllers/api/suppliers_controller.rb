class Api::SuppliersController < ApplicationController
  def index
    @suppliers = Supplier.all
    if params[:search]
      @suppliers = @suppliers.where("name iLIKE?", "%#{params[:search]}%")
    end
    render "index.json.jb"
  end

  def show
    @supplier = Supplier.find(params[:id])
    render "show.json.jb"
    
  end
end
