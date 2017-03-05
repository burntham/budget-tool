require 'rails_helper'

RSpec.describe "expense_details/index", type: :view do
  before(:each) do
    assign(:expense_details, [
      ExpenseDetail.create!(
        :amount => "9.99",
        :description => "Description",
        :category => "Category",
        :expense_id => 1
      ),
      ExpenseDetail.create!(
        :amount => "9.99",
        :description => "Description",
        :category => "Category",
        :expense_id => 1
      )
    ])
  end

  it "renders a list of expense_details" do
    render
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "Description".to_s, :count => 2
    assert_select "tr>td", :text => "Category".to_s, :count => 2
  end
end
