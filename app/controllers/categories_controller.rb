class CategoriesController < ApplicationController
  def new
    @category = Budget::Category.new
  end

  def create
    category = Budget::Category.create!(category_params)
    redirect_to new_budget_category_path
  end

  def index
    @categories = Budget::Category.all
  end

  def show
    @category = Budget::Category.find(params[:id])
  end

  def edit
    @category = Budget::Category.find(params[:id])
  end

  def category_params
    params.require(:budget_category).permit(:name, :group)
  end
end
