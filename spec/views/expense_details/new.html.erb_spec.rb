require 'rails_helper'

RSpec.describe "expense_details/new", type: :view do
  before(:each) do
    assign(:expense_detail, ExpenseDetail.new(
      :amount => "9.99",
      :description => "MyString",
      :category => "MyString"
    ))
  end

  it "renders new expense_detail form" do
    render

    assert_select "form[action=?][method=?]", expense_details_path, "post" do

      assert_select "input#expense_detail_amount[name=?]", "expense_detail[amount]"

      assert_select "input#expense_detail_description[name=?]", "expense_detail[description]"

      assert_select "input#expense_detail_category[name=?]", "expense_detail[category]"
    end
  end
end
