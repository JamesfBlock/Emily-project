class LikesController < ApplicationController
  def new
    @like = Like.new
  end

  def create
    @user = current_user
    @product = Product.friendly.find(params[:id])
    @like = Like.new
    @like.product_id = @product.id
    @like.user_id = current_user.id
    @like.save
    if @like.save
      redirect_to product_path(@product)
    else
    end
  end

  def destroy
    user = current_user
    product = Product.find(params[:product_id])
    @like = Like.where(user_id: user.id, product_id: product.id)
    @like_id = @like.id
    @like.destroy
    redirect_to product_path(@product)
  end

  private

  def like_params
    params.require(:like).permit(:product_id)
  end
end
