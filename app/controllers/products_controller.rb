class ProductsController < ApplicationController
   #modified
  def index
    @products = Product.all
    @order_item = current_order.order_items.new
    @carts = current_order.order_items.new
  end
  def new
  	@product = Product.new
  end
  def create
  	@product = Product.new(params[:id])
  	if @product.save
  		redirect_to products_path
  		flash[:notice] = "Product created!"
  	else
  		flash[:alert] = "Product was not created. Please see what went wrong."
  	end
  end
  def show
    @product = Product.find(params[:id])
  end
  def destroy
    @product = Product.find(params[:id])
    if @product.destroy
      flash[:notice] = "product deleted!"
    else
      flash[:alert] = "There was a problem deleting the product."
    end
    redirect_to products_path
  end

end

