require 'rails_helper'

RSpec.describe "budget/budgets/index", type: :view do
  before(:each) do
    assign(:budget_budgets, [
      Budget::Budget.create!(),
      Budget::Budget.create!()
    ])
  end

  it "renders a list of budget/budgets" do
    render
  end
end
