class ProductsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @products = Product.all
    @current_user = current_user
  end

  def new
    @product = Product.new
    @rooms = Room.all
    @companies = Company.all
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      redirect_to product_path(@product)
    else
      render :new
    end
  end

  def show
    @products = Product.all.sample(3)
    @product = Product.friendly.find(params[:id])
    @similar_products = @product.similar_products?
  end

  def edit
    @product = Product.friendly.find(params[:id])
  end

  def update
    @product = Product.friendly.find(params[:id])
    @product.update(product_params)
    redirect_to product_path(@product)
  end

  private

  def product_params
    params.require(:product).permit(:name, :company_id, :description, :room_id, :url, :featured, :price, :image_url, :emzy_comment)
  end

end
