require 'rails_helper'

RSpec.describe "expenses/edit", type: :view do
  before(:each) do
    @expense = assign(:expense, Expense.create!(
      :total_amount => "9.99",
      :description => "MyString"
    ))
  end

  it "renders the edit expense form" do
    render

    assert_select "form[action=?][method=?]", expense_path(@expense), "post" do

      assert_select "input#expense_total_amount[name=?]", "expense[total_amount]"

      assert_select "input#expense_description[name=?]", "expense[description]"
    end
  end
end
