class Budget::BudgetsController < ApplicationController
  before_action :set_budget_budget, only: [:show, :edit, :update, :destroy]

  # GET /budget/budgets
  # GET /budget/budgets.json
  def index
    @budget_budgets = Budget::Budget.all
  end

  # GET /budget/budgets/1
  # GET /budget/budgets/1.json
  def show
  end

  # GET /budget/budgets/new
  def new
    @budget_budget = Budget::Budget.new
  end

  # GET /budget/budgets/1/edit
  def edit
  end

  # POST /budget/budgets
  # POST /budget/budgets.json
  def create
    @budget_budget = Budget::Budget.new(budget_budget_params)

    respond_to do |format|
      if @budget_budget.save
        format.html { redirect_to @budget_budget, notice: 'Budget was successfully created.' }
        format.json { render :show, status: :created, location: @budget_budget }
      else
        format.html { render :new }
        format.json { render json: @budget_budget.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /budget/budgets/1
  # PATCH/PUT /budget/budgets/1.json
  def update
    respond_to do |format|
      if @budget_budget.update(budget_budget_params)
        format.html { redirect_to @budget_budget, notice: 'Budget was successfully updated.' }
        format.json { render :show, status: :ok, location: @budget_budget }
      else
        format.html { render :edit }
        format.json { render json: @budget_budget.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /budget/budgets/1
  # DELETE /budget/budgets/1.json
  def destroy
    @budget_budget.destroy
    respond_to do |format|
      format.html { redirect_to budget_budgets_url, notice: 'Budget was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_budget_budget
      @budget_budget = Budget::Budget.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def budget_budget_params
      params.require(:budget_budget).permit(:start_date, :end_date,
                                            category_details_attributes: [
                                              :id,
                                              :name,
                                              :budgeted_amount
                                            ]
      )
    end
end
