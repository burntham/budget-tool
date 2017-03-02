require 'rails_helper'

RSpec.describe "budget/budgets/edit", type: :view do
  before(:each) do
    @budget_budget = assign(:budget_budget, Budget::Budget.create!())
  end

  it "renders the edit budget_budget form" do
    render

    assert_select "form[action=?][method=?]", budget_budget_path(@budget_budget), "post" do
    end
  end
end
