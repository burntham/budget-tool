require 'rails_helper'

RSpec.describe "expenses/index", type: :view do
  before(:each) do
    assign(:expenses, [
      Expense.create!(
        :total_amount => "9.99",
        :description => "Description"
      ),
      Expense.create!(
        :total_amount => "9.99",
        :description => "Description"
      )
    ])
  end

  it "renders a list of expenses" do
    render
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "Description".to_s, :count => 2
  end
end
