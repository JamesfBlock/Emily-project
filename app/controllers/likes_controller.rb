class LikesController < ApplicationController
  def create
    @product = Product.find(params[:product_id])
    @like = Like.new
    @like.product = @product
    @like.user = current_user
    if @like.save
      redirect_to product_path(@product)
    else
      render :new
    end
  end

  def destroy
    @like.destroy
  end

  private

  def like_params
    params.require(:like).permit(:product_id)
  end
end
