class BudgetsController < ApplicationController
  before_action :set_budget, only: [:show, :edit, :update, :destroy]

  def index
    @budgets = Budget.all
  end

  def show
    @category_details = @budget.category_details
    @total_budget = @category_details.sum(:budgeted_amount)
    @category_budget_summary =  @budget.category_details.group(:category).sum(:budgeted_amount)

    @allocations = @category_budget_summary.map{ |name, budget_amount|
      {
        category: name,
        budget_allocation: (budget_amount/@total_budget).round(2) * 100,
        budget_allocation_spent: @budget.expense_details.where(category: name).sum(:amount)
      }
    }

    @category_summaries = @budget.category_details.map do |detail|
      {
        name: detail.name,
        category: detail.category,
        budgeted_amount: detail.budgeted_amount,
        remaining_amount: detail.budgeted_amount - @budget.expense_details.where(budget_category_detail_id: detail.id).sum(:amount)
      }
    end
  end

  # GET /budget/budgets/new
  def new
    @budget = Budget.new
  end

  # GET /budget/budgets/1/edit
  def edit
  end

  # POST /budget/budgets
  # POST /budget/budgets.json
  def create
    @budget = Budget.new(budget_params)

    respond_to do |format|
      if @budget.save
        format.html { redirect_to @budget, notice: 'Budget was successfully created.' }
        format.json { render :show, status: :created, location: @budget }
      else
        format.html { render :new }
        format.json { render json: @budget.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /budget/budgets/1
  # PATCH/PUT /budget/budgets/1.json
  def update
    respond_to do |format|
      if @budget.update(budget_params)
        format.html { redirect_to @budget, notice: 'Budget was successfully updated.' }
        format.json { render :show, status: :ok, location: @budget }
      else
        format.html { render :edit }
        format.json { render json: @budget.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /budget/budgets/1
  # DELETE /budget/budgets/1.json
  def destroy
    @budget.destroy
    respond_to do |format|
      format.html { redirect_to budgets_path, notice: 'Budget was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_budget
      @budget = Budget.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def budget_params
      params.require(:budget).permit(:start_date, :end_date,
                                            category_details_attributes: [
                                              :id,
                                              :name,
                                              :budgeted_amount,
                                              :budget_category_id,
                                              :category
                                            ]
      )
    end
end
