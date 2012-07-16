
class ProductsController < ApplicationController
  before_filter :authenticate_user!
  def index
   /  @products = Product.all/
   /  @products = Product.where("user_id = ?" , current_user.id)/
  end

  def show
     @product = Product.find(params[:id])
  end

  def new
    @product = Product.new
  end
  
  def create   
    @product = Product.new(params[:product])
    @product.user_id=current_user.id
    if @product.save
      respond_to do |format|
        format.html {redirect_to products_path, :notice => "Your Product was saved"}
        format.js 
      end
    else
      render "new"
    end

  end

  def edit
    @product = Product.find(params[:id])
  end
  
  def update
    @product = Product.find(params[:id])
    if @product.update_attributes(params[:product])
      redirect_to products_path, :notice => "Your Product was Edited"
    else
      render "edit"
    end
  end
  
  def destroy
    @product = Product.find(params[:id])
    @product.destroy
    redirect_to products_path, :notice => "Your product has been deleted"
  end
end
