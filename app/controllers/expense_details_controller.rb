class ExpenseDetailsController < ApplicationController
  before_action :set_expense_detail, only: [:show, :edit, :update, :destroy]

  def index
    @expense_details = ExpenseDetail.all
  end

  def show
  end

  def new
    @expense_detail = ExpenseDetail.new
  end

  def edit
  end

  def create
    @expense_detail = ExpenseDetail.new(expense_detail_params)

    if @expense_detail.save
      redirect_to @expense_detail, notice: 'Expense detail was successfully created.'
    else
      render :new
    end
  end

  def update
    if @expense_detail.update(expense_detail_params)
      redirect_to @expense_detail, notice: 'Expense detail was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @expense_detail.destroy
    redirect_to expense_details_url, notice: 'Expense detail was successfully destroyed.'
  end

  private
  def set_expense_detail
    @expense_detail = ExpenseDetail.find(params[:id])
  end

  def expense_detail_params
    params.require(:expense_detail).permit(:amount, :description, :category, :expense_id)
  end
end
