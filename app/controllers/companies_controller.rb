class CompaniesController < ApplicationController
  def index
    @companies = Company.all
  end

  def show
    @company = Company.friendly.find(params[:id])
  end

  def new
    @company = Company.new
  end

  def create
    @company = Company.new(company_params)
    @company.save
    if @company.save
      redirect_to products_path
    else
      render :new
    end
  end

  def edit
    @company = Company.friendly.find(params[:id])
  end

  def update
    @company = Company.friendly.find(params[:id])
    @company.update(company_params)
    redirect_to company_path(@company)
  end

  def destroy
    @company = Company.friendly.find(params[:id])
    @company.destroy
    redirect_to products_path
  end

  private

  def company_params
    params.require(:company).permit(:name, :description, :url, :company_cover, :company_profile)
  end
end
