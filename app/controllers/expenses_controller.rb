  class ExpensesController < ApplicationController
    before_action :set_expense, only: [:show, :edit, :update, :destroy]

    def index
      @budget = Budget.find(params[:budget_id])
      @expenses = @budget.expenses
      render 'index'
    end

    def show
      @budget = Budget.find(params[:budget_id])
    end

    def new
      @budget = Budget.first
      @expense = Expense.new
    end

    def edit
      @budget = Budget.find(params[:budget_id])
    end

    def create
      @expense = Expense.new(expense_params)
      @budget = Budget.find(params[:budget_id])
      respond_to do |format|
        if @expense.save
          format.html { redirect_to budget_expense_path(@budget, @expense), notice: 'Expense was successfully created.' }
        else
          format.html { render :new }
        end
      end
    end

    def update
      @budget = Budget.find(params[:budget_id])
      respond_to do |format|
        if @expense.update(expense_params)
          format.html { redirect_to budget_expense_path(@budget, @expense), notice: 'Expense was successfully updated.' }
        else
          format.html { render :edit }
        end
      end
    end

    def destroy
      @expense.destroy
      respond_to do |format|
        format.html { redirect_to budget_expenses_path(budget: @budget), notice: 'Expense was successfully destroyed.' }
        format.json { head :no_content }
      end
    end

    private
    def set_expense
      @expense = Expense.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def expense_params
      params.require(:expense).permit(:total_amount,
                                      :description,
                                      :budget_id,
                                      expense_details_attributes:
                                        [:amount,
                                         :description,
                                         :category,
                                         :budget_category_detail_id,
                                         :_destroy,
                                         :id])
    end
  end