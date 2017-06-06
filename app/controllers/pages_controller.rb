class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
  end

  def search
    if params[:term].blank?
      @products = Product.all
    else
      @products = Product.where("name iLIKE :term", term: "%#{params[:term]}%")
    end
  end

end

#category = Category.where(name: "#{params[:term]}").first.id
# @products = Product.where(category == :term, term: category.to_i)
