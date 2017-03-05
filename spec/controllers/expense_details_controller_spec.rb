require 'rails_helper'
RSpec.describe ExpenseDetailsController, type: :controller do

  let(:valid_attributes) {
    {
        category: 'something',
        description: 'something',
        amount: 8876,
        expense_id: 1
    }
  }

  let(:invalid_attributes) {
    {
        amount: nil
    }
  }

  #TODO add authentication, etc
  let(:valid_session) { {} }

  describe "GET #index" do
    it "assigns all expense_details as @expense_details" do
      expense_detail = ExpenseDetail.create! valid_attributes
      get :index, params: {}, session: valid_session
      expect(assigns(:expense_details)).to eq([expense_detail])
    end
  end

  describe "GET #show" do
    it "assigns the requested expense_detail as @expense_detail" do
      expense_detail = ExpenseDetail.create! valid_attributes
      get :show, params: {id: expense_detail.to_param}, session: valid_session
      expect(assigns(:expense_detail)).to eq(expense_detail)
    end
  end

  describe "GET #new" do
    it "assigns a new expense_detail as @expense_detail" do
      get :new, params: {}, session: valid_session
      expect(assigns(:expense_detail)).to be_a_new(ExpenseDetail)
    end
  end

  describe "GET #edit" do
    it "assigns the requested expense_detail as @expense_detail" do
      expense_detail = ExpenseDetail.create! valid_attributes
      get :edit, params: {id: expense_detail.to_param}, session: valid_session
      expect(assigns(:expense_detail)).to eq(expense_detail)
    end
  end

  describe "POST #create" do
    context "with valid params" do
      it "creates a new ExpenseDetail" do
        expect {
          post :create, params: {expense_detail: valid_attributes}, session: valid_session
        }.to change(ExpenseDetail, :count).by(1)
      end

      it "assigns a newly created expense_detail as @expense_detail" do
        post :create, params: {expense_detail: valid_attributes}, session: valid_session
        expect(assigns(:expense_detail)).to be_a(ExpenseDetail)
        expect(assigns(:expense_detail)).to be_persisted
      end

      it "redirects to the created expense_detail" do
        post :create, params: {expense_detail: valid_attributes}, session: valid_session
        expect(response).to redirect_to(ExpenseDetail.last)
      end
    end

    context "with invalid params" do
      it "assigns a newly created but unsaved expense_detail as @expense_detail" do
        post :create, params: {expense_detail: invalid_attributes}, session: valid_session
        expect(assigns(:expense_detail)).to be_a_new(ExpenseDetail)
      end

      it "re-renders the 'new' template" do
        post :create, params: {expense_detail: invalid_attributes}, session: valid_session
        expect(response).to render_template("new")
      end
    end
  end

  describe "PUT #update" do
    context "with valid params" do
      let(:new_attributes) {
        {
            amount: 99
        }
      }

      it "updates the requested expense_detail" do
        expense_detail = ExpenseDetail.create! valid_attributes
        put :update, params: {id: expense_detail.to_param, expense_detail: new_attributes}, session: valid_session
        expense_detail.reload
        expect(expense_detail.amount).to eq(99)
      end

      it "assigns the requested expense_detail as @expense_detail" do
        expense_detail = ExpenseDetail.create! valid_attributes
        put :update, params: {id: expense_detail.to_param, expense_detail: valid_attributes}, session: valid_session
        expect(assigns(:expense_detail)).to eq(expense_detail)
      end

      it "redirects to the expense_detail" do
        expense_detail = ExpenseDetail.create! valid_attributes
        put :update, params: {id: expense_detail.to_param, expense_detail: valid_attributes}, session: valid_session
        expect(response).to redirect_to(expense_detail)
      end
    end

    context "with invalid params" do
      it "assigns the expense_detail as @expense_detail" do
        expense_detail = ExpenseDetail.create! valid_attributes
        put :update, params: {id: expense_detail.to_param, expense_detail: invalid_attributes}, session: valid_session
        expect(assigns(:expense_detail)).to eq(expense_detail)
      end

      it "re-renders the 'edit' template" do
        expense_detail = ExpenseDetail.create! valid_attributes
        put :update, params: {id: expense_detail.id, expense_detail: invalid_attributes}, session: valid_session
        expect(response).to render_template("edit")
      end
    end
  end

  describe "DELETE #destroy" do
    it "destroys the requested expense_detail" do
      expense_detail = ExpenseDetail.create! valid_attributes
      expect {
        delete :destroy, params: {id: expense_detail.id}, session: valid_session
      }.to change(ExpenseDetail, :count).by(-1)
    end

    it "redirects to the expense_details list" do
      expense_detail = ExpenseDetail.create! valid_attributes
      delete :destroy, params: {id: expense_detail.to_param}, session: valid_session
      expect(response).to redirect_to(expense_details_url)
    end
  end

end
