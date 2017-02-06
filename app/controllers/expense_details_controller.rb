class ExpenseDetailsController < ApplicationController
  before_action :set_expense_detail, only: [:show, :edit, :update, :destroy]

  # GET /expense_details
  # GET /expense_details.json
  def index
    @expense_details = ExpenseDetail.all
  end

  # GET /expense_details/1
  # GET /expense_details/1.json
  def show
  end

  # GET /expense_details/new
  def new
    @expense_detail = ExpenseDetail.new
  end

  # GET /expense_details/1/edit
  def edit
  end

  # POST /expense_details
  # POST /expense_details.json
  def create
    @expense_detail = ExpenseDetail.new(expense_detail_params)

    respond_to do |format|
      if @expense_detail.save
        format.html { redirect_to @expense_detail, notice: 'Expense detail was successfully created.' }
        format.json { render :show, status: :created, location: @expense_detail }
      else
        format.html { render :new }
        format.json { render json: @expense_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /expense_details/1
  # PATCH/PUT /expense_details/1.json
  def update
    respond_to do |format|
      if @expense_detail.update(expense_detail_params)
        format.html { redirect_to @expense_detail, notice: 'Expense detail was successfully updated.' }
        format.json { render :show, status: :ok, location: @expense_detail }
      else
        format.html { render :edit }
        format.json { render json: @expense_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /expense_details/1
  # DELETE /expense_details/1.json
  def destroy
    @expense_detail.destroy
    respond_to do |format|
      format.html { redirect_to expense_details_url, notice: 'Expense detail was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_expense_detail
      @expense_detail = ExpenseDetail.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def expense_detail_params
      params.require(:expense_detail).permit(:amount, :description, :category)
    end
end
