require 'rails_helper'

RSpec.describe "expenses/new", type: :view do
  before(:each) do
    assign(:expense, Expense.new(
      :total_amount => "9.99",
      :description => "MyString"
    ))
  end

  it "renders new expense form" do
    render

    assert_select "form[action=?][method=?]", expenses_path, "post" do

      assert_select "input#expense_total_amount[name=?]", "expense[total_amount]"

      assert_select "input#expense_description[name=?]", "expense[description]"
    end
  end
end
