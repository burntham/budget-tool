require 'rails_helper'

RSpec.describe "budget/budgets/new", type: :view do
  before(:each) do
    assign(:budget_budget, Budget::Budget.new())
  end

  it "renders new budget_budget form" do
    render

    assert_select "form[action=?][method=?]", budget_budgets_path, "post" do
    end
  end
end
