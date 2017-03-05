require 'rails_helper'

RSpec.describe "budget/budgets/show", type: :view do
  before(:each) do
    @budget_budget = assign(:budget_budget, Budget::Budget.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
