class CategoriesController < ApplicationController
  def new
    @category = Category.new
  end

  def create
    @category = Category.new(category_params)
    @category.save
    if @category.save
      redirect_to products_path
    else
      render :new
    end
  end

  def destroy
  end

  private

  def category_params
    params.require(:category).permit(:name)
  end
end

